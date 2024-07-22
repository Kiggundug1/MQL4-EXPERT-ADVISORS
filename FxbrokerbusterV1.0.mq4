/*
   Generated by EX4-TO-MQ4 decompiler V4.0.223.1c []
   Website: http://purebeam.biz
   E-mail : purebeam@gmail.com
*/
#property copyright "Copyright � 2009, fxbrokerbuster.Com"
#property link      "http://www.fxbrokerbuster.com/"

extern string comment = "FxbrokerBuster EA";
extern int magic = 1234;
string gs_unused_88 = "Money Management";
extern double lots = 0.1;
extern bool mm = TRUE;
extern double risk = 1.5;
extern double minlot = 0.01;
extern double maxlot = 100.0;
extern string ordersmanagement = "Order Management";
extern bool ecn = FALSE;
bool gi_144 = FALSE;
bool gi_148 = FALSE;
extern int maxtrades = 10;
int gi_156 = 1;
extern bool hidesl = FALSE;
extern bool hidetp = FALSE;
extern double stoploss = 106.0;
extern double takeprofit = 37.0;
extern double trailingstart = 0.0;
extern double trailingstop = 0.0;
extern double trailingprofit = 0.0;
extern double trailingstep = 1.0;
extern double breakevengain = 19.0;
extern double breakeven = 5.0;
int gi_232 = 0;
int gi_236 = 0;
extern double maxspread = 10.0;
string gs_unused_248 = "Entry Logics";
bool gi_256 = TRUE;
int g_timeframe_260 = 0;
int gi_264 = 14;
int gi_268 = 2;
int gi_272 = 7;
int gi_276 = 75;
int gi_280 = 1;
bool gi_284 = TRUE;
int g_timeframe_288 = 0;
int gi_292 = 0;
int g_timeframe_296 = 0;
int g_period_300 = 177;
int g_ma_method_304 = MODE_SMA;
int g_applied_price_308 = PRICE_CLOSE;
int gi_312 = 1;
int gi_316 = 0;
bool gi_320 = FALSE;
int g_timeframe_324 = 0;
int gi_328 = 0;
extern string timefilter = "Time Filter";
extern int gmtshift = 1;
extern bool generalfilter = TRUE;
extern int starthour = 8;
int gi_352 = 0;
extern int endhour = 5;
int gi_360 = 0;
bool gi_364 = TRUE;
bool gi_368 = FALSE;
int gi_372 = 21;
int gi_376 = 0;
int gi_380;
int gi_384;
int gi_388;
int g_count_392;
int g_count_396;
int g_count_400;
int gi_404;
int g_ord_total_408;
int g_bars_412 = -1;
double g_ask_464;
double g_bid_472;
double g_price_488;
double g_price_496;
double g_lots_504;
string gs_552;
string gs_560;
string gs_568;
string gs_576;
string gs_584;
string gs_592;
datetime gt_unused_600;
datetime gt_unused_604;
int g_str2time_608;
int g_str2time_612;
int g_str2time_616;
int gi_620;
int gi_624;
double gd_628;
double gd_636;
int g_digits_644;

int init() {
   gt_unused_600 = Time[0];
   gt_unused_604 = Time[0];
   g_digits_644 = Digits;
   if (g_digits_644 == 3 || g_digits_644 == 5) {
      gd_628 = 10.0 * Point;
      gd_636 = 10;
   } else {
      gd_628 = Point;
      gd_636 = 1;
   }
   return (0);
}

int start() {
   RefreshRates();
   g_ask_464 = MarketInfo(Symbol(), MODE_ASK);
   g_bid_472 = MarketInfo(Symbol(), MODE_BID);
   if (breakevengain > 0.0) movebreakeven(breakevengain, breakeven);
   if (trailingstop > 0.0) movetrailingstop(trailingstart, trailingstop);
   if (trailingprofit > 0.0) movetrailingprofit(trailingstart, trailingprofit);
   if (gi_156 == 1 && TimeCurrent() - gi_620 < Period() || TimeCurrent() - gi_624 < Period()) {
      g_count_392 = 1;
      g_count_396 = 1;
   }
   if (g_bars_412 != Bars) {
      g_count_392 = 0;
      g_count_396 = 0;
      g_bars_412 = Bars;
   }
   double l_ihigh_0 = iHigh(Symbol(), g_timeframe_260, iHighest(Symbol(), g_timeframe_260, MODE_HIGH, gi_264, gi_280));
   double l_ilow_8 = iLow(Symbol(), g_timeframe_260, iLowest(Symbol(), g_timeframe_260, MODE_LOW, gi_264, gi_280));
   double l_ima_16 = iMA(NULL, g_timeframe_296, g_period_300, 0, g_ma_method_304, g_applied_price_308, gi_316);
   bool li_24 = FALSE;
   bool li_28 = FALSE;
   if (gi_256 == FALSE || (gi_256 && g_ask_464 > l_ihigh_0 + gi_268 * gd_628 && l_ihigh_0 - l_ilow_8 > gi_272 * gd_628 && l_ihigh_0 - l_ilow_8 < gi_276 * gd_628) && gi_284 == FALSE ||
      (gi_284 && iOpen(NULL, g_timeframe_288, gi_292) < l_ima_16 && iClose(NULL, g_timeframe_288, gi_292) > l_ima_16 + gi_312 * gd_628)) {
      if (gi_148) li_28 = TRUE;
      else li_24 = TRUE;
   }
   if (gi_256 == FALSE || (gi_256 && g_bid_472 < l_ilow_8 - gi_268 * gd_628 && l_ihigh_0 - l_ilow_8 > gi_272 * gd_628 && l_ihigh_0 - l_ilow_8 < gi_276 * gd_628) && gi_284 == FALSE ||
      (gi_284 && iOpen(NULL, g_timeframe_288, gi_292) > l_ima_16 && iClose(NULL, g_timeframe_288, gi_292) < l_ima_16 - gi_312 * gd_628)) {
      if (gi_148) li_24 = TRUE;
      else li_28 = TRUE;
   }
   if ((gi_144 && li_28) || (gi_148 == FALSE && gi_320 && iOpen(NULL, g_timeframe_324, gi_328) > l_ima_16 && iClose(NULL, g_timeframe_324, gi_328) < l_ima_16 && !li_24) ||
      (gi_148 && gi_320 && iOpen(NULL, g_timeframe_324, gi_328) > l_ima_16 && iClose(NULL, g_timeframe_324, gi_328) < l_ima_16) && !li_24) closebuy();
   if ((gi_144 && li_24) || (gi_148 == FALSE && gi_320 && iOpen(NULL, g_timeframe_324, gi_328) < l_ima_16 && iClose(NULL, g_timeframe_324, gi_328) > l_ima_16 && !li_28) ||
      (gi_148 && gi_320 && iOpen(NULL, g_timeframe_324, gi_328) > l_ima_16 && iClose(NULL, g_timeframe_324, gi_328) < l_ima_16) && !li_28) closesell();
   if (hidesl) hideclosebuy();
   if (hidetp) hideclosesell();
   if (generalfilter) {
      gi_380 = starthour + gmtshift;
      if (gi_380 > 23) gi_380 -= 24;
      if (gi_380 < 10) gs_552 = "0" + gi_380;
      if (gi_380 > 9) gs_552 = gi_380;
      if (gi_352 < 10) gs_560 = "0" + gi_352;
      if (gi_352 > 9) gs_560 = gi_352;
      g_str2time_608 = StrToTime(gs_552 + ":" + gs_560);
      gi_384 = endhour + gmtshift;
      if (gi_384 > 23) gi_384 -= 24;
      if (endhour < 10) gs_568 = "0" + gi_384;
      if (endhour > 9) gs_568 = gi_384;
      if (gi_360 < 10) gs_576 = "0" + gi_360;
      if (gi_360 > 9) gs_576 = gi_360;
      g_str2time_612 = StrToTime(gs_568 + ":" + gs_576);
   }
   if (gi_368) {
      gi_388 = gi_372 + gmtshift;
      if (gi_388 > 23) gi_388 -= 24;
      if (gi_388 < 10) gs_584 = "0" + gi_388;
      if (gi_388 > 9) gs_584 = gi_388;
      if (gi_376 < 10) gs_592 = "0" + gi_376;
      if (gi_376 > 9) gs_592 = gi_376;
      g_str2time_616 = StrToTime(gs_584 + ":" + gs_592);
   }
   if ((generalfilter && (gi_380 < gi_384 && TimeCurrent() < g_str2time_608 || TimeCurrent() > g_str2time_612) || (gi_380 > gi_384 && TimeCurrent() < g_str2time_608 &&
      TimeCurrent() > g_str2time_612)) || (gi_364 == FALSE && DayOfWeek() == 0) || (gi_368 && DayOfWeek() == 5 && TimeCurrent() > g_str2time_616)) return (0);
   if (g_ask_464 - g_bid_472 > maxspread * gd_636 * gd_628) return (0);
   if (count(OP_BUY) + count(OP_SELL) >= maxtrades) return (0);
   if (mm) lots = lotsoptimized();
   int li_32 = 0;
   if (gi_232 > 0) li_32 = TimeCurrent() + 60 * gi_232 - 5;
   if (li_24 && g_count_392 < gi_156) {
      g_lots_504 = lots;
      if (ecn == FALSE) gi_404 = open(OP_BUY, g_lots_504, g_ask_464, stoploss, takeprofit, li_32, Blue);
      if (ecn) {
         gi_404 = open(OP_BUY, g_lots_504, g_ask_464, 0, 0, li_32, Blue);
         createlstoploss(stoploss);
         createltakeprofit(takeprofit);
      }
      if (gi_404 > 0) g_count_392++;
   }
   if (li_28 && g_count_396 < gi_156) {
      g_lots_504 = lots;
      if (ecn == FALSE) gi_404 = open(OP_SELL, g_lots_504, g_bid_472, stoploss, takeprofit, li_32, Red);
      if (ecn) {
         gi_404 = open(OP_SELL, g_lots_504, g_bid_472, 0, 0, li_32, Red);
         createsstoploss(stoploss);
         createstakeprofit(takeprofit);
      }
      if (gi_404 > 0) g_count_396++;
   }
   return (0);
}

int open(int a_cmd_0, double a_lots_4, double a_price_12, int ai_20, int ai_24, int a_datetime_28, color a_color_32) {
   int li_52;
   int l_count_36 = 0;
   int li_40 = 100;
   int l_error_44 = 0;
   int l_ticket_48 = 0;
   if (NormalizeDouble(MarketInfo(Symbol(), MODE_LOTSTEP), 2) == 0.01) li_52 = 2;
   else li_52 = 1;
   a_lots_4 = NormalizeDouble(a_lots_4, li_52);
   if (li_52 == 2) minlot = 0.01;
   if (a_lots_4 < minlot) a_lots_4 = minlot;
   if (a_lots_4 > maxlot) a_lots_4 = maxlot;
   if (a_cmd_0 == OP_BUY || a_cmd_0 == OP_BUYSTOP || a_cmd_0 == OP_BUYLIMIT) {
      if (hidesl == FALSE && ai_20 > 0) g_price_488 = a_price_12 - ai_20 * gd_628;
      else g_price_488 = 0;
      if (hidetp == FALSE && ai_24 > 0) g_price_496 = a_price_12 + ai_24 * gd_628;
      else g_price_496 = 0;
   }
   if (a_cmd_0 == OP_SELL || a_cmd_0 == OP_SELLSTOP || a_cmd_0 == OP_SELLLIMIT) {
      if (hidesl == FALSE && ai_20 > 0) g_price_488 = a_price_12 + ai_20 * gd_628;
      else g_price_488 = 0;
      if (hidetp == FALSE && ai_24 > 0) g_price_496 = a_price_12 - ai_24 * gd_628;
      else g_price_496 = 0;
   }
   for (l_count_36 = 0; l_count_36 < li_40; l_count_36++) {
      l_ticket_48 = OrderSend(Symbol(), a_cmd_0, a_lots_4, a_price_12, gi_236 * gd_636, g_price_488, g_price_496, comment + ". Magic: " + DoubleToStr(magic, 0), magic, a_datetime_28, a_color_32);
      l_error_44 = GetLastError();
      if (l_error_44 == 0/* NO_ERROR */) break;
      if (!((l_error_44 == 4/* SERVER_BUSY */ || l_error_44 == 137/* BROKER_BUSY */ || l_error_44 == 146/* TRADE_CONTEXT_BUSY */ || l_error_44 == 136/* OFF_QUOTES */))) break;
      Sleep(1000);
   }
   return (l_ticket_48);
}

double lotsoptimized() {
   int li_0;
   double l_lots_4;
   if (NormalizeDouble(MarketInfo(Symbol(), MODE_LOTSTEP), 2) == 0.01) li_0 = 2;
   else li_0 = 1;
   if (mm == TRUE) l_lots_4 = NormalizeDouble(AccountFreeMargin() / (100.0 * (NormalizeDouble(MarketInfo(Symbol(), MODE_MARGINREQUIRED), 4) + 5.0) / risk) - 0.05, li_0);
   else l_lots_4 = lots;
   return (l_lots_4);
}

int count(int a_cmd_0) {
   g_count_400 = 0;
   if (OrdersTotal() > 0) {
      for (g_ord_total_408 = OrdersTotal(); g_ord_total_408 >= 0; g_ord_total_408--) {
         OrderSelect(g_ord_total_408, SELECT_BY_POS, MODE_TRADES);
         if (OrderSymbol() == Symbol() && OrderType() == a_cmd_0 && OrderMagicNumber() == magic) g_count_400++;
      }
      return (g_count_400);
   }
   return (0);
}

void closebuy() {
   if (OrdersTotal() > 0) {
      for (g_ord_total_408 = OrdersTotal(); g_ord_total_408 >= 0; g_ord_total_408--) {
         OrderSelect(g_ord_total_408, SELECT_BY_POS, MODE_TRADES);
         if (OrderSymbol() == Symbol() && OrderMagicNumber() == magic && OrderType() == OP_BUY) OrderClose(OrderTicket(), OrderLots(), g_bid_472, gi_236 * gd_636);
      }
   }
}

void closesell() {
   if (OrdersTotal() > 0) {
      for (g_ord_total_408 = OrdersTotal(); g_ord_total_408 >= 0; g_ord_total_408--) {
         OrderSelect(g_ord_total_408, SELECT_BY_POS, MODE_TRADES);
         if (OrderSymbol() == Symbol() && OrderMagicNumber() == magic && OrderType() == OP_SELL) OrderClose(OrderTicket(), OrderLots(), g_ask_464, gi_236 * gd_636);
      }
   }
}

void hideclosebuy() {
   if (OrdersTotal() > 0) {
      for (g_ord_total_408 = OrdersTotal(); g_ord_total_408 >= 0; g_ord_total_408--) {
         OrderSelect(g_ord_total_408, SELECT_BY_POS, MODE_TRADES);
         if (OrderSymbol() == Symbol() && OrderMagicNumber() == magic && OrderType() == OP_BUY && (takeprofit > 0.0 && OrderProfit() > 10.0 * (takeprofit * OrderLots())) ||
            (stoploss > 0.0 && OrderProfit() < 10.0 * ((-1.0 * stoploss) * OrderLots()) - 10.0 * (MarketInfo(Symbol(), MODE_SPREAD) * OrderLots()) / gd_636)) OrderClose(OrderTicket(), OrderLots(), g_bid_472, gi_236 * gd_636);
      }
   }
}

void hideclosesell() {
   if (OrdersTotal() > 0) {
      for (g_ord_total_408 = OrdersTotal(); g_ord_total_408 >= 0; g_ord_total_408--) {
         OrderSelect(g_ord_total_408, SELECT_BY_POS, MODE_TRADES);
         if (OrderSymbol() == Symbol() && OrderMagicNumber() == magic && OrderType() == OP_SELL && (takeprofit > 0.0 && OrderProfit() > 10.0 * (takeprofit * OrderLots())) ||
            (stoploss > 0.0 && OrderProfit() < 10.0 * ((-1.0 * stoploss) * OrderLots()) - 10.0 * (MarketInfo(Symbol(), MODE_SPREAD) * OrderLots()) / gd_636)) OrderClose(OrderTicket(), OrderLots(), g_ask_464, gi_236 * gd_636);
      }
   }
}

void movebreakeven(int ai_0, int ai_4) {
   RefreshRates();
   g_ask_464 = MarketInfo(Symbol(), MODE_ASK);
   g_bid_472 = MarketInfo(Symbol(), MODE_BID);
   if (OrdersTotal() > 0) {
      for (g_ord_total_408 = OrdersTotal(); g_ord_total_408 >= 0; g_ord_total_408--) {
         OrderSelect(g_ord_total_408, SELECT_BY_POS, MODE_TRADES);
         if (OrderType() <= OP_SELL && OrderSymbol() == Symbol() && OrderMagicNumber() == magic) {
            if (OrderType() == OP_BUY) {
               if (NormalizeDouble(g_bid_472 - OrderOpenPrice(), g_digits_644) < NormalizeDouble(ai_0 * gd_628, g_digits_644)) continue;
               if (!(NormalizeDouble(OrderStopLoss() - OrderOpenPrice(), g_digits_644) < NormalizeDouble(ai_4 * gd_628, g_digits_644) || OrderStopLoss() == 0.0)) continue;
               OrderModify(OrderTicket(), OrderOpenPrice(), NormalizeDouble(OrderOpenPrice() + ai_4 * gd_628, g_digits_644), OrderTakeProfit(), 0, Blue);
               return;
            }
            if (NormalizeDouble(OrderOpenPrice() - g_ask_464, g_digits_644) >= NormalizeDouble(ai_0 * gd_628, g_digits_644)) {
               if (NormalizeDouble(OrderOpenPrice() - OrderStopLoss(), g_digits_644) < NormalizeDouble(ai_4 * gd_628, g_digits_644) || OrderStopLoss() == 0.0) {
                  OrderModify(OrderTicket(), OrderOpenPrice(), NormalizeDouble(OrderOpenPrice() - ai_4 * gd_628, g_digits_644), OrderTakeProfit(), 0, Red);
                  return;
               }
            }
         }
      }
   }
}

void movetrailingstop(double ad_0, double ad_8) {
   RefreshRates();
   g_ask_464 = MarketInfo(Symbol(), MODE_ASK);
   g_bid_472 = MarketInfo(Symbol(), MODE_BID);
   if (OrdersTotal() > 0) {
      for (g_ord_total_408 = OrdersTotal(); g_ord_total_408 >= 0; g_ord_total_408--) {
         OrderSelect(g_ord_total_408, SELECT_BY_POS, MODE_TRADES);
         if (OrderType() <= OP_SELL && OrderSymbol() == Symbol() && OrderMagicNumber() == magic) {
            if (OrderType() == OP_BUY) {
               if (!(NormalizeDouble(g_ask_464, g_digits_644) > NormalizeDouble(OrderOpenPrice() + ad_0 * gd_628, g_digits_644) && NormalizeDouble(OrderStopLoss(), g_digits_644) < NormalizeDouble(g_bid_472 - (ad_8 +
                  trailingstep) * gd_628, g_digits_644))) continue;
               OrderModify(OrderTicket(), OrderOpenPrice(), NormalizeDouble(g_bid_472 - ad_8 * gd_628, g_digits_644), OrderTakeProfit(), 0, Blue);
               return;
            }
            if (NormalizeDouble(g_bid_472, g_digits_644) < NormalizeDouble(OrderOpenPrice() - ad_0 * gd_628, g_digits_644) && NormalizeDouble(OrderStopLoss(), g_digits_644) > NormalizeDouble(g_ask_464 +
               (ad_8 + trailingstep) * gd_628, g_digits_644) || OrderStopLoss() == 0.0) {
               OrderModify(OrderTicket(), OrderOpenPrice(), NormalizeDouble(g_ask_464 + ad_8 * gd_628, g_digits_644), OrderTakeProfit(), 0, Red);
               return;
            }
         }
      }
   }
}

void movetrailingprofit(double ad_0, double ad_8) {
   RefreshRates();
   g_ask_464 = MarketInfo(Symbol(), MODE_ASK);
   g_bid_472 = MarketInfo(Symbol(), MODE_BID);
   for (int l_pos_16 = 0; l_pos_16 < OrdersTotal(); l_pos_16++) {
      if (OrderSelect(l_pos_16, SELECT_BY_POS, MODE_TRADES)) {
         if (OrderSymbol() == Symbol() && OrderMagicNumber() == magic) {
            if (OrderType() == OP_BUY) {
               if (NormalizeDouble(g_bid_472 - OrderOpenPrice(), g_digits_644) <= NormalizeDouble((-1.0 * ad_0) * gd_628, g_digits_644))
                  if (NormalizeDouble(OrderTakeProfit(), g_digits_644) > NormalizeDouble(g_bid_472 + (ad_8 + trailingstep) * gd_628, g_digits_644) || NormalizeDouble(OrderTakeProfit(), g_digits_644) == 0.0) OrderModify(OrderTicket(), OrderOpenPrice(), OrderStopLoss(), NormalizeDouble(g_bid_472 + ad_8 * gd_628, g_digits_644), 0, Blue);
            }
            if (OrderType() == OP_SELL) {
               if (NormalizeDouble(OrderOpenPrice() - g_ask_464, g_digits_644) <= NormalizeDouble((-1.0 * ad_0) * gd_628, g_digits_644))
                  if (NormalizeDouble(OrderTakeProfit(), g_digits_644) < NormalizeDouble(g_ask_464 - (ad_8 + trailingstep) * gd_628, g_digits_644)) OrderModify(OrderTicket(), OrderOpenPrice(), OrderStopLoss(), NormalizeDouble(g_ask_464 - ad_8 * gd_628, g_digits_644), 0, Red);
            }
         }
      }
   }
}

void createlstoploss(int ai_0) {
   RefreshRates();
   g_ask_464 = MarketInfo(Symbol(), MODE_ASK);
   g_bid_472 = MarketInfo(Symbol(), MODE_BID);
   for (int l_pos_4 = 0; l_pos_4 < OrdersTotal(); l_pos_4++) {
      OrderSelect(l_pos_4, SELECT_BY_POS, MODE_TRADES);
      if (OrderType() <= OP_SELL && OrderSymbol() == Symbol() && OrderMagicNumber() == magic) {
         if (OrderType() == OP_BUY) {
            if (OrderStopLoss() == 0.0) {
               OrderModify(OrderTicket(), OrderOpenPrice(), NormalizeDouble(g_ask_464 - ai_0 * gd_628, g_digits_644), OrderTakeProfit(), 0, Red);
               return;
            }
         }
      }
   }
}

void createsstoploss(int ai_0) {
   RefreshRates();
   g_ask_464 = MarketInfo(Symbol(), MODE_ASK);
   g_bid_472 = MarketInfo(Symbol(), MODE_BID);
   for (int l_pos_4 = 0; l_pos_4 < OrdersTotal(); l_pos_4++) {
      OrderSelect(l_pos_4, SELECT_BY_POS, MODE_TRADES);
      if (OrderType() <= OP_SELL && OrderSymbol() == Symbol() && OrderMagicNumber() == magic) {
         if (OrderType() == OP_SELL) {
            if (OrderStopLoss() == 0.0) {
               OrderModify(OrderTicket(), OrderOpenPrice(), NormalizeDouble(g_bid_472 + ai_0 * gd_628, g_digits_644), OrderTakeProfit(), 0, Red);
               return;
            }
         }
      }
   }
}

void createltakeprofit(int ai_0) {
   RefreshRates();
   g_ask_464 = MarketInfo(Symbol(), MODE_ASK);
   g_bid_472 = MarketInfo(Symbol(), MODE_BID);
   for (int l_pos_4 = 0; l_pos_4 < OrdersTotal(); l_pos_4++) {
      OrderSelect(l_pos_4, SELECT_BY_POS, MODE_TRADES);
      if (OrderType() <= OP_SELL && OrderSymbol() == Symbol() && OrderMagicNumber() == magic) {
         if (OrderType() == OP_BUY) {
            if (OrderTakeProfit() == 0.0) {
               OrderModify(OrderTicket(), OrderOpenPrice(), OrderStopLoss(), NormalizeDouble(g_ask_464 + ai_0 * gd_628, g_digits_644), 0, Red);
               return;
            }
         }
      }
   }
}

void createstakeprofit(int ai_0) {
   RefreshRates();
   g_ask_464 = MarketInfo(Symbol(), MODE_ASK);
   g_bid_472 = MarketInfo(Symbol(), MODE_BID);
   int l_ord_total_4 = OrdersTotal();
   for (int l_pos_8 = 0; l_pos_8 < OrdersTotal(); l_pos_8++) {
      OrderSelect(l_pos_8, SELECT_BY_POS, MODE_TRADES);
      if (OrderType() <= OP_SELL && OrderSymbol() == Symbol() && OrderMagicNumber() == magic) {
         if (OrderType() == OP_SELL) {
            if (OrderTakeProfit() == 0.0) {
               OrderModify(OrderTicket(), OrderOpenPrice(), OrderStopLoss(), NormalizeDouble(g_bid_472 - ai_0 * gd_628, g_digits_644), 0, Red);
               return;
            }
         }
      }
   }
}