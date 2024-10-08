/*
   Generated by EX4-TO-MQ4 decompiler V4.0.224.1 []
   Website: http://purebeam.biz
   E-mail : purebeam@gmail.com
*/
#property copyright "Copyright � 2009, Trading Automatics Ltd"
#property link      "http://www.tradingautomatics.com"

extern int MA = 8;
extern int NumberOfCloses = 5;
extern bool UseMoneyManagement = TRUE;
extern double Risk = 2.0;
extern double Lots = 0.1;
extern int BETrigger = 40;
extern int SL = 80;
extern int TP = 40;
extern int MagicNumber = 7645034;
extern int Slippage = 3;
extern bool Broker5Digits = FALSE;
int gi_128 = 0;

int init() {
   if (Broker5Digits) {
      SL = 10 * SL;
      TP = 10 * TP;
      Slippage = 10 * Slippage;
      BETrigger = 10 * BETrigger;
   }
   return (0);
}

int deinit() {
   return (0);
}

int start() {
   double l_ima_0;
   double l_ima_8;
   double l_icustom_16;
   double l_icustom_24;
   double l_icustom_32;
   double l_icustom_40;
   int l_ticket_56;
   bool li_48 = TRUE;
   int l_ticket_60 = 0;
   int l_cmd_64 = -1;
   int li_68 = 0;
   int li_72 = 0;
   int li_76 = 0;
   double l_price_80 = 0;
   double ld_unused_88 = 0;
   li_72 = GetLongsNumber();
   li_76 = GetShortsNumber();
   li_68 = li_72 + li_76;
   for (int l_pos_96 = 0; l_pos_96 < OrdersTotal(); l_pos_96++) {
      OrderSelect(l_pos_96, SELECT_BY_POS, MODE_TRADES);
      if (OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber) {
         l_ticket_60 = OrderTicket();
         l_cmd_64 = OrderType();
         break;
      }
   }
   if (gi_128 != Time[0]) {
      l_icustom_24 = iCustom(Symbol(), 0, "Heiken Ashi", 0, 1);
      l_icustom_16 = iCustom(Symbol(), 0, "Heiken Ashi", 1, 1);
      l_ima_8 = iMA(Symbol(), 0, MA, 0, MODE_SMA, PRICE_CLOSE, 1);
      if (l_icustom_16 > l_icustom_24 && Close[1] > l_ima_8) {
         for (int li_52 = 2; li_52 < NumberOfCloses + 1; li_52++) {
            l_icustom_40 = iCustom(Symbol(), 0, "Heiken Ashi", 0, li_52);
            l_icustom_32 = iCustom(Symbol(), 0, "Heiken Ashi", 1, li_52);
            l_ima_0 = iMA(Symbol(), 0, MA, 0, MODE_SMA, PRICE_CLOSE, li_52);
            if (l_icustom_40 > l_icustom_32 || Close[li_52] < l_ima_0) {
               li_52 = 999;
               li_48 = FALSE;
               break;
            }
         }
         if (li_48 && li_72 == 0) {
            CloseAllShorts();
            if (SL > 0) l_price_80 = Ask - SL * Point;
            l_ticket_56 = OrderSend(Symbol(), OP_BUY, GetLots(), Ask, Slippage, 0, 0, "", MagicNumber, 0, Blue);
            if (l_ticket_56 > 0) OrderModify(l_ticket_56, OrderOpenPrice(), l_price_80, 0, 0, CLR_NONE);
         }
      }
      if (l_icustom_16 < l_icustom_24 && Close[1] < l_ima_8) {
         for (li_52 = 2; li_52 < NumberOfCloses + 1; li_52++) {
            l_icustom_40 = iCustom(Symbol(), 0, "Heiken Ashi", 0, li_52);
            l_icustom_32 = iCustom(Symbol(), 0, "Heiken Ashi", 1, li_52);
            l_ima_0 = iMA(Symbol(), 0, MA, 0, MODE_SMA, PRICE_CLOSE, li_52);
            if (l_icustom_40 < l_icustom_32 || Close[li_52] > l_ima_0) {
               li_52 = 999;
               li_48 = FALSE;
               break;
            }
         }
         if (li_48 && li_76 == 0) {
            CloseAllLongs();
            if (SL > 0) l_price_80 = Bid + SL * Point;
            l_ticket_56 = OrderSend(Symbol(), OP_SELL, GetLots(), Bid, Slippage, 0, 0, "", MagicNumber, 0, Red);
            if (l_ticket_56 > 0) OrderModify(l_ticket_56, OrderOpenPrice(), l_price_80, 0, 0, CLR_NONE);
         }
      }
      gi_128 = Time[0];
   }
   if (li_68 > 0) {
      if (BETrigger > 0) HandleBreakEven();
      if (OrderLots() > 3.0 * GetLots() / 4.0) {
         if (l_cmd_64 == OP_BUY) {
            if (Bid >= OrderOpenPrice() + TP * Point) {
               Print(1);
               OrderClose(l_ticket_60, OrderLots() / 2.0, Bid, Slippage, Blue);
            }
         }
         if (l_cmd_64 == OP_SELL)
            if (Ask <= OrderOpenPrice() - TP * Point) OrderClose(l_ticket_60, OrderLots() / 2.0, Ask, Slippage, Red);
      }
   }
   return (0);
}

void HandleBreakEven() {
   for (int l_pos_0 = 0; l_pos_0 < OrdersTotal(); l_pos_0++) {
      OrderSelect(l_pos_0, SELECT_BY_POS, MODE_TRADES);
      if (OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber) {
         if (OrderType() == OP_BUY) {
            if (Bid >= OrderOpenPrice() + BETrigger * Point && OrderStopLoss() < OrderOpenPrice()) OrderModify(OrderTicket(), OrderOpenPrice(), OrderOpenPrice(), OrderTakeProfit(), 0, CLR_NONE);
         } else {
            if (OrderType() == OP_SELL)
               if (Ask <= OrderOpenPrice() - BETrigger * Point && OrderStopLoss() > OrderOpenPrice()) OrderModify(OrderTicket(), OrderOpenPrice(), OrderOpenPrice(), OrderTakeProfit(), 0, CLR_NONE);
         }
      }
   }
}

int GetLongsNumber() {
   int l_count_0 = 0;
   for (int l_pos_4 = 0; l_pos_4 < OrdersTotal(); l_pos_4++) {
      OrderSelect(l_pos_4, SELECT_BY_POS, MODE_TRADES);
      if (OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber && OrderType() == OP_BUY) l_count_0++;
   }
   return (l_count_0);
}

int GetShortsNumber() {
   int l_count_0 = 0;
   for (int l_pos_4 = 0; l_pos_4 < OrdersTotal(); l_pos_4++) {
      OrderSelect(l_pos_4, SELECT_BY_POS, MODE_TRADES);
      if (OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber && OrderType() == OP_SELL) l_count_0++;
   }
   return (l_count_0);
}

void CloseAllLongs() {
   int l_ord_total_0 = OrdersTotal();
   for (int l_pos_4 = l_ord_total_0 - 1; l_pos_4 >= 0; l_pos_4--) {
      OrderSelect(l_pos_4, SELECT_BY_POS, MODE_TRADES);
      if (OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber && OrderType() == OP_BUY) {
         RefreshRates();
         OrderClose(OrderTicket(), OrderLots(), Bid, Slippage, Blue);
      }
   }
}

void CloseAllShorts() {
   int l_ord_total_0 = OrdersTotal();
   for (int l_pos_4 = l_ord_total_0 - 1; l_pos_4 >= 0; l_pos_4--) {
      OrderSelect(l_pos_4, SELECT_BY_POS, MODE_TRADES);
      if (OrderSymbol() == Symbol() && OrderMagicNumber() == MagicNumber && OrderType() == OP_SELL) {
         RefreshRates();
         OrderClose(OrderTicket(), OrderLots(), Ask, Slippage, Red);
      }
   }
}

double GetLots() {
   double ld_ret_0;
   double ld_8;
   double l_lotstep_32;
   double l_marginrequired_40;
   if (UseMoneyManagement) {
      l_lotstep_32 = MarketInfo(Symbol(), MODE_LOTSTEP);
      l_marginrequired_40 = MarketInfo(Symbol(), MODE_MARGINREQUIRED);
      ld_ret_0 = AccountBalance() * Risk / 100.0 / l_marginrequired_40;
      ld_8 = MathMod(ld_ret_0, l_lotstep_32);
      if (ld_8 != 0.0) ld_ret_0 -= ld_8;
   } else ld_ret_0 = Lots;
   double l_minlot_16 = MarketInfo(Symbol(), MODE_MINLOT);
   double l_maxlot_24 = MarketInfo(Symbol(), MODE_MAXLOT);
   if (ld_ret_0 < l_minlot_16) ld_ret_0 = l_minlot_16;
   if (ld_ret_0 > l_maxlot_24) ld_ret_0 = l_maxlot_24;
   return (ld_ret_0);
}
