//+------------------------------------------------------------------+
//|                                                 xtremeeurgbp.mq4 |
//|                                                 http://fxgtc.com |
//+------------------------------------------------------------------+
#import  "Scalper.dll"
int CalcArr(double& z11[], double& z12[], double& z21[], double& z22[], double& t1[], double& t2[], double& y2[], double rates[][6], int typ, int first, int last, int cnt );
#import
#define OP_CLOSEBY   96
#define OP_MODIFY    97
#define OP_CLOSE     98
#define OP_NONE      99

//extern string OrderOptions=    "--------   Orders options  --------";
extern bool Acc5Digits = false;
extern double Lots = 0; 
extern int    LotsPercent = 10; 
extern int    GMT = 1; 
int    MaxDrawDown = 30; 
///////////////////////////////
int StartSession1 = 0;
int EndSession1 = 6;
int StartSession2 = 19;
int EndSession2 = 24;
////////////////////////////// Check DayOfWeek
int NoTradeDays1[] = {0, 1, 5};
int NoTradeDays2[] = {0, 5};
////////////////////////////// Check DayOfWeek
double  DeltaStopLoss = 25; 
double  DeltaTakeProfit = 30; 
double  DeltaOpenPosition = 1; 
bool    FixSLTPDirection  = true;
int BarsMin = 17;
int BarsMax = 393;

double Min_Dev = 0.0004; 
int    TakeProfit = 5;
bool   TryTakeProfit = false;
int    StopLoss = 30;
bool   CheckFreezLevel = true;
int    TrailingStop = 50;
int    MinProfitValue = 2;

int    TradeTimeChoise = 1;
int    TradeDayOfWeek = 0;

int    ChannelBars = 18;
int    SellCorrection = 0;
int    BuyCorrection = 0;
bool   CheckTimeBar = false;
bool   EqualBars = true;

bool   CheckDeleteFile = false;
int    TimeOutDeleteFile = 10;
bool   CheckSetOrder = true;
int    TimeOutSetOrder = 10;
bool   DeleteFileAfterChecking = false;
int    NumberRepeatCloseOrder = 0;

int    PersonalMagicNumber = 2509208;
bool   ShowComment = true;
bool   ShowSettings = true;
int    TimeOutComment = 3;
bool   ShowPrint = true;
bool   ShowTime = true;
bool   ShowNameID = false;
bool   ShowMagicNumber = false;


int    BarSlippage = 2;
int    BBPeriod = 20;
int    BBShift = 0;
double BBDeviations = 2.5;
int    BBChannelValue = 50;
bool   ReversTrades = false;
bool   LackTrades = false;
bool   OneTradesToDirection = true;
bool   HideIndicators = false;
//


int    Slippage;
int    MagicNumber = 250908;
string NameID = "Scalper", InitString;
double LotsForTrade;
//double aaaa
double HighestBarsValue, LowestBarsValue;
color  ReversOrderColor = Black;
color  BuyOrderColor = Blue;
color  SellOrderColor = Red;
int    LastOrderBar, LastOrderTicket, CurrentOrderTicket, CurrentOrderProfitPoint, CurrentOrderTrailingStop;
bool   TradeLimit;
int    opposite_id = 1;
double LastOrderTime = 0;
double CurrentOrderProfit;
double BuyOrderPrice;
bool   GoSell = false, GoBuy = false;
double MaxProfit = 0, MaxLoss = 0;
double UPmaxProfit = 0, UPmaxLoss = 0;
double UPminProfit = 50, UPminLoss=50;
double DOWNmaxProfit = 0,DOWNmaxLoss = 0;
double DOWNminProfit = 50, DOWNminLoss = 50;
int    ReadOperationCounter, SaveOperationCounter;
int    CurrentDirection = OP_NONE, LastDirection = OP_NONE, CurrentMode = 1,FileCounterMaxValue = 10, CounterRepeatClose;
int    RB_Counter = 0, RB_TimeBar = 0, RB_Operation = 1, RB_Ticket = 2, RB_Price = 3, RB_StopLoss = 4, RB_TakeProfit = 5; 
int    CB_Counter = 0, CB_TimeBar = 0, CB_Operation = 1, CB_RecTicket = 2, CB_OurTicket = 3, CB_OpenPrice = 4, CB_ClosePrice = 5, CB_StopLoss = 6, CB_TakeProfit = 7; 
bool   fTime = true, StopTradesByMargin, LastisOrderSell, LastisOrderBuy, TryRepeatCloseOrder;
int    LastStartSession1, LastEndSession1, LastStartSession2, LastEndSession2;
bool   RepeatCloseOrder, FirstComment = false;
string ErrorArray[4207];

///////////////////////// Channel indicator //////////////////////////
#define Dimension 6
#define TREND_HI "TrandHi"
#define TREND_LO "TrandLo"
#define TREND_COL Green
#define LINE_HI1 "LineHi1"
#define LINE_HI2 "LineHi2"
#define LINE_HI3 "LineHi3"
#define LINE_LO1 "LineLo1"
#define LINE_LO2 "LineLo2"
#define LINE_LO3 "LineLo3"
#define LINE_COL1 Green
#define LINE_COL2 Yellow
#define LINE_COL3 Red

bool UseChannelIndicator = true; 
bool UseProtection = false; 
//int BarsMin = 40;
//int BarsMax = 4000;
int PriceType = PRICE_CLOSE;
bool CalcLast = true;
int firstBar, lastBar, ChannelCounter;
double a_CH, b_CH, STDMin = 100000000.0;
double Z11[], Z12[], Z21[], Z22[], T1[], T2[], Y2[];
double ChanSelection[10][Dimension], RateArray[][Dimension];
double CurrentSellStopLoss, CurrentSellTakeProfit, CurrentBuyStopLoss, CurrentBuyTakeProfit;
int CurrentBarsCount = 0;
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double CalcSTD(int first, int last, double Apar, double Bpar)
   {
   double res;
   res = Y2[first - last + 1] - 2 * Apar * T1[first - last + 1] -
   2 * Bpar * T2 [first - last + 1] +
   Apar * Apar * Z11[first - last + 1] +
   Bpar * Bpar * Z22[first - last + 1] + 
   2 * Apar * Bpar * Z12[first - last + 1];
   return(res);
   }
//--------
double CalcSTDlast(int first, int last, double Apar, double Bpar)
   {
   double res;
   res = Y2[first - lastBar + 1] - 2 * Apar * T1[first - lastBar + 1] -
   2 * Bpar * T2 [first - lastBar + 1] +
   Apar * Apar * Z11[first - lastBar + 1] +
   Bpar * Bpar * Z22[first - lastBar + 1] + 
   2 * Apar * Bpar * Z12[first - lastBar + 1];
   return(res);
   }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void SetLine(string LineName, double Price)
   {
   if(ObjectFind(LineName) != -1) 
      {
       if (ObjectType(LineName) != OBJ_HLINE) ObjectDelete(LineName);
       else ObjectSet(LineName, OBJPROP_PRICE1, Price);
      }
   else
      {
        ObjectCreate(LineName, OBJ_HLINE, 0, 0, Price);
        if(LineName == LINE_HI1 || LineName == LINE_LO1)
        ObjectSet(LineName, OBJPROP_COLOR, LINE_COL1); else
        if(LineName == LINE_HI2 || LineName == LINE_LO2)
        ObjectSet(LineName, OBJPROP_COLOR, LINE_COL2); else
        if(LineName == LINE_HI3 || LineName == LINE_LO3)
        ObjectSet(LineName, OBJPROP_COLOR, LINE_COL3);
      }
   return;
   }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void CreateTrend(string Name, int Type, datetime Tim1, double Price1, datetime Tim2, double Price2)
   {
   ObjectCreate(Name, Type, 0, Tim1, Price1, Tim2, Price2);
   ObjectSet(Name, OBJPROP_STYLE, STYLE_SOLID);
   ObjectSet(Name, OBJPROP_WIDTH, 1);
   ObjectSet(Name, OBJPROP_COLOR, TREND_COL);
   return;
   }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void ChangeTrend(string Name, datetime Tim1, double Price1, datetime Tim2, double Price2)
   {
   if(ObjectFind(Name) != -1) 
      {
      ObjectSet(Name, OBJPROP_TIME1, Tim1);
      ObjectSet(Name, OBJPROP_PRICE1, Price1);
      ObjectSet(Name, OBJPROP_TIME2, Tim2);
      ObjectSet(Name, OBJPROP_PRICE2, Price2);
      ObjectsRedraw();
      }
   return;
   }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool TrendExists(int Type, string Name)
   {
   bool res = false;
   if(ObjectFind(Name) != -1) 
      {
      if (ObjectType(Name) != Type) ObjectDelete(Name);
      else res = true;
      }
   return(res);
   }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void InitChannel()
   {
   datetime tim;
   tim = TimeOnDropped();
   if(UseProtection) PriceType = AccountNumber();
   if (tim == 0) lastBar = 1; else lastBar = iBarShift(Symbol(), Period(), tim); 

   ArrayResize(RateArray, BarsMax);
   ArrayResize(Z11, BarsMax + 1);
   ArrayResize(Z12, BarsMax + 1);
   ArrayResize(Z21, BarsMax + 1);
   ArrayResize(Z22, BarsMax + 1);
   ArrayResize(T1, BarsMax + 1);
   ArrayResize(T2, BarsMax + 1); 
   ArrayResize(Y2, BarsMax + 1);
   }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void DeInitChannel()
   {
   int k = 0;
   if (ObjectFind(LINE_HI1) != -1) ObjectDelete(LINE_HI1);
   if (ObjectFind(LINE_LO1) != -1) ObjectDelete(LINE_LO1);
   if (ObjectFind(LINE_HI2) != -1) ObjectDelete(LINE_HI2);
   if (ObjectFind(LINE_LO2) != -1) ObjectDelete(LINE_LO2);
   if (ObjectFind(LINE_HI3) != -1) ObjectDelete(LINE_HI3);
   if (ObjectFind(LINE_LO3) != -1) ObjectDelete(LINE_LO3);
   if (TrendExists(OBJ_TREND, TREND_HI+k)) ObjectDelete(TREND_HI+k);
   if (TrendExists(OBJ_TREND, TREND_LO+k)) ObjectDelete(TREND_LO+k);
   }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool CalcChannel(bool DrawTrend)
   {
   int i, j, ChannelIndex, lastBar2, sign;
   double STD1, STD2, val1, val2;
   datetime firstTime, lastTime;
   double rates[][6];

   if(Bars > 0)
   {
      lastBar = 1;
      firstBar = 1 + BarsMax;
      ArrayCopyRates(rates);
      i = CalcArr(Z11, Z12, Z21, Z22, T1, T2, Y2, rates, PriceType, firstBar, lastBar, Bars);
      ArrayInitialize(RateArray, 0.0);
      ArrayInitialize(ChanSelection, 0.0);
      ChannelCounter = 0;
      ChannelIndex = 0;
      for (i = lastBar + BarsMin; i <= lastBar + BarsMax - 1; i++)
      {
        val1 = (Z12[i - lastBar + 1] * Z21[i - lastBar + 1] -
                Z22[i - lastBar + 1] * Z11[i - lastBar + 1]);
        if(val1 != 0)
        b_CH = (T1[i - lastBar + 1] * Z21[i - lastBar + 1] -
        T2[i - lastBar + 1] * Z11[i - lastBar + 1]) / val1;
        if(Z21[i - lastBar + 1] != 0 )
        a_CH = (T2[i - lastBar + 1] - b_CH * Z22[i - lastBar + 1]) / Z21[i - lastBar + 1];
        STD1 = 0.0;
        STD2 = 0.0;
        if(CalcLast == true)
        {
          if (i - lastBar + 1 != 0)
          STD1 = MathSqrt(CalcSTDlast(i, lastBar, a_CH, b_CH) / (i - lastBar + 1));
          lastBar2 = MathRound(i - (i - lastBar) * 2.0 / 3.0);
          if (i - lastBar2 + 1 != 0)
            {
            if (lastBar2 > lastBar)
            STD2 = MathSqrt((CalcSTDlast(i, lastBar2, a_CH, b_CH) - CalcSTDlast(lastBar2 - 1, lastBar2, a_CH, b_CH)) / (i - lastBar2 + 1));
            else STD2 = MathSqrt(CalcSTDlast(i, lastBar2, a_CH, b_CH) / (i - lastBar2 + 1));
            }
        }
        else
        {
          if (i - lastBar + 1 != 0)
          STD1 = MathSqrt(CalcSTD(i, lastBar, a_CH, b_CH) / (i - lastBar + 1));
          lastBar2 = MathRound(i - (i - lastBar) * 2.0 / 3.0);
          if (i - lastBar2 + 1 != 0)
            {
            if (lastBar2 > lastBar)
            STD2 = MathSqrt((CalcSTD(i, lastBar2, a_CH, b_CH) - CalcSTD(lastBar2 - 1, lastBar2, a_CH, b_CH)) / (i - lastBar2 + 1));
            else STD2 = MathSqrt(CalcSTD(i, lastBar2, a_CH, b_CH) / (i - lastBar2 + 1));
            }
        }
        RateArray[i][0] = i;
        RateArray[i][1] = lastBar;
        RateArray[i][2] = a_CH;
        RateArray[i][3] = b_CH;
        RateArray[i][4] = lastBar2;
        RateArray[i][5] = STD1;
        RateArray[i][6] = STD2;
      
        if (sign == 0 && STD2 - STD1 > 0 ) sign = 1;
        if (sign == 0 && STD2 - STD1 < 0) sign = -1;

        if ( STD2 - STD1 > 0 && sign < 0) sign = 1;
        else if ( STD2 - STD1 < 0 && sign > 0) sign = -1;

        if (sign == 1)
        {
          if (STD1 < STDMin)
            {
            STDMin = STD1;
            ChannelIndex = i;
            }
        }
        else if (sign == -1)
        {
          if (STDMin != 100000000.0)
            {
            if (STD1 < STDMin) 
              {
              STDMin = STD1;
              ChannelIndex = i;
              }
            if (ChannelIndex == BarsMax) ChannelIndex--;   
            if (ChannelCounter < 10)
            for (j = 0; j < Dimension; j++)
            ChanSelection[ChannelCounter][j] = RateArray[ChannelIndex][j];
            ChannelIndex = 0;
            ChannelCounter++;
            }
          STDMin = 100000000.0;
        }   
      }
      if (ChannelCounter>10) ChannelCounter=10;      
      if (ChannelCounter == 0)
      {
        if (ChannelIndex == BarsMax) ChannelIndex--;   
        for (i = 0; i < Dimension; i++)
        ChanSelection[ChannelCounter][i]=RateArray[ChannelIndex][i];
        ChannelCounter = 1;
      }
      if (ChannelIndex != 0 && sign == 1) 
      {
        for (i = 0; i < Dimension; i++)
        ChanSelection[ChannelCounter][i]=RateArray[ChannelIndex][i];      
        ChannelCounter++;
      }

      if (MathAbs(firstBar - lastBar) < BarsMin)
      {
        return (false);
      }
      
      lastBar = ChanSelection[0][1];
      firstBar = ChanSelection[0][0];
      STD1 = ChanSelection[0][5];
      a_CH = ChanSelection[0][2];
      b_CH = ChanSelection[0][3];

      firstTime = Time[firstBar];
      lastTime = Time[lastBar];
      val1 = a_CH * firstBar + b_CH;
      val2 = a_CH * lastBar + b_CH;
     
      if(DrawTrend)
      {
        if (TrendExists(OBJ_TREND, TREND_HI))
        ChangeTrend(TREND_HI, firstTime, val1 + STD1, lastTime, val2 + STD1);
        else CreateTrend(TREND_HI, OBJ_TREND, firstTime, val1 + STD1, lastTime, val2 + STD1);
        if (TrendExists(OBJ_TREND,TREND_LO))
        ChangeTrend(TREND_LO, firstTime, val1 - STD1, lastTime, val2 - STD1);
        else CreateTrend(TREND_LO, OBJ_TREND, firstTime, val1 - STD1, lastTime, val2 - STD1);
        SetLine(LINE_HI1, val2 + STD1);
        SetLine(LINE_LO1, val2 - STD1);
        SetLine(LINE_HI2, val2 + (2 * STD1));
        SetLine(LINE_LO2, val2 - (2 * STD1));
        SetLine(LINE_HI3, val2 + (3 * STD1));
        SetLine(LINE_LO3, val2 - (3 * STD1));
      }

      HighestBarsValue = val2 + (2 * STD1)+DeltaOpenPosition*Point;
      LowestBarsValue = val2 - (2 * STD1)-DeltaOpenPosition*Point;
      
      double SellStopLoss = val2 + (3 * STD1) + DeltaStopLoss*Point;
      double SellTakeProfit = val2 - (3 * STD1) + DeltaTakeProfit*Point;
      double BuyStopLoss = val2 - (3 * STD1) - DeltaStopLoss*Point;
      double BuyTakeProfit = val2 + (3 * STD1) - DeltaTakeProfit*Point;

      if(SellStopLoss - Bid < Min_Dev) SellStopLoss = Bid + Min_Dev;
      if(Bid - SellTakeProfit < Min_Dev) SellTakeProfit = Bid - Min_Dev;
      if(Ask - BuyStopLoss < Min_Dev) BuyStopLoss = Ask - Min_Dev;
      if(BuyTakeProfit - Ask < Min_Dev) BuyTakeProfit = Ask + Min_Dev;
      
//      CurrentSellStopLoss = NormalizeDouble(Ask + StopLoss * Point, MarketInfo(Symbol(),MODE_DIGITS));
      CurrentSellStopLoss = NormalizeDouble(SellStopLoss, MarketInfo(Symbol(),MODE_DIGITS));
//      CurrentSellTakeProfit = NormalizeDouble(Bid - TakeProfit * Point, MarketInfo(Symbol(),MODE_DIGITS));
      CurrentSellTakeProfit = NormalizeDouble(SellTakeProfit, MarketInfo(Symbol(),MODE_DIGITS));
//      CurrentBuyStopLoss = NormalizeDouble(Bid - StopLoss * Point, MarketInfo(Symbol(),MODE_DIGITS));
      CurrentBuyStopLoss = NormalizeDouble(BuyStopLoss, MarketInfo(Symbol(),MODE_DIGITS));
//      CurrentBuyTakeProfit = NormalizeDouble(Ask + TakeProfit * Point, MarketInfo(Symbol(),MODE_DIGITS));
      CurrentBuyTakeProfit = NormalizeDouble(BuyTakeProfit, MarketInfo(Symbol(),MODE_DIGITS));

      if(HighestBarsValue <= 0 || LowestBarsValue <= 0) return(false);
      else return (true);
   }else return (false);
}
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+


void ModifyOrdersParams()
{
  int i, ticket, total;
  double  stl, tpf;
  bool bmod;
  total=OrdersTotal();
  for (i = 0; i < total; i++){
    OrderSelect(i, SELECT_BY_POS, MODE_TRADES);
    if (OrderSymbol()==Symbol()){
      if (OrderMagicNumber()!=MagicNumber) continue;
      stl = OrderStopLoss();
      tpf = OrderTakeProfit();
      bmod = false;
      if(OrderType()==OP_SELL){
         if(stl != CurrentSellStopLoss || tpf != CurrentSellTakeProfit){
           if(!FixSLTPDirection || CurrentSellStopLoss < stl){
             stl = CurrentSellStopLoss;
             bmod = true;
           }
           if(!FixSLTPDirection || CurrentSellTakeProfit < tpf){
             tpf = CurrentSellTakeProfit;
             bmod = true;
           }
           if(bmod){
             OrderModify(OrderTicket(), OrderOpenPrice(), stl, tpf, 0);
//             Print("**********StorLoss/CurrentSellStopLoss=",stl,"/",CurrentSellStopLoss," TakeProfit/CurrentSellTakeProfit=",tpf,"/",CurrentSellTakeProfit);
           }
         }
      }else if(OrderType()==OP_BUY){
         if(stl != CurrentBuyStopLoss || tpf != CurrentBuyTakeProfit){
           if(!FixSLTPDirection || CurrentBuyStopLoss > stl){
             stl = CurrentBuyStopLoss;
             bmod = true;
           }
           if(!FixSLTPDirection || CurrentBuyTakeProfit > tpf){
             tpf = CurrentBuyTakeProfit;
             bmod = true;
           }
           if(bmod){
             OrderModify(OrderTicket(), OrderOpenPrice(), stl, tpf, 0);
//             Print("**********StorLoss/CurrentBuyStopLoss=",stl,"/",CurrentBuyStopLoss," TakeProfit/CurrentBuyTakeProfit=",tpf,"/",CurrentBuyTakeProfit);
           }
         }
      }
    }
  }
  return;
}
///////////////////////// Channel indicator //////////////////////////
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int init()
{
  if (Acc5Digits)
  {
    TakeProfit *= 10;
    StopLoss *= 10;
    TrailingStop *= 10;
    
    DeltaStopLoss *= 10;
    DeltaTakeProfit *= 10;
    DeltaOpenPosition *= 10;
    
    SellCorrection *= 10;
    BuyCorrection *= 10;
    
    MinProfitValue *= 10;
  }

   if(UseChannelIndicator) InitChannel(); // Init Channel indicator

   Comment("");
   Slippage=MarketInfo(Symbol(),MODE_SPREAD);
   MinProfitValue = Slippage;
   if(MinProfitValue > 10) Min_Dev = Min_Dev * 10;
   CorrectSessionTimes();
   InitErrorArray();
   if (HideIndicators) HideTestIndicators(true);
   LastOrderTime=Time[0];
   MagicNumber=PersonalMagicNumber;
   LastStartSession1=StartSession1; LastEndSession1=EndSession1; LastStartSession2=StartSession2; LastEndSession2=EndSession2;
   StartRulls();

   InitString = " Trade time " + StartSession1 + ".00  " + EndSession1 + "..00 and " + StartSession2 + ".00 " + EndSession2 + ".00" + "\n";

   Comments("Initial");

return(0);}
// конец.
//+------------------------------------------------------------------+
int deinit()
{
   if(UseChannelIndicator) DeInitChannel(); // DeInit Channel indicator

return(0);}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int start()
  {
//
   if (!StartRulls()) return(0);
//

   if(CurrentBarsCount != Bars)
    {
     if(!UseChannelIndicator || (UseChannelIndicator && !CalcChannel(true))) // Calculate Channel 
     return(0);
//       PrepareIndicators(); 
     else ModifyOrdersParams(); 
     CurrentBarsCount = Bars;
    }else if(HighestBarsValue <= 0 || LowestBarsValue <= 0) return(0);
   
//   if (StopByMaxDrawDown()) return(0);
   
//   Comments("Start()");
 

 
   if (isOrderSell() && !TimeCurrentBar())
      {
      if (isGroDtoBuy() || isMinProfittoClose() || TryToCloseAgain())
         {
         if (CurrentOrderProfitPoint<0 && TryTakeProfit) return(0);
         CloseSellOrder();
         return(0);
         }
      return(0);
      }



   if (isOrderBuy() && !TimeCurrentBar())
      {
      if (isGroDtoSell() || isMinProfittoClose() || TryToCloseAgain())
         {
         if (CurrentOrderProfitPoint<0 && TryTakeProfit) return(0);
         CloseBuyOrder();
         return(0);
         }
      return(0);
      }


   if (isGroDtoSell() && !TimeCurrentBar() && (isTimetoTrade(StartSession1, EndSession1) || isTimetoTrade(StartSession2, EndSession2)))
      {
         {
//         SendSellOrder(StopLoss,TakeProfit);
         SendSellOrder(CurrentSellStopLoss,CurrentSellTakeProfit);
////////////////////////////////negr comment
//        Print("************************SellOrder    Low___High=     ",LowestBarsValue,"   ",HighestBarsValue);
//         Print("************************StopLoss  TakeProfit",CurrentBuyStopLoss, CurrentBuyTakeProfit);
//         Print("**********Bid=",Bid," Ask=",Ask," HighestBarsValue=",HighestBarsValue," LowestBarsValue=",LowestBarsValue," CurrentSellStopLoss=",CurrentSellStopLoss," CurrentSellTakeProfit=",CurrentSellTakeProfit);
         return(0);
         }
      }
      
   if (isGroDtoBuy() && !TimeCurrentBar() && (isTimetoTrade(StartSession1, EndSession1) || isTimetoTrade(StartSession2, EndSession2)))
      {
         {
//         SendBuyOrder(StopLoss, TakeProfit);
         SendBuyOrder(CurrentBuyStopLoss, CurrentBuyTakeProfit);
////////////////////////////////negr comment
//         Print("************************BuyOrder    Low___High=     ",LowestBarsValue,"   ",HighestBarsValue);
//         Print("************************StopLoss  TakeProfit",CurrentBuyStopLoss, CurrentBuyTakeProfit);
//         Print("**********Bid=",Bid," Ask=",Ask," HighestBarsValue=",HighestBarsValue," LowestBarsValue=",LowestBarsValue," CurrentBuyStopLoss=",CurrentBuyStopLoss," CurrentBuyTakeProfit=",CurrentBuyTakeProfit);
         return(0);
         }
      }      
return(0);}
// конец.

//-------------------------------------------------------------------------- 

bool StopByMaxDrawDown(){
   bool result=false;
   double CurrentMaxDrawDown;
   if (MaxDrawDown==0 || (StartSession1==0 && EndSession1==12 && StartSession2==12 && EndSession2==24)) return(result);
   if (!isTimetoTrade(StartSession1, EndSession1) && !isTimetoTrade(StartSession2, EndSession2))
      {
      Comments("StopByMaxDrawDown(): Trade allow");
      StopTradesByMargin=false;
      GlobalVariableSet("MaxAccountValue",AccountBalance());
      result=false;
      return(result);
      }
   if (StopTradesByMargin)
      {
      result=true;
      return(result);
      }
   if (GlobalVariableGet("MaxAccountValue")-AccountBalance()<0) GlobalVariableSet("MaxAccountValue",AccountBalance());
   CurrentMaxDrawDown=GlobalVariableGet("MaxAccountValue")-GlobalVariableGet("MaxAccountValue")*MaxDrawDown/100;
/*   Comment(
            "CurrentMaxDrawDown= ",CurrentMaxDrawDown,"\n",
            "MaxAccountValue= ",GlobalVariableGet("MaxAccountValue"),"\n",
            "AccountBalance()= ",AccountBalance(),"\n",
            "AccountEquity()= ",AccountEquity(),"\n"
            );*/
   if (CurrentMaxDrawDown-AccountEquity()>0)
      {
      while (isOrderBuy()) CloseBuyOrder();
      while (isOrderSell()) CloseSellOrder();
      Comments("StopByMaxDrawDown(): Trade is permitted");
      StopTradesByMargin=true;
      result=true;
      return(result);
      }
return(result);}

//-------------------------------------------------------------------------- 

bool TimeCurrentBar(){
   bool result=false;
   if (CheckTimeBar && Time[0]==LastOrderTime) result=true;
return(result);}

bool isOrderSell(){
   bool result=false;
   int cnt=0, ticket, total;
   total=OrdersTotal();
   for (cnt=0;cnt<total;cnt++)
      {
      OrderSelect(cnt, SELECT_BY_POS, MODE_TRADES);
      if (OrderSymbol()==Symbol() && OrderType()==OP_SELL)
         {
         if (OrderMagicNumber()!=MagicNumber) continue;
         result=true;
         CurrentOrderProfit = OrderProfit();
         CurrentOrderProfitPoint = (OrderOpenPrice()-Ask)/Point;
         break;
         }
      }
   if (LastisOrderSell && !result)
      {
      if (OrderStopLoss()!=0 || OrderTakeProfit()!=0) LastOrderTime=Time[0];
      }
   LastisOrderSell=result;
return(result);}

//-------------------------------------------------------------------------- 

bool isOrderBuy(){
   bool result=false;
   int cnt=0, ticket, total;
   total=OrdersTotal();
   for (cnt=0;cnt<total;cnt++)
      {
      OrderSelect(cnt, SELECT_BY_POS, MODE_TRADES);
      if (OrderSymbol()==Symbol() && OrderType()==OP_BUY)
         {
         if (OrderMagicNumber()!=MagicNumber) continue;
         result=true;
         CurrentOrderProfit = OrderProfit();
         CurrentOrderProfitPoint = (Bid-OrderOpenPrice())/Point;
         break;
         }
      }
   if (LastisOrderBuy && !result)
      {
      if (OrderStopLoss()!=0 || OrderTakeProfit()!=0) LastOrderTime=Time[0];
      }
   LastisOrderBuy=result;
return(result);}

//-------------------------------------------------------------------------- 

bool CloseBuyOrder(){
   bool result=false;
   int cnt=0, ticket, total;
   total=OrdersTotal();
   for (cnt=0;cnt<total;cnt++)
      {
      ticket = OrderSelect(cnt, SELECT_BY_POS, MODE_TRADES);
      if (OrderSymbol()==Symbol() && OrderType()==OP_BUY)
         {
         if (isFreezLevel()) continue;
         if (OrderMagicNumber()==MagicNumber)
            {
            if (OrderClose(OrderTicket(),OrderLots(),Bid,Slippage,BuyOrderColor))
               {
//               Comments("Buy order closed : "+OrderClosePrice());
               result=true;
               LastOrderTime=Time[0];
               LastDirection=OP_BUY;
               RepeatCloseOrder=false;
               }
            else
               {
               Comments("Error close Buy order: "+PrintError(GetLastError()));
               RepeatCloseOrder=true;
               }
            }
         }
      }
return(result);}

//-------------------------------------------------------------------------- 

bool CloseSellOrder(){
   bool result=false;
   int cnt=0, ticket, total;
   total=OrdersTotal();
   for (cnt=0;cnt<total;cnt++)
      {
      ticket = OrderSelect(cnt, SELECT_BY_POS, MODE_TRADES);
      if (OrderSymbol()==Symbol() && OrderType()==OP_SELL)
         {
         if (isFreezLevel()) continue;
         if (OrderMagicNumber()==MagicNumber)
            {
            if (OrderClose(OrderTicket(),OrderLots(),Ask,Slippage,SellOrderColor))
               {
//               Comments("Sell order closed : "+OrderClosePrice());
               result=true;
               LastOrderTime=Time[0];
               LastDirection=OP_SELL;
               RepeatCloseOrder=false;
               }
            else
               {
               Comments("Error close Sell order: "+PrintError(GetLastError()));
               RepeatCloseOrder=true;
               }
            }
         }
      }
return(result);}

//-------------------------------------------------------------------------- 

bool TryToCloseAgain(){
   bool result=false;
   if (!RepeatCloseOrder)
      {
      CounterRepeatClose=NumberRepeatCloseOrder;
      }
   else
      {
      CounterRepeatClose=CounterRepeatClose-1;
      if (CounterRepeatClose>0)
         {
         result=true;
         }
      else
         {
         RepeatCloseOrder=false;
   //      Comments("TryToCloseAgain(): Error after repeat Close order");
         }
      }
return(result);}

//-------------------------------------------------------------------------- 

bool isFreezLevel()
{
   bool result=false;
   double Price, FreezLevelValue, CurrentSlippage;
   if (CheckFreezLevel)
      {
      if (OrderStopLoss()!=0 || OrderTakeProfit()!=0)
         {
         if (OrderType()==OP_BUY) Price=Bid;
         if (OrderType()==OP_SELL) Price=Ask;
         FreezLevelValue=MarketInfo(Symbol(),MODE_FREEZELEVEL)*Point;
         if (  OrderStopLoss()!=0 && FreezLevelValue>(MathAbs(Price-OrderStopLoss()  ))) result=true;
         if (OrderTakeProfit()!=0 && FreezLevelValue>(MathAbs(Price-OrderTakeProfit()))) result=true;
         }
      }
return(result);}

//-------------------------------------------------------------------------- 

bool SendBuyOrder(double SBO_StopLoss, double SBO_TakeProfit)
{
  if (OrdersCountBar0(0) > 0) return (false);

int ticket=0;
   RepeatCloseOrder=false;

      if(Ask - SBO_StopLoss < Min_Dev) SBO_StopLoss = NormalizeDouble(Ask - Min_Dev,MarketInfo(Symbol(),MODE_DIGITS));
      if(SBO_TakeProfit - Ask < Min_Dev) SBO_TakeProfit = NormalizeDouble(Ask + Min_Dev,MarketInfo(Symbol(),MODE_DIGITS));
      ticket=OrderSend(Symbol(),OP_BUY,LotsForTrade,Ask,Slippage,SBO_StopLoss,SBO_TakeProfit, NameID,MagicNumber,0,BuyOrderColor);
      if(ticket>0)
         {
         if(OrderSelect(ticket,SELECT_BY_TICKET,MODE_TRADES))
            {
//            Comments("Buy order opened : "+OrderOpenPrice());
            LastOrderTime=Time[0];
            LastOrderBar=Bars;
            CurrentOrderTicket=ticket;
            CurrentOrderTrailingStop=0;
            }
         }
      else 
         {
         Comments("Error open Buy order : "+PrintError(GetLastError()));
         return(false);
         }

return(true);}

//-------------------------------------------------------------------------- 

bool SendSellOrder(double SSO_StopLoss, double SSO_TakeProfit)
{

  if (OrdersCountBar0(0) > 0) return (false);

int ticket=0;
   RepeatCloseOrder=false;

      if(SSO_StopLoss - Bid < Min_Dev) SSO_StopLoss = NormalizeDouble(Bid + Min_Dev,MarketInfo(Symbol(),MODE_DIGITS));
      if(Bid - SSO_TakeProfit < Min_Dev) SSO_TakeProfit = NormalizeDouble(Bid - Min_Dev,MarketInfo(Symbol(),MODE_DIGITS));
      ticket=OrderSend(Symbol(),OP_SELL,LotsForTrade,Bid,Slippage,SSO_StopLoss,SSO_TakeProfit, NameID,MagicNumber,0,SellOrderColor);
      if(ticket>0)
         {
         if(OrderSelect(ticket,SELECT_BY_TICKET,MODE_TRADES))
            {
//            Comments("Sell order opened : "+OrderOpenPrice());
            LastOrderTime=Time[0];
            LastOrderBar=Bars;
            CurrentOrderTicket=ticket;
            CurrentOrderTrailingStop=0;
            }
         }
      else 
         {
         Comments("Error open Sell order : "+PrintError(GetLastError()));
         return(false);
         }

return(true);}

//-------------------------------------------------------------------------- 

bool StartRulls()
{
   double LotsStep, LotsMin, LotsMax;
   int LotsDigit;


   if (!FirstComment)
      {
      FirstComment=true;
      }
   else
      {
      if (LastStartSession1!=StartSession1 || LastEndSession1!=EndSession1 || LastStartSession2!=StartSession2 || LastEndSession2!=EndSession2)
         {
         LastStartSession1=StartSession1; LastEndSession1=EndSession1; LastStartSession2=StartSession2; LastEndSession2=EndSession2;
         Comments("Another trade time EA");
         }
      }
   
   if (IsOptimization())
      {
      if (StartSession1>12) return(false);
      if (EndSession1>12) return(false);
      if (StartSession2<12) return(false);
      if (EndSession2<12) return(false);
      if (StartSession1>EndSession1 || StartSession2>EndSession2) return(false);
      }
   if(Bars<100)
     {
      Comments("StartRulls() Bars less than 100");
      return(false);  
     }
   LotsStep = NormalizeDouble(MarketInfo(Symbol(), MODE_LOTSTEP),2);
   LotsMin=NormalizeDouble(MarketInfo(Symbol(),MODE_MINLOT),2);
   LotsMax=NormalizeDouble(MarketInfo(Symbol(), MODE_MAXLOT),2);
   if (LotsStep==0.01) LotsDigit=2; else LotsDigit=1;
   // расчет размера лота
   if (Lots==0) LotsForTrade=NormalizeDouble(AccountFreeMargin()*LotsPercent/100000,LotsDigit);
   else LotsForTrade=Lots;
   if (LotsForTrade>LotsMax) LotsForTrade=LotsMax;
   if (LotsForTrade<LotsMin) LotsForTrade=LotsMin;
return(true);}

//-------------------------------------------------------------------------- 

bool isMinProfittoClose(){
   bool result=false;
   if (CurrentOrderProfitPoint>0 && CurrentOrderProfitPoint>=MinProfitValue && MinProfitValue!=0)
      {
      result=true;
      }
return(result);}

//-------------------------------------------------------------------------- 

bool isGroDtoBuy(){
   bool result=false;
   if (!ReversTrades)
      {
      if (Bid < (LowestBarsValue-Point*BuyCorrection) || (EqualBars && Bid <= (LowestBarsValue-Point*BuyCorrection))) result=true;
 /*     if (Bid < (LowestBarsValue-Point*BuyCorrection) || (EqualBars && Bid <= (LowestBarsValue-Point*BuyCorrection)))
 Print("Buy___Low___High=     ",LowestBarsValue,"   ",HighestBarsValue);*/
      }
   else
      {
      if (Bid > HighestBarsValue || (EqualBars && Bid >= HighestBarsValue)) result=true;
/*      if (Bid > HighestBarsValue || (EqualBars && Bid >= HighestBarsValue)) Print(
      "Buy___HighestBarsValue=     ",HighestBarsValue);*/
      }
return(result);}

//-------------------------------------------------------------------------- 

bool isGroDtoSell(){
   bool result=false;
   if (!ReversTrades)
      {
      if (Bid > (HighestBarsValue+Point*SellCorrection) || (EqualBars && Bid >= (HighestBarsValue+Point*SellCorrection))) result=true;
 /*      if (Bid > (HighestBarsValue+Point*SellCorrection) || (EqualBars && Bid >= (HighestBarsValue+Point*SellCorrection)))Print(
         "Sell___HighestBarsValue=     ",HighestBarsValue);*/
      }
   else
      {
      if (Bid < LowestBarsValue || (EqualBars && Bid <= LowestBarsValue)) result=true;
 /*     if (Bid < LowestBarsValue || (EqualBars && Bid <= LowestBarsValue))Print(
      "Sell___LowestBarsValue=     ",LowestBarsValue); */
      }
return(result);}

//-------------------------------------------------------------------------- 

bool isTimetoTrade(int OpenHour, int CloseHour)
{
////////////////////////////// Check DayOfWeek
   int i, d_cnt, cur_d = DayOfWeek();
   if(OpenHour == StartSession1 && CloseHour == EndSession1) {
     d_cnt = ArraySize(NoTradeDays1);
     for(i = 0; i < d_cnt; i++) if(NoTradeDays1[i] == cur_d) return(false);
   } else if(OpenHour == StartSession2 && CloseHour == EndSession2) {
     d_cnt = ArraySize(NoTradeDays2);
     for(i = 0; i < d_cnt; i++) if(NoTradeDays2[i] == cur_d) return(false);
   }
////////////////////////////// Check DayOfWeek
   bool result = false;
   int CurrentHour=Hour();
   if (OpenHour > 23 || OpenHour < 0 ) OpenHour = 0;
   if (CloseHour > 23 || CloseHour < 0 ) CloseHour = 0;
   if (OpenHour<CloseHour && (Hour()>=OpenHour && Hour()<CloseHour)) result=true;
   if (OpenHour>CloseHour && (Hour()>=OpenHour || Hour()<CloseHour)) result=true;
   if (DayOfWeek()!=TradeDayOfWeek && TradeDayOfWeek!=0) result = false;
return(result);}

//-------------------------------------------------------------------------- 

bool Comments(string CommentString){
   bool result=false;
   int i,j;
   if (ShowPrint)
      {
      string str="";
      if (ShowTime) str=str+TimeToStr(TimeCurrent(),TIME_SECONDS)+" : ";
      if (ShowNameID) str=str+NameID;
      if (ShowMagicNumber) str=str+"("+MagicNumber+")";
      if (ShowNameID || ShowMagicNumber) str=str+": ";
      Print(str+CommentString);
      }
   if (ShowSettings)
      {
      if (ShowComment) Comment(InitString+str+CommentString);
      }
   else
      {
      if (ShowComment) Comment(str+CommentString);
      }
return(result);}

//-------------------------------------------------------------------------- 
//-------------------------------------------------------------------------- 

string PrintError(int ErrorCode)
{
return(ErrorArray[ErrorCode]);}

void InitErrorArray()
{
   ErrorArray[0] = "No errors";
   ErrorArray[1] = "No errors, but no resulting";
   ErrorArray[2] = "General fault";
   ErrorArray[3] = "Fault parameters"; 
   ErrorArray[4] = "Trade busy"; 
   ErrorArray[5] = "Old version of terminal"; 
   ErrorArray[6] = "Not connect"; 
   ErrorArray[7] = "Rules not good for you"; 
   ErrorArray[8] = "Very many orders"; 
   ErrorArray [9] = "Invalid operation disrupt the server"; 
    ErrorArray [64] = "blocked account"; 
    ErrorArray [65] = "Invalid account number"; 
    ErrorArray [128] = "Expired expectations of the transaction"; 
    ErrorArray [129] = "Invalid price"; 
    ErrorArray [130] = "Wrong foot"; 
    ErrorArray [131] = "Invalid volume"; 
    ErrorArray [132] = "The market is closed"; 
    ErrorArray [133] = "Trade is prohibited"; 
    ErrorArray [134] = "Not enough money for the transaction"; 
    ErrorArray [135] = "Price has changed"; 
    ErrorArray [136] = "No price"; 
    ErrorArray [137] = "Broker busy"; 
    ErrorArray [138] = "New prices"; 
    ErrorArray [139] = "Order has been blocked and processed"; 
    ErrorArray [140] = "Allow only buy"; 
    ErrorArray [141] = "Too many bugs"; 
    ErrorArray [145] = "Modification is prohibited, as the warrant is too close to the market"; 
    ErrorArray [146] = "subsystem busy trade"; 
    ErrorArray [147] = "Using the date of expiry of the warrant is prohibited broker"; 
    ErrorArray [148] = "The number of open orders and deferred reached the limit set by the broker"; 
    ErrorArray [4000] = "No errors"; 
    ErrorArray [4001] = "Invalid Index function"; 
    ErrorArray [4002] = "Index array - out of range"; 
    ErrorArray [4003] = "No memory to stack functions"; 
    ErrorArray [4004] = "stack overflow after recursive call"; 
    ErrorArray [4005] = "At no memory of the stack to pass options"; 
    ErrorArray [4006] = "No memory for a string parameter"; 
    ErrorArray [4007] = "No memory for a temporary line"; 
    ErrorArray [4008] = "Neinitsializirovannaya line"; 
    ErrorArray [4009] = "Neinitsializirovannaya line in the array"; 
    ErrorArray [4010] = "No memory for an array string"; 
    ErrorArray [4011] = "Too long line"; 
    ErrorArray [4012] = "Balance of dividing by zero"; 
    ErrorArray [4013] = "The division by zero"; 
    ErrorArray [4014] = "Unknown command"; 
    ErrorArray [4015] = "Invalid conversion"; 
    ErrorArray [4016] = "Neinitsializirovanny array"; 
    ErrorArray [4017] = "Challenge DLL not allowed "; 
    ErrorArray [4018] = "Can not load library"; 
    ErrorArray [4019] = "Can not call"; 
    ErrorArray [4020] = "Challenge external library functions are not allowed "; 
    ErrorArray [4021] = "Not enough memory to the line, recovery of the function"; 
    ErrorArray [4022] = "system busy"; 
    ErrorArray [4050] = "Wrong number of parameters function"; 
    ErrorArray [4051] = "Invalid value functions"; 
    ErrorArray [4052] = "Internal error string functions"; 
    ErrorArray [4053] = "Error array"; 
    ErrorArray [4054] = "Misuse of solid-taymserii"; 
    ErrorArray [4055] = "user error indicator"; 
    ErrorArray [4056] = "Arrays incompatible"; 
    ErrorArray [4057] = "Error processing globalnyeh variables"; 
    ErrorArray [4058] = "global variable is not detected"; 
    ErrorArray [4059] = "function is not allowed in test mode"; 
    ErrorArray [4060] = "function is not allowed"; 
    ErrorArray [4061] = "Error sending"; 
    ErrorArray [4062] = "expected parameter type string"; 
    ErrorArray [4063] = "expected parameter type integer"; 
    ErrorArray [4064] = "expected parameter type double"; 
    ErrorArray [4065] = "As expected array parameter"; 
    ErrorArray [4066] = "The requested historical data in a state of renewal"; 
    ErrorArray [4067] = "Error executing trading operations"; 
    ErrorArray [4099] = "End file"; 
    ErrorArray [4100] = "error when working with the file"; 
    ErrorArray [4101] = "Invalid file name"; 
    ErrorArray [4102] = "Too many open files"; 
    ErrorArray [4103] = "Can not open file"; 
    ErrorArray [4104] = "Incompatible regime access to the file"; 
    ErrorArray [4105] = "No warrant is not selected"; 
    ErrorArray [4106] = "Unknown symbol"; 
    ErrorArray [4107] = "Invalid setting prices for commercial functions"; 
    ErrorArray [4108] = "Wrong number tiketa"; 
    ErrorArray [4109] = "Trade is not allowed. You need to include the option Allow an adviser to trade in the properties of expert"; 
    ErrorArray [4110] = "Long positions are not allowed. You should check the properties of expert"; 
    ErrorArray [4111] = "Short positions are not allowed. You should check the properties of expert"; 
    ErrorArray [4200] = "Object already exists"; 
    ErrorArray [4201] = "Requested an unknown object property"; 
    ErrorArray [4202] = "The object does not exist"; 
    ErrorArray [4203] = "Unknown type of object"; 
    ErrorArray [4204] = "No, the object name "; 
    ErrorArray [4205] = "Error coordinates object"; 
    ErrorArray [4206] = "said subwindow Not Found"; 
    ErrorArray [4207] = "error when working with the object";
}

//-------------------------------------------------------------------------- 

//подготовка индикаторов
void PrepareIndicators()
   {

      {
      HighestBarsValue   =High[iHighest(NULL, 0, MODE_HIGH, ChannelBars, 1)];
      LowestBarsValue    =Low [iLowest (NULL, 0, MODE_LOW , ChannelBars, 1)];
      } 
   }

//-------------------------------------------------------------------------- 
//-------------------------------------------------------------------------- 

int OrdersCountBar0(int TF)
{
  int orders = 0;

  int cnt = OrdersTotal();
  for (int i=0; i<cnt; i++) 
  {
    if (!OrderSelect(i, SELECT_BY_POS, MODE_TRADES)) continue;
    if (OrderSymbol() != Symbol()) continue;
    if (OrderMagicNumber() != MagicNumber) continue;

    if (OrderOpenTime() >= iTime(NULL, TF, 0)) orders++;
  }

  cnt = OrdersHistoryTotal();
  for (i=0; i<cnt; i++) 
  {
    if (!OrderSelect(i, SELECT_BY_POS, MODE_HISTORY)) continue;
    if (OrderSymbol() != Symbol()) continue;
    if (OrderMagicNumber() != MagicNumber) continue;

    if (OrderOpenTime() >= iTime(NULL, TF, 0)) orders++;
  }
 
  return (orders);
}
//-------------------------------------------------------------------------- 
int CorrectGMTime(int tim)
{
  int res = tim + GMT;
  if(res > 24) res = res - 24;
  else if(res < 0) res = 24 + res;
  else if(res == 24) res = 0;
  return(res);
}

void CorrectSessionTimes()
{
  int tim1 = CorrectGMTime(EndSession1);
  int tim2 = CorrectGMTime(StartSession2);
  
  if(tim1 != 0 && tim2 != 0){
    if(tim2 > tim1){
      EndSession1 = tim1;
      StartSession2 = tim2;
    }else{
      EndSession1 = tim2;
      StartSession2 = tim1;
    }
  }else{
    if(tim1 != 0) EndSession1 = tim1;
    else EndSession1 = tim2;
    StartSession2 = 24;
  }
}
//--------------------------------------------------------------------------