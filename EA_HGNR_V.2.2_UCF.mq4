/*
   Generated by EX4-TO-MQ4 decompiler V4.0.224.1 []
   Website: http://purebeam.biz
   E-mail : purebeam@gmail.com
*/
#property copyright "Copyright � 2009, High Gain No Risk"
#property link      "http://www.highgainnorisk.com"

int gi_76 = 12;
int gi_80 = 3;
int g_slippage_84 = 2;
int g_magic_88 = 11111;
int gi_92 = 200;
int gi_unused_96 = 6;
int gi_unused_100 = 11;
double gd_104 = 0.01;
double gd_unused_112 = 0.03;
double g_lots_128;
double g_ord_open_price_136;
double g_ord_open_price_144;
string gs_ucf_152 = "UCF";
string gs_160 = "EU";
string g_comment_168 = "EA_Off";
int g_count_176;
int g_count_180;
int g_count_184;
int g_count_188;
int gi_192;
bool gi_196;
int gi_200 = 000000;

int init() {
   OrderSend(Symbol(), OP_BUYSTOP, 0.01, Ask + 500.0 * Point, 5, 0, 0, gs_ucf_152, g_magic_88, 0, Blue);
   return (0);
}

int deinit() {
   OrderSend(Symbol(), OP_BUYSTOP, 0.01, Ask + 500.0 * Point, 5, 0, 0, g_comment_168, g_magic_88, 0, Blue);
   return (0);
}

int start() {
   int li_unused_12;
   int li_0 = AccountEquity();
   double ld_4 = li_0 % gi_92;
   gi_192 = (li_0 - ld_4) / gi_92;
   g_lots_128 = NormalizeDouble(gd_104 * gi_192, Digits);
   if (g_lots_128 < gd_104) g_lots_128 = gd_104;
   g_lots_128 = gd_104;
   if (COMMENT()) li_unused_12 = 0;
   g_count_176 = 0;
   g_count_180 = 0;
   g_count_184 = 0;
   g_count_188 = 0;
   gi_196 = FALSE;
   for (int l_pos_16 = 0; l_pos_16 <= OrdersTotal() - 1; l_pos_16++) {
      OrderSelect(l_pos_16, SELECT_BY_POS, MODE_TRADES);
      if (OrderType() == OP_BUY && OrderSymbol() == Symbol() && OrderMagicNumber() == g_magic_88 && OrderComment() == gs_ucf_152) {
         g_count_176++;
         g_ord_open_price_136 = OrderOpenPrice();
      }
      if (OrderType() == OP_SELL && OrderSymbol() == Symbol() && OrderMagicNumber() == g_magic_88 && OrderComment() == gs_ucf_152) {
         g_count_180++;
         g_ord_open_price_144 = OrderOpenPrice();
      }
      if (OrderType() == OP_BUY && OrderMagicNumber() == g_magic_88 && OrderComment() == gs_160) g_count_184++;
      if (OrderType() == OP_SELL && OrderMagicNumber() == g_magic_88 && OrderComment() == gs_160) g_count_188++;
      if (OrderType() == OP_BUYSTOP && OrderMagicNumber() == g_magic_88 && OrderComment() == gs_ucf_152) gi_196 = TRUE;
   }
   if (OrdersTotal() == 0 || (gi_196 != TRUE && g_count_176 + g_count_180 < 1)) OrderSend(Symbol(), OP_BUYSTOP, 0.01, Ask + 500.0 * Point, 5, 0, 0, gs_ucf_152, g_magic_88, 0, Blue);
   if (IzinTrade() && g_count_184 > g_count_176 && MathAbs((g_ord_open_price_136 - Ask) / Point) >= gi_80 || g_count_176 < 1) OrderSend(Symbol(), OP_BUY, g_lots_128, Ask, g_slippage_84, 0, Ask + gi_76 * Point, gs_ucf_152, g_magic_88, 0, Blue);
   if (IzinTrade() && g_count_188 > g_count_180 && MathAbs((g_ord_open_price_144 - Bid) / Point) >= gi_80 || g_count_180 < 1) OrderSend(Symbol(), OP_SELL, g_lots_128, Bid, g_slippage_84, 0, Bid - gi_76 * Point, gs_ucf_152, g_magic_88, 0, Red);
   return (0);
}

int IzinTrade() {
   //if ((Day() > 26 && Month() >= 12 && Year() >= 2009) || AccountNumber() != gi_200 || IsDemo() || IsTesting()) return (0);
   return (1);
}

bool COMMENT() {
   Comment("EA_HGNR_V.2");
   return (FALSE);
}