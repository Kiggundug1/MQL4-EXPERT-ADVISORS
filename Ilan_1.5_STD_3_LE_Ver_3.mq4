
#property copyright "forexinn@rambler.ru"
#property link      ""

extern double LotExponent = 1.51;
extern double slip = 3.0;
int gi_unused_88;
extern double Lots = 0.02;
extern int lotdecimal = 2;
extern double TakeProfit = 12.0;
int OrderN = 1;
int OrderN1 = 2;
int OrderN2 = 3;
int OrderN3 = 3;
int OrderN4 = 4;
int OrderN5 = 5;
int OrderN6 = 6;
int OrderN7 = 7;
int OrderN8 = 8;
int OrderN9 = 9;
int OrderN10 = 10;
int OrderN11 = 11;
int OrderN12 = 12;
int OrderN13 = 13;
int OrderN14 = 14;
extern double TakeProfit2 = 12.0;
extern double LotExponent2 = 1.4;
extern double LotExponent3 = 1.25;
extern double LotExponent4 = 1.41;
extern double LotExponent5 = 1.41;
extern double LotExponent6 = 1.59;
extern double LotExponent7 = 1.41;
extern double LotExponent8 = 1.69;
extern double LotExponent9 = 1.41;
extern double LotExponent10 = 1.69;
extern double LotExponent11 = 1.41;
extern double LotExponent12 = 1.8;
extern double LotExponent13 = 1.41;
extern double LotExponent14 = 1.8;
extern double LotExponent15 = 1.41;
extern double Stoploss = 500.0;
extern double TrailStart = 10.0;
extern double TrailStop = 10.0;
extern double PipStep = 10.0;
extern int MaxTrades = 15;
extern bool UseEquityStop = FALSE;
extern double TotalEquityRisk = 20.0;
extern bool UseTrailingStop = FALSE;
extern bool UseTimeOut = FALSE;
extern double MaxTradeOpenHours = 48.0;
extern int g_magic_176 = 77857;
extern double PipStep2 = 10.0;
extern double PipStep3 = 20.0;
extern double PipStep4 = 30.0;
extern double PipStep5 = 20.0;
extern double PipStep6 = 40.0;
extern double PipStep7 = 20.0;
extern double PipStep8 = 50.0;
extern double PipStep9 = 20.0;
extern double PipStep10 =60.0;
extern double PipStep11 = 20.0;
extern double PipStep12 = 70.0;
extern double PipStep13 = 20.0;
extern double PipStep14 = 80.0;
extern double PipStep15 = 20.0;
double g_price_180;
double gd_188;
double gd_unused_196;
double gd_unused_204;
double g_price_212;
double g_bid_220;
double g_ask_228;
double gd_236;
double gd_244;
double gd_260;
bool gi_268;
string gs_ilan_272 = "Ilan";
int gi_280 = 0;
int gi_284;
int gi_288 = 0;
double gd_292;
int g_pos_300 = 0;
int gi_304;
double gd_308 = 0.0;
bool gi_316 = FALSE;
bool gi_320 = FALSE;
bool gi_324 = FALSE;
int gi_328;
bool gi_332 = FALSE;
double gd_336;
double gd_344;
string OrdType;

int init() {
   gd_260 = MarketInfo(Symbol(), MODE_SPREAD) * Point;
   return (0);
}

int deinit() {
   return (0);
}

int start() {
   double l_iclose_8;
   double l_iclose_16;
   if (UseTrailingStop) TrailingAlls(TrailStart, TrailStop, g_price_212);
   if (UseTimeOut) {
      if (TimeCurrent() >= gi_284) {
         CloseThisSymbolAll();
         Print("Closed All due to TimeOut");
      }
   }
   if (gi_280 == Time[0]) return (0);
   gi_280 = Time[0];
   double ld_0 = CalculateProfit();
   if (UseEquityStop) {
      if (ld_0 < 0.0 && MathAbs(ld_0) > TotalEquityRisk / 100.0 * AccountEquityHigh()) {
         CloseThisSymbolAll();
         Print("Closed All due to Stop Out");
         gi_332 = FALSE;
      }
   }
   gi_304 = CountTrades();
   if (gi_304 == 0) gi_268 = FALSE;
   for (g_pos_300 = OrdersTotal() - 1; g_pos_300 >= 0; g_pos_300--) {
      OrderSelect(g_pos_300, SELECT_BY_POS, MODE_TRADES);
      if (OrderSymbol() != Symbol() || OrderMagicNumber() != g_magic_176) continue;
      if (OrderSymbol() == Symbol() && OrderMagicNumber() == g_magic_176) {
         if (OrderType() == OP_BUY) {
            gi_320 = TRUE;
            gi_324 = FALSE;
            break;
         }
      }
      if (OrderSymbol() == Symbol() && OrderMagicNumber() == g_magic_176) {
         if (OrderType() == OP_SELL) {
            gi_320 = FALSE;
            gi_324 = TRUE;
            break;
         }
      }
   }
   if (gi_304 == 1 && gi_304 <= MaxTrades) {
      RefreshRates();
      gd_236 = FindLastBuyPrice();
      gd_244 = FindLastSellPrice();
      if (gi_320 && gd_236 - Ask >= PipStep * Point) gi_316 = TRUE;
      if (gi_324 && Bid - gd_244 >= PipStep * Point) gi_316 = TRUE;
   }
   if (gi_304 == 2 && gi_304 <= MaxTrades) {
      RefreshRates();
      gd_236 = FindLastBuyPrice();
      gd_244 = FindLastSellPrice();
      if (gi_320 && gd_236 - Ask >= PipStep2 * Point) gi_316 = TRUE;
      if (gi_324 && Bid - gd_244 >= PipStep2 * Point) gi_316 = TRUE;
   }
   if (gi_304 == 3 && gi_304 <= MaxTrades) {
      RefreshRates();
      gd_236 = FindLastBuyPrice();
      gd_244 = FindLastSellPrice();
      if (gi_320 && gd_236 - Ask >= PipStep3 * Point) gi_316 = TRUE;
      if (gi_324 && Bid - gd_244 >= PipStep3 * Point) gi_316 = TRUE;
   }
   if (gi_304 == 4 && gi_304 <= MaxTrades) {
      RefreshRates();
      gd_236 = FindLastBuyPrice();
      gd_244 = FindLastSellPrice();
      if (gi_320 && gd_236 - Ask >= PipStep4 * Point) gi_316 = TRUE;
      if (gi_324 && Bid - gd_244 >= PipStep4 * Point) gi_316 = TRUE;
   }
   if (gi_304 == 5 && gi_304 <= MaxTrades) {
      RefreshRates();
      gd_236 = FindLastBuyPrice();
      gd_244 = FindLastSellPrice();
      if (gi_320 && gd_236 - Ask >= PipStep5 * Point) gi_316 = TRUE;
      if (gi_324 && Bid - gd_244 >= PipStep5 * Point) gi_316 = TRUE;
   }
   if (gi_304 == 6 && gi_304 <= MaxTrades) {
      RefreshRates();
      gd_236 = FindLastBuyPrice();
      gd_244 = FindLastSellPrice();
      if (gi_320 && gd_236 - Ask >= PipStep6 * Point) gi_316 = TRUE;
      if (gi_324 && Bid - gd_244 >= PipStep6 * Point) gi_316 = TRUE;
   }
   if (gi_304 == 7 && gi_304 <= MaxTrades) {
      RefreshRates();
      gd_236 = FindLastBuyPrice();
      gd_244 = FindLastSellPrice();
      if (gi_320 && gd_236 - Ask >= PipStep7 * Point) gi_316 = TRUE;
      if (gi_324 && Bid - gd_244 >= PipStep7 * Point) gi_316 = TRUE;
   }
   if (gi_304 == 8 && gi_304 <= MaxTrades) {
      RefreshRates();
      gd_236 = FindLastBuyPrice();
      gd_244 = FindLastSellPrice();
      if (gi_320 && gd_236 - Ask >= PipStep8 * Point) gi_316 = TRUE;
      if (gi_324 && Bid - gd_244 >= PipStep8 * Point) gi_316 = TRUE;
   }
   if (gi_304 == 9 && gi_304 <= MaxTrades) {
      RefreshRates();
      gd_236 = FindLastBuyPrice();
      gd_244 = FindLastSellPrice();
      if (gi_320 && gd_236 - Ask >= PipStep9 * Point) gi_316 = TRUE;
      if (gi_324 && Bid - gd_244 >= PipStep9 * Point) gi_316 = TRUE;
   }
   if (gi_304 == 10 && gi_304 <= MaxTrades) {
      RefreshRates();
      gd_236 = FindLastBuyPrice();
      gd_244 = FindLastSellPrice();
      if (gi_320 && gd_236 - Ask >= PipStep10 * Point) gi_316 = TRUE;
      if (gi_324 && Bid - gd_244 >= PipStep10 * Point) gi_316 = TRUE;
   }
   if (gi_304 == 11 && gi_304 <= MaxTrades) {
      RefreshRates();
      gd_236 = FindLastBuyPrice();
      gd_244 = FindLastSellPrice();
      if (gi_320 && gd_236 - Ask >= PipStep11 * Point) gi_316 = TRUE;
      if (gi_324 && Bid - gd_244 >= PipStep11 * Point) gi_316 = TRUE;
   }
   if (gi_304 == 12 && gi_304 <= MaxTrades) {
      RefreshRates();
      gd_236 = FindLastBuyPrice();
      gd_244 = FindLastSellPrice();
      if (gi_320 && gd_236 - Ask >= PipStep12 * Point) gi_316 = TRUE;
      if (gi_324 && Bid - gd_244 >= PipStep12 * Point) gi_316 = TRUE;
   }
   if (gi_304 == 13 && gi_304 <= MaxTrades) {
      RefreshRates();
      gd_236 = FindLastBuyPrice();
      gd_244 = FindLastSellPrice();
      if (gi_320 && gd_236 - Ask >= PipStep13 * Point) gi_316 = TRUE;
      if (gi_324 && Bid - gd_244 >= PipStep13 * Point) gi_316 = TRUE;
   }
   if (gi_304 == 14 && gi_304 <= MaxTrades) {
      RefreshRates();
      gd_236 = FindLastBuyPrice();
      gd_244 = FindLastSellPrice();
      if (gi_320 && gd_236 - Ask >= PipStep14 * Point) gi_316 = TRUE;
      if (gi_324 && Bid - gd_244 >= PipStep14 * Point) gi_316 = TRUE;
   }
   if (gi_304 == 15 && gi_304 <= MaxTrades) {
      RefreshRates();
      gd_236 = FindLastBuyPrice();
      gd_244 = FindLastSellPrice();
      if (gi_320 && gd_236 - Ask >= PipStep15 * Point) gi_316 = TRUE;
      if (gi_324 && Bid - gd_244 >= PipStep15 * Point) gi_316 = TRUE;
   }
   if (gi_304 > 15 && gi_304 <= MaxTrades) {
      RefreshRates();
      gd_236 = FindLastBuyPrice();
      gd_244 = FindLastSellPrice();
      if (gi_320 && gd_236 - Ask >= PipStep15 * Point) gi_316 = TRUE;
      if (gi_324 && Bid - gd_244 >= PipStep15 * Point) gi_316 = TRUE;
   }

   if (gi_304 < 1) {
      gi_324 = FALSE;
      gi_320 = FALSE;
      gi_316 = TRUE;
      gd_188 = AccountEquity();
   }
   if (gi_316) {
      gd_236 = FindLastBuyPrice();
      gd_244 = FindLastSellPrice();
      if (gi_324) {
         gi_288 = gi_304;
         OrdType="sell";
         if (gi_304 <= OrderN) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent, lotdecimal);
         if (gi_304 > OrderN && gi_304<= OrderN1 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent2, lotdecimal);
         if (gi_304 > OrderN1 && gi_304<= OrderN2 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent3, lotdecimal);
         if (gi_304 > OrderN2 && gi_304<= OrderN3 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent4, lotdecimal);
         if (gi_304 > OrderN3 && gi_304<= OrderN4 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent5, lotdecimal);
         if (gi_304 > OrderN4 && gi_304<= OrderN5 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent6, lotdecimal);
         if (gi_304 > OrderN5 && gi_304<= OrderN6 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent7, lotdecimal);
         if (gi_304 > OrderN6 && gi_304<= OrderN7 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent8, lotdecimal);
         if (gi_304 > OrderN7 && gi_304<= OrderN8 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent9, lotdecimal);
         if (gi_304 > OrderN8 && gi_304<= OrderN9 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent10, lotdecimal);
         if (gi_304 > OrderN9 && gi_304<= OrderN10 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent11, lotdecimal);
         if (gi_304 > OrderN10 && gi_304<= OrderN11 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent12, lotdecimal);
         if (gi_304 > OrderN11 && gi_304<= OrderN12 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent13, lotdecimal);
         if (gi_304 > OrderN12 && gi_304<= OrderN13 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent14, lotdecimal);
         if (gi_304 > OrderN13 && gi_304<= OrderN14 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent15, lotdecimal);
         
         RefreshRates();
         gi_328 = OpenPendingOrder(1, gd_292, Bid, slip, Ask, 0, 0, gs_ilan_272 + "-" + gi_288, g_magic_176, 0, HotPink);
         if (gi_328 < 0) {
            Print("Error: ", GetLastError());
            return (0);
         }
         gd_244 = FindLastSellPrice();
         gi_316 = FALSE;
         gi_332 = TRUE;
      } else {
         if (gi_320) {
            gi_288 = gi_304;
            OrdType="buy";
           if (gi_304 <= OrderN) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent, lotdecimal);
         if (gi_304 > OrderN && gi_304<= OrderN1 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent2, lotdecimal);
         if (gi_304 > OrderN1 && gi_304<= OrderN2 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent3, lotdecimal);
         if (gi_304 > OrderN2 && gi_304<= OrderN3 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent4, lotdecimal);
         if (gi_304 > OrderN3 && gi_304<= OrderN4 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent5, lotdecimal);
         if (gi_304 > OrderN4 && gi_304<= OrderN5 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent6, lotdecimal);
         if (gi_304 > OrderN5 && gi_304<= OrderN6 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent7, lotdecimal);
         if (gi_304 > OrderN6 && gi_304<= OrderN7 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent8, lotdecimal);
         if (gi_304 > OrderN7 && gi_304<= OrderN8 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent9, lotdecimal);
         if (gi_304 > OrderN8 && gi_304<= OrderN9 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent10, lotdecimal);
         if (gi_304 > OrderN9 && gi_304<= OrderN10 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent11, lotdecimal);
         if (gi_304 > OrderN10 && gi_304<= OrderN11 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent12, lotdecimal);
         if (gi_304 > OrderN11 && gi_304<= OrderN12 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent13, lotdecimal);
         if (gi_304 > OrderN12 && gi_304<= OrderN13 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent14, lotdecimal);
         if (gi_304 > OrderN13 && gi_304<= OrderN14 ) gd_292 = NormalizeDouble(FindLastOrder(OrdType, "Lots") * LotExponent15, lotdecimal);
            gi_328 = OpenPendingOrder(0, gd_292, Ask, slip, Bid, 0, 0, gs_ilan_272 + "-" + gi_288, g_magic_176, 0, Lime);
            if (gi_328 < 0) {
               Print("Error: ", GetLastError());
               return (0);
            }
            gd_236 = FindLastBuyPrice();
            gi_316 = FALSE;
            gi_332 = TRUE;
         }
      }
   }
   if (gi_316 && gi_304 < 1) {
      l_iclose_8 = iClose(Symbol(), 0, 2);
      l_iclose_16 = iClose(Symbol(), 0, 1);
      g_bid_220 = Bid;
      g_ask_228 = Ask;
      if (!gi_324 && !gi_320) {
         gi_288 = gi_304;
         gd_292 = NormalizeDouble(Lots * MathPow(LotExponent, gi_288), lotdecimal);
         if (l_iclose_8 > l_iclose_16) {
            gi_328 = OpenPendingOrder(1, gd_292, g_bid_220, slip, g_bid_220, 0, 0, gs_ilan_272 + "-" + gi_288, g_magic_176, 0, HotPink);
            if (gi_328 < 0) {
               Print("Error: ", GetLastError());
               return (0);
            }
            gd_236 = FindLastBuyPrice();
            gi_332 = TRUE;
         } else {
            gi_328 = OpenPendingOrder(0, gd_292, g_ask_228, slip, g_ask_228, 0, 0, gs_ilan_272 + "-" + gi_288, g_magic_176, 0, Lime);
            if (gi_328 < 0) {
               Print("Error: ", GetLastError());
               return (0);
            }
            gd_244 = FindLastSellPrice();
            gi_332 = TRUE;
         }
         if (gi_328 > 0) gi_284 = TimeCurrent() + 60.0 * (60.0 * MaxTradeOpenHours);
         gi_316 = FALSE;
      }
   }
   gi_304 = CountTrades();
   g_price_212 = 0;
   double ld_24 = 0;
   for (g_pos_300 = OrdersTotal() - 1; g_pos_300 >= 0; g_pos_300--) {
      OrderSelect(g_pos_300, SELECT_BY_POS, MODE_TRADES);
      if (OrderSymbol() != Symbol() || OrderMagicNumber() != g_magic_176) continue;
      if (OrderSymbol() == Symbol() && OrderMagicNumber() == g_magic_176) {
         if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
            g_price_212 += OrderOpenPrice() * OrderLots();
            ld_24 += OrderLots();
         }
      }
   }
   if (gi_304 > 0) g_price_212 = NormalizeDouble(g_price_212 / ld_24, Digits);
   if (gi_332) {
      for (g_pos_300 = OrdersTotal() - 1; g_pos_300 >= 0; g_pos_300--) {
         OrderSelect(g_pos_300, SELECT_BY_POS, MODE_TRADES);
         if (OrderSymbol() != Symbol() || OrderMagicNumber() != g_magic_176) continue;
         if (OrderSymbol() == Symbol() && OrderMagicNumber() == g_magic_176) {
            if (OrderType() == OP_BUY) {
               if (gi_304 <= OrderN) g_price_180 = g_price_212 + TakeProfit * Point;
               if (gi_304 > OrderN) g_price_180 = g_price_212 + TakeProfit2 * Point;
               gd_unused_196 = g_price_180;
               gd_308 = g_price_212 - Stoploss * Point;
               gi_268 = TRUE;
            }
         }
         if (OrderSymbol() == Symbol() && OrderMagicNumber() == g_magic_176) {
            if (OrderType() == OP_SELL) {
               if (gi_304 <= OrderN) g_price_180 = g_price_212 - TakeProfit * Point;
               if (gi_304 > OrderN) g_price_180 = g_price_212 - TakeProfit2 * Point;
               gd_unused_204 = g_price_180;
               gd_308 = g_price_212 + Stoploss * Point;
               gi_268 = TRUE;
            }
         }
      }
   }
   if (gi_332) {
      if (gi_268 == TRUE) {
         for (g_pos_300 = OrdersTotal() - 1; g_pos_300 >= 0; g_pos_300--) {
            OrderSelect(g_pos_300, SELECT_BY_POS, MODE_TRADES);
            if (OrderSymbol() != Symbol() || OrderMagicNumber() != g_magic_176) continue;
            if (OrderSymbol() == Symbol() && OrderMagicNumber() == g_magic_176) OrderModify(OrderTicket(), g_price_212, OrderStopLoss(), g_price_180, 0, Yellow);
            gi_332 = FALSE;
         }
      }
   }
   return (0);
}

int CountTrades() {
   int l_count_0 = 0;
   for (int l_pos_4 = OrdersTotal() - 1; l_pos_4 >= 0; l_pos_4--) {
      OrderSelect(l_pos_4, SELECT_BY_POS, MODE_TRADES);
      if (OrderSymbol() != Symbol() || OrderMagicNumber() != g_magic_176) continue;
      if (OrderSymbol() == Symbol() && OrderMagicNumber() == g_magic_176)
         if (OrderType() == OP_SELL || OrderType() == OP_BUY) l_count_0++;
   }
   return (l_count_0);
}

void CloseThisSymbolAll() {
   for (int l_pos_0 = OrdersTotal() - 1; l_pos_0 >= 0; l_pos_0--) {
      OrderSelect(l_pos_0, SELECT_BY_POS, MODE_TRADES);
      if (OrderSymbol() == Symbol()) {
         if (OrderSymbol() == Symbol() && OrderMagicNumber() == g_magic_176) {
            if (OrderType() == OP_BUY) OrderClose(OrderTicket(), OrderLots(), Bid, slip, Blue);
            if (OrderType() == OP_SELL) OrderClose(OrderTicket(), OrderLots(), Ask, slip, Red);
         }
         Sleep(1000);
      }
   }
}

int OpenPendingOrder(int ai_0, double a_lots_4, double a_price_12, int a_slippage_20, double ad_24, int ai_32, int ai_36, string a_comment_40, int a_magic_48, int a_datetime_52, color a_color_56) {
   int l_ticket_60 = 0;
   int l_error_64 = 0;
   int l_count_68 = 0;
   int li_72 = 100;
   switch (ai_0) {
   case 2:
      for (l_count_68 = 0; l_count_68 < li_72; l_count_68++) {
         l_ticket_60 = OrderSend(Symbol(), OP_BUYLIMIT, a_lots_4, a_price_12, a_slippage_20, StopLong(ad_24, ai_32), TakeLong(a_price_12, ai_36), a_comment_40, a_magic_48, a_datetime_52, a_color_56);
         l_error_64 = GetLastError();
         if (l_error_64 == 0/* NO_ERROR */) break;
         if (!(l_error_64 == 4/* SERVER_BUSY */ || l_error_64 == 137/* BROKER_BUSY */ || l_error_64 == 146/* TRADE_CONTEXT_BUSY */ || l_error_64 == 136/* OFF_QUOTES */)) break;
         Sleep(1000);
      }
      break;
   case 4:
      for (l_count_68 = 0; l_count_68 < li_72; l_count_68++) {
         l_ticket_60 = OrderSend(Symbol(), OP_BUYSTOP, a_lots_4, a_price_12, a_slippage_20, StopLong(ad_24, ai_32), TakeLong(a_price_12, ai_36), a_comment_40, a_magic_48, a_datetime_52, a_color_56);
         l_error_64 = GetLastError();
         if (l_error_64 == 0/* NO_ERROR */) break;
         if (!(l_error_64 == 4/* SERVER_BUSY */ || l_error_64 == 137/* BROKER_BUSY */ || l_error_64 == 146/* TRADE_CONTEXT_BUSY */ || l_error_64 == 136/* OFF_QUOTES */)) break;
         Sleep(5000);
      }
      break;
   case 0:
      for (l_count_68 = 0; l_count_68 < li_72; l_count_68++) {
         RefreshRates();
         l_ticket_60 = OrderSend(Symbol(), OP_BUY, a_lots_4, Ask, a_slippage_20, StopLong(Bid, ai_32), TakeLong(Ask, ai_36), a_comment_40, a_magic_48, a_datetime_52, a_color_56);
         l_error_64 = GetLastError();
         if (l_error_64 == 0/* NO_ERROR */) break;
         if (!(l_error_64 == 4/* SERVER_BUSY */ || l_error_64 == 137/* BROKER_BUSY */ || l_error_64 == 146/* TRADE_CONTEXT_BUSY */ || l_error_64 == 136/* OFF_QUOTES */)) break;
         Sleep(5000);
      }
      break;
   case 3:
      for (l_count_68 = 0; l_count_68 < li_72; l_count_68++) {
         l_ticket_60 = OrderSend(Symbol(), OP_SELLLIMIT, a_lots_4, a_price_12, a_slippage_20, StopShort(ad_24, ai_32), TakeShort(a_price_12, ai_36), a_comment_40, a_magic_48, a_datetime_52, a_color_56);
         l_error_64 = GetLastError();
         if (l_error_64 == 0/* NO_ERROR */) break;
         if (!(l_error_64 == 4/* SERVER_BUSY */ || l_error_64 == 137/* BROKER_BUSY */ || l_error_64 == 146/* TRADE_CONTEXT_BUSY */ || l_error_64 == 136/* OFF_QUOTES */)) break;
         Sleep(5000);
      }
      break;
   case 5:
      for (l_count_68 = 0; l_count_68 < li_72; l_count_68++) {
         l_ticket_60 = OrderSend(Symbol(), OP_SELLSTOP, a_lots_4, a_price_12, a_slippage_20, StopShort(ad_24, ai_32), TakeShort(a_price_12, ai_36), a_comment_40, a_magic_48, a_datetime_52, a_color_56);
         l_error_64 = GetLastError();
         if (l_error_64 == 0/* NO_ERROR */) break;
         if (!(l_error_64 == 4/* SERVER_BUSY */ || l_error_64 == 137/* BROKER_BUSY */ || l_error_64 == 146/* TRADE_CONTEXT_BUSY */ || l_error_64 == 136/* OFF_QUOTES */)) break;
         Sleep(5000);
      }
      break;
   case 1:
      for (l_count_68 = 0; l_count_68 < li_72; l_count_68++) {
         l_ticket_60 = OrderSend(Symbol(), OP_SELL, a_lots_4, Bid, a_slippage_20, StopShort(Ask, ai_32), TakeShort(Bid, ai_36), a_comment_40, a_magic_48, a_datetime_52, a_color_56);
         l_error_64 = GetLastError();
         if (l_error_64 == 0/* NO_ERROR */) break;
         if (!(l_error_64 == 4/* SERVER_BUSY */ || l_error_64 == 137/* BROKER_BUSY */ || l_error_64 == 146/* TRADE_CONTEXT_BUSY */ || l_error_64 == 136/* OFF_QUOTES */)) break;
         Sleep(5000);
      }
   }
   return (l_ticket_60);
}

double StopLong(double ad_0, int ai_8) {
   if (ai_8 == 0) return (0);
   else return (ad_0 - ai_8 * Point);
}

double StopShort(double ad_0, int ai_8) {
   if (ai_8 == 0) return (0);
   else return (ad_0 + ai_8 * Point);
}

double TakeLong(double ad_0, int ai_8) {
   if (ai_8 == 0) return (0);
   else return (ad_0 + ai_8 * Point);
}

double TakeShort(double ad_0, int ai_8) {
   if (ai_8 == 0) return (0);
   else return (ad_0 - ai_8 * Point);
}

double CalculateProfit() {
   double ld_ret_0 = 0;
   for (g_pos_300 = OrdersTotal() - 1; g_pos_300 >= 0; g_pos_300--) {
      OrderSelect(g_pos_300, SELECT_BY_POS, MODE_TRADES);
      if (OrderSymbol() != Symbol() || OrderMagicNumber() != g_magic_176) continue;
      if (OrderSymbol() == Symbol() && OrderMagicNumber() == g_magic_176)
         if (OrderType() == OP_BUY || OrderType() == OP_SELL) ld_ret_0 += OrderProfit();
   }
   return (ld_ret_0);
}

void TrailingAlls(int ai_0, int ai_4, double a_price_8) {
   int l_ticket_16;
   double l_ord_stoploss_20;
   double l_price_28;
   if (ai_4 != 0) {
      for (int l_pos_36 = OrdersTotal() - 1; l_pos_36 >= 0; l_pos_36--) {
         if (OrderSelect(l_pos_36, SELECT_BY_POS, MODE_TRADES)) {
            if (OrderSymbol() != Symbol() || OrderMagicNumber() != g_magic_176) continue;
            if (OrderSymbol() == Symbol() || OrderMagicNumber() == g_magic_176) {
               if (OrderType() == OP_BUY) {
                  l_ticket_16 = NormalizeDouble((Bid - a_price_8) / Point, 0);
                  if (l_ticket_16 < ai_0) continue;
                  l_ord_stoploss_20 = OrderStopLoss();
                  l_price_28 = Bid - ai_4 * Point;
                  if (l_ord_stoploss_20 == 0.0 || (l_ord_stoploss_20 != 0.0 && l_price_28 > l_ord_stoploss_20)) OrderModify(OrderTicket(), a_price_8, l_price_28, OrderTakeProfit(), 0, Aqua);
               }
               if (OrderType() == OP_SELL) {
                  l_ticket_16 = NormalizeDouble((a_price_8 - Ask) / Point, 0);
                  if (l_ticket_16 < ai_0) continue;
                  l_ord_stoploss_20 = OrderStopLoss();
                  l_price_28 = Ask + ai_4 * Point;
                  if (l_ord_stoploss_20 == 0.0 || (l_ord_stoploss_20 != 0.0 && l_price_28 < l_ord_stoploss_20)) OrderModify(OrderTicket(), a_price_8, l_price_28, OrderTakeProfit(), 0, Red);
               }
            }
            Sleep(1000);
         }
      }
   }
}

double AccountEquityHigh() {
   if (CountTrades() == 0) gd_336 = AccountEquity();
   if (gd_336 < gd_344) gd_336 = gd_344;
   else gd_336 = AccountEquity();
   gd_344 = AccountEquity();
   return (gd_336);
}

double FindLastBuyPrice() {
   double l_ord_open_price_8;
   int l_ticket_24;
   double ld_unused_0 = 0;
   int l_ticket_20 = 0;
   for (int l_pos_16 = OrdersTotal() - 1; l_pos_16 >= 0; l_pos_16--) {
      OrderSelect(l_pos_16, SELECT_BY_POS, MODE_TRADES);
      if (OrderSymbol() != Symbol() || OrderMagicNumber() != g_magic_176) continue;
      if (OrderSymbol() == Symbol() && OrderMagicNumber() == g_magic_176 && OrderType() == OP_BUY) {
         l_ticket_24 = OrderTicket();
         if (l_ticket_24 > l_ticket_20) {
            l_ord_open_price_8 = OrderOpenPrice();
            ld_unused_0 = l_ord_open_price_8;
            l_ticket_20 = l_ticket_24;
         }
      }
   }
   return (l_ord_open_price_8);
}

double FindLastSellPrice() {
   double l_ord_open_price_8;
   int l_ticket_24;
   double ld_unused_0 = 0;
   int l_ticket_20 = 0;
   for (int l_pos_16 = OrdersTotal() - 1; l_pos_16 >= 0; l_pos_16--) {
      OrderSelect(l_pos_16, SELECT_BY_POS, MODE_TRADES);
      if (OrderSymbol() != Symbol() || OrderMagicNumber() != g_magic_176) continue;
      if (OrderSymbol() == Symbol() && OrderMagicNumber() == g_magic_176 && OrderType() == OP_SELL) {
         l_ticket_24 = OrderTicket();
         if (l_ticket_24 > l_ticket_20) {
            l_ord_open_price_8 = OrderOpenPrice();
            ld_unused_0 = l_ord_open_price_8;
            l_ticket_20 = l_ticket_24;
         }
      }
   }
   return (l_ord_open_price_8);
}

//¬озвращает цену или лот последнего ордера
double FindLastOrder(string OrdType, string inf)
{
   double OrderPrice;
   double LastLot;
   int trade, oldticketnumber=0;
   
   for(trade=OrdersTotal()-1;trade>=0;trade--)
   {
      OrderSelect(trade, SELECT_BY_POS, MODE_TRADES);
      if(OrderSymbol()!=Symbol()||OrderMagicNumber()!=g_magic_176) continue;
         if(OrderSymbol()==Symbol() && OrderMagicNumber()==g_magic_176)
         {
         //----
            if (OrdType=="buy")
            {
               if(OrderType()==OP_BUY)
               {
                  if(OrderTicket()>oldticketnumber)
                  {
                     OrderPrice=OrderOpenPrice();
                     LastLot = OrderLots();
                     oldticketnumber=OrderTicket();
                  }
                }
             }
             //---- 
            if (OrdType=="sell")
            {
               if(OrderType()==OP_SELL)
               {
                  if(OrderTicket()>oldticketnumber)
                  {
                     OrderPrice=OrderOpenPrice();
                     LastLot = OrderLots();
                     oldticketnumber=OrderTicket();
                  }
                }
             }
         //----    
   }
}
if (inf=="Price") return(OrderPrice);
if (inf=="Lots")  return(LastLot);
}