
#property copyright "Copyright © 2009, Bekbolatov@fxmail.ru"
#property link      "Bekbolatov@fxmail.ru"

#import "Boss.DLL"
   bool fun2(double a0, int a1, double a2, double a3, int a4, int a5, double a6);
   bool fun3(double a0, int a1, double a2, double a3, int a4, int a5, double a6);
   bool fun4(double a0, int a1, int a2);
#import

extern string _Notification_for_place_ = "M15-EURGPB,EURCHF,GBPCHF,USDCAD only!";
bool gi_84 = TRUE;
double gd_unused_88 = 0.1;
extern double ManyManagment_0_100 = 0.0;
extern double MaxSpread = 5.1;
bool gi_unused_112 = FALSE;
double gd_unused_116 = 1.5;
double gd_unused_124 = 10.0;
extern int GMT_offset = 1;
bool gi_136 = TRUE;
bool gi_140 = TRUE;
int gi_144 = 0;
bool gi_148 = TRUE;
bool gi_152 = TRUE;
bool gi_156 = FALSE;
int gi_160 = 0;
bool gi_164 = FALSE;
int g_period_168 = 100;
int g_applied_price_172 = PRICE_CLOSE;
int g_ma_method_176 = MODE_SMA;
extern int MagicNumber = 543210;
int g_color_184 = Blue;
int g_color_188 = Red;
extern bool WriteLog = TRUE;
extern bool WriteDebugLog = FALSE;
extern bool PrintLogOnChart = TRUE;
string gs_unused_204 = "012345";
int gi_212 = 6;
int gi_216 = 112;
int gi_220 = 25;
int gi_224 = 60;
int gi_228 = 3;
int gi_232 = 140;
int gi_236 = 2;
int gi_240 = 170;
int gi_244 = 0;
int gi_248 = 200;
int gi_252 = -1;
int gi_256 = 240;
int gi_260 = -4;
double gd_264 = 0.3;
int gi_272 = 5;
int gi_276 = 53;
int gi_280 = 25;
int gi_284 = 75;
int gi_288 = 3;
int gi_292 = 100;
int gi_296 = 2;
int gi_300 = 135;
int gi_304 = 0;
int gi_308 = 210;
int gi_312 = -1;
int gi_316 = 245;
int gi_320 = -4;
double gd_324 = 0.2;
int gi_332 = 10;
int gi_336 = 75;
int gi_340 = 75;
int gi_344 = 80;
int gi_348 = 3;
int gi_352 = 145;
int gi_356 = 2;
int gi_360 = 180;
int gi_364 = 0;
int gi_368 = 205;
int gi_372 = -1;
int gi_376 = 250;
int gi_380 = -4;
double gd_384 = 0.15;
int gi_392 = 10;
int gi_396 = 58;
int gi_400 = 23;
int gi_404 = 80;
int gi_408 = 3;
int gi_412 = 145;
int gi_416 = 2;
int gi_420 = 180;
int gi_424 = 0;
int gi_428 = 205;
int gi_432 = -1;
int gi_436 = 250;
int gi_440 = -4;
double gd_444 = 0.35;
int gi_452 = 21;
int gi_456 = 1;
int gi_460 = 50;
int g_period_464 = 8;
int g_period_468 = 6;
int gi_472 = 30;
int g_period_476 = 20;
int gi_480 = 36;
int gi_484 = 20;
int g_period_488 = 5;
int g_applied_price_492 = PRICE_CLOSE;
int g_ma_method_496 = MODE_SMA;
int gi_500 = 4;
int gi_504 = 3;
int gi_508 = 150;
int gi_512 = 21;
int gi_516 = 40;
int gi_520 = 21;
bool gi_528 = TRUE;
int gi_532;
double gd_536;
double g_maxlot_544;
double g_minlot_552;
double g_lotstep_560;
double gd_568;
string g_symbol_576;
bool gi_584 = TRUE;
bool gi_588 = TRUE;
int g_datetime_592;
int g_datetime_596;
int g_datetime_600;
int gi_604;
int gi_608;
int gi_612;
int gi_616;
int gi_620;
int gi_624;
int gi_628;
int gi_632;
int gi_636;
int gi_640;
int gi_644;
int gi_648;
int gi_652;
int gi_656;
int gi_660;
int gi_664;
int gi_668;
int gi_672;
int gi_676;
int gi_680;
int gi_684;
int gi_688;
int gi_692;
int gi_696;
double gd_700;
double gd_708;
double gd_716;
double gd_724;
double gd_732;
double gd_740;
double gd_748;
double gd_756;
double gd_764;
double gd_772;
double gd_780;
double gda_unused_936[];
double gda_unused_940[];
string gs_dummy_944;
string gs_dummy_952;
string gs_dummy_960;
bool gi_unused_968 = TRUE;

int init() {
   string ls_0;
   if (!IsDllsAllowed()) {
      Comment("Warning: Set Parameter \"AllowDLL Imports\" ON in menu Tools -> Options -> ExpertAdvisors.");
      gi_528 = FALSE;
      return (0);
   }
   g_symbol_576 = Symbol();
   if (Digits < 4) {
      gd_536 = 0.01;
      gi_532 = 2;
   } else {
      gd_536 = 0.0001;
      gi_532 = 4;
   }
   g_maxlot_544 = MarketInfo(g_symbol_576, MODE_MAXLOT);
   g_minlot_552 = MarketInfo(g_symbol_576, MODE_MINLOT);
   g_lotstep_560 = MarketInfo(g_symbol_576, MODE_LOTSTEP);
   gd_568 = MarketInfo(g_symbol_576, MODE_MARGINREQUIRED) * g_lotstep_560;
   if (gi_84) {
      ls_0 = StringSubstr(g_symbol_576, 0, 6);
      if ((ls_0 != "EURGBP" && ls_0 != "EURCHF" && ls_0 != "GBPCHF" && ls_0 != "USDCAD") || Period() != PERIOD_M15) {
         Alert("Use scalper system only on EURCHF, EURGPB, GBPCHF or USDCAD M15.");
         Print("Use scalper system only on EURCHF, EURGPB, GBPCHF or USDCAD M15.");
         Comment("Error: Wrong TimeFrame or Currency Pair! Read instructions!");
         gi_528 = FALSE;
         return (0);
      }
      if (ls_0 == "EURGBP") {
         gi_620 = gi_212;
         gi_624 = gi_216;
         gi_628 = gi_220;
         gd_700 = gd_264;
         gi_632 = gi_224;
         gi_640 = gi_232;
         gi_648 = gi_240;
         gi_656 = gi_248;
         gi_664 = gi_256;
         gi_636 = gi_228;
         gi_644 = gi_236;
         gi_652 = gi_244;
         gi_660 = gi_252;
         gi_668 = gi_260;
      } else {
         if (ls_0 == "EURCHF") {
            gi_620 = gi_272;
            gi_624 = gi_276;
            gi_628 = gi_280;
            gd_700 = gd_324;
            gi_632 = gi_284;
            gi_640 = gi_292;
            gi_648 = gi_300;
            gi_656 = gi_308;
            gi_664 = gi_316;
            gi_636 = gi_288;
            gi_644 = gi_296;
            gi_652 = gi_304;
            gi_660 = gi_312;
            gi_668 = gi_320;
         } else {
            if (ls_0 == "GBPCHF") {
               gi_620 = gi_332;
               gi_624 = gi_336;
               gi_628 = gi_340;
               gd_700 = gd_384;
               gi_632 = gi_344;
               gi_640 = gi_352;
               gi_648 = gi_360;
               gi_656 = gi_368;
               gi_664 = gi_376;
               gi_636 = gi_348;
               gi_644 = gi_356;
               gi_652 = gi_364;
               gi_660 = gi_372;
               gi_668 = gi_380;
            } else {
               gi_620 = gi_392;
               gi_624 = gi_396;
               gi_628 = gi_400;
               gd_700 = gd_444;
               gi_632 = gi_404;
               gi_640 = gi_412;
               gi_648 = gi_420;
               gi_656 = gi_428;
               gi_664 = gi_436;
               gi_636 = gi_408;
               gi_644 = gi_416;
               gi_652 = gi_424;
               gi_660 = gi_432;
               gi_668 = gi_440;
            }
         }
      }
      gd_716 = (-1 * gi_624) * gd_536;
      gd_708 = gi_620 * gd_536;
      gi_672 = 60 * gi_632;
      gi_676 = 60 * gi_640;
      gi_680 = 60 * gi_648;
      gi_684 = 60 * gi_656;
      gi_688 = 60 * gi_664;
      gd_724 = gi_636 * gd_536;
      gd_732 = gi_644 * gd_536;
      gd_740 = gi_652 * gd_536;
      gd_748 = gi_660 * gd_536;
      gd_756 = gi_668 * gd_536;
      gd_780 = NormalizeDouble(gi_628 * gd_536, gi_532);
      gd_764 = (MarketInfo(g_symbol_576, MODE_SPREAD) + 0.1) * Point;
      gd_772 = NormalizeDouble(gi_624 * gd_536, gi_532);
      gi_604 = 100 - gi_472;
      gi_608 = 100 - gi_480;
      gi_612 = gi_484 / 2 + 50;
      gi_616 = 50 - gi_484 / 2;
      gi_692 = gi_452 + GMT_offset;
      gi_696 = gi_456 + GMT_offset;
      while (true) {
         if (gi_692 >= 24) {
            gi_692 -= 24;
            continue;
         }
         if (gi_692 >= 0) break;
         gi_692 += 24;
      }
      while (true) {
         if (gi_696 >= 24) {
            gi_696 -= 24;
            continue;
         }
         if (gi_696 >= 0) break;
         gi_696 += 24;
      }
      if (g_period_168 <= 0) gi_164 = FALSE;
      if (g_applied_price_172 < PRICE_CLOSE || g_applied_price_172 > PRICE_WEIGHTED) gi_164 = FALSE;
      if (g_ma_method_176 < MODE_SMA || g_ma_method_176 > MODE_LWMA) gi_164 = FALSE;
   }
   return (0);
}

int deinit() {
   return (0);
}

int start() {
   if (!gi_528) return (0);
   Scalper();
   return (0);
}

void Scalper() {
   double l_irsi_0;
   double l_irsi_8;
   double l_ima_16;
   int l_count_24;
   double l_ima_28;
   g_datetime_592 = TimeCurrent();
   if (!IsConnected()) {
      Comment("" 
         + "\n" 
         + "Boss"  
         + "\n" 
         + "------------------------------------------------" 
         + "\n" 
         + "BROKER INFORMATION:" 
         + "\n" 
         + "Broker Company:      " + AccountCompany() 
         + "\n" 
         + "------------------------------------------------" 
         + "\n" 
         + "ACCOUNT INFORMATION:" 
         + "\n" 
         + "Account Name:          " + AccountName() 
         + "\n" 
         + "Account Number:       " + AccountNumber() 
         + "\n" 
         + "Account Leverage:     " + DoubleToStr(AccountLeverage(), 0) 
         + "\n" 
         + "Account Balance:       " + DoubleToStr(AccountBalance(), 2) 
         + "\n" 
         + "Account Currency:     " + AccountCurrency() 
         + "\n" 
         + "Account Equity:         " + DoubleToStr(AccountEquity(), 2) 
         + "\n" 
         + "------------------------------------------------" 
         + "\n" 
         + "MARGIN INFORMATION:" 
         + "\n" 
         + "Free Margin:              " + DoubleToStr(AccountFreeMargin(), 2) 
         + "\n" 
         + "Used Margin:              " + DoubleToStr(AccountMargin(), 2) 
         + "\n" 
         + "------------------------------------------------" 
         + "\n" 
         + "Actual Server Time     " + TimeToStr(TimeCurrent(), TIME_SECONDS) 
         + "\n" 
      + "------------------------------------------------");
      return;
   }
   if (PrintLogOnChart) {
      Comment("" 
         + "\n" 
         + "Boss"  
         + "\n" 
         + "------------------------------------------------" 
         + "\n" 
         + "BROKER INFORMATION:" 
         + "\n" 
         + "Broker Company:      " + AccountCompany() 
         + "\n" 
         + "------------------------------------------------" 
         + "\n" 
         + "ACCOUNT INFORMATION:" 
         + "\n" 
         + "Account Name:          " + AccountName() 
         + "\n" 
         + "Account Number:       " + AccountNumber() 
         + "\n" 
         + "Account Leverage:     " + DoubleToStr(AccountLeverage(), 0) 
         + "\n" 
         + "Account Balance:       " + DoubleToStr(AccountBalance(), 2) 
         + "\n" 
         + "Account Currency:     " + AccountCurrency() 
         + "\n" 
         + "Account Equity:         " + DoubleToStr(AccountEquity(), 2) 
         + "\n" 
         + "------------------------------------------------" 
         + "\n" 
         + "MARGIN INFORMATION:" 
         + "\n" 
         + "Free Margin:              " + DoubleToStr(AccountFreeMargin(), 2) 
         + "\n" 
         + "Used Margin:              " + DoubleToStr(AccountMargin(), 2) 
         + "\n" 
         + "------------------------------------------------" 
         + "\n" 
         + "Actual Server Time     " + TimeToStr(TimeCurrent(), TIME_SECONDS) 
         + "\n" 
      + "------------------------------------------------");
   }
   if (gi_136) WatchLevels();
   if (gi_140) NoiseFilter();
   SetOrderLevels();
   if (Ask - Bid <= gd_764) {
      if (DayOfWeek() != 0) {
         if (!gi_156)
            if (DayOfWeek() == 5) return;
         if (DayOfWeek() == 1 && Hour() < gi_692) return;
         if (Scalper_IsTradeTime()) {
            if (gi_144 > 0)
               if (Scalper_IsRelaxHours()) return;
            if (gi_148)
               if (Scalper_CheckSimpleHeightFilter()) return;
            if (gi_152)
               if (Scalper_CheckTrendFilter()) return;
            if (gi_160 != 0) {
               if (Scalper_HaveTrade()) {
                  if (!(WriteDebugLog)) return;
                  Print("Already have one trade inside this interval of time.");
                  return;
               }
            }
            HideTestIndicators(TRUE);
            l_irsi_0 = iRSI(NULL, 0, g_period_468, PRICE_CLOSE, 0);
            l_irsi_8 = iRSI(NULL, PERIOD_M1, g_period_476, PRICE_CLOSE, 0);
            l_ima_16 = iMA(NULL, 0, g_period_464, 0, MODE_SMA, PRICE_MEDIAN, 1);
            if (fun2(Ask + 0.0002, ExistPosition(), l_irsi_0, l_irsi_8, gi_480, gi_472, l_ima_16)) {
               if (gi_584) {
                  if (!gi_164) l_count_24 = 0;
                  else {
                     l_ima_28 = iMA(NULL, 0, g_period_168, 0, g_ma_method_176, g_applied_price_172, 0);
                     if (Close[0] <= l_ima_28) l_count_24++;
                  }
                  if (l_count_24 == 0) {
                     OpenPosition(OP_BUY, gi_620, gi_624);
                     gi_584 = FALSE;
                     gi_588 = TRUE;
                  }
               }
            }
            if (fun3(Bid - 0.0002, ExistPosition(), l_irsi_0, l_irsi_8, gi_608, gi_604, l_ima_16)) {
               if (gi_588) {
                  if (!gi_164) l_count_24 = 0;
                  else {
                     l_ima_28 = iMA(NULL, 0, g_period_168, 0, g_ma_method_176, g_applied_price_172, 0);
                     if (Close[0] >= l_ima_28) l_count_24++;
                  }
                  if (l_count_24 == 0) {
                     OpenPosition(OP_SELL, gi_620, gi_624);
                     gi_588 = FALSE;
                     gi_584 = TRUE;
                  }
               }
            }
            if (fun4(l_irsi_0, gi_612, gi_616)) {
               gi_588 = TRUE;
               gi_584 = TRUE;
            }
         }
      }
   }
}

bool Scalper_IsRelaxHours() {
   int l_datetime_16;
   bool li_20;
   double ld_24;
   double ld_32;
   double ld_40;
   int l_datetime_52;
   int l_ticket_0 = -1;
   int li_4 = OrdersHistoryTotal() - 1;
   int l_datetime_8 = -2147483648;
   for (int l_pos_12 = li_4; l_pos_12 >= 0; l_pos_12--) {
      if (OrderSelect(l_pos_12, SELECT_BY_POS, MODE_HISTORY)) {
         if (OrderMagicNumber() == MagicNumber) {
            if (OrderSymbol() == g_symbol_576) {
               l_datetime_16 = OrderCloseTime();
               if (l_datetime_8 < l_datetime_16) {
                  l_datetime_8 = l_datetime_16;
                  l_ticket_0 = OrderTicket();
               }
            }
         }
      }
   }
   if (l_ticket_0 < 0) return (FALSE);
   if (OrderSelect(l_ticket_0, SELECT_BY_TICKET)) {
      li_20 = FALSE;
      ld_24 = NormalizeDouble(OrderOpenPrice(), gi_532);
      ld_32 = NormalizeDouble(OrderClosePrice(), gi_532);
      ld_40 = NormalizeDouble(OrderStopLoss(), gi_532);
      if (OrderType() == OP_BUY) {
         if (ld_32 <= ld_40 && ld_40 != 0.0) li_20 = TRUE;
         else
            if (ld_24 - ld_32 >= gd_772) li_20 = TRUE;
      } else {
         if (ld_32 >= ld_40 && ld_40 != 0.0) li_20 = TRUE;
         else
            if (ld_32 - ld_24 >= gd_772) li_20 = TRUE;
      }
   } else return (FALSE);
   if (!li_20) return (FALSE);
   int l_shift_48 = iBarShift(NULL, PERIOD_H1, l_datetime_8, FALSE);
   if (l_shift_48 < gi_144) {
      l_datetime_52 = iTime(NULL, PERIOD_H1, 0);
      if (g_datetime_600 != l_datetime_52) {
         if (WriteLog) Print("Relax Hours Left = " + DoubleToStr(l_shift_48 - gi_144, 0) + " (after StopLoss).");
         g_datetime_600 = l_datetime_52;
      }
      return (TRUE);
   }
   return (FALSE);
}

bool Scalper_CheckTrendFilter() {
   double ld_4;
   double ld_12;
   double ld_20;
   if (gi_500 <= 0) return (FALSE);
   for (int li_0 = 0; li_0 <= gi_504; li_0++) {
      ld_4 = NormalizeDouble(iMA(NULL, 0, g_period_488, 0, g_ma_method_496, g_applied_price_492, li_0), gi_532);
      ld_12 = NormalizeDouble(iMA(NULL, 0, g_period_488, 0, g_ma_method_496, g_applied_price_492, li_0 + gi_500), gi_532);
      ld_20 = 100.0 * MathAbs(ld_4 - ld_12) / ld_12;
      if (ld_20 > gd_700) break;
   }
   if (li_0 > gi_504) return (FALSE);
   if (WriteDebugLog) {
      Print("Trade is forbidden by the filter TrendFilter.");
      if (li_0 != 0) Print("Relax Bars Left = " + DoubleToStr(gi_504 - li_0, 0) + " (after MaxPercentMove).");
   }
   return (TRUE);
}

bool Scalper_CheckSimpleHeightFilter() {
   int l_datetime_4;
   bool li_0 = FALSE;
   if (NormalizeDouble(iHigh(NULL, PERIOD_M15, 1) - iLow(NULL, PERIOD_M15, 1), gi_532) > gd_780) li_0 = TRUE;
   if (NormalizeDouble(iHigh(NULL, PERIOD_M15, 2) - iLow(NULL, PERIOD_M15, 2), gi_532) > gd_780) li_0 = TRUE;
   if (li_0) {
      l_datetime_4 = iTime(NULL, PERIOD_M15, 0);
      if (g_datetime_596 != l_datetime_4) {
         if (WriteLog) Print("Trade is forbidden by the filter SimpleHeightFilter.");
         g_datetime_596 = l_datetime_4;
      }
      return (TRUE);
   }
   return (FALSE);
}

int Scalper_IsTradeTime() {
   int l_hour_0 = TimeHour(g_datetime_592);
   if (gi_692 < gi_696 && l_hour_0 < gi_692 || l_hour_0 >= gi_696) return (0);
   if (gi_692 > gi_696 && (l_hour_0 < gi_692 && l_hour_0 >= gi_696)) return (0);
   if (gi_696 == 0) gi_696 = 24;
   if (Hour() == gi_696 - 1 && Minute() >= gi_460) return (0);
   return (1);
}

int ExistPosition() {
   int l_ord_total_0 = OrdersTotal();
   for (int l_pos_4 = 0; l_pos_4 < l_ord_total_0; l_pos_4++) {
      if (OrderSelect(l_pos_4, SELECT_BY_POS, MODE_TRADES)) {
         if (OrderMagicNumber() == MagicNumber) {
            if (OrderSymbol() == g_symbol_576)
               if (OrderType() <= OP_SELL) return (1);
         }
      }
   }
   return (0);
}

int OpenPosition(int a_cmd_0, int ai_unused_4, int ai_unused_8) {
   double l_price_20;
   color l_color_28;
   string ls_36;
   double ld_12 = LotsOptimized();
   if (AccountFreeMarginCheck(g_symbol_576, a_cmd_0, ld_12) <= 0.0 || GetLastError() == 134/* NOT_ENOUGH_MONEY */) {
      Print("You don\'t have free margin.");
      Comment("You don\'t have free margin.");
      return (-1);
   }
   if (Ask - Bid > MaxSpread / 10000.0) return (0);
   RefreshRates();
   if (a_cmd_0 == OP_BUY) {
      l_price_20 = Ask;
      l_color_28 = g_color_184;
   } else {
      l_price_20 = Bid;
      l_color_28 = g_color_188;
   }
   int l_ticket_32 = OrderSend(g_symbol_576, a_cmd_0, ld_12, l_price_20, MarketInfo(g_symbol_576, MODE_SPREAD), 0, 0, 0, MagicNumber, 0, l_color_28);
   if (l_ticket_32 < 0) {
      if (WriteDebugLog) {
         if (a_cmd_0 == OP_BUY) ls_36 = "OP_BUY";
         else ls_36 = "OP_SELL";
         Print("Open: OrderSend(", ls_36, ") error = ", GetLastError());
      }
   }
   return (l_ticket_32);
}

void NoiseFilter() {
   int li_12;
   double l_price_16;
   double ld_24;
   int li_32;
   double ld_36;
   bool l_ord_close_44;
   string ls_48;
   int l_spread_0 = MarketInfo(g_symbol_576, MODE_SPREAD);
   int li_4 = OrdersTotal() - 1;
   for (int l_pos_8 = li_4; l_pos_8 >= 0; l_pos_8--) {
      if (!OrderSelect(l_pos_8, SELECT_BY_POS, MODE_TRADES)) {
         if (WriteDebugLog) Print("NoiseFilter: OrderSelect() error = ", GetLastError());
      } else {
         if (OrderMagicNumber() == MagicNumber) {
            if (OrderType() <= OP_SELL) {
               if (OrderSymbol() == g_symbol_576) {
                  li_12 = g_datetime_592 - OrderOpenTime();
                  if (li_12 > gi_672) {
                     l_price_16 = NormalizeDouble(OrderClosePrice(), gi_532);
                     ld_24 = NormalizeDouble(OrderOpenPrice(), gi_532);
                     li_32 = 0;
                     if (OrderType() == OP_BUY) ld_36 = l_price_16 - ld_24;
                     else ld_36 = ld_24 - l_price_16;
                     if (li_12 < gi_676 && ld_36 >= gd_724) li_32 = 1;
                     else {
                        if (li_12 > gi_676 && li_12 < gi_680 && ld_36 >= gd_732) li_32 = 2;
                        else {
                           if (li_12 > gi_680 && li_12 < gi_684 && ld_36 >= gd_740) li_32 = 3;
                           else {
                              if (li_12 > gi_684 && li_12 < gi_688 && ld_36 >= gd_748) li_32 = 4;
                              else
                                 if (li_12 > gi_688 && ld_36 >= gd_756) li_32 = 5;
                           }
                        }
                     }
                     if (li_32 != 0) {
                        RefreshRates();
                        l_ord_close_44 = OrderClose(OrderTicket(), OrderLots(), l_price_16, l_spread_0, g_color_184);
                        if (!l_ord_close_44) {
                           if (WriteDebugLog) {
                              if (OrderType() == OP_BUY) ls_48 = "OP_BUY";
                              else ls_48 = "OP_SELL";
                              Print("NoiseFilter: OrderClose(", ls_48, ") error = ", GetLastError());
                           }
                        }
                     }
                  }
               }
            }
         }
      }
   }
}

void WatchLevels() {
   double l_price_12;
   double ld_20;
   double ld_28;
   bool l_ord_close_36;
   if (gi_620 <= 0 && gi_624 <= 0) return;
   int l_spread_0 = MarketInfo(g_symbol_576, MODE_SPREAD);
   int li_4 = OrdersTotal() - 1;
   for (int l_pos_8 = li_4; l_pos_8 >= 0; l_pos_8--) {
      if (!OrderSelect(l_pos_8, SELECT_BY_POS, MODE_TRADES)) {
         if (WriteDebugLog) Print("WatchLevels: OrderSelect() error = ", GetLastError());
      } else {
         if (OrderMagicNumber() == MagicNumber) {
            if (OrderType() <= OP_SELL) {
               if (OrderSymbol() == g_symbol_576) {
                  l_price_12 = NormalizeDouble(OrderClosePrice(), gi_532);
                  ld_20 = NormalizeDouble(OrderOpenPrice(), gi_532);
                  if (OrderType() == OP_BUY) {
                     ld_28 = l_price_12 - ld_20;
                     if ((gd_708 > 0.0 && ld_28 >= gd_708) || (gd_716 < 0.0 && ld_28 <= gd_716)) {
                        if (WriteDebugLog) Print("WatchLevels: level for close BUY");
                        l_ord_close_36 = OrderClose(OrderTicket(), OrderLots(), l_price_12, l_spread_0, g_color_184);
                        if (!l_ord_close_36)
                           if (WriteDebugLog) Print("WatchLevels: OrderClose(OP_BUY) error = ", GetLastError());
                     }
                  } else {
                     ld_28 = ld_20 - l_price_12;
                     if ((gd_708 > 0.0 && ld_28 >= gd_708) || (gd_716 < 0.0 && ld_28 <= gd_716)) {
                        if (WriteDebugLog) Print("WatchLevels: level for close SELL");
                        l_ord_close_36 = OrderClose(OrderTicket(), OrderLots(), l_price_12, l_spread_0, g_color_188);
                        if (!l_ord_close_36)
                           if (WriteDebugLog) Print("WatchLevels: OrderClose(OP_SELL) error = ", GetLastError());
                     }
                  }
               }
            }
         }
      }
   }
}

double LotsOptimized() {
   double ld_ret_0 = MathFloor(ManyManagment_0_100 * AccountEquity() / MarketInfo(Symbol(), MODE_MARGINREQUIRED)) * MarketInfo(Symbol(), MODE_MINLOT);
   if (ld_ret_0 > MarketInfo(Symbol(), MODE_MAXLOT)) ld_ret_0 = MarketInfo(Symbol(), MODE_MAXLOT);
   if (ld_ret_0 < MarketInfo(Symbol(), MODE_MINLOT)) ld_ret_0 = MarketInfo(Symbol(), MODE_MINLOT);
   return (ld_ret_0);
}

void SetOrderLevels() {
   double ld_16;
   double l_price_24;
   double ld_32;
   double ld_40;
   bool li_48;
   int li_52;
   int li_56;
   double l_price_60;
   double l_price_68;
   bool l_bool_76;
   double ld_0 = NormalizeDouble(MarketInfo(g_symbol_576, MODE_STOPLEVEL) * Point, Digits);
   int li_8 = OrdersTotal() - 1;
   for (int l_pos_12 = li_8; l_pos_12 >= 0; l_pos_12--) {
      if (!OrderSelect(l_pos_12, SELECT_BY_POS, MODE_TRADES)) {
         if (WriteDebugLog) Print("SetOrderLevels: OrderSelect() error = ", GetLastError());
      } else {
         if (OrderMagicNumber() == MagicNumber) {
            if (OrderType() <= OP_SELL) {
               if (OrderSymbol() == g_symbol_576) {
                  ld_16 = NormalizeDouble(OrderClosePrice(), gi_532);
                  l_price_24 = NormalizeDouble(OrderOpenPrice(), gi_532);
                  ld_32 = NormalizeDouble(OrderStopLoss(), gi_532);
                  ld_40 = NormalizeDouble(OrderTakeProfit(), gi_532);
                  li_48 = TRUE;
                  li_52 = 0;
                  li_56 = 0;
                  if (ld_32 == 0.0) {
                     if (gi_136) li_52 = gi_508 + MathRand() % gi_512;
                     else li_52 = gi_624;
                     if (li_52 != 0) {
                        if (OrderType() == OP_BUY) {
                           l_price_60 = NormalizeDouble(l_price_24 - li_52 * gd_536, gi_532);
                           if (ld_16 - l_price_60 <= ld_0) li_48 = FALSE;
                        } else {
                           l_price_60 = NormalizeDouble(l_price_24 + li_52 * gd_536, gi_532);
                           if (l_price_60 - ld_16 <= ld_0) li_48 = FALSE;
                        }
                     }
                  } else l_price_60 = ld_32;
                  if (ld_40 == 0.0) {
                     if (gi_136) li_56 = gi_516 + MathRand() % gi_520;
                     else li_56 = gi_620;
                     if (li_56 != 0) {
                        if (OrderType() == OP_BUY) {
                           l_price_68 = NormalizeDouble(l_price_24 + li_56 * gd_536, gi_532);
                           if (l_price_68 - ld_16 <= ld_0) li_48 = FALSE;
                        } else {
                           l_price_68 = NormalizeDouble(l_price_24 - li_56 * gd_536, gi_532);
                           if (ld_16 - l_price_68 <= ld_0) li_48 = FALSE;
                        }
                     }
                  } else l_price_68 = ld_40;
                  if (li_52 != 0 && li_56 != 0 && li_48) {
                     l_bool_76 = OrderModify(OrderTicket(), l_price_24, l_price_60, l_price_68, 0, CLR_NONE);
                     if (!l_bool_76)
                        if (WriteDebugLog) Print("SetOrderLevels: OrderClose(OP_SELL) error = ", GetLastError());
                  }
               }
            }
         }
      }
   }
}

bool Scalper_HaveTrade() {
   int l_datetime_28;
   if (gi_452 == gi_456) return (FALSE);
   int l_datetime_0 = TimeCurrent();
   int li_4 = iTime(NULL, PERIOD_D1, 0);
   int l_hour_8 = TimeHour(l_datetime_0);
   int li_unused_12 = 0;
   if (gi_452 > gi_456)
      if (l_hour_8 < gi_452) li_4 -= 86400;
   li_4 += 3600 * gi_452;
   int li_16 = OrdersTotal() - 1;
   int l_datetime_20 = -2147483648;
   for (int l_pos_24 = li_16; l_pos_24 >= 0; l_pos_24--) {
      if (OrderSelect(l_pos_24, SELECT_BY_POS, MODE_TRADES)) {
         if (OrderMagicNumber() == MagicNumber) {
            if (OrderSymbol() == g_symbol_576) {
               l_datetime_28 = OrderOpenTime();
               if (l_datetime_20 < l_datetime_28) l_datetime_20 = l_datetime_28;
            }
         }
      }
   }
   if (l_datetime_20 >= li_4) return (TRUE);
   li_16 = OrdersHistoryTotal() - 1;
   l_datetime_20 = -2147483648;
   for (l_pos_24 = li_16; l_pos_24 >= 0; l_pos_24--) {
      if (OrderSelect(l_pos_24, SELECT_BY_POS, MODE_HISTORY)) {
         if (OrderMagicNumber() == MagicNumber) {
            if (OrderSymbol() == g_symbol_576) {
               l_datetime_28 = OrderOpenTime();
               if (l_datetime_20 < l_datetime_28) l_datetime_20 = l_datetime_28;
            }
         }
      }
   }
   if (l_datetime_20 >= li_4) return (TRUE);
   return (FALSE);
}