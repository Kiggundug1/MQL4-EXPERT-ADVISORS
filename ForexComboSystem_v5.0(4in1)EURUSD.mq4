#property copyright "http://myfxbook.3dn.ru/"
#property link "http://myfxbook.3dn.ru/"

#import "wininet.dll"
   int InternetOpenA(string a0, int a1, string a2, string a3, int a4);
   int InternetOpenUrlA(int a0, string a1, string a2, int a3, int a4, int a5);
   int InternetReadFile(int a0, string a1, int a2, int& a3[]);
   int InternetCloseHandle(int a0);
#import "FCS500.dll"
   int dllInit(int a0, int a1, int a2, int a3, int a4);
   int dllOpenCond1(int a0, double a1, double a2, double a3, double a4, double a5, double a6, int a7, int a8, int a9);
   int dllCloseCond1(int a0, double a1, double a2);
   int dllOpenCond2(int a0, double a1, double a2, double a3, double a4, double a5, double a6);
   int dllCloseCond2(int a0, double a1, double a2, double a3, double a4);
   int dllOpenCond3(int a0, double a1, double a2, double a3, double a4, double a5, double a6);
   int dllCloseCond3(int a0, double a1, double a2, double a3, double a4, double a5, double a6);
   int dllOpenCond4(int a0, int a1, int a2, int a3, double a4, double a5, double a6, double a7, double a8, double a9);
   int dllCloseCond4(int a0, double a1, double a2, double a3, double a4);
   int dllParamInit1(int a0);
   int dllParamInit2(int a0);
   double dllExpTrailLong(double a0, double a1, double a2);
   double dllExpTrailShort(double a0, double a1, double a2);
   int dllGMTOffset();
#import

//string gs_76 = "http://forex-combo.com/verify4in1.php";
bool gi_84 = FALSE;
extern string A = "====================";
extern bool Use_FXCOMBO_Scalping = TRUE;
extern bool Use_FXCOMBO_Breakout = TRUE;
extern bool Use_FXCOMBO_Reversal = TRUE;
extern bool Use_FXCOMBO_EuroRange = TRUE;
extern string B = "====================";
extern bool Use_ECN_Execution = TRUE;
extern bool Hidden_StopAndTarget = FALSE;
extern bool No_Hedge_Trades = FALSE;
extern bool NFA_Compatibility = FALSE;
extern string C = "====================";
extern string CommentSys1 = "*** 1 ***";
extern string CommentSys2 = "*** 2 ***";
extern string CommentSys3 = "*** 3 ***";
extern string CommentSys4 = "*** 4 ***";
extern string D = "====================";
extern int Magic1 = 111;
extern int Magic2 = 222;
extern int Magic3 = 333;
extern int Magic4 = 444;
extern string E = "====================";
extern double MaxSPREAD = 4.0;
extern int Slippage = 2;
extern bool AutoGMT_Offset = TRUE;
extern int ManualGMT_Offset = 2;
extern bool Calculate_DST = TRUE;
extern bool UseAgresiveMM = FALSE;
extern bool EMAIL_Notification = FALSE;
extern string MMSys1 = "==== FXCOMBO Scalping MM Parameters ====";
extern double LotsSys1 = 0.1;
extern double TradeMMSys1 = 0.0;
extern double LossFactorSys1 = 2.0;
int gi_272 = 0;
int gi_276 = 2;
int gi_280 = 0;
extern string MMSys2 = "==== FXCOMBO Breakout MM Parameters ====";
extern double LotsSys2 = 0.1;
extern double TradeMMSys2 = 0.0;
extern double LossFactorSys2 = 2.0;
int gi_316 = 0;
int gi_320 = 2;
int gi_324 = 0;
extern string MMSys3 = "==== FXCOMBO Reversal MM Parameters ====";
extern double LotsSys3 = 0.1;
extern double TradeMMSys3 = 0.0;
extern double LossFactorSys3 = 2.0;
int gi_360 = 0;
int gi_364 = 2;
int gi_368 = 0;
extern string MMSys4 = "==== FXCOMBO EuroRange MM Parameters ====";
extern double LotsSys4 = 0.1;
extern double TradeMMSys4 = 0.0;
extern double LossFactorSys4 = 2.0;
int gi_404 = 0;
int gi_408 = 2;
int gi_412 = 0;
extern string CommonMM = "==== Main MM Parameters ====";
extern double MMMax = 20.0;
extern double MaximalLots = 50.0;
extern string Scalping = "==== FXCOMBO Scalping System Parameters ====";
extern int StopLoss = 40;
extern int TakeProfit = 19;
int g_period_456 = 60;
extern int TREND_STR = 24;
int g_period_464 = 11;
extern int OSC_open = 5;
extern int OSC_close = 14;
int gi_476 = -5;
int gi_480 = -1;
int gi_484 = -1;
int gi_488 = 6;
extern string Breakout = "==== FXCOMBO Breakout System Parameters ====";
extern int TakeProfit_II = 70;
extern int StopLoss_II = 34;
extern int MaxPipsTrailing2 = 45;
extern int MinPipsTrailing2 = 10;
extern int Break = 6;
int g_period_520 = 1;
int g_period_524 = 19;
double gd_528 = 1.45;
extern double ATRTrailingFactor2 = 1.15;
int gi_544 = 300;
extern int F_TrailingProfit_II = 40;
extern int F_Trailing_II = 30;
extern bool Use_Exp_Trailing_II = FALSE;
extern double Exp_Trail_Factor_II = 0.16;
int gi_568 = 30;
int gi_572 = 45;
int gi_576 = 0;
int gi_580 = 3;
int gi_584 = 0;
int gi_588 = 19;
int gi_592 = 14;
int gi_596 = 17;
int gi_600 = 20;
int gi_604 = 9;
int gi_608 = 7;
int gi_612 = 13;
int gi_616 = 8;
int gi_620 = 3;
int gi_624 = 3;
extern string Reversal = "==== FXCOMBO Reversal System Parameters ====";
extern int BegHourSys_III = 22;
extern int EndHourSys_III = 0;
extern int TakeProfit_III = 170;
extern int StopLoss_III = 70;
int gi_652 = 300;
extern int MaxPipsTrailing3 = 140;
extern int MinPipsTrailing3 = 20;
int g_period_664 = 50;
double gd_668 = 9.0;
int g_period_676 = 18;
int gi_680 = -6;
int gi_684 = 25;
extern int F_TrailingProfit_III = 160;
extern int F_Trailing_III = 20;
extern bool Use_Exp_Trailing_III = FALSE;
extern double Exp_Trail_Factor_III = 1.0;
extern string EuroRange = "==== FXCOMBO EuroRange System Parameters ====";
int gi_716 = 5;
int gi_720 = 40;
extern int MaxRangePips = 95;
extern int BreakPips = -12;
extern double TargetPercent = 5.0;
extern int StopLoss_IV = 41;
int gi_744 = 300;
int gi_748 = 100;
int gi_752 = 5;
double gd_756 = 100.0;
int gi_764 = 300;
int gi_768 = 30;
extern bool Use_Exp_Trailing_IV = TRUE;
extern double Exp_Trail_Factor_IV = 0.15;
extern int ReverseTF = 5;
extern int ExitProfit = 80;
extern string NF = "==== News Filter Settings ====";
extern bool Include_Medium_News = TRUE;
extern int Wait_Before_News = 30;
extern int Wait_After_News = 30;
extern bool NewsFilterSys1 = FALSE;
extern bool NewsFilterSys2 = FALSE;
extern bool NewsFilterSys3 = FALSE;
extern bool NewsFilterSys4 = FALSE;
string gs_828 = "";
string gs_836 = "";
string gs_844 = "";
int g_datetime_852 = 0;
bool gi_856 = TRUE;
string gs_860 = "";
string gs_868 = "";
int gi_876 = 0;
int gi_880 = -1;
double g_minlot_884 = 0.0;
double g_maxlot_892 = 0.0;
int g_leverage_900 = 0;
int g_lotsize_904 = 0;
double g_lotstep_908 = 0.0;
int g_datetime_916 = 0;
int g_datetime_920 = 0;
int g_datetime_924 = 0;
int g_datetime_928 = 0;
int gi_932;
int gi_936;
int gi_940 = 0;
int gi_944 = 1;
int gi_unused_948 = 3;
int gi_952 = 13;
int g_datetime_956 = 0;
int g_index_960 = 0;
int gia_964[1000];
string gsa_968[1000];
string gsa_972[1000];

// E37F0136AA3FFAF149B351F6A4C948E9
int init() {
   gi_856 = TRUE;
   gi_84 = FALSE;
   Comment("");
   if (ObjectFind("klc") >= 0) ObjectDelete("klc");
   if (ObjectFind("klc2") >= 0) ObjectDelete("klc2");
   if (ObjectFind("klc3") >= 0) ObjectDelete("klc3");
   return (0);
}

// 52D46093050F38C27267BCE42543EF60
int deinit() {
   Comment("");
   if (ObjectFind("klc") >= 0) ObjectDelete("klc");
   if (ObjectFind("klc2") >= 0) ObjectDelete("klc2");
   if (ObjectFind("klc3") >= 0) ObjectDelete("klc3");
   return (0);
}

// EA2B2676C28C0DB26D39331A336C6B92
int start() {
   double price_0;
   double price_8;
   double price_16;
   color color_32;
   string ls_48;
   int li_56;
   string ls_60;
   bool bool_68;
   bool bool_72;
   bool bool_76;
   double ld_88;
   string ls_104;
   int li_120;
   int li_300;
   int li_304;
   int li_308;
   int li_312;
   int li_316;
   int li_320;
   int li_324;
   int ticket_452;
   int ticket_456;
   int ticket_460;
   int ticket_464;
   double price_472;
   double price_480;
   double price_488;
   double price_496;
   double ld_504;
   double price_512;
   double price_520;
   double price_528;
   double ld_536;
   double price_544;
   double price_552;
   double price_560;
   string ls_616;
   double ld_40 = 1;
   if (gi_856) {
      gi_856 = FALSE;
      g_minlot_884 = MarketInfo(Symbol(), MODE_MINLOT);
      g_maxlot_892 = MarketInfo(Symbol(), MODE_MAXLOT);
      g_leverage_900 = AccountLeverage();
      g_lotsize_904 = MarketInfo(Symbol(), MODE_LOTSIZE);
      g_lotstep_908 = MarketInfo(Symbol(), MODE_LOTSTEP);
      gi_880 = -1;
      gs_828 = "";
      gs_836 = "";
      gs_844 = "";
      g_datetime_852 = 0;
   }
   if ((!IsTesting()) && IsStopped()) return (0);
   if ((!IsTesting()) && !IsTradeAllowed()) {
      Comment("Trading server: Trading is not Allowed ...");
      return (0);
   }
   if ((!IsTesting()) && IsTradeContextBusy()) {
      Comment("Trading server: Trade Context is Busy ...");
      return (0);
   }
   if (iATR(NULL, PERIOD_M5, 1, 1) < Point / 2.0) return (0);
   if (IsDllsAllowed() == FALSE) {
      Comment("Warning: Set Parameter **AllowDLL Imports** ON in menu Tools -> Options -> ExpertAdvisors.");
      Print("Warning: Set Parameter **AllowDLL Imports** ON in menu Tools -> Options -> ExpertAdvisors.");
      Alert("Warning: Set Parameter **AllowDLL Imports** ON in menu Tools -> Options -> ExpertAdvisors.");
      Sleep(30000);
      return (0);
   }
   gi_84 = TRUE;
   /*if ((!gi_84) && !IsTesting()) {
      if (IsDemo() == FALSE) ls_60 = "AccountType=2";
      else ls_60 = "AccountType=1";
      if (f0_11(gs_76 + "?AccountId=" + DoubleToStr(AccountNumber(), 0) + "&" + ls_60, ls_48)) {
         if (StringTrimRight(StringTrimLeft(f0_10(ls_48, 0, "<result>", "</result>", li_56))) == "OK") gi_84 = TRUE;
         else {
            Comment("Online validation is not passed. For more information, contact us at support@forex-combo.com!");
            Alert("Online validation is not passed. For more information, contact us at support@forex-combo.com!");
            Sleep(30000);
            return (0);
         }
      } else {
         Comment("\n Online validation failed (error number " + DoubleToStr(GetLastError(), 0) + "). Visit www.forex-combo.com for more information!");
         Alert("Online validation failed (error number " + DoubleToStr(GetLastError(), 0) + "). Visit www.forex-combo.com for more information!");
         Sleep(30000);
         return (0);
      }
   }*/
   if (gi_880 <= 0) {
      gi_880 = f0_23(AccountNumber(), IsTesting(), IsDemo(), WindowHandle(Symbol(), Period()), TimeCurrent());
      if (IsTesting()) Calculate_DST = FALSE;
      if (IsTesting() || AutoGMT_Offset == FALSE) gi_876 = ManualGMT_Offset;
      if (!IsTesting() && AutoGMT_Offset == TRUE && Calculate_DST == TRUE && (Month() > 3 && Month() < 11)) gi_876 = f0_17() - 1;
      if (!IsTesting() && AutoGMT_Offset == TRUE && Calculate_DST == TRUE && Month() <= 3 || Month() >= 11) gi_876 = f0_17();
      if (!IsTesting() && AutoGMT_Offset == TRUE && Calculate_DST == FALSE) gi_876 = f0_17();
   }
   if (gi_880 <= 0 && gi_84 && (!IsTesting())) {
      Comment("DLL initialization is failed (" + DoubleToStr(gi_880, 0) + "). For more information, contact us at support@forex-combo.com!");
      Alert("DLL initialization is failed (" + DoubleToStr(gi_880, 0) + "). For more information, contact us at support@forex-combo.com!");
      Sleep(10000);
      return (0);
   }
   if (gi_880 <= 0 && IsTesting()) Print("DLL initialization is failed (" + DoubleToStr(gi_880, 0) + "). Please register you test account at forex-combo.com!");
   int stoplevel_80 = MarketInfo(Symbol(), MODE_STOPLEVEL);
   bool li_84 = TRUE;
   if (stoplevel_80 == 0 || Use_ECN_Execution == TRUE || Hidden_StopAndTarget == TRUE) li_84 = FALSE;
   if (Digits <= 3) ld_88 = 0.01;
   else ld_88 = 0.0001;
   double ld_96 = NormalizeDouble((Ask - Bid) / ld_88, 1);
   if (IsTesting()) Calculate_DST = FALSE;
   if (Calculate_DST == TRUE) ls_104 = "YES";
   if (Calculate_DST == FALSE) ls_104 = "NO";
   string ls_112 = "*** SPREAD OK ***";
   if (ld_96 > MaxSPREAD) ls_112 = "*** SPREAD IS TOO HIGH ***";
   if (!IsTesting()) li_120 = f0_17();
   else li_120 = ManualGMT_Offset;
   gs_860 = "\n\n   Greenwich Mean Time : " + TimeToStr(TimeCurrent() - 3600 * li_120, TIME_DATE|TIME_MINUTES|TIME_SECONDS) 
      + "\n   Broker Time : " + TimeToStr(TimeCurrent(), TIME_DATE|TIME_MINUTES|TIME_SECONDS) 
   + "\n   Calculate DST: " + ls_104;
   string ls_124 = "FX COMBO is running on your account - Validation OK";
   string ls_132 = "FX COMBO is set up for time zone GMT " + gi_876;
   string ls_140 = "Spread= " + DoubleToStr(ld_96, 1) + " pips";
   string ls_148 = "Account Balance= " + DoubleToStr(AccountBalance(), 2);
   string ls_156 = ls_112;
   string ls_164 = "";
   f0_2();
   if (gs_836 != "") {
      ls_164 = "\n" 
      + gs_836;
   }
   ls_164 = ls_164 
   + "\n\n   " + gs_828;
   Comment("\n\n\n\n\n   " + ls_124 + " \n   " + ls_132 + " \n   " + ls_140 + " \n   " + ls_148 + " \n\n   " + ls_156 + " " + gs_860 + " " + gs_868 + ls_164);
   ObjectCreate("klc", OBJ_LABEL, 0, 0, 0);
   ObjectSetText("klc", "  ** FOREX COMBO SYSTEM 4 in 1 **", 9, "System", Red);
   ObjectSet("klc", OBJPROP_CORNER, 0);
   ObjectSet("klc", OBJPROP_XDISTANCE, 0);
   ObjectSet("klc", OBJPROP_YDISTANCE, 29);
   ObjectCreate("klc3", OBJ_LABEL, 0, 0, 0);
   ObjectSetText("klc3", "   Copyright � www.fxautomater.com ", 9, "System", Gray);
   ObjectSet("klc3", OBJPROP_CORNER, 0);
   ObjectSet("klc3", OBJPROP_XDISTANCE, 0);
   ObjectSet("klc3", OBJPROP_YDISTANCE, 45);
   if (UseAgresiveMM != TRUE) {
      LossFactorSys1 = 1;
      LossFactorSys2 = 1;
      LossFactorSys3 = 1;
      LossFactorSys4 = 1;
   }
   HideTestIndicators(TRUE);
   double iclose_172 = iClose(NULL, PERIOD_M15, 1);
   double ima_180 = iMA(NULL, PERIOD_M15, g_period_456, 0, MODE_SMMA, PRICE_CLOSE, 1);
   double iwpr_188 = iWPR(NULL, PERIOD_M15, g_period_464, 1);
   double iatr_196 = iATR(NULL, PERIOD_H1, g_period_524, 1);
   double ima_204 = iMA(NULL, PERIOD_H1, g_period_520, 0, MODE_EMA, PRICE_CLOSE, 1);
   double ld_212 = ima_204 + iatr_196 * gd_528;
   double ld_220 = ima_204 - iatr_196 * gd_528;
   double iclose_228 = iClose(NULL, PERIOD_M5, 1);
   double iatr_236 = iATR(NULL, PERIOD_M5, 5, 1);
   double iatr_244 = iATR(NULL, PERIOD_M5, g_period_664, 1);
   double ihigh_252 = iHigh(NULL, PERIOD_H1, 1);
   double ilow_260 = iLow(NULL, PERIOD_H1, 1);
   double ibands_268 = iBands(NULL, PERIOD_H1, g_period_676, 2, 0, PRICE_CLOSE, MODE_UPPER, 1);
   double ibands_276 = iBands(NULL, PERIOD_H1, g_period_676, 2, 0, PRICE_CLOSE, MODE_LOWER, 1);
   HideTestIndicators(FALSE);
   double ihigh_284 = iHigh(NULL, PERIOD_H1, iHighest(NULL, PERIOD_H1, MODE_HIGH, gi_716, 1));
   double ilow_292 = iLow(NULL, PERIOD_H1, iLowest(NULL, PERIOD_H1, MODE_LOW, gi_716, 1));
   if (gi_480 < 0) f0_19(gi_480, gi_484);
   if (gi_580 < 0) f0_8(gi_580, gi_584, gi_588, gi_592, gi_596, gi_600, gi_604, gi_608, gi_612, gi_616, gi_620, gi_624);
   if (TakeProfit < stoplevel_80 * Point / ld_88) li_300 = stoplevel_80 * Point / ld_88;
   else li_300 = TakeProfit;
   if (StopLoss < stoplevel_80 * Point / ld_88) li_304 = stoplevel_80 * Point / ld_88;
   else li_304 = StopLoss;
   if (TakeProfit_II < stoplevel_80 * Point / ld_88) li_308 = stoplevel_80 * Point / ld_88;
   else li_308 = TakeProfit_II;
   if (StopLoss_II < stoplevel_80 * Point / ld_88) li_312 = stoplevel_80 * Point / ld_88;
   else li_312 = StopLoss_II;
   if (TakeProfit_III < stoplevel_80 * Point / ld_88) li_316 = stoplevel_80 * Point / ld_88;
   else li_316 = TakeProfit_III;
   if (StopLoss_III < stoplevel_80 * Point / ld_88) li_320 = stoplevel_80 * Point / ld_88;
   else li_320 = StopLoss_III;
   if (StopLoss_IV < stoplevel_80 * Point / ld_88) li_324 = stoplevel_80 * Point / ld_88;
   else li_324 = StopLoss_IV;
   int li_328 = gi_480 + gi_876;
   int li_332 = gi_480 + gi_876;
   int li_336 = BegHourSys_III + gi_876;
   int li_340 = EndHourSys_III + gi_876;
   if (li_328 > 23) li_328 -= 24;
   if (li_328 < 0) li_328 += 24;
   if (li_336 > 23) li_336 -= 24;
   if (li_336 < 0) li_336 += 24;
   if (li_332 > 23) li_332 -= 24;
   if (li_332 < 0) li_332 += 24;
   if (li_340 > 23) li_340 -= 24;
   if (li_340 < 0) li_340 += 24;
   int li_344 = gi_580 + gi_876;
   int li_348 = gi_584 + gi_876;
   int li_352 = gi_588 + gi_876;
   int li_356 = gi_592 + gi_876;
   int li_360 = gi_596 + gi_876;
   int li_364 = gi_600 + gi_876;
   int li_368 = gi_604 + gi_876;
   int li_372 = gi_608 + gi_876;
   int li_376 = gi_612 + gi_876;
   int li_380 = gi_616 + gi_876;
   int li_384 = gi_620 + gi_876;
   int li_388 = gi_624 + gi_876;
   if (li_344 > 23) li_344 -= 24;
   if (li_344 < 0) li_344 += 24;
   if (li_348 > 23) li_348 -= 24;
   if (li_348 < 0) li_348 += 24;
   if (li_352 > 23) li_352 -= 24;
   if (li_352 < 0) li_352 += 24;
   if (li_356 > 23) li_356 -= 24;
   if (li_356 < 0) li_356 += 24;
   if (li_360 > 23) li_360 -= 24;
   if (li_360 < 0) li_360 += 24;
   if (li_364 > 23) li_364 -= 24;
   if (li_364 < 0) li_364 += 24;
   if (li_368 > 23) li_368 -= 24;
   if (li_368 < 0) li_368 += 24;
   if (li_372 > 23) li_372 -= 24;
   if (li_372 < 0) li_372 += 24;
   if (li_376 > 23) li_376 -= 24;
   if (li_376 < 0) li_376 += 24;
   if (li_380 > 23) li_380 -= 24;
   if (li_380 < 0) li_380 += 24;
   if (li_384 > 23) li_384 -= 24;
   if (li_384 < 0) li_384 += 24;
   if (li_388 > 23) li_388 -= 24;
   if (li_388 < 0) li_388 += 24;
   int slippage_392 = Slippage * (ld_88 / Point);
   int count_396 = 0;
   int count_400 = 0;
   int count_404 = 0;
   int count_408 = 0;
   int count_412 = 0;
   int count_416 = 0;
   int count_420 = 0;
   int count_424 = 0;
   int datetime_428 = g_datetime_916;
   int li_432 = g_datetime_916 + gi_544;
   int datetime_436 = g_datetime_920;
   int li_440 = g_datetime_920 + gi_652;
   int datetime_444 = g_datetime_924;
   int li_448 = g_datetime_924 + gi_744;
   for (int pos_468 = OrdersTotal() - 1; pos_468 >= 0; pos_468--) {
      if (!OrderSelect(pos_468, SELECT_BY_POS, MODE_TRADES)) Print("Error in OrderSelect! Position:", pos_468);
      else {
         if (OrderType() <= OP_SELL && OrderSymbol() == Symbol()) {
            if (OrderMagicNumber() == Magic1) {
               if (OrderType() == OP_BUY) {
                  if (OrderStopLoss() == 0.0 && Hidden_StopAndTarget == FALSE) {
                     price_472 = NormalizeDouble(OrderOpenPrice() - li_304 * ld_88, Digits);
                     price_480 = NormalizeDouble(OrderOpenPrice() + li_300 * ld_88, Digits);
                     OrderModify(OrderTicket(), OrderOpenPrice(), price_472, price_480, 0, Green);
                  }
                  if ((f0_22(gi_880, iwpr_188, OSC_close) == 0 && Bid > iclose_172 + gi_476 * ld_88) || Bid >= OrderOpenPrice() + li_300 * ld_88 || Bid <= OrderOpenPrice() - li_304 * ld_88) {
                     RefreshRates();
                     OrderClose(OrderTicket(), OrderLots(), NormalizeDouble(Bid, Digits), slippage_392, Violet);
                     Sleep(5000);
                  } else count_396++;
               } else {
                  if (OrderStopLoss() == 0.0 && Hidden_StopAndTarget == FALSE) {
                     price_472 = NormalizeDouble(OrderOpenPrice() + li_304 * ld_88, Digits);
                     price_480 = NormalizeDouble(OrderOpenPrice() - li_300 * ld_88, Digits);
                     OrderModify(OrderTicket(), OrderOpenPrice(), price_472, price_480, 0, Green);
                  }
                  if ((f0_22(gi_880, iwpr_188, OSC_close) == 1 && Bid < iclose_172 - gi_476 * ld_88) || Ask <= OrderOpenPrice() - li_300 * ld_88 || Ask >= OrderOpenPrice() + li_304 * ld_88) {
                     RefreshRates();
                     OrderClose(OrderTicket(), OrderLots(), NormalizeDouble(Ask, Digits), slippage_392, Violet);
                     Sleep(5000);
                  } else count_400++;
               }
            }
            if (OrderMagicNumber() == Magic2) {
               if (OrderType() == OP_BUY) {
                  if (OrderStopLoss() == 0.0 && Hidden_StopAndTarget == FALSE) {
                     price_488 = NormalizeDouble(OrderOpenPrice() - li_312 * ld_88, Digits);
                     price_496 = NormalizeDouble(OrderOpenPrice() + li_308 * ld_88, Digits);
                     OrderModify(OrderTicket(), OrderOpenPrice(), price_488, price_496, 0, Green);
                  }
                  if ((f0_24(gi_880, iclose_228, ld_220, ld_212, Break * ld_88) == 0 && TimeCurrent() - OrderOpenTime() > 3600) || Bid >= OrderOpenPrice() + li_308 * ld_88 || Bid <= OrderOpenPrice() - li_312 * ld_88) {
                     RefreshRates();
                     OrderClose(OrderTicket(), OrderLots(), NormalizeDouble(Bid, Digits), slippage_392, Violet);
                     Sleep(5000);
                  } else count_404++;
                  if (TimeCurrent() >= li_432) {
                     if (Use_Exp_Trailing_II) {
                        ld_504 = f0_9(Exp_Trail_Factor_II * ld_88, OrderOpenPrice(), iHigh(NULL, PERIOD_M5, iHighest(NULL, PERIOD_M5, MODE_HIGH, iBarShift(NULL, PERIOD_M5, OrderOpenTime()) +
                           1, 0)));
                     } else ld_504 = iatr_196 * ATRTrailingFactor2;
                     if (ld_504 > MaxPipsTrailing2 * ld_88) ld_504 = MaxPipsTrailing2 * ld_88;
                     if (ld_504 < MinPipsTrailing2 * ld_88) ld_504 = MinPipsTrailing2 * ld_88;
                     if (Bid - OrderOpenPrice() > F_TrailingProfit_II * ld_88 && (!Use_Exp_Trailing_II)) ld_504 = F_Trailing_II * ld_88;
                     price_512 = NormalizeDouble(Bid - ld_504, Digits);
                     if (Hidden_StopAndTarget) {
                        if (TimeCurrent() - OrderOpenTime() > 60 && Bid <= MathMax(OrderOpenPrice() - li_312 * ld_88, iHigh(NULL, PERIOD_M5, iHighest(NULL, PERIOD_M5, MODE_HIGH, iBarShift(NULL,
                           PERIOD_M5, OrderOpenTime()) + 1, 0)) - ld_504) && iHigh(NULL, PERIOD_M5, iHighest(NULL, PERIOD_M5, MODE_HIGH, iBarShift(NULL, PERIOD_M5, OrderOpenTime()) + 1, 0)) - OrderOpenPrice() > ld_504) {
                           RefreshRates();
                           OrderClose(OrderTicket(), OrderLots(), NormalizeDouble(Bid, Digits), slippage_392, Violet);
                           Sleep(5000);
                        }
                     } else {
                        if (Bid - OrderOpenPrice() > ld_504) {
                           if (OrderStopLoss() <= price_512 - Point) {
                              bool_68 = OrderModify(OrderTicket(), OrderOpenPrice(), price_512, OrderTakeProfit(), 0, Blue);
                              if (bool_68) {
                                 datetime_428 = TimeCurrent();
                                 g_datetime_916 = datetime_428;
                              }
                           }
                        }
                     }
                  }
               } else {
                  if (OrderStopLoss() == 0.0 && Hidden_StopAndTarget == FALSE) {
                     price_488 = NormalizeDouble(OrderOpenPrice() + li_312 * ld_88, Digits);
                     price_496 = NormalizeDouble(OrderOpenPrice() - li_308 * ld_88, Digits);
                     OrderModify(OrderTicket(), OrderOpenPrice(), price_488, price_496, 0, Green);
                  }
                  if ((f0_24(gi_880, iclose_228, ld_220, ld_212, Break * ld_88) == 1 && TimeCurrent() - OrderOpenTime() > 3600) || Ask <= OrderOpenPrice() - li_308 * ld_88 || Ask >= OrderOpenPrice() +
                     li_312 * ld_88) {
                     RefreshRates();
                     OrderClose(OrderTicket(), OrderLots(), NormalizeDouble(Ask, Digits), slippage_392, Violet);
                     Sleep(5000);
                  } else count_408++;
                  if (TimeCurrent() >= li_432) {
                     if (Use_Exp_Trailing_II) {
                        ld_504 = f0_16(Exp_Trail_Factor_II * ld_88, OrderOpenPrice(), iLow(NULL, PERIOD_M5, iLowest(NULL, PERIOD_M5, MODE_LOW, iBarShift(NULL, PERIOD_M5, OrderOpenTime()) +
                           1, 0)) + Ask - Bid);
                     } else ld_504 = iatr_196 * ATRTrailingFactor2;
                     if (ld_504 > MaxPipsTrailing2 * ld_88) ld_504 = MaxPipsTrailing2 * ld_88;
                     if (ld_504 < MinPipsTrailing2 * ld_88) ld_504 = MinPipsTrailing2 * ld_88;
                     if (OrderOpenPrice() - Ask > F_TrailingProfit_II * ld_88 && (!Use_Exp_Trailing_II)) ld_504 = F_Trailing_II * ld_88;
                     price_512 = NormalizeDouble(Ask + ld_504, Digits);
                     if (Hidden_StopAndTarget) {
                        if (TimeCurrent() - OrderOpenTime() > 60 && Ask >= Ask - Bid + MathMin(OrderOpenPrice() + li_312 * ld_88, iLow(NULL, PERIOD_M5, iLowest(NULL, PERIOD_M5, MODE_LOW,
                           iBarShift(NULL, PERIOD_M5, OrderOpenTime()) + 1, 0)) + ld_504) && OrderOpenPrice() - (iLow(NULL, PERIOD_M5, iLowest(NULL, PERIOD_M5, MODE_LOW, iBarShift(NULL, PERIOD_M5,
                           OrderOpenTime()) + 1, 0)) + Ask - Bid) > ld_504) {
                           RefreshRates();
                           OrderClose(OrderTicket(), OrderLots(), NormalizeDouble(Ask, Digits), slippage_392, Violet);
                           Sleep(5000);
                        }
                     } else {
                        if (OrderOpenPrice() - Ask > ld_504) {
                           if (OrderStopLoss() >= price_512 + Point) {
                              bool_68 = OrderModify(OrderTicket(), OrderOpenPrice(), price_512, OrderTakeProfit(), 0, Red);
                              if (bool_68) {
                                 datetime_428 = TimeCurrent();
                                 g_datetime_916 = datetime_428;
                              }
                           }
                        }
                     }
                  }
               }
            }
            if (OrderMagicNumber() == Magic3) {
               if (OrderType() == OP_BUY) {
                  if (OrderStopLoss() == 0.0 && Hidden_StopAndTarget == FALSE) {
                     price_520 = NormalizeDouble(OrderOpenPrice() - li_320 * ld_88, Digits);
                     price_528 = NormalizeDouble(OrderOpenPrice() + li_316 * ld_88, Digits);
                     OrderModify(OrderTicket(), OrderOpenPrice(), price_520, price_528, 0, Green);
                  }
                  if (((li_336 <= li_340 && TimeHour(TimeCurrent()) >= li_336 && TimeHour(TimeCurrent()) <= li_340) || (li_336 > li_340 && TimeHour(TimeCurrent()) >= li_336 || TimeHour(TimeCurrent()) <= li_340) &&
                     f0_20(gi_880, ibands_268, ibands_276, gi_684 * ld_88, ihigh_252, ilow_260, gi_680 * ld_88) == 0 && TimeCurrent() - OrderOpenTime() > 7200) || Bid >= OrderOpenPrice() +
                     li_316 * ld_88 || Bid <= OrderOpenPrice() - li_320 * ld_88) {
                     RefreshRates();
                     OrderClose(OrderTicket(), OrderLots(), NormalizeDouble(Bid, Digits), slippage_392, Violet);
                     Sleep(5000);
                  } else count_412++;
                  if (TimeCurrent() >= li_440) {
                     if (Use_Exp_Trailing_III) {
                        ld_536 = Exp_Trail_Factor_III * ld_88 / MathMax(ld_88, iHigh(NULL, PERIOD_M5, iHighest(NULL, PERIOD_M5, MODE_HIGH, iBarShift(NULL, PERIOD_M5, OrderOpenTime()) + 1,
                           0)) - OrderOpenPrice());
                     } else ld_536 = iatr_244 * gd_668;
                     if (ld_536 > MaxPipsTrailing3 * ld_88) ld_536 = MaxPipsTrailing3 * ld_88;
                     if (ld_536 < MinPipsTrailing3 * ld_88) ld_536 = MinPipsTrailing3 * ld_88;
                     if (Bid - OrderOpenPrice() > F_TrailingProfit_III * ld_88 && (!Use_Exp_Trailing_III)) ld_536 = F_Trailing_III * ld_88;
                     price_544 = NormalizeDouble(Bid - ld_536, Digits);
                     if (Hidden_StopAndTarget) {
                        if (TimeCurrent() - OrderOpenTime() > 300 && Bid <= MathMax(OrderOpenPrice() - li_320 * ld_88, iHigh(NULL, PERIOD_M5, iHighest(NULL, PERIOD_M5, MODE_HIGH, iBarShift(NULL,
                           PERIOD_M5, OrderOpenTime()) + 1, 0)) - ld_536) && iHigh(NULL, PERIOD_M5, iHighest(NULL, PERIOD_M5, MODE_HIGH, iBarShift(NULL, PERIOD_M5, OrderOpenTime()) + 1, 0)) - OrderOpenPrice() > ld_536) {
                           RefreshRates();
                           OrderClose(OrderTicket(), OrderLots(), NormalizeDouble(Bid, Digits), slippage_392, Violet);
                           Sleep(5000);
                        }
                     } else {
                        if (Bid - OrderOpenPrice() > ld_536) {
                           if (OrderStopLoss() <= price_544 - Point) {
                              bool_72 = OrderModify(OrderTicket(), OrderOpenPrice(), price_544, OrderTakeProfit(), 0, Blue);
                              if (bool_72) {
                                 datetime_436 = TimeCurrent();
                                 g_datetime_920 = datetime_436;
                              }
                           }
                        }
                     }
                  }
               } else {
                  if (OrderStopLoss() == 0.0 && Hidden_StopAndTarget == FALSE) {
                     price_520 = NormalizeDouble(OrderOpenPrice() + li_320 * ld_88, Digits);
                     price_528 = NormalizeDouble(OrderOpenPrice() - li_316 * ld_88, Digits);
                     OrderModify(OrderTicket(), OrderOpenPrice(), price_520, price_528, 0, Green);
                  }
                  if (((li_336 <= li_340 && TimeHour(TimeCurrent()) >= li_336 && TimeHour(TimeCurrent()) <= li_340) || (li_336 > li_340 && TimeHour(TimeCurrent()) >= li_336 || TimeHour(TimeCurrent()) <= li_340) &&
                     f0_20(gi_880, ibands_268, ibands_276, gi_684 * ld_88, ihigh_252, ilow_260, gi_680 * ld_88) == 1 && TimeCurrent() - OrderOpenTime() > 7200) || Ask <= OrderOpenPrice() - li_316 * ld_88 ||
                     Ask >= OrderOpenPrice() + li_320 * ld_88) {
                     RefreshRates();
                     OrderClose(OrderTicket(), OrderLots(), NormalizeDouble(Ask, Digits), slippage_392, Violet);
                     Sleep(5000);
                  } else count_416++;
                  if (TimeCurrent() >= li_440) {
                     if (Use_Exp_Trailing_III) {
                        ld_536 = Exp_Trail_Factor_III * ld_88 / MathMax(ld_88, OrderOpenPrice() - (iLow(NULL, PERIOD_M5, iLowest(NULL, PERIOD_M5, MODE_LOW, iBarShift(NULL, PERIOD_M5, OrderOpenTime()) +
                           1, 0)) + Ask - Bid));
                     } else ld_536 = iatr_244 * gd_668;
                     if (ld_536 > MaxPipsTrailing3 * ld_88) ld_536 = MaxPipsTrailing3 * ld_88;
                     if (ld_536 < MinPipsTrailing3 * ld_88) ld_536 = MinPipsTrailing3 * ld_88;
                     if (OrderOpenPrice() - Ask > F_TrailingProfit_III * ld_88 && (!Use_Exp_Trailing_III)) ld_536 = F_Trailing_III * ld_88;
                     price_544 = NormalizeDouble(Ask + ld_536, Digits);
                     if (Hidden_StopAndTarget) {
                        if (TimeCurrent() - OrderOpenTime() > 300 && Ask >= Ask - Bid + MathMin(OrderOpenPrice() + li_320 * ld_88, iLow(NULL, PERIOD_M5, iLowest(NULL, PERIOD_M5, MODE_LOW,
                           iBarShift(NULL, PERIOD_M5, OrderOpenTime()) + 1, 0)) + ld_536) && OrderOpenPrice() - (iLow(NULL, PERIOD_M5, iLowest(NULL, PERIOD_M5, MODE_LOW, iBarShift(NULL, PERIOD_M5,
                           OrderOpenTime()) + 1, 0)) + Ask - Bid) > ld_536) {
                           RefreshRates();
                           OrderClose(OrderTicket(), OrderLots(), NormalizeDouble(Ask, Digits), slippage_392, Violet);
                           Sleep(5000);
                        }
                     } else {
                        if (OrderOpenPrice() - Ask > ld_536) {
                           if (OrderStopLoss() >= price_544 + Point) {
                              bool_72 = OrderModify(OrderTicket(), OrderOpenPrice(), price_544, OrderTakeProfit(), 0, Red);
                              if (bool_72) {
                                 datetime_436 = TimeCurrent();
                                 g_datetime_920 = datetime_436;
                              }
                           }
                        }
                     }
                  }
               }
            }
            if (OrderMagicNumber() == Magic4) {
               if (OrderType() == OP_BUY) {
                  if (OrderStopLoss() == 0.0 && Hidden_StopAndTarget == FALSE) {
                     price_552 = NormalizeDouble(ilow_292 - li_324 * ld_88, Digits);
                     price_560 = NormalizeDouble(OrderOpenPrice() + (ihigh_284 - ilow_292) * TargetPercent, Digits);
                     OrderModify(OrderTicket(), OrderOpenPrice(), price_552, price_560, 0, Green);
                  }
                  if ((TimeCurrent() - OrderOpenTime() > 300 && f0_15(gi_880, iClose(NULL, ReverseTF, 1), iOpen(NULL, ReverseTF, 1), Bid - OrderOpenPrice(), ExitProfit * ld_88) == 0) ||
                     Bid >= OrderOpenPrice() + (iHigh(NULL, PERIOD_H1, iHighest(NULL, PERIOD_H1, MODE_HIGH, gi_716, iBarShift(NULL, PERIOD_H1, OrderOpenTime()) + 1)) - iLow(NULL, PERIOD_H1,
                     iLowest(NULL, PERIOD_H1, MODE_LOW, gi_716, iBarShift(NULL, PERIOD_H1, OrderOpenTime()) + 1))) * TargetPercent || Bid <= iLow(NULL, PERIOD_H1, iLowest(NULL, PERIOD_H1,
                     MODE_LOW, gi_716, iBarShift(NULL, PERIOD_H1, OrderOpenTime()) + 1)) - li_324 * ld_88) {
                     RefreshRates();
                     OrderClose(OrderTicket(), OrderLots(), NormalizeDouble(Bid, Digits), slippage_392, Violet);
                     Sleep(5000);
                  } else count_420++;
                  if (TimeCurrent() < li_448) continue;
                  if (Use_Exp_Trailing_IV) {
                     ld_536 = Exp_Trail_Factor_IV * ld_88 / MathMax(ld_88, iHigh(NULL, PERIOD_M5, iHighest(NULL, PERIOD_M5, MODE_HIGH, iBarShift(NULL, PERIOD_M5, OrderOpenTime()) + 1,
                        0)) - OrderOpenPrice());
                  } else ld_536 = iatr_244 * gd_756;
                  if (ld_536 > gi_748 * ld_88) ld_536 = gi_748 * ld_88;
                  if (ld_536 < gi_752 * ld_88) ld_536 = gi_752 * ld_88;
                  if (Bid - OrderOpenPrice() > gi_764 * ld_88 && (!Use_Exp_Trailing_IV)) ld_536 = gi_768 * ld_88;
                  price_544 = NormalizeDouble(Bid - ld_536, Digits);
                  if (Hidden_StopAndTarget) {
                     if (!(TimeCurrent() - OrderOpenTime() > 300 && Bid <= MathMax(OrderOpenPrice() - li_324 * ld_88, iHigh(NULL, PERIOD_M5, iHighest(NULL, PERIOD_M5, MODE_HIGH, iBarShift(NULL,
                        PERIOD_M5, OrderOpenTime()) + 1, 0)) - ld_536) && iHigh(NULL, PERIOD_M5, iHighest(NULL, PERIOD_M5, MODE_HIGH, iBarShift(NULL, PERIOD_M5, OrderOpenTime()) + 1, 0)) - OrderOpenPrice() > ld_536)) continue;
                     RefreshRates();
                     OrderClose(OrderTicket(), OrderLots(), NormalizeDouble(Bid, Digits), slippage_392, Violet);
                     Sleep(5000);
                  } else {
                     if (Bid - OrderOpenPrice() <= ld_536) continue;
                     if (OrderStopLoss() > price_544 - Point) continue;
                     bool_76 = OrderModify(OrderTicket(), OrderOpenPrice(), price_544, OrderTakeProfit(), 0, Blue);
                     if (!(bool_76)) continue;
                     datetime_444 = TimeCurrent();
                     g_datetime_924 = datetime_444;
                     continue;
                  }
               }
               if (OrderStopLoss() == 0.0 && Hidden_StopAndTarget == FALSE) {
                  price_552 = NormalizeDouble(ihigh_284 + li_324 * ld_88, Digits);
                  price_560 = NormalizeDouble(OrderOpenPrice() - (ihigh_284 - ilow_292) * TargetPercent, Digits);
                  OrderModify(OrderTicket(), OrderOpenPrice(), price_552, price_560, 0, Green);
               }
               if ((TimeCurrent() - OrderOpenTime() > 300 && f0_15(gi_880, iClose(NULL, ReverseTF, 1), iOpen(NULL, ReverseTF, 1), OrderOpenPrice() - Ask, ExitProfit * ld_88) == 1) ||
                  Ask <= OrderOpenPrice() - (iHigh(NULL, PERIOD_H1, iHighest(NULL, PERIOD_H1, MODE_HIGH, gi_716, iBarShift(NULL, PERIOD_H1, OrderOpenTime()) + 1)) - iLow(NULL, PERIOD_H1,
                  iLowest(NULL, PERIOD_H1, MODE_LOW, gi_716, iBarShift(NULL, PERIOD_H1, OrderOpenTime()) + 1))) * TargetPercent || Ask >= iHigh(NULL, PERIOD_H1, iHighest(NULL, PERIOD_H1,
                  MODE_HIGH, gi_716, iBarShift(NULL, PERIOD_H1, OrderOpenTime()) + 1)) + li_324 * ld_88) {
                  RefreshRates();
                  OrderClose(OrderTicket(), OrderLots(), NormalizeDouble(Ask, Digits), slippage_392, Violet);
                  Sleep(5000);
               } else count_424++;
               if (TimeCurrent() >= li_448) {
                  if (Use_Exp_Trailing_IV) {
                     ld_536 = Exp_Trail_Factor_IV * ld_88 / MathMax(ld_88, OrderOpenPrice() - (iLow(NULL, PERIOD_M5, iLowest(NULL, PERIOD_M5, MODE_LOW, iBarShift(NULL, PERIOD_M5, OrderOpenTime()) +
                        1, 0)) + Ask - Bid));
                  } else ld_536 = iatr_244 * gd_756;
                  if (ld_536 > gi_748 * ld_88) ld_536 = gi_748 * ld_88;
                  if (ld_536 < gi_752 * ld_88) ld_536 = gi_752 * ld_88;
                  if (OrderOpenPrice() - Ask > F_TrailingProfit_III * ld_88 && (!Use_Exp_Trailing_IV)) ld_536 = gi_768 * ld_88;
                  price_544 = NormalizeDouble(Ask + ld_536, Digits);
                  if (Hidden_StopAndTarget) {
                     if (!(TimeCurrent() - OrderOpenTime() > 300 && Ask >= Ask - Bid + MathMin(OrderOpenPrice() + li_324 * ld_88, iLow(NULL, PERIOD_M5, iLowest(NULL, PERIOD_M5, MODE_LOW,
                        iBarShift(NULL, PERIOD_M5, OrderOpenTime()) + 1, 0)) + ld_536) && OrderOpenPrice() - (iLow(NULL, PERIOD_M5, iLowest(NULL, PERIOD_M5, MODE_LOW, iBarShift(NULL, PERIOD_M5,
                        OrderOpenTime()) + 1, 0)) + Ask - Bid) > ld_536)) continue;
                     RefreshRates();
                     OrderClose(OrderTicket(), OrderLots(), NormalizeDouble(Ask, Digits), slippage_392, Violet);
                     Sleep(5000);
                     continue;
                  }
                  if (OrderOpenPrice() - Ask > ld_536) {
                     if (OrderStopLoss() >= price_544 + Point) {
                        bool_76 = OrderModify(OrderTicket(), OrderOpenPrice(), price_544, OrderTakeProfit(), 0, Red);
                        if (bool_76) {
                           datetime_444 = TimeCurrent();
                           g_datetime_924 = datetime_444;
                        }
                     }
                  }
               }
            }
         }
      }
   }
   double ld_568 = 0;
   if (StringSubstr(AccountCurrency(), 0, 3) == "JPY") {
      ld_568 = MarketInfo("USDJPY" + StringSubstr(Symbol(), 6), MODE_BID);
      if (ld_568 > 0.1) ld_40 = ld_568;
      else ld_40 = 84;
   }
   if (StringSubstr(AccountCurrency(), 0, 3) == "GBP") {
      ld_568 = MarketInfo("GBPUSD" + StringSubstr(Symbol(), 6), MODE_BID);
      if (ld_568 > 0.1) ld_40 = 1 / ld_568;
      else ld_40 = 0.6211180124;
   }
   if (StringSubstr(AccountCurrency(), 0, 3) == "EUR") {
      ld_568 = MarketInfo("EURUSD" + StringSubstr(Symbol(), 6), MODE_BID);
      if (ld_568 > 0.1) ld_40 = 1 / ld_568;
      else ld_40 = 0.7042253521;
   }
   if (EMAIL_Notification == TRUE) f0_7();
   bool li_576 = TRUE;
   bool li_580 = TRUE;
   if (No_Hedge_Trades == TRUE && count_400 > 0 || count_408 > 0 || count_416 > 0 || count_424 > 0) li_576 = FALSE;
   if (No_Hedge_Trades == TRUE && count_396 > 0 || count_404 > 0 || count_412 > 0 || count_420 > 0) li_580 = FALSE;
   if (NFA_Compatibility == TRUE && count_400 > 0 || count_408 > 0 || count_416 > 0 || count_424 > 0 || count_396 > 0 || count_404 > 0 || count_412 > 0 || count_420 > 0) {
      li_576 = FALSE;
      li_580 = FALSE;
   }
   double lots_584 = MathMin(g_maxlot_892, MathMax(g_minlot_884, LotsSys1));
   if (TradeMMSys1 > 0.0) lots_584 = MathMax(g_minlot_884, MathMin(g_maxlot_892, NormalizeDouble(f0_18() / ld_40 / 100.0 * AccountFreeMargin() / g_lotstep_908 / (g_lotsize_904 / 100), 0) * g_lotstep_908));
   if (lots_584 > MaximalLots) lots_584 = MaximalLots;
   double lots_592 = MathMin(g_maxlot_892, MathMax(g_minlot_884, LotsSys2));
   if (TradeMMSys2 > 0.0) lots_592 = MathMax(g_minlot_884, MathMin(g_maxlot_892, NormalizeDouble(f0_0() / ld_40 / 100.0 * AccountFreeMargin() / g_lotstep_908 / (g_lotsize_904 / 100), 0) * g_lotstep_908));
   if (lots_592 > MaximalLots) lots_592 = MaximalLots;
   double lots_600 = MathMin(g_maxlot_892, MathMax(g_minlot_884, LotsSys3));
   if (TradeMMSys3 > 0.0) lots_600 = MathMax(g_minlot_884, MathMin(g_maxlot_892, NormalizeDouble(f0_13() / ld_40 / 100.0 * AccountFreeMargin() / g_lotstep_908 / (g_lotsize_904 / 100), 0) * g_lotstep_908));
   if (lots_600 > MaximalLots) lots_600 = MaximalLots;
   double lots_608 = MathMin(g_maxlot_892, MathMax(g_minlot_884, LotsSys4));
   if (TradeMMSys4 > 0.0) lots_608 = MathMax(g_minlot_884, MathMin(g_maxlot_892, NormalizeDouble(f0_21() / ld_40 / 100.0 * AccountFreeMargin() / g_lotstep_908 / (g_lotsize_904 / 100), 0) * g_lotstep_908));
   if (lots_608 > MaximalLots) lots_608 = MaximalLots;
   if (!Use_FXCOMBO_Scalping) lots_584 = 0;
   if (!Use_FXCOMBO_Breakout) lots_592 = 0;
   if (!Use_FXCOMBO_Reversal) lots_600 = 0;
   if (!Use_FXCOMBO_EuroRange) lots_608 = 0;
   gs_868 = "\n\n   LOTS Sys1 : " + DoubleToStr(lots_584, 2) 
      + "\n   LOTS Sys2 : " + DoubleToStr(lots_592, 2) 
      + "\n   LOTS Sys3 : " + DoubleToStr(lots_600, 2) 
   + "\n   LOTS Sys4 : " + DoubleToStr(lots_608, 2);
   int cmd_36 = -1;
   if (Use_FXCOMBO_Scalping != FALSE) {
      if (count_396 < 1 && li_576 && f0_3(gi_880, iclose_172, ima_180, TREND_STR * ld_88, iwpr_188, OSC_open, gi_488, Hour(), li_328, li_332) == 0 && Bid < iclose_172 - gi_476 * ld_88) {
         if (ld_96 > MaxSPREAD) Print("System 1 BUY not taken due to high spead!");
         else {
            ls_616 = "BUY";
            cmd_36 = 0;
            color_32 = Aqua;
            RefreshRates();
            price_0 = NormalizeDouble(Ask, Digits);
            price_8 = price_0 - li_304 * ld_88;
            price_16 = price_0 + li_300 * ld_88;
         }
      }
      if (count_400 < 1 && li_580 && f0_3(gi_880, iclose_172, ima_180, TREND_STR * ld_88, iwpr_188, OSC_open, gi_488, Hour(), li_328, li_332) == 1 && Bid > iclose_172 +
         gi_476 * ld_88) {
         if (ld_96 > MaxSPREAD) Print("System 1 SELL not taken due to high spead!");
         else {
            ls_616 = "SELL";
            cmd_36 = 1;
            color_32 = Red;
            RefreshRates();
            price_0 = NormalizeDouble(Bid, Digits);
            price_8 = price_0 + li_304 * ld_88;
            price_16 = price_0 - li_300 * ld_88;
         }
      }
   }
   if (cmd_36 >= OP_BUY && NewsFilterSys1 == FALSE || (NewsFilterSys1 && f0_12())) {
      if (li_84 == FALSE) ticket_452 = OrderSend(Symbol(), cmd_36, lots_584, price_0, slippage_392, 0, 0, CommentSys1, Magic1, 0, color_32);
      else ticket_452 = OrderSend(Symbol(), cmd_36, lots_584, price_0, slippage_392, price_8, price_16, CommentSys1, Magic1, 0, color_32);
      Sleep(5000);
      if (ticket_452 > 0) {
         if (OrderSelect(ticket_452, SELECT_BY_TICKET, MODE_TRADES)) Print("Order " + ls_616 + " opened!: ", OrderOpenPrice());
      } else Print("Error opening " + ls_616 + " order!: ", GetLastError());
   } else {
      if (cmd_36 >= OP_BUY && NewsFilterSys1 && g_datetime_928 != iTime(NULL, PERIOD_M5, 1)) {
         g_datetime_928 = iTime(NULL, PERIOD_M5, 1);
         if (cmd_36 == OP_BUY) Print("BUY skipped: " + gs_844);
         else Print("SELL skipped: " + gs_844);
      }
   }
   cmd_36 = -1;
   if (!(TimeHour(TimeCurrent()) != li_344 && TimeHour(TimeCurrent()) != li_348 && TimeHour(TimeCurrent()) != li_352 && TimeHour(TimeCurrent()) != li_356 && TimeHour(TimeCurrent()) != li_360 &&
      TimeHour(TimeCurrent()) != li_364 && TimeHour(TimeCurrent()) != li_368 && TimeHour(TimeCurrent()) != li_372 && TimeHour(TimeCurrent()) != li_376 && TimeHour(TimeCurrent()) != li_380 && TimeHour(TimeCurrent()) != li_384) ||
      !(TimeHour(TimeCurrent()) != li_388)) {
      if (Use_FXCOMBO_Breakout != FALSE) {
         if (DayOfWeek() != gi_576) {
            if (f0_4()) {
               if (count_408 < 1 && li_580 && f0_6(gi_880, iclose_228, ld_220, ld_212, Break * ld_88, Bid, (Break - 3) * ld_88) == 1) {
                  if (ld_96 > MaxSPREAD) Print("System 2 SELL not taken due to high spead!");
                  else {
                     ls_616 = "SELL";
                     cmd_36 = 1;
                     color_32 = Yellow;
                     RefreshRates();
                     price_0 = NormalizeDouble(Bid, Digits);
                     price_8 = price_0 + li_312 * ld_88;
                     price_16 = price_0 - li_308 * ld_88;
                  }
               }
               if (count_404 < 1 && li_576 && f0_6(gi_880, iclose_228, ld_220, ld_212, Break * ld_88, Bid, (Break - 3) * ld_88) == 0) {
                  if (ld_96 > MaxSPREAD) Print("System 2 BUY not taken due to high spead!");
                  else {
                     ls_616 = "BUY";
                     cmd_36 = 0;
                     color_32 = DodgerBlue;
                     RefreshRates();
                     price_0 = NormalizeDouble(Ask, Digits);
                     price_8 = price_0 - li_312 * ld_88;
                     price_16 = price_0 + li_308 * ld_88;
                  }
               }
            }
         }
      }
   }
   if (cmd_36 >= OP_BUY && NewsFilterSys2 == FALSE || (NewsFilterSys2 && f0_12())) {
      if (li_84 == FALSE) ticket_456 = OrderSend(Symbol(), cmd_36, lots_592, price_0, slippage_392, 0, 0, CommentSys2, Magic2, 0, color_32);
      else ticket_456 = OrderSend(Symbol(), cmd_36, lots_592, price_0, slippage_392, price_8, price_16, CommentSys2, Magic2, 0, color_32);
      Sleep(5000);
      if (ticket_456 > 0) {
         if (OrderSelect(ticket_456, SELECT_BY_TICKET, MODE_TRADES)) Print("Order " + ls_616 + " opened!: ", OrderOpenPrice());
      } else Print("Error opening " + ls_616 + " order!: ", GetLastError());
   } else {
      if (cmd_36 >= OP_BUY && NewsFilterSys2 && g_datetime_928 != iTime(NULL, PERIOD_M5, 1)) {
         g_datetime_928 = iTime(NULL, PERIOD_M5, 1);
         if (cmd_36 == OP_BUY) Print("BUY skipped: " + gs_844);
         else Print("SELL skipped: " + gs_844);
      }
   }
   cmd_36 = -1;
   if (Use_FXCOMBO_Reversal != FALSE) {
      if (count_412 < 1 && li_576 && (li_336 <= li_340 && TimeHour(TimeCurrent()) >= li_336 && TimeHour(TimeCurrent()) <= li_340) || (li_336 > li_340 && TimeHour(TimeCurrent()) >= li_336 ||
         TimeHour(TimeCurrent()) <= li_340) && f0_14(gi_880, ibands_268, ibands_276, gi_684 * ld_88, ihigh_252, ilow_260, gi_680 * ld_88) == 0) {
         if (ld_96 > MaxSPREAD) Print("System 3 BUY not taken due to high spead!");
         else {
            ls_616 = "BUY";
            cmd_36 = 0;
            color_32 = Aqua;
            RefreshRates();
            price_0 = NormalizeDouble(Ask, Digits);
            price_8 = price_0 - li_320 * ld_88;
            price_16 = price_0 + li_316 * ld_88;
         }
      }
      if (count_416 < 1 && li_580 && (li_336 <= li_340 && TimeHour(TimeCurrent()) >= li_336 && TimeHour(TimeCurrent()) <= li_340) || (li_336 > li_340 && TimeHour(TimeCurrent()) >= li_336 ||
         TimeHour(TimeCurrent()) <= li_340) && f0_14(gi_880, ibands_268, ibands_276, gi_684 * ld_88, ihigh_252, ilow_260, gi_680 * ld_88) == 1) {
         if (ld_96 > MaxSPREAD) Print("System 3 SELL not taken due to high spead!");
         else {
            ls_616 = "SELL";
            cmd_36 = 1;
            color_32 = DeepPink;
            RefreshRates();
            price_0 = NormalizeDouble(Bid, Digits);
            price_8 = price_0 + li_320 * ld_88;
            price_16 = price_0 - li_316 * ld_88;
         }
      }
   }
   if (cmd_36 >= OP_BUY && NewsFilterSys3 == FALSE || (NewsFilterSys3 && f0_12())) {
      if (li_84 == FALSE) ticket_460 = OrderSend(Symbol(), cmd_36, lots_600, price_0, slippage_392, 0, 0, CommentSys3, Magic3, 0, color_32);
      else ticket_460 = OrderSend(Symbol(), cmd_36, lots_600, price_0, slippage_392, price_8, price_16, CommentSys3, Magic3, 0, color_32);
      Sleep(5000);
      if (ticket_460 > 0) {
         if (OrderSelect(ticket_460, SELECT_BY_TICKET, MODE_TRADES)) Print("Order " + ls_616 + " opened!: ", OrderOpenPrice());
      } else Print("Error opening " + ls_616 + " order!: ", GetLastError());
   } else {
      if (cmd_36 >= OP_BUY && NewsFilterSys3 && g_datetime_928 != iTime(NULL, PERIOD_M5, 1)) {
         g_datetime_928 = iTime(NULL, PERIOD_M5, 1);
         if (cmd_36 == OP_BUY) Print("BUY skipped: " + gs_844);
         else Print("SELL skipped: " + gs_844);
      }
   }
   cmd_36 = -1;
   if (Use_FXCOMBO_EuroRange != FALSE) {
      if (count_420 < 1 && li_576 && f0_5(gi_880, gi_876, Hour(), Minute(), iOpen(NULL, PERIOD_M5, 0), ilow_292, ihigh_284, BreakPips * ld_88, gi_720 * ld_88, MaxRangePips * ld_88) == 0) {
         if (ld_96 > MaxSPREAD) Print("System 4 BUY not taken due to high spead!");
         else {
            ls_616 = "BUY";
            cmd_36 = 0;
            color_32 = Aqua;
            RefreshRates();
            price_0 = NormalizeDouble(Ask, Digits);
            price_8 = NormalizeDouble(ilow_292 - li_324 * ld_88, Digits);
            price_16 = NormalizeDouble(Ask + (ihigh_284 - ilow_292) * TargetPercent, Digits);
         }
      }
      if (count_424 < 1 && li_580 && f0_5(gi_880, gi_876, Hour(), Minute(), iOpen(NULL, PERIOD_M5, 0), ilow_292, ihigh_284, BreakPips * ld_88, gi_720 * ld_88, MaxRangePips * ld_88) == 1) {
         if (ld_96 > MaxSPREAD) Print("System 3 SELL not taken due to high spead!");
         else {
            ls_616 = "SELL";
            cmd_36 = 1;
            color_32 = DeepPink;
            RefreshRates();
            price_0 = NormalizeDouble(Bid, Digits);
            price_8 = NormalizeDouble(ihigh_284 + li_324 * ld_88, Digits);
            price_16 = NormalizeDouble(Bid - (ihigh_284 - ilow_292) * TargetPercent, Digits);
         }
      }
   }
   if (cmd_36 >= OP_BUY && NewsFilterSys4 == FALSE || (NewsFilterSys4 && f0_12())) {
      if (li_84 == FALSE) ticket_464 = OrderSend(Symbol(), cmd_36, lots_608, price_0, slippage_392, 0, 0, CommentSys4, Magic4, 0, color_32);
      else ticket_464 = OrderSend(Symbol(), cmd_36, lots_608, price_0, slippage_392, price_8, price_16, CommentSys4, Magic4, 0, color_32);
      Sleep(5000);
      if (ticket_464 > 0) {
         if (OrderSelect(ticket_464, SELECT_BY_TICKET, MODE_TRADES)) Print("Order " + ls_616 + " opened!: ", OrderOpenPrice());
      } else Print("Error opening " + ls_616 + " order!: ", GetLastError());
   } else {
      if (cmd_36 >= OP_BUY && NewsFilterSys4 && g_datetime_928 != iTime(NULL, PERIOD_M5, 1)) {
         g_datetime_928 = iTime(NULL, PERIOD_M5, 1);
         if (cmd_36 == OP_BUY) Print("BUY skipped: " + gs_844);
         else Print("SELL skipped: " + gs_844);
      }
   }
   return (0);
}

// D02E3467D6EE65679474EA510952586A
double f0_18() {
   int li_8;
   double ld_16;
   double ld_ret_0 = TradeMMSys1;
   int li_12 = 0;
   if (Digits <= 3) ld_16 = 0.01;
   else ld_16 = 0.0001;
   for (int hist_total_24 = OrdersHistoryTotal(); hist_total_24 >= 0; hist_total_24--) {
      if (OrderSelect(hist_total_24, SELECT_BY_POS, MODE_HISTORY)) {
         if (OrderType() <= OP_SELL && OrderSymbol() == Symbol() && OrderMagicNumber() == Magic1) {
            if (OrderProfit() > 0.0) {
               if (gi_280 == 0) break;
               if (MathAbs(OrderClosePrice() - OrderOpenPrice()) / ld_16 > gi_280) break;
               continue;
            }
            li_12++;
         }
      }
   }
   if (li_12 > gi_272 && gi_276 > 1) {
      li_8 = MathMod(li_12, gi_276);
      ld_ret_0 *= MathPow(LossFactorSys1, li_8);
   }
   if (MMMax > 0.0 && ld_ret_0 > MMMax) ld_ret_0 = MMMax;
   return (ld_ret_0);
}

// 1426E1C9819471BC17C98E7E2C7DD408
double f0_0() {
   int li_8;
   double ld_16;
   double ld_ret_0 = TradeMMSys2;
   int li_12 = 0;
   if (Digits <= 3) ld_16 = 0.01;
   else ld_16 = 0.0001;
   for (int hist_total_24 = OrdersHistoryTotal(); hist_total_24 >= 0; hist_total_24--) {
      if (OrderSelect(hist_total_24, SELECT_BY_POS, MODE_HISTORY)) {
         if (OrderType() <= OP_SELL && OrderSymbol() == Symbol() && OrderMagicNumber() == Magic2) {
            if (OrderProfit() > 0.0) {
               if (gi_324 == 0) break;
               if (MathAbs(OrderClosePrice() - OrderOpenPrice()) / ld_16 > gi_324) break;
               continue;
            }
            li_12++;
         }
      }
   }
   if (li_12 > gi_316 && gi_320 > 1) {
      li_8 = MathMod(li_12, gi_320);
      ld_ret_0 *= MathPow(LossFactorSys2, li_8);
   }
   if (MMMax > 0.0 && ld_ret_0 > MMMax) ld_ret_0 = MMMax;
   return (ld_ret_0);
}

// 83F4D115D503A4449CBA89CBA1C83522
double f0_13() {
   int li_8;
   double ld_16;
   double ld_ret_0 = TradeMMSys3;
   int li_12 = 0;
   if (Digits <= 3) ld_16 = 0.01;
   else ld_16 = 0.0001;
   for (int hist_total_24 = OrdersHistoryTotal(); hist_total_24 >= 0; hist_total_24--) {
      if (OrderSelect(hist_total_24, SELECT_BY_POS, MODE_HISTORY)) {
         if (OrderType() <= OP_SELL && OrderSymbol() == Symbol() && OrderMagicNumber() == Magic3) {
            if (OrderProfit() > 0.0) {
               if (gi_368 == 0) break;
               if (MathAbs(OrderClosePrice() - OrderOpenPrice()) / ld_16 > gi_368) break;
               continue;
            }
            li_12++;
         }
      }
   }
   if (li_12 > gi_360 && gi_364 > 1) {
      li_8 = MathMod(li_12, gi_364);
      ld_ret_0 *= MathPow(LossFactorSys3, li_8);
   }
   if (MMMax > 0.0 && ld_ret_0 > MMMax) ld_ret_0 = MMMax;
   return (ld_ret_0);
}

// D641B0C57C7A54EBE0F39CE9DC45E7CA
double f0_21() {
   int li_8;
   double ld_16;
   double ld_ret_0 = TradeMMSys4;
   int li_12 = 0;
   if (Digits <= 3) ld_16 = 0.01;
   else ld_16 = 0.0001;
   for (int hist_total_24 = OrdersHistoryTotal(); hist_total_24 >= 0; hist_total_24--) {
      if (OrderSelect(hist_total_24, SELECT_BY_POS, MODE_HISTORY)) {
         if (OrderType() <= OP_SELL && OrderSymbol() == Symbol() && OrderMagicNumber() == Magic4) {
            if (OrderProfit() > 0.0) {
               if (gi_412 == 0) break;
               if (MathAbs(OrderClosePrice() - OrderOpenPrice()) / ld_16 > gi_412) break;
               continue;
            }
            li_12++;
         }
      }
   }
   if (li_12 > gi_404 && gi_408 > 1) {
      li_8 = MathMod(li_12, gi_408);
      ld_ret_0 *= MathPow(LossFactorSys4, li_8);
   }
   if (MMMax > 0.0 && ld_ret_0 > MMMax) ld_ret_0 = MMMax;
   return (ld_ret_0);
}

// 1BBC94D06E1F0D3B9CFC87C094EBA75D
int f0_1(bool ai_0) {
   string ls_4;
   if (gi_932 == 0) {
      ls_4 = "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; Q312461)";
      gi_932 = InternetOpenA(ls_4, gi_940, "0", "0", 0);
      gi_936 = InternetOpenA(ls_4, gi_944, "0", "0", 0);
   }
   if (ai_0) return (gi_936);
   return (gi_932);
}

// 67B5F51F6CCDE3F6F9D86EE70C3F4037
int f0_11(string as_0, string &as_8) {
   int lia_24[] = {1};
   string ls_28 = "x";
   int li_16 = InternetOpenUrlA(f0_1(0), as_0, "0", 0, -2080374528, 0);
   if (li_16 == 0) return (0);
   int li_20 = InternetReadFile(li_16, ls_28, gi_952, lia_24);
   if (li_20 == 0) return (0);
   int li_36 = lia_24[0];
   for (as_8 = StringSubstr(ls_28, 0, lia_24[0]); lia_24[0] != 0; as_8 = as_8 + StringSubstr(ls_28, 0, lia_24[0])) {
      li_20 = InternetReadFile(li_16, ls_28, gi_952, lia_24);
      if (lia_24[0] == 0) break;
      li_36 += lia_24[0];
   }
   li_20 = InternetCloseHandle(li_16);
   if (li_20 == 0) return (0);
   return (1);
}

// 52600E5BE768512CC215866649A5EEE8
string f0_10(string as_0, int ai_8, string as_12, string as_20, int &ai_28) {
   int li_40;
   string ls_ret_32 = "";
   ai_28 = StringFind(as_0, as_12, ai_8);
   if (ai_28 != -1) {
      ai_28 += StringLen(as_12);
      li_40 = StringFind(as_0, as_20, ai_28 + 1);
      ls_ret_32 = StringTrimLeft(StringTrimRight(StringSubstr(as_0, ai_28, li_40 - ai_28)));
   }
   return (ls_ret_32);
}

// 2ECDE036AF96C414B28F3D71FF3E5C89
bool f0_4() {
   double ld_4;
   int datetime_12;
   bool li_ret_0 = TRUE;
   if (Digits <= 3) ld_4 = 0.01;
   else ld_4 = 0.0001;
   if (gi_568 > 0 && gi_572 > 0) {
      datetime_12 = 0;
      for (int pos_16 = OrdersHistoryTotal() - 1; pos_16 >= 0; pos_16--) {
         if (OrderSelect(pos_16, SELECT_BY_POS, MODE_HISTORY)) {
            if (OrderSymbol() == Symbol() && OrderMagicNumber() == Magic2) {
               if (!((OrderType() == OP_BUY && (OrderClosePrice() - OrderOpenPrice()) / ld_4 <= (-gi_568)) || (OrderType() == OP_SELL && (OrderOpenPrice() - OrderClosePrice()) / ld_4 <= (-gi_568)))) break;
               datetime_12 = OrderCloseTime();
               break;
            }
         }
      }
      if (TimeCurrent() - datetime_12 < 60 * gi_572) li_ret_0 = FALSE;
   }
   return (li_ret_0);
}

// 4562D26A98BEC98E7F1F6ECD0D270191
void f0_7() {
   string ls_0;
   string ls_8;
   bool li_16 = FALSE;
   if (IsTesting() || EMAIL_Notification == FALSE) return;
   if (g_datetime_956 == 0) {
      g_datetime_956 = TimeCurrent();
      return;
   }
   if (g_datetime_956 != TimeCurrent()) {
      for (int pos_20 = 0; pos_20 <= OrdersTotal() - 1; pos_20++) {
         if (OrderSelect(pos_20, SELECT_BY_POS, MODE_TRADES)) {
            if (OrderType() <= OP_SELL && OrderSymbol() == Symbol()) {
               ls_0 = "";
               ls_8 = "";
               if (OrderOpenTime() >= g_datetime_956) {
                  if (OrderMagicNumber() == Magic1) ls_0 = "FX COMBO - System 1";
                  else {
                     if (OrderMagicNumber() == Magic2) ls_0 = "FX COMBO - System 2";
                     else {
                        if (OrderMagicNumber() == Magic3) ls_0 = "FX COMBO - System 3";
                        else
                           if (OrderMagicNumber() == Magic4) ls_0 = "FX COMBO - System 4";
                     }
                  }
               }
               if (StringLen(ls_0) > 1) {
                  if (OrderType() == OP_BUY) ls_8 = "Buy";
                  else ls_8 = "Sell";
                  ls_8 = ls_8 + " order (" + OrderTicket() + ") is opened: " + DoubleToStr(OrderOpenPrice(), Digits) + ", SL:" + DoubleToStr(OrderStopLoss(), Digits) + ", TP:" + DoubleToStr(OrderTakeProfit(),
                     Digits);
                  li_16 = TRUE;
                  SendMail(ls_0, ls_8);
               }
            }
         }
      }
      for (pos_20 = OrdersHistoryTotal() - 1; pos_20 >= 0; pos_20--) {
         if (OrderSelect(pos_20, SELECT_BY_POS, MODE_HISTORY)) {
            if (OrderType() <= OP_SELL && OrderSymbol() == Symbol()) {
               if (OrderCloseTime() <= g_datetime_956) break;
               ls_0 = "";
               ls_8 = "";
               if (OrderMagicNumber() == Magic1) ls_0 = "FX COMBO - System 1";
               else {
                  if (OrderMagicNumber() == Magic2) ls_0 = "FX COMBO - System 2";
                  else {
                     if (OrderMagicNumber() == Magic3) ls_0 = "FX COMBO - System 3";
                     else
                        if (OrderMagicNumber() == Magic4) ls_0 = "FX COMBO - System 4";
                  }
               }
               if (StringLen(ls_0) > 1) {
                  if (OrderType() == OP_BUY) ls_8 = "Buy";
                  else ls_8 = "Sell";
                  ls_8 = ls_8 + " order (" + OrderTicket() + ") is closed at " + DoubleToStr(OrderClosePrice(), Digits) + ", result: " + DoubleToStr(OrderProfit(), 2);
                  li_16 = TRUE;
                  SendMail(ls_0, ls_8);
               }
            }
         }
      }
      g_datetime_956 = TimeCurrent();
      if (li_16) Sleep(1000);
   }
}

// E3B8CE68351C84C8B515C82ACBBB0EE6
int f0_23(int ai_0, int ai_4, int ai_8, int ai_12, int ai_16) {
   return (dllInit(ai_0, ai_4, ai_8, ai_12, ai_16));
}

// 29DAC705E91697557643EA4C711D8B68
int f0_3(int ai_0, double ad_4, double ad_12, double ad_20, double ad_28, double ad_36, double ad_44, int ai_52, int ai_56, int ai_60) {
   return (dllOpenCond1(ai_0, ad_4, ad_12, ad_20, ad_28, ad_36, ad_44, ai_52, ai_56, ai_60));
}

// D9202589407AB6642667D56EE84254EA
int f0_22(int ai_0, double ad_4, double ad_12) {
   return (dllCloseCond1(ai_0, ad_4, ad_12));
}

// 44567E69B823BB26B6869904454BF05C
int f0_6(int ai_0, double ad_4, double ad_12, double ad_20, double ad_28, double ad_36, double ad_44) {
   return (dllOpenCond2(ai_0, ad_4, ad_12, ad_20, ad_28, ad_36, ad_44));
}

// EEF41F888AA1DBD8510C8683BC48D7AD
int f0_24(int ai_0, double ad_4, double ad_12, double ad_20, double ad_28) {
   return (dllCloseCond2(ai_0, ad_4, ad_12, ad_20, ad_28));
}

// 92A3FDDEEEC551F0BD51E1CA298C5AD1
int f0_14(int ai_0, double ad_4, double ad_12, double ad_20, double ad_28, double ad_36, double ad_44) {
   return (dllOpenCond3(ai_0, ad_4, ad_12, ad_20, ad_28, ad_36, ad_44));
}

// D46589441045E3AD992FFC65BB286757
int f0_20(int ai_0, double ad_4, double ad_12, double ad_20, double ad_28, double ad_36, double ad_44) {
   return (dllCloseCond3(ai_0, ad_4, ad_12, ad_20, ad_28, ad_36, ad_44));
}

// 3B7B45F7BE75FFD320F254B07E5B03F8
int f0_5(int ai_0, int ai_4, int ai_8, int ai_12, double ad_16, double ad_24, double ad_32, double ad_40, double ad_48, double ad_56) {
   return (dllOpenCond4(ai_0, ai_4, ai_8, ai_12, ad_16, ad_24, ad_32, ad_40, ad_48, ad_56));
}

// A3F60245633C3C27AC5CFCF739CC878C
int f0_15(int ai_0, double ad_4, double ad_12, double ad_20, double ad_28) {
   return (dllCloseCond4(ai_0, ad_4, ad_12, ad_20, ad_28));
}

// D2144D62ECAE784A90B5A1507B3470E5
void f0_19(int &ai_0, int &ai_4) {
   ai_0 = dllParamInit1(1);
   ai_4 = dllParamInit1(2);
}

// 4EC5637CC867CE5029614AE3D5C0250E
void f0_8(int &ai_0, int &ai_4, int &ai_8, int &ai_12, int &ai_16, int &ai_20, int &ai_24, int &ai_28, int &ai_32, int &ai_36, int &ai_40, int &ai_44) {
   ai_0 = dllParamInit2(1);
   ai_4 = dllParamInit2(2);
   ai_8 = dllParamInit2(3);
   ai_12 = dllParamInit2(4);
   ai_16 = dllParamInit2(5);
   ai_20 = dllParamInit2(6);
   ai_24 = dllParamInit2(7);
   ai_28 = dllParamInit2(8);
   ai_32 = dllParamInit2(9);
   ai_36 = dllParamInit2(10);
   ai_40 = dllParamInit2(11);
   ai_44 = dllParamInit2(12);
}

// 4FDB54BD385BA8F60BAEB409EB093F11
double f0_9(double ad_0, double ad_8, double ad_16) {
   return (dllExpTrailLong(ad_0, ad_8, ad_16));
}

// B16077AEC05278814CF99921982899CE
double f0_16(double ad_0, double ad_8, double ad_16) {
   return (dllExpTrailShort(ad_0, ad_8, ad_16));
}

// B95D831F7DC28FD0740EAF9E89023C16
int f0_17() {
   return (dllGMTOffset());
}

// 1C73977C8A2A8C537EB65C934BBA7E7B
void f0_2() {
   int file_0;
   int li_8;
   int li_12;
   string ls_16;
   string ls_24;
   bool li_32;
   string ls_44;
   string ls_52;
   string ls_60;
   string ls_68;
   string ls_76;
   string ls_84;
   string ls_92;
   int li_100;
   string name_104;
   string ls_112;
   string ls_120;
   bool li_128;
   int li_132;
   int li_136;
   int li_140;
   int li_144;
   string ls_152;
   int li_160;
   gs_828 = "";
   if (NewsFilterSys1 == FALSE && NewsFilterSys2 == FALSE && NewsFilterSys3 == FALSE && NewsFilterSys4 == FALSE) {
      gs_828 = "News Filter - OFF";
      return;
   }
   gs_836 = "";
   if (NewsFilterSys1) {
      gs_836 = gs_836 
      + "\n   News Filter System 1: ENABLED ";
   } else {
      gs_836 = gs_836 
      + "\n   News Filter System 1: DISABLED ";
   }
   if (NewsFilterSys2) {
      gs_836 = gs_836 
      + "\n   News Filter System 2: ENABLED ";
   } else {
      gs_836 = gs_836 
      + "\n   News Filter System 2: DISABLED ";
   }
   if (NewsFilterSys3) {
      gs_836 = gs_836 
      + "\n   News Filter System 3: ENABLED ";
   } else {
      gs_836 = gs_836 
      + "\n   News Filter System 3: DISABLED ";
   }
   if (NewsFilterSys4) {
      gs_836 = gs_836 
      + "\n   News Filter System 4: ENABLED ";
   } else {
      gs_836 = gs_836 
      + "\n   News Filter System 4: DISABLED ";
   }
   gs_828 = "News Filter - No Important News";
   if (MathAbs(TimeCurrent() - g_datetime_852) >= 86400.0 || TimeDay(TimeCurrent()) != TimeDay(g_datetime_852)) {
      name_104 = "forex_combo_system_current_news.csv";
      ls_112 = "http://www.forex-combo.com/calendar.php?all=0";
      g_datetime_852 = TimeCurrent();
      if (IsTesting()) {
         name_104 = "forex_combo_system_history_news.csv";
         ls_112 = "http://www.forex-combo.com/calendar.php?all=1";
      }
      ls_112 = ls_112 + "&AccountId=" + DoubleToStr(AccountNumber(), 0) + "&AccountType=";
      if (IsDemo()) ls_112 = ls_112 + "1";
      else ls_112 = ls_112 + "2";
      li_32 = TRUE;
      for (int li_4 = 1; li_4 <= 3; li_4++) {
         file_0 = FileOpen(name_104, FILE_CSV|FILE_READ, ';');
         if (file_0 >= 0) break;
         Sleep(1000);
      }
      if (file_0 >= 0) {
         while (!FileIsEnding(file_0)) {
            for (string ls_36 = FileReadString(file_0); !FileIsEnding(file_0); ls_36 = FileReadString(file_0))
               if (StringLen(ls_36) == 10 && StringFind(ls_36, ".") == 4) break;
            ls_44 = FileReadString(file_0);
            if (StringLen(ls_44) != 5 || StringFind(ls_44, ":") != 2) continue;
            ls_52 = FileReadString(file_0);
            ls_60 = FileReadString(file_0);
            ls_68 = FileReadString(file_0);
            ls_76 = FileReadString(file_0);
            ls_84 = FileReadString(file_0);
            ls_92 = FileReadString(file_0);
            if (StringLen(ls_36) > 0 && StringLen(ls_44) > 0) {
               li_100 = StrToTime(ls_36 + " " + ls_44) + 3600 * gi_876;
               if ((IsTesting() && li_100 >= TimeCurrent() - 86400) || (!IsTesting() && li_100 >= TimeCurrent() + 86400) || (!IsTesting() && Day() >= 5 && li_100 - 3600 * gi_876 > iTime(NULL,
                  PERIOD_D1, 0))) {
                  li_32 = FALSE;
                  break;
               }
            }
         }
         FileClose(file_0);
         if (li_32) FileDelete(name_104);
      }
      if (li_32) {
         li_12 = 0;
         for (li_4 = 1; li_4 <= 3; li_4++) {
            file_0 = FileOpen(name_104, FILE_CSV|FILE_WRITE, ';');
            if (file_0 >= 0) break;
            Sleep(1000);
         }
         if (file_0 >= 0) {
            ls_120 = "Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; Q312461)";
            li_128 = FALSE;
            li_144 = 120;
            int lia_148[] = {1};
            ls_152 = "                                                                                                                                                                                                                                                           ";
            ls_16 = "";
            for (li_4 = 1; li_4 <= 3; li_4++) {
               li_132 = InternetOpenA(ls_120, li_128, "0", "0", 0);
               if (li_132 != 0) break;
               Sleep(1000);
            }
            if (li_132 != 0) {
               for (li_4 = 1; li_4 <= 3; li_4++) {
                  li_136 = InternetOpenUrlA(li_132, ls_112, "0", 0, -2080374528, 0);
                  if (li_136 != 0) break;
                  Sleep(1000);
               }
               if (li_136 != 0) {
                  li_140 = InternetReadFile(li_136, ls_152, li_144, lia_148);
                  if (li_140 != 0) {
                     ls_16 = StringSubstr(ls_152, 0, lia_148[0]);
                     while (lia_148[0] != 0) {
                        li_140 = InternetReadFile(li_136, ls_152, li_144, lia_148);
                        if (lia_148[0] == 0) break;
                        ls_16 = ls_16 + StringSubstr(ls_152, 0, lia_148[0]);
                        li_12 += lia_148[0];
                        while (true) {
                           li_8 = -1;
                           for (li_4 = 0; li_4 < StringLen(ls_16); li_4++) {
                              li_160 = StringGetChar(ls_16, li_4);
                              if (li_160 == 10 || li_160 == 13) {
                                 li_8 = li_4;
                                 break;
                              }
                           }
                           if (li_8 < 0) break;
                           if (li_8 > 0) {
                              ls_24 = StringSubstr(ls_16, 0, li_8);
                              FileWrite(file_0, ls_24);
                           }
                           ls_16 = StringSubstr(ls_16, li_8 + 1);
                        }
                     }
                     if (StringLen(ls_16) > 0) FileWrite(file_0, ls_16);
                     ls_16 = "";
                  }
                  InternetCloseHandle(li_136);
               }
               InternetCloseHandle(li_132);
            }
            FileClose(file_0);
         }
         if (li_12 <= 10) {
            Alert("Can\'t download " + name_104 + ". News Filter was turned OFF");
            if (IsTesting()) Print("Can\'t download " + name_104 + ". News Filter was turned OFF");
            Sleep(5000);
         } else Print("Downloaded " + DoubleToStr(li_12, 0) + " bytes (" + name_104 + ")");
      }
      g_index_960 = 0;
      for (li_4 = 1; li_4 <= 3; li_4++) {
         file_0 = FileOpen(name_104, FILE_CSV|FILE_READ, ';');
         if (file_0 >= 0) break;
         Sleep(1000);
      }
      if (file_0 < 0) {
         Alert("Can\'t open " + name_104 + ". Error code: ", GetLastError());
         if (IsTesting()) Print("Can\'t open " + name_104 + ". Error code: ", GetLastError());
         Sleep(5000);
      } else {
         while (!FileIsEnding(file_0)) {
            for (ls_36 = FileReadString(file_0); !FileIsEnding(file_0); ls_36 = FileReadString(file_0))
               if (StringLen(ls_36) == 10 && StringFind(ls_36, ".") == 4) break;
            ls_44 = FileReadString(file_0);
            if (StringLen(ls_44) != 5 || StringFind(ls_44, ":") != 2) continue;
            ls_52 = FileReadString(file_0);
            ls_60 = FileReadString(file_0);
            ls_68 = FileReadString(file_0);
            ls_76 = FileReadString(file_0);
            ls_84 = FileReadString(file_0);
            ls_92 = FileReadString(file_0);
            if (StringLen(ls_36) > 0 && StringLen(ls_44) > 0) {
               li_100 = StrToTime(ls_36 + " " + ls_44) + 3600 * gi_876;
               if (li_100 >= TimeCurrent() - 86400 && li_100 <= TimeCurrent() + 86400 && StringFind(Symbol(), ls_52) >= 0 && ls_68 == "3" || (ls_68 == "2" && Include_Medium_News)) {
                  g_index_960++;
                  gia_964[g_index_960] = li_100;
                  gsa_968[g_index_960] = ls_52;
                  gsa_972[g_index_960] = ls_60;
               }
            }
         }
         FileClose(file_0);
      }
   }
   for (li_4 = 1; li_4 <= g_index_960; li_4++) {
      if (gia_964[li_4] >= TimeCurrent() && gia_964[li_4] <= TimeCurrent() + 86400 && TimeDay(gia_964[li_4]) == TimeDay(TimeCurrent())) {
         gs_828 = TimeToStr(gia_964[li_4], TIME_MINUTES) + " " + gsa_968[li_4] + " News - " + gsa_972[li_4];
         break;
      }
   }
   if (StringLen(gs_828) > 33) gs_828 = StringSubstr(gs_828, 0, 30) + "...";
}

// 697A7D88FF8EA0B64CD60B324DDE1103
int f0_12() {
   bool li_ret_0 = TRUE;
   if (NewsFilterSys1 || NewsFilterSys2 || NewsFilterSys3 || NewsFilterSys4) {
      gs_844 = "";
      for (int li_4 = 1; li_4 <= g_index_960; li_4++) {
         if ((gia_964[li_4] < TimeCurrent() && gia_964[li_4] + 60 * Wait_After_News >= TimeCurrent()) || (gia_964[li_4] >= TimeCurrent() && gia_964[li_4] - 60 * Wait_Before_News <= TimeCurrent())) {
            gs_844 = TimeToStr(gia_964[li_4], TIME_MINUTES) + " " + gsa_968[li_4] + " News - " + gsa_972[li_4];
            li_ret_0 = FALSE;
            break;
         }
      }
   }
   return (li_ret_0);
}