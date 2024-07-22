#property  copyright "Copyright© 2008, enLight® Trading Solutions™"
#property  link "http://fxchannel.ru"

int      var_76 = 58608;
int      var_80 = 42678;
int      var_84 = 158447;
int      var_88 = 0;
int      var_92 = 0;
int      var_96 = 0;
int      var_100 = 0;
extern   int      TakeProfit = 100;
extern   int      Stoploss = 140;
extern   int      TrailingStop = 24;
extern   int      Trail_Step = 2;
extern   int      Slippage = 3;
extern   int      Pips = 10;
extern   int      ProfitLevel = 22;
extern   int      CloseLevel = 18;
extern   bool     Stoploss_Pips = true;
extern   bool     Stoploss_D1 = false;
extern   bool     Stoploss_H1 = false;
extern   int      MA_Period_Day = 144;
extern   int      MA_Period_Hour = 89;
extern   int      LotsWayChoice = 0;
extern   double   Lots = 0.1;
extern   int      LotsDeltaDepo = 1500;
extern   int      LotsPercent = 5;
extern   double   LotsMax = 50;
extern   string   com = "Временной период торговли";
extern   bool     UseHourTrade = true;
extern   int      Open_HourTrade = 11;
extern   int      Close_HourTrade = 22;
extern   string   com1 = "Ограничение открытия сделок по минутам";
extern   bool     UseMinuteTrade = true;
extern   int      Open_MinuteTrade = 0;
extern   int      Close_MinuteTrade = 5;
extern   int      AllCloseHour = 25;
extern   bool     MarketWatch = false;
extern   string   CommentForOrders = "enLight_Surfing";
int      PrevTime = 0;
bool     var_244 = false;
double   LT;
int      Magic;
int      var_260;
int      var_264;
int      var_268;
int      var_272;
int      var_276;
double   StopLevel;
double   Spread;
double   MaxLot;
double   MinLot;
double   LotStep;
int      var_320;
int      var_324;
string   var_328;
int      FirstTime = 0;
bool     var_340 = false;
double   MLot;
int      LotDigits;

//+------------------------------------------------------------------+

int init()
{
MLot = MarketInfo(Symbol(),MODE_MINLOT);
if (NormalizeDouble(MLot,1) == 0.1) LotDigits = 1; else
if (NormalizeDouble(MLot,2) == 0.01) LotDigits = 2;

Magic = StringGetChar(Symbol(),0) + 361123 + StringGetChar(Symbol(),1) + StringGetChar(Symbol(),3) * 100 + StringGetChar(Symbol(),4) * 100 + Period() * 100000;

StopLevel = MarketInfo(Symbol(),MODE_STOPLEVEL);
Spread = MarketInfo(Symbol(),MODE_SPREAD);
MaxLot = MarketInfo(Symbol(),MODE_MAXLOT);
MinLot = MarketInfo(Symbol(),MODE_MINLOT);
LotStep = MarketInfo(Symbol(),MODE_LOTSTEP);

switch (Period())
   {
   case PERIOD_M1: var_328 = CommentForOrders + " (M1)"; break;
   case PERIOD_M5: var_328 = CommentForOrders + " (M5)"; break;
   case PERIOD_M15: var_328 = CommentForOrders + " (M15)"; break;
   case PERIOD_M30: var_328 = CommentForOrders + " (M30)"; break;
   case PERIOD_H1: var_328 = CommentForOrders + " (H1)"; break;
   case PERIOD_H4: var_328 = CommentForOrders + " (H4)"; break;
   case PERIOD_D1: var_328 = CommentForOrders + " (D1)"; break;
   case PERIOD_W1: var_328= CommentForOrders + " (W1)"; break;
   case PERIOD_MN1: var_328 = CommentForOrders + " (MN)"; break;
   default: var_328 = CommentForOrders + " (UNKNOWN)";
   }
var_260 = -1;
FirstTime = 0;
}

//+------------------------------------------------------------------+

int start()
{
double sl1;
double sl2;
double smad1;
double smad5;
double smah1;
double smah5;
int    cnt;
int    ticket;
int    i;
double var_start_60;
double var_start_68;
int    j;
int    accnumb;
string objtext;

if (Bars < 100)
   {
   Print("bars less than 100");
   return(0);
   }

if (TakeProfit < 10)
   {
   Print("TakeProfit less than 10");
   return(0);
   }

if ((FirstTime == 0) && IsConnected())
   {
   ObjectCreate("Copyright",OBJ_LABEL,0,0,1.0);
   ObjectSet("Copyright",OBJPROP_CORNER,2);
   ObjectSet("Copyright",OBJPROP_XDISTANCE,3);
   ObjectSet("Copyright",OBJPROP_YDISTANCE,1);
   objtext = CharToStr(169) + " 2008 ENLIGHT" + CharToStr(174) + " TRADING SOLUTIONS" + CharToStr(153) + " - WWW.FXCHANNEL.RU";
   ObjectSetText("Copyright",objtext,8,"Times New Roman",Tomato);
   ObjectSet("Copyright",OBJPROP_TIMEFRAMES,NULL);
   ObjectSet("Copyright",OBJPROP_BACK,0);
   for (j = 0; j < 5; j++)
      {
      ObjectSet("Copyright",OBJPROP_COLOR,White);
      Sleep(300);
      ObjectSet("Copyright",OBJPROP_COLOR,Black);
      Sleep(300);
      ObjectSet("Copyright",OBJPROP_COLOR,Red);
      Sleep(300);
      ObjectSet("Copyright",OBJPROP_COLOR,Yellow);
      Sleep(300);
      ObjectSet("Copyright",OBJPROP_COLOR,Lime);
      Sleep(300);
      ObjectSet("Copyright",OBJPROP_COLOR,Cyan);
      Sleep(300);
      ObjectSet("Copyright",OBJPROP_COLOR,MediumVioletRed);
      Sleep(300);
      }
   ObjectSet("Copyright",OBJPROP_COLOR,Lime);
   FirstTime = TimeCurrent();
   var_340 = true;
   }

accnumb = AccountNumber();

if (!IsTesting() && (accnumb != var_76) && (accnumb != var_80) && (accnumb != var_84) && (accnumb != var_88) && (accnumb != var_92) && (accnumb != var_96) && (accnumb != var_100))
   {
   Comment("Данный номер счёта ",accnumb," не поддерживается этой версией советника!!!");
   return(0);
   }

if (!IsTradeAllowed())
   {
   Comment("Торговля по этому инструменту запрещена или торговый поток занят.");
   return(0);
   }

Comment("enLight® Surfing™ работает. Ждем условий для открытия сделки.");

if (PrevTime != Time[1])
   {
   smad1 = iMA(NULL,PERIOD_D1,MA_Period_Day,0,MODE_SMA,PRICE_CLOSE,1);
   smad5 = iMA(NULL,PERIOD_D1,MA_Period_Day,0,MODE_SMA,PRICE_CLOSE,5);
   smah1 = iMA(NULL,PERIOD_H1,MA_Period_Hour,0,MODE_SMA,PRICE_CLOSE,1);
   smah5 = iMA(NULL,PERIOD_H1,MA_Period_Hour,0,MODE_SMA,PRICE_CLOSE,5);
   PrevTime = Time[1];
   }

cnt = 0;
for (i = 0; i < OrdersTotal(); i++)
   {
   if (OrderSelect(i,SELECT_BY_POS,MODE_TRADES) == false) break;
   if ((OrderMagicNumber() != Magic) || (OrderSymbol() != Symbol())) continue;
   if ((OrderType() == OP_BUY) || (OrderType() == OP_SELL)) cnt++;
   }

if (cnt == 0)
   {
   var_244 = false;
   if (UseHourTrade)
      {
      if (!((Hour() >= Open_HourTrade) && (Hour() <= Close_HourTrade))) return(0);
      }
   if (UseMinuteTrade)
      {
      if (!((Minute() >= Open_MinuteTrade) && (Minute() <= Close_MinuteTrade))) return(0);
      }
   if ((LotsWayChoice > 1) || (LotsWayChoice < 0)) LotsWayChoice = 0;
   switch (LotsWayChoice)
      {
      case 0: LT = Lots; break;
      case 1: LT = NormalizeDouble(AccountFreeMargin() / 1000.0 * (LotsPercent / 100.0),LotDigits); break;
      case 2:
         if (LT < LotDigits * 0) LT = LotDigits * 0;
         var_start_68 = AccountFreeMargin();
         for (j = 1; j < 20000; j++)
            {
            if (var_start_68 <= LotsDeltaDepo * j) break;
            }
         var_start_60 = NormalizeDouble(j / 10 * LotDigits,LotDigits);
         j = MathCeil(var_start_60);
         if ((LT <= var_start_60) || (LT >= var_start_60 + j * 0.2)) LT = var_start_60;
      }
   if (LT > LotsMax) LT = LotsMax;
   if (AccountFreeMargin() < LT * 1000.0)
      {
      Print("We have no money. Free Margin = ",AccountFreeMargin());
      return(0);
      }
   if (Stoploss_D1 == true)
      {
      sl1 = iLow(NULL,PERIOD_D1,1) - Pips * Point;
      sl2 = iHigh(NULL,PERIOD_D1,1) + Pips * Point;
      }
   if (Stoploss_H1 == true)
      {
      sl1 = iLow(NULL,PERIOD_H1,1) - Pips * Point;
      sl2 = iHigh(NULL,PERIOD_H1,1) + Pips * Point;
      }
   if (Stoploss_Pips == true)
      {
      sl1 = Ask - Stoploss * Point;
      sl2 = Bid + Stoploss * Point;
      }
   if ((smah1 > smah5) && (Low[4] > Low[3]) && (Low[3] > Low[2]) && (Low[2] < Low[1]) && (Open[2] + Close[2] < Open[1] + Close[1]))
      {
      if (MarketWatch == false)
         {
         ticket = OrderSend(Symbol(),OP_BUY,LT,Ask,Slippage,sl1,Ask + TakeProfit * Point,CommentForOrders,Magic,0,Green);
         if (ticket > 0)
            {
            if (OrderSelect(ticket,SELECT_BY_TICKET,MODE_TRADES)) Print("BUY order opened : ",OrderOpenPrice());
            }
               else
            {
            Print("Error opening BUY order : ",GetLastError());
            }
         }
            else
         {
         ticket = OrderSend(Symbol(),OP_BUY,LT,Ask,Slippage,0,0,CommentForOrders,Magic,0,Green);
         if (ticket > 0)
            {
            if (OrderSelect(ticket,SELECT_BY_TICKET,MODE_TRADES)) Print("BUY order opened : ",OrderOpenPrice());
            if (OrderModify(OrderTicket(),OrderOpenPrice(),sl1,OrderOpenPrice() + TakeProfit * Point,0,Green) == 0) Print("Error modify opening BUY order : ",GetLastError());
            }
               else
            {
            Print("Error opening BUY order : ",GetLastError());
            }
         }
      return(0);
      }
   if ((smah1 > smah5) && (Low[1] < Low[2]) && (Open[1] < Close[2]) && (Close[1] > Open[2]) && (High[1] > High[2]) && (Open[2] > Close[2]) && (Open[1] < Close[1]))
      {
      if (MarketWatch == false)
         {
         ticket = OrderSend(Symbol(),OP_BUY,LT,Ask,Slippage,sl1,Ask + TakeProfit * Point,CommentForOrders,Magic,0,Green);
         if (ticket > 0)
            {
            if (OrderSelect(ticket,SELECT_BY_TICKET,MODE_TRADES)) Print("BUY order opened : ",OrderOpenPrice());
            }
               else
            {
            Print("Error opening BUY order : ",GetLastError());
            }
         }
            else
         {
         ticket = OrderSend(Symbol(),OP_BUY,LT,Ask,Slippage,0,0,CommentForOrders,Magic,0,Green);
         if (ticket > 0)
            {
            if (OrderSelect(ticket,SELECT_BY_TICKET,MODE_TRADES)) Print("BUY order opened : ",OrderOpenPrice());
            if (OrderModify(OrderTicket(),OrderOpenPrice(),sl1,OrderOpenPrice() + TakeProfit * Point,0,Green) == 0) Print("Error modify opening BUY order : ",GetLastError());
            }
               else
            {
            Print("Error opening BUY order : ",GetLastError());
            }
         }
      return(0);
      }
   if ((smah1 > smah5) && (Open[2] > Close[2]) && (Low[2] < Low[1]) && (High[2] > High[1]))
      {
      if (MarketWatch == false)
         {
         ticket = OrderSend(Symbol(),OP_BUY,LT,Ask,Slippage,sl1,Ask + TakeProfit * Point,CommentForOrders,Magic,0,Green);
         if (ticket > 0)
            {
            if (OrderSelect(ticket,SELECT_BY_TICKET,MODE_TRADES)) Print("BUY order opened : ",OrderOpenPrice());
            }
               else
            {
            Print("Error opening BUY order : ",GetLastError());
            }
         }
            else
         {
         ticket = OrderSend(Symbol(),OP_BUY,LT,Ask,Slippage,0,0,CommentForOrders,Magic,0,Green);
         if (ticket > 0)
            {
            if (OrderSelect(ticket,SELECT_BY_TICKET,MODE_TRADES)) Print("BUY order opened : ",OrderOpenPrice());
            if (OrderModify(OrderTicket(),OrderOpenPrice(),sl1,OrderOpenPrice() + TakeProfit * Point,0,Green) == 0) Print("Error modify opening BUY order : ",GetLastError());
            }
               else
            {
            Print("Error opening BUY order : ",GetLastError());
            }
         }
      return(0);
      }
   if ((smah1 < smah5) && (High[4] < High[3]) && (High[3] < High[2]) && (High[2] > High[1]) && (Open[2] + Close[2] > Open[1] + Close[1]))
      {
      if (MarketWatch == false)
         {
         ticket = OrderSend(Symbol(),OP_SELL,LT,Bid,Slippage,sl2,Bid - TakeProfit * Point,CommentForOrders,Magic,0,Red);
         if (ticket > 0)
            {
            if (OrderSelect(ticket,SELECT_BY_TICKET,MODE_TRADES)) Print("SELL order opened : ",OrderOpenPrice());
            }
               else
            {
            Print("Error opening SELL order : ",GetLastError());
            }
         }
            else
         {
         ticket = OrderSend(Symbol(),OP_SELL,LT,Bid,Slippage,0,0,CommentForOrders,Magic,0,Red);
         if (ticket > 0)
            {
            if (OrderSelect(ticket,SELECT_BY_TICKET,MODE_TRADES)) Print("SELL order opened : ",OrderOpenPrice());
            if (OrderModify(OrderTicket(),OrderOpenPrice(),sl2,OrderOpenPrice() - TakeProfit * Point,0,Green) == 0) Print("Error modify opening SELL order : ",GetLastError());
            }
               else
            {
            Print("Error opening SELL order : ",GetLastError());
            }
         }
      return(0);
      }
   if ((smah1 < smah5) && (Low[1] > Low[2]) && (Open[1] > Close[2]) && (Close[1] < Open[2]) && (High[1] < High[2]) && (Open[2] < Close[2]) && (Open[1] > Close[1]))
      {
      if (MarketWatch == false)
         {
         ticket = OrderSend(Symbol(),OP_SELL,LT,Bid,Slippage,sl2,Bid - TakeProfit * Point,CommentForOrders,Magic,0,Red);
         if (ticket > 0)
            {
            if (OrderSelect(ticket,SELECT_BY_TICKET,MODE_TRADES)) Print("SELL order opened : ",OrderOpenPrice());
            }
               else
            {
            Print("Error opening SELL order : ",GetLastError());
            }
         }
            else
         {
         ticket = OrderSend(Symbol(),OP_SELL,LT,Bid,Slippage,0,0,CommentForOrders,Magic,0,Red);
         if (ticket > 0)
            {
            if (OrderSelect(ticket,SELECT_BY_TICKET,MODE_TRADES)) Print("SELL order opened : ",OrderOpenPrice());
            if (OrderModify(OrderTicket(),OrderOpenPrice(),sl2,OrderOpenPrice() - TakeProfit * Point,0,Green) == 0) Print("Error modify opening SELL order : ",GetLastError());
            }
               else
            {
            Print("Error opening SELL order : ",GetLastError());
            }
         }
      return(0);
      }
   if ((smah1 < smah5) && (Open[2] < Close[2]) && (Low[2] < Low[1]) && (High[2] > High[1]))
      {
      if (MarketWatch == false)
         {
         ticket = OrderSend(Symbol(),OP_SELL,LT,Bid,Slippage,sl2,Bid - TakeProfit * Point,CommentForOrders,Magic,0,Red);
         if (ticket > 0)
            {
            if (OrderSelect(ticket,SELECT_BY_TICKET,MODE_TRADES))
               {
               Print("SELL order opened : ",OrderOpenPrice());
               }
            }
               else
            {
            Print("Error opening SELL order : ",GetLastError());
            }
         }
            else
         {
         ticket = OrderSend(Symbol(),OP_SELL,LT,Bid,Slippage,0,0,CommentForOrders,Magic,0,Red);
         if (ticket > 0)
            {
            if (OrderSelect(ticket,SELECT_BY_TICKET,MODE_TRADES)) Print("SELL order opened : ",OrderOpenPrice());
            if (OrderModify(OrderTicket(),OrderOpenPrice(),sl2,OrderOpenPrice() - TakeProfit * Point,0,Green) == 0) Print("Error modify opening SELL order : ",GetLastError());
            }
               else
            {
            Print("Error opening SELL order : ",GetLastError());
            }
         }
      return(0);
      }
   return(0);
   }

if ((AllCloseHour < 24) && (AllCloseHour > 0))
   {
   if (TimeHour(TimeCurrent()) == AllCloseHour)
      {
      for (i = OrdersTotal(), j = i - 1; i >= 0; i--)
         {
         if (OrderSelect(j,SELECT_BY_POS,MODE_TRADES) == false) break;
         if ((OrderMagicNumber() != Magic) || (OrderSymbol() != Symbol())) continue;
         if (OrderType() == OP_BUY) OrderClose(OrderTicket(),OrderLots(),Bid,Slippage,Blue); else
         if (OrderType() == OP_SELL) OrderClose(OrderTicket(),OrderLots(),Ask,Slippage,Blue); else
         OrderDelete(OrderTicket());
         }
      return(0);
      }
   }

for (i = 0; i < OrdersTotal(); i++)
   {
   if (OrderSelect(i,SELECT_BY_POS,MODE_TRADES) == false) break;
   if ((OrderMagicNumber() != Magic) || (OrderSymbol() != Symbol())) continue;
   if (OrderType() == OP_BUY)
      {
      if (ProfitLevel > 0)
         {
         if (var_244 == true)
            {
            if (Bid - OrderOpenPrice() <= CloseLevel * Point)
               {
               OrderClose(OrderTicket(),OrderLots(),Bid,Slippage,Violet);
               return(0);
               }
            }
               else
            {
            if (Bid - OrderOpenPrice() >= ProfitLevel * Point) var_244 = true;
            }
         }
      if ((smad1 < smad5) && (smah1 < smah5) && (High[4] < High[3]) && (High[3] < High[2]) && (High[2] > High[1]) && (Open[2] + Close[2] > Open[1] + Close[1]))
         {
         OrderClose(OrderTicket(),OrderLots(),Bid,Slippage,Violet);
         return(0);
         }
      if (TrailingStop > 0)
         {
         if (Bid - OrderOpenPrice() > Point * TrailingStop)
            {
            if (OrderStopLoss() < Bid - Point * (TrailingStop + Trail_Step))
               {
               OrderModify(OrderTicket(),OrderOpenPrice(),Bid - Point * TrailingStop,OrderTakeProfit(),0,Green);
               return(0);
               }
            }
         }
      if ((smad1 < smad5) && (smah1 < smah5) && (Low[1] > Low[2]) && (Open[1] > Close[2]) && (Close[1] < Open[2]) && (High[1] < High[2]) && (Open[2] < Close[2]) && (Open[1] > Close[1]))
         {
         OrderClose(OrderTicket(),OrderLots(),Bid,Slippage,Violet);
         return(0);
         }
      if (TrailingStop > 0)
         {
         if (Bid - OrderOpenPrice() > Point * TrailingStop)
            {
            if (OrderStopLoss() < Bid - Point * (TrailingStop + Trail_Step))
               {
               OrderModify(OrderTicket(),OrderOpenPrice(),Bid - Point * TrailingStop,OrderTakeProfit(),0,Green);
               return(0);
               }
            }
         }
      if ((smad1 < smad5) && (smah1 < smah5) && (Open[2] < Close[2]) && (Low[2] < Low[1]) && (High[2] > High[1]))
         {
         OrderClose(OrderTicket(),OrderLots(),Bid,Slippage,Violet);
         return(0);
         }
      if (TrailingStop > 0)
         {
         if (Bid - OrderOpenPrice() > Point * TrailingStop)
            {
            if (OrderStopLoss() < Bid - Point * (TrailingStop + Trail_Step))
               {
               OrderModify(OrderTicket(),OrderOpenPrice(),Bid - Point * TrailingStop,OrderTakeProfit(),0,Green);
               return(0);
               }
            }
         }
      }
   if (OrderType() == OP_SELL)
      {
      if (ProfitLevel > 0)
         {
         if (var_244 == true)
            {
            if (OrderOpenPrice() - Ask <= CloseLevel * Point)
               {
               OrderClose(OrderTicket(),OrderLots(),Ask,Slippage,Violet);
               return(0);
               }
            }
               else
            {
            if (OrderOpenPrice() - Ask >= ProfitLevel * Point) var_244 = true;
            }
         }
      if ((smad1 > smad5) && (smah1 > smah5) && (Low[4] > Low[3]) && (Low[3] > Low[2]) && (Low[2] < Low[1]) && (Open[2] + Close[2] < Open[1] + Close[1]))
         {
         OrderClose(OrderTicket(),OrderLots(),Ask,Slippage,Violet);
         cnt = 0;
         return(0);
         }
      if (TrailingStop > 0)
         {
         if (OrderOpenPrice() - Ask > Point * TrailingStop)
            {
            if (OrderStopLoss() > Ask + Point * (TrailingStop + Trail_Step))
               {
               OrderModify(OrderTicket(),OrderOpenPrice(),Ask + Point * TrailingStop,OrderTakeProfit(),0,Red);
               return(0);
               }
            }
         }
      if ((smad1 > smad5) && (smah1 > smah5) && (Low[1] < Low[2]) && (Open[1] < Close[2]) && (Close[1] > Open[2]) && (High[1] > High[2]) && (Open[2] > Close[2]) && (Open[1] < Close[1]))
         {
         OrderClose(OrderTicket(),OrderLots(),Ask,Slippage,Violet);
         cnt = 0;
         return(0);
         }
      if (TrailingStop > 0)
         {
         if (OrderOpenPrice() - Ask > Point * TrailingStop)
            {
            if (OrderStopLoss() > Ask + Point * (TrailingStop + Trail_Step))
               {
               OrderModify(OrderTicket(),OrderOpenPrice(),Ask + Point * TrailingStop,OrderTakeProfit(),0,Red);
               return(0);
               }
            }
         }
      if ((smad1 > smad5) && (smah1 > smah5) && (Open[2] > Close[2]) && (Low[2] < Low[1]) && (High[2] > High[1]))
         {
         OrderClose(OrderTicket(),OrderLots(),Ask,Slippage,Violet);
         cnt = 0;
         return(0);
         }
      if (TrailingStop > 0)
         {
         if (OrderOpenPrice() - Ask > Point * TrailingStop)
            {
            if (OrderStopLoss() > Ask + Point * (TrailingStop + Trail_Step))
               {
               OrderModify(OrderTicket(),OrderOpenPrice(),Ask + Point * TrailingStop,OrderTakeProfit(),0,Red);
               return(0);
               }
            }
         }
      }
   }
}
