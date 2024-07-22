extern string CloveriX_works_on__________ = " ====== EURGBP and EURCHF ===== ";
extern double Risk = 0.25;
extern double MaxTP = 10.0;
extern string Trading_Hours_Settings_______ = "[ GMT_Offset = Market Watch - GMT ]";
extern int    GMT_Offset = 1;
extern string ADDITIONAL_SETTINGS______ = "===============================";
extern bool   VariableSpreads = FALSE;
extern double VarSpreadFix = 3.0;
extern bool   PlaceExternalTP = FALSE;
extern bool   CloseOnlyByExtTP = FALSE;
extern bool   Spread5PipsAlert = FALSE;
extern bool   ErrorAlert = FALSE;
extern bool   UseFixedSL = FALSE;
extern double FixedSL = 0.0;

int    g_hour_160;
int    g_error_164;
bool   gi_168;
bool   gi_172;
bool   gi_176;
int    gi_180;
int    gi_184;
int    g_slippage_188;
int    g_slippage_192;
int    gi_196 = 4;
double gda_200[3];
double gda_204[3];
double gd_208 = 0;
double gd_216 = 0;
double gd_224 = 0;
double gd_232 = 0;
double gd_240 = 0;
double gd_248 = 0;
double gd_256 = 0;
double g_ima_264;
double g_ima_272;
double g_ima_280;
double gd_288;
double gd_296;
double gd_304;
double gd_312;
double gd_328;
double gd_336;
double gd_344;
double g_price_352;
double gd_360;
double g_datetime_376;
double gd_392;
double gd_400;
double gd_408;
double g_digits_416;
string gs_424;
string gs_unused_432 = "0";
bool   gi_440 = FALSE;
int    iFileNo = 0;

int init() 
{
    gs_424 = StringSubstr(Symbol(), 0, 6);
    gd_248 = 10000.0 * (Ask - Bid);
    if(gs_424 == "EURCHF" || gs_424 != "EURGBP" && Period() == PERIOD_M15) 
        Coment();
    gi_180 = GMT_Offset + 21;
    gi_184 = GMT_Offset + 23;
    g_digits_416 = Digits;
    if(gi_180 > 23) 
        gi_180 -= 24;
    if(gi_184 > 23) 
        gi_184 -= 24;
    g_datetime_376 = iTime(NULL, PERIOD_M15, 1);
    MaxTP /= 10000.0;
    FixedSL /= 10000.0;
    g_slippage_188 = 0;
    g_slippage_192 = 1;
    if(PlaceExternalTP == TRUE && CloseOnlyByExtTP == TRUE) 
        gi_440 = TRUE;
    return(0);
}

int start() 
{
    if((gs_424 != "EURCHF" && gs_424 != "EURGBP") || Period() != PERIOD_M15) 
    {
        Alert("------------------", "\n", "WRONG TRADING PAIR OR TIMEFRAME");
        return;
    }
    if(!IsExpertEnabled()) 
    {
        Alert("EXPERTS ARE NOT ALLOWED");
        return;
    }
    Coment();
    HideTestIndicators(TRUE);
    if(gi_180 < gi_184 && Hour() > gi_184 || Hour() < gi_180 && OrdersTotal() == 0) 
        return;
    if(gi_180 > gi_184 && (Hour() > gi_184 && Hour() < gi_180) && OrdersTotal() == 0) 
        return;
    gi_168 = FALSE;
    gi_172 = FALSE;
    gi_176 = FALSE;
    g_hour_160 = Hour();
    g_error_164 = GetLastError();
    gd_240 = MathMax(MarketInfo(Symbol(), MODE_STOPLEVEL), MarketInfo(Symbol(), MODE_FREEZELEVEL)) / 10000.0;
    RefreshRates();
    gda_200[0] = High[1];
    gda_200[1] = High[2];
    gda_200[2] = High[3];
    gda_204[0] = Low[1];
    gda_204[1] = Low[2];
    gda_204[2] = Low[3];
    gd_248 = 10000.0 * (Ask - Bid);
    gd_256 = Ask - Bid;
    if(FixedSL < gd_240 + gd_256 && UseFixedSL) 
    {
        Alert("Incorrect FixedSL. Check parameters.");
        return;
    }
    g_ima_264 = iMA(NULL, 0, 9, 0, MODE_SMA, PRICE_MEDIAN, 1);
    g_ima_272 = iMA(NULL, 0, 9, 0, MODE_SMA, PRICE_MEDIAN, 2);
    g_ima_280 = iMA(NULL, 0, 9, 0, MODE_SMA, PRICE_MEDIAN, 3);
    gd_288 = NormalizeDouble(iRSI(NULL, 0, 7, PRICE_OPEN, 0), 4);
    gd_296 = NormalizeDouble(iRSI(NULL, 0, 7, PRICE_OPEN, 1), 4);
    gd_304 = NormalizeDouble(iWPR(NULL, 0, 14, 0), 4);
    gd_312 = NormalizeDouble(iWPR(NULL, 0, 14, 1), 4);
    if(VariableSpreads == TRUE) 
    {
        gd_360 = VarSpreadFix / 10000.0;
        gi_196 = 6;
    } 
    else 
        gd_360 = Ask - Bid;
    if(iBarShift(NULL, PERIOD_M15, g_datetime_376, FALSE) != 0) 
    {
        g_datetime_376 = TimeCurrent();
        PrepareParameters();
    }
    CHF();
    gi_168 = FALSE;
    gi_172 = FALSE;
    gi_176 = FALSE;
    GBP();
    if(g_error_164 >= 2/* COMMON_ERROR */ && g_error_164 != 130/* INVALID_STOPS */ && g_error_164 != 4099/* END_OF_FILE */ && g_error_164 != 4108/* INVALID_TICKET */ &&
       g_error_164 != 4103/* CANNOT_OPEN_FILE */ && g_error_164 != 4051/* INVALID_FUNCTION_PARAMETER_VALUE */ && ErrorAlert == TRUE) 
        Alert("error # ", g_error_164, " Find a definition here http://docs.mql4.com/constants/errors");
    return(0);
}

void PrepareParameters()
{
    gd_328 = MathMin(gd_216, gd_232);
    gd_344 = MathMax(gd_208, gd_224);
    if(g_ima_264 > g_ima_280)
        gd_408 = 1;
    else
    {
        if(g_ima_264 < g_ima_280)
            gd_408 = -1;
        else
            gd_408 = 0;
    }
    if(g_ima_264 > gd_208+0.0002)
        gd_392 = 1;
    else
    {
        if(g_ima_264 < gd_216-0.0002)
            gd_392 = -1;
        else
            gd_392 = 0;
    }
    if((g_ima_264 > gda_200[0]) && (g_ima_272 > gda_200[1]) && (g_ima_280 > gda_200[2]))
        gd_400 = 1;
    else
    {
        if((g_ima_264 < gda_204[0]) && (g_ima_272 < gda_204[1]) && (g_ima_280 < gda_204[2]))
            gd_400 = -1;
        else
            gd_400 = 0;
    }
    gd_208 = NormalizeDouble((gda_200[0]+gda_200[1]+gda_200[2])/3, 4)-0.00006;
    gd_216 = NormalizeDouble((gda_204[0]+gda_204[1]+gda_204[2])/3, 4)+0.00006;
    gd_232 = NormalizeDouble((gda_200[0]+gda_200[1]+gda_200[2])/3, 4)-0.0006;
    gd_224 = NormalizeDouble((gda_204[0]+gda_204[1]+gda_204[2])/3, 4)+0.0006;
    gd_336 = gd_328 + 0.0001;
    g_price_352 = gd_344 - 0.0001;
    return(0);
}

double Lot() 
{
    double ld_0 = NormalizeDouble(AccountBalance() / 1000.0 * Risk, 1);
 
    ld_0 = MathMin(MarketInfo(Symbol(), MODE_MAXLOT), ld_0);
    ld_0 = MathMax(MarketInfo(Symbol(), MODE_MINLOT), ld_0);
    return(ld_0);
}

int Coment() 
{
    Comment("------------------", 
            "\n", "CloveriX is Enabled", 
            "\n", "------------------", 
            "\n", "======= SERVER TIME =======", 
            "\n", "Trading Start Hour: ", gi_180, ":00", 
            "\n", "Trading End Hour: ", gi_184, ":00", 
            "\n", "------------------", 
            "\n", "Risk = ", 100.0 * Risk, "%", 
            "\n", "TradingLot = ", Lot(), 
            "\n", "Current Spread = ", gd_248, 
            "\n", "Max Available Spread = ", gi_196);
    return(0);
}

int OC(double a_price_0) 
{
    OrderClose(OrderTicket(), OrderLots(), a_price_0, g_slippage_192, Red);
    return(0);
}

int OrderModif() 
{
    for(int l_pos_0 = OrdersTotal() - 1; l_pos_0 >= 0; l_pos_0--) 
    {
        if(OrderSelect(l_pos_0, SELECT_BY_POS) == TRUE && OrderMagicNumber() == 318200 || OrderMagicNumber() == 318201 && StringSubstr(OrderSymbol(), 0, 6) == gs_424) 
        {
            gi_168 = TRUE;
            RefreshRates();
            if(OrderType() == OP_BUY) 
            {
                if((gd_392 == 1.0 && Bid >= gda_200[0]) || (gd_400 == 1.0 && Bid >= gda_200[0]) || (Bid >= g_price_352 - 0.00001 && gi_440 == FALSE)) 
                {
                    OC(Bid);
                    return;
                }
                if(g_price_352 - OrderOpenPrice() > MaxTP && g_price_352 - Bid >= gd_240 && PlaceExternalTP == TRUE)
                    if((Ask - OrderStopLoss() >= gd_240 && FixedSL) || !FixedSL) 
                        OrderModify(OrderTicket(), OrderOpenPrice(), OrderStopLoss(), OrderOpenPrice() + MaxTP, 0, CLR_NONE);
                if(g_price_352 - OrderOpenPrice() <= MaxTP && g_price_352 != OrderTakeProfit() && g_price_352 - Bid >= gd_240 && PlaceExternalTP == TRUE)
                    if((Ask - OrderStopLoss() >= gd_240 && FixedSL) || !FixedSL) 
                        OrderModify(OrderTicket(), OrderOpenPrice(), OrderStopLoss(), g_price_352, 0, CLR_NONE);
                if(Bid - OrderOpenPrice() > MaxTP - 0.0001 && gi_440 == FALSE) 
                {
                    OC(Bid);
                    return;
                }
            }
            if(OrderType() == OP_SELL) 
            {
                if((gd_392 == 2.0 && Bid <= gda_204[0]) || (gd_400 == 2.0 && Bid <= gda_204[0]) || (Ask - gd_360 <= gd_336 + 0.00001 && gi_440 == FALSE)) 
                {
                    OC(Ask);
                    return;
                }
                if(OrderOpenPrice() - gd_336 - gd_360 > MaxTP && Ask - gd_336 - gd_360 >= gd_240 && PlaceExternalTP == TRUE)
                    if((Ask - OrderStopLoss() >= gd_240 && FixedSL) || !FixedSL) 
                        OrderModify(OrderTicket(), OrderOpenPrice(), OrderStopLoss(), OrderOpenPrice() - MaxTP, 0, CLR_NONE);
                if(OrderOpenPrice() - gd_336 - gd_360 <= MaxTP && gd_336 + gd_360 != OrderTakeProfit() && Ask - gd_336 - gd_360 >= gd_240 && PlaceExternalTP == TRUE)
                    if((Ask - OrderStopLoss() >= gd_240 && FixedSL) || !FixedSL) 
                        OrderModify(OrderTicket(), OrderOpenPrice(), OrderStopLoss(), gd_336 + gd_360, 0, CLR_NONE);
                if(OrderOpenPrice() - Ask > MaxTP - 0.0001 && gi_440 == FALSE) 
                {
                    OC(Ask);
                    return;
                }
            }
        }
    }
    return(0);
}

int CheckParam() 
{
    if(gd_248 >= gi_196 + 1 && Spread5PipsAlert == TRUE) 
        Alert("Spread is higher than ", gi_196, " pips - NO TRADE");
    if((DayOfWeek() == 5 && g_hour_160 > 12) || (DayOfWeek() == 1 && g_hour_160 < 12)) 
        gi_172 = TRUE;
    if(gi_180 > gi_184 && g_hour_160 >= gi_180 || g_hour_160 < gi_184) 
        gi_176 = TRUE;
    if(gi_180 < gi_184 && g_hour_160 >= gi_180 && g_hour_160 < gi_184) 
        gi_176 = TRUE;
    return(0);
}

string GBP() 
{
    double l_price_0;
 
    if(gs_424 != "EURGBP" || DayOfWeek() == 0) 
        return;
    Coment();
    CheckParam();
    OrderModif();
    if(gi_168 != TRUE) 
    {
        RefreshRates();
        if(FixedSL != 0.0 && UseFixedSL == TRUE) 
            l_price_0 = Ask - FixedSL;
        if(gd_408 == 1.0 && gi_172 != TRUE && gd_248 <= gi_196 && Ask - gd_360 <= gd_328 && gi_168 != TRUE && gi_176 == TRUE) 
            OrderSend(Symbol(), OP_BUY, Lot(), Ask, g_slippage_188, l_price_0, 0, 0, 318200, 0, Blue);
        if(FixedSL != 0.0 && UseFixedSL == TRUE) 
            l_price_0 = Bid + FixedSL;
        if(gd_408 == 2.0 && gi_172 != TRUE && gd_248 <= gi_196 && Bid >= gd_344 && gi_168 != TRUE && gi_176 == TRUE) 
            OrderSend(Symbol(), OP_SELL, Lot(), Bid, g_slippage_188, l_price_0, 0, 0, 318201, 0, Blue);
    }
    return("");
}

void CHF() 
{
    double l_price_0;
 
    if(gs_424 != "EURCHF" || DayOfWeek() == 0) 
        return;
    Coment();
    CheckParam();
    OrderModif();
    if(gi_168 != TRUE) 
    {
        RefreshRates();
        if(FixedSL != 0.0 && UseFixedSL == TRUE) 
            l_price_0 = Ask - FixedSL;
        if(gd_408 == 1.0 && gi_172 != TRUE && gd_248 <= gi_196 && Ask - gd_360 <= gd_328 && gi_168 != TRUE && gi_176 == TRUE) 
            OrderSend(Symbol(), OP_BUY, Lot(), Ask, g_slippage_188, l_price_0, 0, 0, 318200, 0, Blue);
        if(FixedSL != 0.0 && UseFixedSL == TRUE) 
            l_price_0 = Bid + FixedSL;
        if(gd_408 == 2.0 && gi_172 != TRUE && gd_248 <= gi_196 && Bid >= gd_344 && gi_168 != TRUE && gi_176 == TRUE) 
            OrderSend(Symbol(), OP_SELL, Lot(), Bid, g_slippage_188, l_price_0, 0, 0, 318201, 0, Blue);
    }
}