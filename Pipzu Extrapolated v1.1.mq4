#property copyright "Copyright © 2008, Pipzu Extrapolated V1.1, Pipzu.com"
#property link      "http://pipzu.com"

extern string _d0 = "Pipzu Extrapolated ver 1.1";
extern int MagicNumber = 8625;
extern int Slippage = 3;
extern bool EmailTrades = FALSE;
int gi_96 = 85;
int gi_100 = 30;
int gi_104 = 15;
extern double Lots = 0.1;
extern string _d3 = "Money Managment Risk (0 = off... Raising it will multiply the lot size)";
extern double Risk = 0.1;
string gs_unused_132 = "Starategy Parameters";
int g_period_140 = 4;
int g_period_144 = 27;
int g_period_148 = 55;
int gi_152 = 4;
bool gi_156 = TRUE;
double gd_160 = 0.02;
double gd_168 = 0.2;
double gd_176;
double gda_184[];
double gda_188[];
double gda_192[];
double g_isar_196;
int gia_204[15];
int gia_208[15];
int gia_212[15];
int gia_216[15];
int gia_220[15];
int gia_224[15];
int gia_228[15];
int gia_232[15];
int gi_236 = -1;
int g_time_240 = 0;
int g_time_244 = 0;

void InitParams() {
   gia_204[0] = D'01.01.2003 03:00';
   gia_208[0] = 40;
   gia_212[0] = 25;
   gia_216[0] = 0;
   gia_220[0] = 15;
   gia_224[0] = 23;
   gia_228[0] = 78;
   gia_232[0] = 5;
   gia_204[1] = D'01.06.2003 04:00';
   gia_208[1] = 75;
   gia_212[1] = 28;
   gia_216[1] = 0;
   gia_220[1] = 4;
   gia_224[1] = 17;
   gia_228[1] = 131;
   gia_232[1] = 2;
   gia_204[2] = D'01.01.2004 03:00';
   gia_208[2] = 80;
   gia_212[2] = 22;
   gia_216[2] = 0;
   gia_220[2] = 5;
   gia_224[2] = 23;
   gia_228[2] = 99;
   gia_232[2] = 2;
   gia_204[3] = D'01.06.2004 04:00';
   gia_208[3] = 55;
   gia_212[3] = 22;
   gia_216[0] = 25;
   gia_220[3] = 10;
   gia_224[3] = 19;
   gia_228[3] = 99;
   gia_232[3] = 2;
   gia_204[4] = D'01.01.2005 03:00';
   gia_208[4] = 80;
   gia_212[4] = 16;
   gia_216[4] = 0;
   gia_220[4] = 8;
   gia_224[4] = 32;
   gia_228[4] = 75;
   gia_232[4] = 2;
   gia_204[5] = D'01.06.2005 04:00';
   gia_208[5] = 80;
   gia_212[5] = 22;
   gia_216[5] = 10;
   gia_220[5] = 8;
   gia_224[5] = 30;
   gia_228[5] = 134;
   gia_232[5] = 5;
   gia_204[6] = D'01.01.2006 03:00';
   gia_208[6] = 30;
   gia_212[6] = 25;
   gia_216[6] = 0;
   gia_220[6] = 4;
   gia_224[6] = 33;
   gia_228[6] = 135;
   gia_232[6] = 3;
   gia_204[7] = D'01.06.2006 04:00';
   gia_208[7] = 20;
   gia_212[7] = 22;
   gia_216[7] = 15;
   gia_220[7] = 14;
   gia_224[7] = 28;
   gia_228[7] = 64;
   gia_232[7] = 2;
   gia_204[8] = D'01.01.2007 03:00';
   gia_208[8] = 20;
   gia_212[8] = 19;
   gia_216[8] = 25;
   gia_220[8] = 15;
   gia_224[8] = 20;
   gia_228[8] = 72;
   gia_232[8] = 6;
   gia_204[9] = D'01.06.2007 04:00';
   gia_208[9] = 80;
   gia_212[9] = 10;
   gia_216[9] = 0;
   gia_220[9] = 5;
   gia_224[9] = 33;
   gia_228[9] = 68;
   gia_232[9] = 2;
   gia_204[10] = D'01.01.2008 03:00';
   gia_208[10] = 40;
   gia_212[10] = 28;
   gia_216[10] = 0;
   gia_220[10] = 2;
   gia_224[10] = 18;
   gia_228[10] = 130;
   gia_232[10] = 2;
   gia_204[11] = D'01.06.2008 04:00';
   gia_208[11] = 65;
   gia_212[11] = 16;
   gia_216[11] = 15;
   gia_220[11] = 9;
   gia_224[11] = 22;
   gia_228[11] = 86;
   gia_232[11] = 5;
   gia_204[12] = D'01.08.2008 04:00';
   gia_208[12] = 60;
   gia_212[12] = 15;
   gia_216[12] = 25;
   gia_220[12] = 3;
   gia_224[12] = 18;
   gia_228[12] = 115;
   gia_232[12] = 5;
   gia_204[13] = D'01.10.2008 04:00';
   gia_208[13] = 60;
   gia_212[13] = 25;
   gia_216[13] = 15;
   gia_220[13] = 2;
   gia_224[13] = 18;
   gia_228[13] = 84;
   gia_232[13] = 4;
   gia_204[14] = D'01.11.2008 04:00';
   gia_208[14] = 85;
   gia_212[14] = 30;
   gia_216[14] = 15;
   gia_220[14] = 4;
   gia_224[14] = 27;
   gia_228[14] = 55;
   gia_232[14] = 4;
}

void CheckParams() {
   int li_0 = ArrayBsearch(gia_204, Time[1]);
   if (gi_236 != li_0) {
      gi_96 = gia_208[li_0];
      gi_100 = gia_212[li_0];
      gi_104 = gia_216[li_0];
      g_period_140 = gia_220[li_0];
      g_period_144 = gia_224[li_0];
      g_period_148 = gia_228[li_0];
      if (gi_152 != gia_232[li_0]) {
         gi_152 = gia_232[li_0];
         ArrayResize(gda_184, gi_152);
         ArrayResize(gda_188, gi_152);
         ArrayResize(gda_192, gi_152);
      }
      gi_236 = li_0;
   }
}

int init() {
   gd_176 = 0.0001 / Point;
   if (IsTesting()) InitParams();
   ArrayResize(gda_184, gi_152);
   ArrayResize(gda_188, gi_152);
   ArrayResize(gda_192, gi_152);
   return (0);
}

void setRules() {
   if (IsTesting()) CheckParams();
   for (int l_index_0 = 0; l_index_0 < gi_152; l_index_0++) {
      gda_184[l_index_0] = iMA(NULL, 0, g_period_140, 0, MODE_EMA, PRICE_CLOSE, l_index_0 + 1);
      gda_188[l_index_0] = iMA(NULL, 0, g_period_144, 0, MODE_EMA, PRICE_CLOSE, l_index_0 + 1);
      gda_192[l_index_0] = iMA(NULL, 0, g_period_148, 0, MODE_EMA, PRICE_CLOSE, l_index_0 + 1);
   }
   if (gi_156) g_isar_196 = iSAR(NULL, 0, gd_160, gd_168, 1);
}

int EmaCross(int ai_0) {
   if (gda_184[0] * ai_0 >= gda_188[0] * ai_0 && gda_184[1] * ai_0 <= gda_188[1] * ai_0) {
      for (int l_index_4 = 0; l_index_4 < gi_152 - 1; l_index_4++)
         if (gda_184[l_index_4] * ai_0 >= gda_192[l_index_4] * ai_0 && (gda_184[l_index_4 + 1]) * ai_0 <= (gda_192[l_index_4 + 1]) * ai_0) return (1);
   } else {
      if (gda_184[0] * ai_0 >= gda_192[0] * ai_0 && gda_184[1] * ai_0 <= gda_192[1] * ai_0) {
         for (l_index_4 = 0; l_index_4 < gi_152 - 1; l_index_4++)
            if (gda_184[l_index_4] * ai_0 >= gda_188[l_index_4] * ai_0 && (gda_184[l_index_4 + 1]) * ai_0 <= (gda_188[l_index_4 + 1]) * ai_0) return (1);
      }
   }
   return (0);
}

int openBuyRule() {
   return (!gi_156 || g_isar_196 < Close[1] && EmaCross(1));
}

int openSellRule() {
   return (!gi_156 || g_isar_196 > Close[1] && EmaCross(-1));
}

bool closeBuyRule() {
   return (Close[1] < gda_184[0] && Close[1] < gda_188[0] && Close[1] < gda_192[0]);
}

bool closeSellRule() {
   return (Close[1] > gda_184[0] && Close[1] > gda_188[0] && Close[1] > gda_192[0]);
}

int openBuy() {
   double l_price_0 = 0;
   double l_price_8 = 0;
   int l_stoplevel_16 = MarketInfo(Symbol(), MODE_STOPLEVEL);
   if (gi_100 > 0) {
      if (gi_100 * gd_176 > l_stoplevel_16) l_price_8 = NormalizeDouble(Bid - gi_100 * Point * gd_176, Digits);
      else l_price_8 = NormalizeDouble(Bid - l_stoplevel_16 * Point, Digits);
   }
   if (gi_96 > 0) {
      if (gi_96 * gd_176 > l_stoplevel_16) l_price_0 = NormalizeDouble(Ask + gi_96 * Point * gd_176, Digits);
      else l_price_0 = NormalizeDouble(Ask + l_stoplevel_16 * Point, Digits);
   }
   int l_ticket_20 = OrderSend(Symbol(), OP_BUY, Lots, Ask, Slippage, l_price_8, l_price_0, "Pipzu Extrapolated: Buy", MagicNumber, 0, Green);
   if (l_ticket_20 > 0)
      if (EmailTrades) SendMail("Pipzu Extrapolated", "Open Buy: [" + Symbol() + "] " + NormalizeDouble(Ask, Digits));
   return (l_ticket_20);
}

int openSell() {
   double l_price_0 = 0;
   double l_price_8 = 0;
   int l_stoplevel_16 = MarketInfo(Symbol(), MODE_STOPLEVEL);
   if (gi_100 > 0) {
      if (gi_100 * gd_176 > l_stoplevel_16) l_price_8 = NormalizeDouble(Ask + gi_100 * Point * gd_176, Digits);
      else l_price_8 = NormalizeDouble(Ask + l_stoplevel_16 * Point, Digits);
   }
   if (gi_96 > 0) {
      if (gi_96 * gd_176 > l_stoplevel_16) l_price_0 = NormalizeDouble(Bid - gi_96 * Point * gd_176, Digits);
      else l_price_0 = NormalizeDouble(Bid - l_stoplevel_16 * Point, Digits);
   }
   int l_ticket_20 = OrderSend(Symbol(), OP_SELL, Lots, Bid, Slippage, l_price_8, l_price_0, "Pipzu Extrapolated: Sell", MagicNumber, 0, Red);
   if (l_ticket_20 > 0)
      if (EmailTrades) SendMail("Pipzu Extrapolated", "Open Sell: [" + Symbol() + "] " + NormalizeDouble(Bid, Digits));
   return (l_ticket_20);
}

int buyControl() {
   if (closeBuyRule())
      if (OrderClose(OrderTicket(), OrderLots(), Bid, Slippage, Violet)) return (-1);
   if (gi_104 > 0) {
      if (Bid - OrderOpenPrice() > Point * gd_176 * gi_104)
         if (OrderStopLoss() < Bid - Point * gd_176 * gi_104 || OrderStopLoss() == 0.0) OrderModify(OrderTicket(), OrderOpenPrice(), NormalizeDouble(Bid - Point * gd_176 * gi_104, Digits), OrderTakeProfit(), 0, Green);
   }
   return (OrderTicket());
}

int sellControl() {
   if (closeSellRule())
      if (OrderClose(OrderTicket(), OrderLots(), Ask, Slippage, Violet)) return (-1);
   if (gi_104 > 0) {
      if (OrderOpenPrice() - Ask > Point * gd_176 * gi_104)
         if (OrderStopLoss() > Ask + Point * gd_176 * gi_104 || OrderStopLoss() == 0.0) OrderModify(OrderTicket(), OrderOpenPrice(), NormalizeDouble(Ask + Point * gd_176 * gi_104, Digits), OrderTakeProfit(), 0, Red);
   }
   return (OrderTicket());
}

double MMLots(double ad_0) {
   return (NormalizeLots(ad_0 * AccountFreeMargin() / MarketInfo(Symbol(), MODE_MARGINREQUIRED) / (AccountLeverage() / 100.0)));
}

double NormalizeLots(double ad_0) {
   double l_lotstep_8 = MarketInfo(Symbol(), MODE_LOTSTEP);
   double l_minlot_16 = MarketInfo(Symbol(), MODE_MINLOT);
   double l_maxlot_24 = MarketInfo(Symbol(), MODE_MAXLOT);
   double ld_ret_32 = MathCeil(ad_0 / l_lotstep_8) * l_lotstep_8;
   if (ld_ret_32 < l_minlot_16) ld_ret_32 = l_minlot_16;
   if (ld_ret_32 > l_maxlot_24) ld_ret_32 = l_maxlot_24;
   return (ld_ret_32);
}

int start() {
   Comment("Copyright Pipzu.com support@pipzu.com");
   if (Bars < 100) {
      Print("bars less than 100");
      return (0);
   }
   setRules();
   int li_0 = -1;
   int li_4 = -1;
   for (int l_pos_8 = OrdersTotal() - 1; l_pos_8 >= 0; l_pos_8--) {
      if (OrderSelect(l_pos_8, SELECT_BY_POS)) {
         if (OrderMagicNumber() == MagicNumber) {
            if (OrderSymbol() == Symbol()) {
               switch (OrderType()) {
               case OP_BUY:
                  li_0 = buyControl();
                  break;
               case OP_SELL:
                  li_4 = sellControl();
               }
            }
         }
      }
   }
   int li_16 = openBuyRule();
   int li_20 = openSellRule();
   if (Risk > 0.0) Lots = MMLots(Risk);
   if (AccountFreeMargin() < MarketInfo(Symbol(), MODE_MARGINREQUIRED) * Lots) {
      Print("We have no money. Free Margin = ", AccountFreeMargin(), " RequiredMargin = ", MarketInfo(Symbol(), MODE_MARGINREQUIRED) * Lots);
      return (0);
   }
   if (g_time_240 != Time[1] && li_16 && li_0 < 0) {
      if (openBuy() > 0) g_time_240 = Time[1];
   } else {
      if (g_time_244 != Time[1] && li_20 && li_4 < 0)
         if (openSell() > 0) g_time_244 = Time[1];
   }
   return (0);
}