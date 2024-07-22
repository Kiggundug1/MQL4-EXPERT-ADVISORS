/*
   Generated by EX4-TO-MQ4 decompiler V4.0.223.1c []
   Website: http://purebeam.biz
   E-mail : purebeam@gmail.com
*/
extern double Lots = 0.1;
extern double MaximumRisk = 0.08;
extern double TakeProfit = 20.0;
extern double TrailingStop = 30.0;
extern double DecreaseFactor = 3.0;
extern double MovingPeriod = 30.0;
extern double MovingShift = 0.0;
extern double sarstep = 0.0001;
extern string Stockhastick = "Between 1 -49: Recommended 27";
extern double istocklevel = 27.0;
extern string Close_Level = "Between 1 -49: Recommended 35";
extern double CloseLevel = 37.0;
extern double max = 92.0;
extern double min = 8.0;
extern bool Ready = TRUE;
extern bool Trade = TRUE;
extern bool reverse = FALSE;
extern bool optimize = FALSE;
extern bool myfinance = FALSE;
string gs_208;
string gs_dummy_216;
string gs_224;
string gs_232;
string gs_240;
string gs_248;

int CalculateCurrentOrders(string as_unused_0) {
   int l_count_8 = 0;
   int l_count_12 = 0;
   for (int l_pos_16 = 0; l_pos_16 < OrdersTotal(); l_pos_16++) {
      if (OrderSelect(l_pos_16, SELECT_BY_POS, MODE_TRADES) == FALSE) break;
      if (OrderSymbol() == Symbol() && OrderMagicNumber() == 20050610) {
         if (OrderType() == OP_BUY) l_count_8++;
         if (OrderType() == OP_SELL) l_count_12++;
      }
   }
   if (l_count_8 > 0) return (l_count_8);
   return (-l_count_12);
}

double LotsOptimized() {
   double l_lots_0 = Lots;
   int l_hist_total_8 = OrdersHistoryTotal();
   int l_count_12 = 0;
   l_lots_0 = NormalizeDouble(AccountFreeMargin() * MaximumRisk / 1000.0, 0);
   if (DecreaseFactor > 0.0) {
      for (int l_pos_16 = l_hist_total_8 - 1; l_pos_16 >= 0; l_pos_16--) {
         if (OrderSelect(l_pos_16, SELECT_BY_POS, MODE_HISTORY) == FALSE) {
            Print("Error in history!");
            break;
         }
         if (OrderSymbol() != Symbol() || OrderType() > OP_SELL) continue;
         if (OrderProfit() > 0.0) break;
         if (OrderProfit() < 0.0) l_count_12++;
      }
      if (l_count_12 > 1) l_lots_0 = NormalizeDouble(l_lots_0 - l_lots_0 * l_count_12 / DecreaseFactor, 1);
   }
   if (l_lots_0 < 0.1) l_lots_0 = 0.1;
   if (l_lots_0 > 50.0) l_lots_0 = 50;
   return (l_lots_0);
}

int init() {
   ObjectCreate("lineSupport", OBJ_HLINE, 0, 0, 0);
   ObjectSet("lineSupport", OBJPROP_COLOR, Blue);
   ObjectCreate("lineResist", OBJ_HLINE, 0, 0, 0);
   ObjectSet("lineResist", OBJPROP_COLOR, Red);
   ObjectCreate("LongTermTrend", OBJ_LABEL, 0, 0, 0, 0, 0);
   ObjectSet("LongTermTrend", OBJPROP_XDISTANCE, 10);
   ObjectSet("LongTermTrend", OBJPROP_YDISTANCE, 20);
   ObjectSetText("LongTermTrend", "Long Term", 14, "Tahoma", Aqua);
   ObjectCreate("MidTermTrend", OBJ_LABEL, 0, 0, 0, 0, 0);
   ObjectSet("MidTermTrend", OBJPROP_XDISTANCE, 10);
   ObjectSet("MidTermTrend", OBJPROP_YDISTANCE, 35);
   ObjectSetText("MidTermTrend", "Mid Term", 14, "Tahoma", Aqua);
   ObjectCreate("ShortTermTrend", OBJ_LABEL, 0, 0, 0, 0, 0);
   ObjectSet("ShortTermTrend", OBJPROP_XDISTANCE, 10);
   ObjectSet("ShortTermTrend", OBJPROP_YDISTANCE, 50);
   ObjectSetText("ShortTermTrend", "Short Term", 14, "Tahoma", Aqua);
   ObjectCreate("CurrentPrice", OBJ_LABEL, 0, 0, 0, 0, 0);
   ObjectSet("CurrentPrice", OBJPROP_XDISTANCE, 10);
   ObjectSet("CurrentPrice", OBJPROP_YDISTANCE, 65);
   ObjectSetText("CurrentPrice", "Current Price ?", 14, "Tahoma", Lime);
   ObjectCreate("lblTrendType4", OBJ_LABEL, 0, 0, 0, 0, 0);
   ObjectSet("lblTrendType4", OBJPROP_XDISTANCE, 420);
   ObjectSet("lblTrendType4", OBJPROP_YDISTANCE, 10);
   ObjectSetText("lblTrendType4", "Indicator By AyobHussin (http://ayobhussin.com/myforex)", 10, "Tahoma", LimeGreen);
   ObjectCreate("lblTrendType6", OBJ_LABEL, 0, 0, 0, 0, 0);
   ObjectSet("lblTrendType6", OBJPROP_XDISTANCE, 420);
   ObjectSet("lblTrendType6", OBJPROP_YDISTANCE, 25);
   ObjectSetText("lblTrendType6", "Kelajuan  ", 10, "Tahoma", Aqua);
   ObjectCreate("lblAlerToBuy", OBJ_LABEL, 0, 0, 0, 0, 0);
   ObjectSet("lblAlerToBuy", OBJPROP_XDISTANCE, 420);
   ObjectSet("lblAlerToBuy", OBJPROP_YDISTANCE, 40);
   ObjectSetText("lblAlerToBuy", "Buy/Sell ", 10, "Tahoma", Aqua);
   ObjectCreate("lblText", OBJ_LABEL, 0, 0, 0, 0, 0);
   ObjectSet("lblText", OBJPROP_XDISTANCE, 420);
   ObjectSet("lblText", OBJPROP_YDISTANCE, 60);
   ObjectSetText("lblText", "Late? ", 10, "Tahoma", Aqua);
   ObjectCreate("read", OBJ_LABEL, 0, 0, 0, 0, 0);
   ObjectSet("read", OBJPROP_XDISTANCE, 10);
   ObjectSet("read", OBJPROP_YDISTANCE, 120);
   ObjectSetText("read", "Not Ready", 10, "Tahoma", Aqua);
   return (0);
}

void CheckForOpen() {
   int l_ticket_8;
   double l_ima_12;
   double l_ima_20;
   double l_ima_28;
   double l_ima_36;
   double l_ima_44;
   double l_istochastic_52;
   double l_istochastic_60;
   double l_isar_68;
//   if (AccountNumber() != 889161533) {
//      Alert("Wrong AccountNumber");
//      return;
 //  }
   if (Volume[0] <= 1.0) {
      l_ima_12 = iMA(NULL, 0, MovingPeriod, MovingShift, MODE_SMA, PRICE_CLOSE, 0);
      l_ima_20 = iMA(NULL, 0, 240, MovingShift, MODE_SMA, PRICE_CLOSE, 0);
      l_ima_28 = iMA(NULL, 0, 100, 100, MODE_SMA, PRICE_CLOSE, 0);
      l_ima_36 = iMA(NULL, 0, 180, 0, MODE_SMA, PRICE_CLOSE, 0);
      l_ima_44 = iMA(NULL, 0, 240, 0, MODE_SMA, PRICE_CLOSE, 0);
      l_istochastic_52 = iStochastic(NULL, 0, 15, 7, 10, MODE_SMA, 0, MODE_MAIN, 0);
      l_istochastic_60 = iStochastic(NULL, 0, 240, 5, 10, MODE_SMA, 0, MODE_MAIN, 0);
      l_isar_68 = iSAR(NULL, 0, sarstep, 0.2, 0);
      if (l_istochastic_52 >= max) gs_208 = "ReadyToSell...";
      if (l_istochastic_52 <= min) gs_208 = "ReadyToBuy...";
      if (l_istochastic_52 > min && l_istochastic_52 < max) gs_208 = "Stanby...";
      if (Close[1] > l_ima_12) gs_224 = "Up !";
      if (Close[1] < l_ima_12) gs_224 = "Down !";
      if (Trade != FALSE) {
         if (gs_208 == "ReadyToSell...") {
            if (optimize == TRUE) {
               l_ticket_8 = OrderSend(Symbol(), OP_SELL, LotsOptimized(), Bid, 3, 0, Bid - TakeProfit * Point, "", 20050610, 0, Red);
               if (reverse != TRUE) return;
               l_ticket_8 = OrderSend(Symbol(), OP_BUY, LotsOptimized(), Ask, 3, 0, Ask + TakeProfit * Point, "", 20050610, 0, Blue);
               return;
            }
            if (optimize == FALSE) {
               l_ticket_8 = OrderSend(Symbol(), OP_SELL, Lots, Bid, 3, 0, Bid - TakeProfit * Point, "", 20050610, 0, Red);
               if (reverse != TRUE) return;
               l_ticket_8 = OrderSend(Symbol(), OP_BUY, Lots, Ask, 3, 0, Ask + TakeProfit * Point, "", 20050610, 0, Blue);
               return;
            }
         }
         if (Trade != FALSE) {
            if (gs_208 == "ReadyToBuy...") {
               if (optimize != TRUE) {
                  if (optimize != FALSE) {
                  }
               }
            }
         }
      }
   }
}

void CheckForClose() {
   double l_ima_0;
   double l_isar_24;
   double l_istochastic_8 = iStochastic(NULL, 0, 15, 3, 1, MODE_SMA, 0, MODE_MAIN, 0);
   double l_ima_16 = iMA(NULL, 0, 50, 30, MODE_SMA, PRICE_CLOSE, 0);
   if (Volume[0] <= 1.0) {
      l_ima_0 = iMA(NULL, 0, MovingPeriod, MovingShift, MODE_SMA, PRICE_CLOSE, 0);
      l_isar_24 = iSAR(NULL, 0, 0.0001, 0.2, 0);
      for (int l_pos_32 = 0; l_pos_32 < OrdersTotal(); l_pos_32++) {
         if (OrderSelect(l_pos_32, SELECT_BY_POS, MODE_TRADES) == FALSE) break;
         if (OrderMagicNumber() != 20050610 || OrderSymbol() != Symbol()) continue;
         if (OrderType() == OP_BUY) {
            if (!(Bid > l_isar_24 && l_istochastic_8 > CloseLevel + 50.0 || Bid < l_isar_24 && l_istochastic_8 > CloseLevel + 50.0)) break;
            OrderClose(OrderTicket(), OrderLots(), Bid, 3, White);
            return;
         }
         if (TrailingStop > 0.0) {
            if (Bid - OrderOpenPrice() > Point * TrailingStop)
               if (OrderStopLoss() < Bid - Point * TrailingStop) break;
         }
         if (OrderType() == OP_SELL) {
            if (!(Ask < l_isar_24 && l_istochastic_8 < 50 - CloseLevel || Ask > l_isar_24 && l_istochastic_8 < 50 - CloseLevel)) break;
            OrderClose(OrderTicket(), OrderLots(), Ask, 3, White);
            return;
         }
         if (TrailingStop > 0.0) {
            if (OrderOpenPrice() - Ask > Point * TrailingStop)
               if (OrderStopLoss() > Ask + Point * TrailingStop || OrderStopLoss() == 0.0) break;
         }
      }
   }
}

void start() {
   double l_color_0;
   double l_color_8;
   double l_color_16;
   double l_color_24;
   double l_color_32;
   double l_ima_40 = iMA(NULL, 0, 10, MovingShift, MODE_SMA, PRICE_CLOSE, 0);
   double l_isar_48 = iSAR(NULL, 0, 0.0001, 0.2, 0);
   double l_isar_56 = iSAR(NULL, 0, 0.0002, 0.2, 0);
   double l_isar_64 = iSAR(NULL, 0, 0.0003, 0.2, 0);
   double l_istochastic_72 = iStochastic(NULL, 0, 15, 7, 10, MODE_SMA, 0, MODE_MAIN, 0);
   if (l_istochastic_72 > 75.0) {
      gs_208 = "ReadyToSell...";
      l_color_32 = Red;
   }
   if (l_istochastic_72 < 25.0) {
      gs_208 = "ReadyToBuy...";
      l_color_32 = LimeGreen;
   }
   if (l_istochastic_72 > 25.0 && l_istochastic_72 < 75.0) {
      gs_208 = "Stanby...";
      l_color_32 = Yellow;
   }
   if (Close[1] > l_ima_40) {
      gs_224 = "Up !";
      l_color_16 = LimeGreen;
   }
   if (Close[1] < l_ima_40) {
      gs_224 = "Down !";
      l_color_16 = Red;
   }
   if (l_ima_40 > l_isar_48) {
      gs_248 = "UpTrend !";
      l_color_0 = LimeGreen;
   }
   if (l_ima_40 < l_isar_48) {
      gs_248 = "DownTrend !";
      l_color_0 = Red;
   }
   if (l_ima_40 > l_isar_56) {
      gs_240 = "UpTrend !";
      l_color_8 = LimeGreen;
   }
   if (l_ima_40 < l_isar_56) {
      gs_240 = "DownTrend !";
      l_color_8 = Red;
   }
   if (l_ima_40 > l_isar_64) {
      gs_232 = "UpTrend !";
      l_color_24 = LimeGreen;
   }
   if (l_ima_40 < l_isar_64) {
      gs_232 = "DownTrend !";
      l_color_24 = Red;
   }
   Comment("Istochastic30 =", l_istochastic_72);
   ObjectSetText("ShortTermTrend", "Short Term Trend   => " + gs_232, 14, "Tohama", l_color_24);
   ObjectSetText("MidTermTrend", "Mid Term Trend   => " + gs_240, 14, "Tohama", l_color_8);
   ObjectSetText("LongTermTrend", "Long Term Trend   => " + gs_248, 14, "Tohama", l_color_0);
   ObjectSetText("CurrentPrice", "Current Price   => " + gs_224, 14, "Tohama", l_color_16);
   ObjectSetText("read", "==> " + gs_208, 14, "Tohama", l_color_32);
   if (Bars < 100 || IsTradeAllowed() == FALSE) return;
   if (CalculateCurrentOrders(Symbol()) == 0) {
      CheckForOpen();
      return;
   }
   CheckForClose();
}