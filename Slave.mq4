#include <stdlib.mqh>

//string gs_76 = "";
string g_comment_84 = "";
//string gs_228 = "";
extern int Satefy_Margin = 0;
extern double Order_Size = 0.1;
extern int Order_Count = 1;
extern double Risk_Management = 10.0;
extern bool Use_ECN = FALSE;
extern int Extra_StopLoss = 0;
string gs_268 = "Slave";
int gi_276 = 2;
double g_pips_280 = 4.0;
double gd_288 = 1.0;
bool gi_296 = FALSE;
extern bool Debug_Mode = FALSE;
double gd_304 = 10.0;
double gd_312 = 0.0;
bool gi_320 = FALSE;
int gi_324 = 1;
string g_symbol_328 = "";
string gs_336 = "";
double gd_344 = -1.0;
int gi_352 = 110;
int gi_356 = 0;
int gi_360 = -1;
double gd_364;
double gd_372;
double gd_380 = 1.0;
string gs_388 = "MetaTrader (MASTER)\\experts\\files";

int init() {
   double ld_8;
   int l_file_60;
   double ld_64;
   int lia_112[20];
   int lia_116[20];
   int li_unused_124;
   int li_unused_128;
   double ld_132;
   int li_140;
   string ls_144;
   string ls_152;
   double l_str2dbl_160;
   double ld_168;
   double ld_176;
   int li_184;
   int li_188;
   int li_192;
   /*
   if (StringLen(gs_228) != 0 && StringFind(AccountCompany(), gs_228) == -1) {
      Print("Invalid Account Company");
      return (0);
   }
   if (StringLen(gs_76) != 0 && StringFind(AccountName(), gs_76) == -1) {
      Print("Invalid Account Name");
      return (0);
   }
   */
   gd_304 = (1 - Risk_Management / 100.0) * AccountBalance();
   gi_352 = 0;
   for (int l_str_len_0 = StringLen(gs_268); l_str_len_0 > 0; l_str_len_0--) gi_352 += StringGetChar(gs_268, l_str_len_0);
   g_symbol_328 = Symbol();
   Print("started: currencyPair=" + g_symbol_328);
   int li_4 = TimeLocal();
   li_4 -= 18000;
   double l_stoplevel_16 = MarketInfo(g_symbol_328, MODE_STOPLEVEL);
   gd_344 = l_stoplevel_16 + Extra_StopLoss;
   double l_point_24 = MarketInfo(g_symbol_328, MODE_POINT);
   double ld_32 = (Satefy_Margin + 2.0 * ld_8) * l_point_24;
   string ls_40 = "";
   ls_40 = "";
   ls_40 = "" + TimeYear(li_4);
   ls_40 = ls_40 + "-" + TimeMonth(li_4);
   ls_40 = ls_40 + "-" + TimeDay(li_4);
   string l_name_48 = gs_388 + "\\" + "log__" + StringSubstr(g_symbol_328, 0, 6) + "_" + ls_40 + ".csv";
   int li_56 = -1;
   gd_364 = MarketInfo(Symbol(), MODE_ASK);
   gd_372 = MarketInfo(Symbol(), MODE_BID);
   double ld_72 = gd_372 + (gd_364 - gd_372) / 2.0;
   double ld_80 = -1;
   int li_88 = -1;
   double ld_92 = -1;
   int li_100 = 0;
   string ls_unused_104 = "";
   bool li_120 = FALSE;
   if (MarketInfo("GBPUSD", MODE_POINT) < 0.00009) li_120 = TRUE;
   while (true) {
      if (gd_364 != MarketInfo(Symbol(), MODE_ASK) + gd_312 * l_point_24) {
         gd_364 = MarketInfo(Symbol(), MODE_ASK) + gd_312 * l_point_24;
         gd_372 = MarketInfo(Symbol(), MODE_BID) + gd_312 * l_point_24;
         gi_356++;
      }
      li_4 = TimeLocal();
      li_4 -= 18000;
      ls_40 = "";
      ls_40 = "" + TimeYear(li_4);
      ls_40 = ls_40 + "-" + TimeMonth(li_4);
      ls_40 = ls_40 + "-" + TimeDay(li_4);
      l_name_48 = gs_388 + "\\" + "log__" + StringSubstr(g_symbol_328, 0, 6) + "_" + ls_40 + ".csv";
      ld_8 = MathRound((MarketInfo(g_symbol_328, MODE_ASK) - MarketInfo(g_symbol_328, MODE_BID)) / l_point_24);
      li_unused_124 = MathRound((MarketInfo(g_symbol_328, MODE_ASK) - MarketInfo(g_symbol_328, MODE_BID)) / l_point_24);
      li_unused_128 = MarketInfo(g_symbol_328, MODE_SPREAD);
      ld_32 = (Satefy_Margin + 2.0 * ld_8) * l_point_24;
      ld_132 = gi_324 * l_point_24;
      l_file_60 = FileOpen(l_name_48, FILE_CSV|FILE_READ);
      if (l_file_60 == -1) {
         Sleep(10);
         continue;
      }
      if (li_56 != FileSize(l_file_60) || gi_356 != gi_360) {
         if (li_56 != FileSize(l_file_60)) {
            li_140 = FileSize(l_file_60);
            if (li_56 != -1) {
               gi_360 = gi_356;
               ld_64 = gd_372 + (gd_364 - gd_372) / 2.0;
               if (li_120) ld_64 = 10.0 * MathRound(ld_64 / l_point_24 / 10.0) * l_point_24;
               FileSeek(l_file_60, li_56, SEEK_SET);
               ls_144 = FileReadString(l_file_60, li_140 - li_56);
               ls_152 = FileReadString(l_file_60, li_140 - li_56);
               l_str2dbl_160 = StrToDouble(ls_152);
               if (l_str2dbl_160 == 0.0) {
                  Print("no price");
                  FileClose(l_file_60);
                  continue;
               }
            }
            ld_168 = MathAbs(ld_64 - l_str2dbl_160);
            ld_176 = MathAbs(ld_72 - ld_64);
            li_184 = (ld_64 - l_str2dbl_160) / l_point_24;
            if (li_120) li_184 = MathRound(li_184 / 10);
            li_184 += 10;
            li_188 = ld_8;
            lia_116[li_188]++;
            if (li_184 < ArraySize(lia_112) && li_184 >= 0) lia_112[li_184]++;
            li_192 = 0;
            for (int l_index_196 = 0; l_index_196 < ArraySize(lia_112); l_index_196++)
               if (lia_112[l_index_196] > lia_112[li_192]) li_192 = l_index_196;
            Print("Market Analysis in Progress");
            if (Debug_Mode == TRUE) {
               Print("l=" + ((l_str2dbl_160 - ld_64)) + ", m=" + l_str2dbl_160 + ", s=" + ld_64 + ", mil=" + ld_32 + ", mol=" + ((li_192 - 10)) + ", cml=" + lia_112[li_192] + ", lp=" +
                  ((li_184 - 10)) + ", ed=" + li_120 + ",cl:," + gd_312);
            }
            if (ld_168 > ld_132 || gd_380 > ld_132) {
               log(",masterPrice:," + l_str2dbl_160 + ",slaveMarketPrice:," + ld_64 + ",lag:," + ((ld_64 - l_str2dbl_160)) + ",slaveJump:," + ld_176 + ",comment:," + g_comment_84 +
                  ",cl:," + gd_312);
            }
            gd_380 = ld_168;
            if (li_184 - ArraySize(lia_112) / 2 > 9 || li_184 - ArraySize(lia_112) / 2 < -9) {
               gi_320 = FALSE;
               gd_312 = 0;
               for (int l_index_200 = 0; l_index_200 < ArraySize(lia_112); l_index_200++) lia_112[l_index_200] = 0;
            }
            if ((lia_112[li_192] > 10 && gi_320 == FALSE) || lia_112[li_192] > 20) {
               gd_312 -= li_192 - 10;
               gi_320 = TRUE;
               for (int l_index_204 = 0; l_index_204 < ArraySize(lia_112); l_index_204++) lia_112[l_index_204] = 0;
            }
            if (ld_168 >= ld_32 && ld_176 == 0.0 && ld_80 == -1.0 && gi_320) {
               log(",PlaceOrder:," + l_str2dbl_160 + ",slaveMarketPrice:," + ld_64 + ",lag:," + ((ld_64 - l_str2dbl_160)) + ",O" + ",comment:," + g_comment_84);
               if (Debug_Mode == TRUE) Print(",PlaceOrder:," + l_str2dbl_160 + ",slaveMarketPrice:," + ld_64 + ",lag:," + ((ld_64 - l_str2dbl_160)) + ",O" + ",comment:," + g_comment_84);
               ld_92 = gd_364;
               ld_64 = gd_372 + (gd_364 - gd_372) / 2.0;
               li_100 = 0;
               while (l_str2dbl_160 > ld_64 && ld_168 > ld_32 && li_100 < 1) {
                  log(",,,,,,spreadNow=" + MarketInfo(g_symbol_328, MODE_SPREAD) + "spreadWas=" + ld_8);
                  if (gi_296) Order_Size = getMaxOrder_Size(0);
                  li_100 = sendOrder(g_symbol_328, OP_BUY, Order_Size, ld_92 - gd_312 * l_point_24, ld_92 - gd_312 * l_point_24 - (gd_344 + ld_8) * l_point_24, li_100);
                  if (li_100 == 0) {
                     for (int li_208 = 1; li_208 < Order_Count; li_208++) sendOrder(g_symbol_328, OP_BUY, Order_Size, ld_92, ld_92 - (gd_344 + ld_8) * l_point_24, li_100);
                     ld_80 = ld_92;
                     li_88 = 0;
                     break;
                  }
                  ld_64 = gd_372 + (gd_364 - gd_372) / 2.0;
                  ld_168 = MathAbs(ld_64 - l_str2dbl_160);
               }
               ld_92 = gd_372;
               ld_64 = gd_372 + (gd_364 - gd_372) / 2.0;
               li_100 = 0;
               while (l_str2dbl_160 < ld_64 && ld_168 > ld_32 && li_100 < 1) {
                  log(",,,,,,,spreadNow=" + MarketInfo(g_symbol_328, MODE_SPREAD) + "spreadWas=" + ld_8);
                  if (gi_296) Order_Size = getMaxOrder_Size(1);
                  li_100 = sendOrder(g_symbol_328, OP_SELL, Order_Size, ld_92 - gd_312 * l_point_24, ld_92 - gd_312 * l_point_24 + (gd_344 + ld_8) * l_point_24, li_100);
                  if (li_100 == 0) {
                     for (int li_212 = 1; li_212 < Order_Count; li_212++) sendOrder(g_symbol_328, OP_SELL, Order_Size, ld_92, ld_92 + (gd_344 + ld_8) * l_point_24, li_100);
                     ld_80 = ld_92;
                     li_88 = 1;
                     break;
                  }
                  ld_64 = gd_372 + (gd_364 - gd_372) / 2.0;
                  ld_168 = MathAbs(ld_64 - l_str2dbl_160);
               }
               if (ld_80 != -1.0) Print("Placed: orderOpenPrice=" + ld_80);
            }
            if (ld_80 != -1.0) {
               if ((l_str2dbl_160 - ld_64 <= l_point_24 * gi_276 && li_88 == 0) || (ld_64 - l_str2dbl_160 <= l_point_24 * gi_276 && li_88 == 1) || (ld_80 - ld_64 > l_point_24 * g_pips_280 &&
                  li_88 == 0) || (ld_64 - ld_80 > l_point_24 * g_pips_280 && li_88 == 1)) {
                  log(",CloseOrder:," + l_str2dbl_160 + ",slaveMarketPrice:," + ld_64 + ",lag:," + ((ld_64 - l_str2dbl_160)) + ",C" + ",comment:," + g_comment_84);
                  for (int li_216 = 600; li_216 != 0; li_216--) {
                     if (closeOpenOrders(g_symbol_328, encript(gi_352)) == 1) break;
                     Sleep(100);
                  }
                  ld_80 = -1;
               }
            }
            if (ld_64 != ld_72) ld_72 = ld_64;
         }
         li_56 = li_140;
      }
      FileClose(l_file_60);
      Sleep(100);
   }
   return /*(WARN)*/;
}

int deinit() {
   return (0);
}

int start() {
   return (0);
}

int encript(int ai_0) {
   for (int l_str_len_4 = StringLen(gs_268); l_str_len_4 > 0; l_str_len_4--) ai_0 += StringGetChar(gs_268, l_str_len_4);
   return (ai_0);
}

int closeOpenOrders(string as_0, int a_magic_8) {
   int l_ord_close_12;
   int l_cmd_20;
   double l_price_32;
   int l_error_40;
   bool li_ret_16 = TRUE;
   int l_ord_total_24 = OrdersTotal();
   for (int l_pos_28 = l_ord_total_24 - 1; l_pos_28 >= 0; l_pos_28--) {
      if (OrderSelect(l_pos_28, SELECT_BY_POS, MODE_TRADES)) {
         l_cmd_20 = OrderType();
         if (!(l_cmd_20 == OP_BUY || l_cmd_20 == OP_SELL)) continue;
         OrderPrint();
         if (!(OrderMagicNumber() == a_magic_8 && StringFind(OrderSymbol(), as_0, 0) != -1)) continue;
         while (true) {
            if (OrderType() == OP_BUY) l_price_32 = MarketInfo(as_0, MODE_BID);
            else l_price_32 = MarketInfo(as_0, MODE_ASK);
            l_ord_close_12 = OrderClose(OrderTicket(), OrderLots(), l_price_32, 3, CLR_NONE);
            if (l_ord_close_12 != 1) {
               l_error_40 = GetLastError();
               Print("Error = ", ErrorDescription(l_error_40), " code=", l_error_40);
               log("Close error," + l_error_40 + ",price=," + l_price_32 + ",currencyPair=," + as_0);
               li_ret_16 = FALSE;
            } else l_error_40 = 0;
            if (l_error_40 != 135/* PRICE_CHANGED */) break;
            RefreshRates();
         }
      }
      Print("Error when order select ", GetLastError());
      break;
   }
   return (li_ret_16);
}

int sendOrder(string a_symbol_0, int a_cmd_8, double a_lots_12, double a_price_20, double a_price_28, int ai_36) {
   int l_error_52;
   if (AccountBalance() < gd_304) return (ai_36 + 10);
   double l_point_40 = MarketInfo(a_symbol_0, MODE_POINT);
   int l_slippage_56 = 0;
   log("send order" + ",currencyPair=" + a_symbol_0 + ",command=" + a_cmd_8 + ",Order_Size=" + a_lots_12 + ",currencyPrice=" + a_price_20 + ",stopLoss=" + a_price_28 +
      ",takeProfit=" + 0 + ",magicNumber=" + gi_352 + ",comment:," + g_comment_84);
   double l_price_60 = a_price_28;
   if (Use_ECN) a_price_28 = 0;
   int l_ticket_48 = OrderSend(a_symbol_0, a_cmd_8, a_lots_12, a_price_20, l_slippage_56, a_price_28, 0, g_comment_84, encript(gi_352), 0, Green);
   if (l_ticket_48 <= 0) {
      l_error_52 = GetLastError();
      log("Error:send order" + ",error code=" + l_error_52);
      Print("send order error :", ErrorDescription(l_error_52), " code=", l_error_52);
      return (ai_36 + 1);
   }
   if (Use_ECN) addStopLoss(l_ticket_48, l_price_60);
   return (0);
}

void addStopLoss(int a_ticket_0, double a_price_4) {
   OrderSelect(a_ticket_0, SELECT_BY_TICKET);
   bool l_bool_12 = FALSE;
   for (int l_count_16 = 0; l_count_16 < 5 && l_bool_12 == FALSE; l_count_16++) {
      l_bool_12 = OrderModify(OrderTicket(), OrderOpenPrice(), a_price_4, OrderTakeProfit(), 0, Blue);
      if (l_bool_12 == FALSE) Sleep(300);
   }
}

double getFreeMarginInBaseCurrency() {
   double l_free_magrin_0 = AccountFreeMargin();
   return (convertToBaseCurrency(l_free_magrin_0));
}

double convertToBaseCurrency(double ad_0) {
   string ls_8 = StringSubstr(g_symbol_328, 3, 3);
   if (StringFind(AccountCurrency(), ls_8, 0) == -1) {
      if (MarketInfo(ls_8 + AccountCurrency() + gs_336, MODE_ASK) != 0.0) ad_0 /= MarketInfo(ls_8 + AccountCurrency() + gs_336, MODE_ASK);
      else ad_0 /= 1 / MarketInfo(AccountCurrency() + ls_8 + gs_336, MODE_ASK);
   }
   return (ad_0);
}

bool isFixedMaxOrder_Size() {
   if (MarketInfo("AUDUSD" + gs_336, MODE_MARGINREQUIRED) == MarketInfo("USDJPY" + gs_336, MODE_MARGINREQUIRED) && MarketInfo("AUDUSD" + gs_336, MODE_MARGINREQUIRED) == MarketInfo("EURUSD" +
      gs_336, MODE_MARGINREQUIRED)) return (TRUE);
   return (FALSE);
}

double getMaxOrder_Size(int ai_0) {
   double ld_16;
   if (StringLen(g_symbol_328) == 7) gs_336 = ".";
   int l_stoplevel_4 = MarketInfo(g_symbol_328, MODE_STOPLEVEL);
   double l_point_8 = MarketInfo(g_symbol_328, MODE_POINT);
   if (ai_0 == 4) ld_16 = MarketInfo(g_symbol_328, MODE_ASK) + l_stoplevel_4 * l_point_8;
   if (ai_0 == 5) ld_16 = MarketInfo(g_symbol_328, MODE_BID) - l_stoplevel_4 * l_point_8;
   if (ai_0 == 0) ld_16 = MarketInfo(g_symbol_328, MODE_ASK);
   if (ai_0 == 1) ld_16 = MarketInfo(g_symbol_328, MODE_BID);
   double ld_24 = getFreeMarginInBaseCurrency();
   int l_leverage_32 = AccountLeverage();
   int li_36 = 1 / MarketInfo(g_symbol_328, MODE_LOTSTEP);
   int li_40 = 100000;
   if (isFixedMaxOrder_Size()) {
      ld_16 = convertToBaseCurrency(MarketInfo(g_symbol_328, MODE_MARGINREQUIRED));
      l_leverage_32 = 100;
      li_40 = 100;
   }
   double ld_ret_44 = MathFloor(gd_288 * li_36 * (ld_24 / ld_16 / (li_40 / 100) * (l_leverage_32 / 100))) / li_36;
   return (ld_ret_44);
}

void log(string as_unused_0) {
}
