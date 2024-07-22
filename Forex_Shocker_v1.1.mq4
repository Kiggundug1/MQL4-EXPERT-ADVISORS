#property copyright "Copyright© 2009 FOREX Developers, LLC"
#property link      "http://www.forexshocker.com"

#import "shocker.dll"
   int Activate(int a0, int a1);
   int GetState(int a0, int a1);
   double TradeFunction(int a0, int a1, double a2, double a3);
   double TradeFunction2(int a0, int a1, double a2, double a3, double a4);
#import

extern string Version = "1.1";
extern int VerificationCode = 0;
extern string _A = "System Parameters";
extern bool IsFiveDigits = FALSE;
extern bool MoneyManagement = FALSE;
extern bool Aggressive = FALSE;
extern bool SuperAggressive = FALSE;
extern string _B = "If MM=false, Lots below will be used";
extern double Lots = 0.1;
extern bool MicroLots = FALSE;
extern int MaximumTrades = 2;
extern string _C = "Platform Hours";
extern int StartTime = 22;
extern int EndTime = 24;
extern string _D = "NN Parameters";
extern double NN1 = 70.0;
extern double NN2 = 64.0;
extern double NN3 = 30.0;
extern double NN4 = 36.0;
extern double NN5 = 100.15;
extern string _E = "Magic Numbers";
extern int magic1 = 100119;
extern int magic2 = 1717170;
extern string _F = "Comment Change";
extern string EAName = "Forex Shocker v1.1";
double gd_232 = -150.0;
double gd_240 = -120.0;
double gd_248 = -150.0;
double gd_256 = -120.0;
double gd_264 = 150.0;
double gd_272 = 120.0;
double gd_280 = 150.0;
double gd_288 = 120.0;
double gd_unused_296 = 200.0;
double gd_unused_304 = 10.0;
int gi_312 = 1;
int gi_unused_316 = 10;
double g_lots_320;
int gi_328 = 2;
double gd_332 = 0.0001;
double g_pips_340 = 4.0;
double gd_unused_348 = 50.0;
bool gi_356 = TRUE;
bool gi_360 = TRUE;
double gd_364 = 6.0;
double gd_372 = 32.0;
int g_slippage_380 = 3;
int gi_384 = 32;
int gi_388 = 15;
bool gi_392 = TRUE;
bool gi_396 = TRUE;
bool gi_400 = TRUE;
bool gi_404 = TRUE;
bool gi_408 = TRUE;
bool gi_412 = TRUE;
int gi_424 = 0;
int g_count_428 = 0;
int g_count_432 = 0;
int g_count_436 = 0;
int g_count_440 = 0;
int g_count_444 = 0;
int g_count_448 = 0;
int gi_452 = 0;
int gi_456 = 0;
int g_count_460 = 0;
int g_count_464 = 0;
int g_count_468 = 0;
double gd_472 = 0.0;
double g_price_480 = 0.0;
int gi_488 = 0;
int gi_unused_492 = 0;
double gd_496 = 0.0;
int gi_504 = 0;
string gs_508;
bool gi_unused_516 = FALSE;
bool gi_unused_520 = FALSE;
int gi_unused_524;
int gi_528;
int gi_532;
int g_ticket_536;
int g_ticket_540;
int g_ticket_544;
int g_ticket_548;
int g_ticket_552;
int g_ticket_556;
int g_ticket_560;
int g_ticket_564;
int g_ticket_568;
int g_ticket_572;
int g_ticket_576;
int g_ticket_580;
double g_ifractals_584;
double g_ifractals_592;
double g_ifractals_600;
double g_ifractals_608;
double gd_unused_616;
double gd_unused_624;
double gd_unused_632;
double gd_unused_640;

int init() {
   return (0);
}

int deinit() {
   return (0);
}

void ScreenMsg() {
   string ls_0;
   string ls_unused_8;
   string ls_16;
   string ls_24;
   string ls_32;
   double ld_40 = 10000.0 * (Ask - Bid);
   int li_unused_48 = NormalizeDouble(ld_40, 0);
   string ls_52 = "\n";
   string ls_60 = "--------------------\n";
   string ls_unused_68 = "\n";
   if (Minute() < 10) ls_16 = Hour() + ":0" + Minute();
   else ls_16 = Hour() + ":" + Minute();
   string ls_76 = "\n" 
      + "\n" 
      + " Forex Shocker v1.1 Copyright © 2009" 
   + "\n";
   string ls_84 = " Account Number:  " + AccountNumber() 
      + "\n" 
      + " Server Time:        " + TimeToStr(TimeCurrent(), TIME_SECONDS) 
      + "\n" 
      + " TIMEFRAME:      M15\n" + " " + gs_508 
   + "\n";
   Comment(ls_76 + ls_52 + ls_60 + ls_0 + ls_32 + ls_24 + ls_84);
}

int start() {
   double l_iwpr_120;
   double ld_128;
   double ld_136;
   double ld_144;
   double ld_152;
   bool li_160;
   int l_count_164;
   double ld_172;
   double ld_180;
   double ld_188;
   double ld_196;
   double ld_204;
   double ld_212;
   gi_528 = Activate(AccountNumber(), VerificationCode);
   double l_irsi_0 = iRSI(NULL, PERIOD_M15, 6, PRICE_CLOSE, 0);
   double l_irsi_8 = iRSI(NULL, PERIOD_M1, 20, PRICE_CLOSE, 0);
   if (MicroLots == TRUE) gi_unused_524 = 2;
   else gi_unused_524 = 1;
   if (IsExpertEnabled() == FALSE) {
      Alert("Please allow expert advisors");
      return (0);
   }
   if (Period() != PERIOD_M15) {
      Alert("Please attach the EA to the M15 Timeframe");
      return (0);
   }
   ScreenMsg();
   gi_532 = GetState(gi_528, AccountNumber());
   if (DayOfWeek() == 1 && Hour() >= 0 && Hour() <= 3) return (0);
   if (DayOfWeek() == 0) return (0);
   if (gi_532 == 1) gs_508 = "Authenticated";
   else {
      if (gi_532 == 2) {
         gs_508 = "Not Authenticated";
         return (0);
      }
   }
   HideTestIndicators(TRUE);
   gd_472 = gd_364;
   g_price_480 = 0;
   for (int li_16 = 1; li_16 < Bars; li_16++) {
      if (iFractals(NULL, PERIOD_M15, MODE_LOWER, li_16) != 0.0) {
         g_ifractals_592 = iFractals(NULL, PERIOD_M15, MODE_LOWER, li_16);
         gd_unused_624 = Time[li_16];
         break;
      }
   }
   for (int li_20 = 1; li_20 < Bars; li_20++) {
      if (iFractals(NULL, PERIOD_M15, MODE_UPPER, li_20) != 0.0) {
         g_ifractals_584 = iFractals(NULL, PERIOD_M15, MODE_UPPER, li_20);
         gd_unused_616 = Time[li_20];
         break;
      }
   }
   for (int li_24 = 1; li_24 < Bars; li_24++) {
      if (iFractals(NULL, PERIOD_H1, MODE_LOWER, li_24) != 0.0) {
         g_ifractals_608 = iFractals(NULL, PERIOD_H1, MODE_LOWER, li_24);
         gd_unused_632 = Time[li_16];
         break;
      }
   }
   for (int li_28 = 1; li_28 < Bars; li_28++) {
      if (iFractals(NULL, PERIOD_H1, MODE_UPPER, li_28) != 0.0) {
         g_ifractals_600 = iFractals(NULL, PERIOD_H1, MODE_UPPER, li_28);
         gd_unused_640 = Time[li_28];
         break;
      }
   }
   gi_488 = MathRound((g_ifractals_584 - g_ifractals_592) / gd_332);
   gi_unused_492 = MathRound((g_ifractals_600 - g_ifractals_608) / gd_332);
   gd_496 = 0;
   gd_496 = TradeFunction2(AccountNumber(), VerificationCode, g_ifractals_584, g_ifractals_584, g_ifractals_592);
   gi_504 = MathRound(iATR(Symbol(), PERIOD_M15, 4, 0) / gd_332);
   double l_ibands_32 = iBands(Symbol(), PERIOD_M5, 20, 2, 0, PRICE_WEIGHTED, MODE_UPPER, 1);
   double l_ibands_40 = iBands(Symbol(), PERIOD_M5, 20, 2, 0, PRICE_WEIGHTED, MODE_LOWER, 1);
   bool li_48 = FALSE;
   if (Close[0] <= g_ifractals_600 && Close[0] >= g_ifractals_608) li_48 = TRUE;
   double l_icci_52 = iCCI(Symbol(), PERIOD_M15, 14, PRICE_CLOSE, 0);
   double l_icci_60 = iCCI(Symbol(), PERIOD_M5, 42, PRICE_CLOSE, 0);
   double l_icci_68 = iCCI(Symbol(), PERIOD_M1, 210, PRICE_CLOSE, 0);
   double l_icci_76 = iCCI(Symbol(), PERIOD_M1, 80, PRICE_CLOSE, 0);
   g_count_428 = 0;
   g_count_432 = 0;
   g_count_436 = 0;
   g_count_440 = 0;
   g_count_444 = 0;
   g_count_448 = 0;
   gi_452 = 0;
   gi_456 = 0;
   g_count_460 = 0;
   g_count_464 = 0;
   g_count_468 = 0;
   for (int l_pos_84 = 0; l_pos_84 < OrdersTotal(); l_pos_84++) {
      OrderSelect(l_pos_84, SELECT_BY_POS, MODE_TRADES);
      if (OrderSymbol() == Symbol() && OrderMagicNumber() == magic1 || OrderMagicNumber() == magic2) {
         g_count_428++;
         if (OrderType() == OP_BUY) g_count_460++;
         if (OrderType() == OP_SELL) g_count_440++;
      } else {
         if (OrderSymbol() == Symbol() && OrderMagicNumber() == magic1) {
            g_count_432++;
            if (OrderType() == OP_BUY) g_count_464++;
            if (OrderType() == OP_SELL) g_count_444++;
         } else {
            if (OrderSymbol() == Symbol() && OrderMagicNumber() == magic2) {
               g_count_436++;
               if (OrderType() == OP_BUY) g_count_468++;
               if (OrderType() == OP_SELL) g_count_448++;
            }
         }
      }
   }
   double l_imomentum_88 = iMomentum(Symbol(), PERIOD_M5, 4, PRICE_CLOSE, 0);
   if (gi_356 == TRUE) {
      for (int l_pos_96 = 0; l_pos_96 < OrdersTotal(); l_pos_96++) {
         OrderSelect(l_pos_96, SELECT_BY_POS, MODE_TRADES);
         if (OrderType() == OP_BUY) {
            if (OrderMagicNumber() == magic1) {
               if (Bid >= OrderOpenPrice() + gd_364 * gd_332) {
                  RefreshRates();
                  OrderClose(OrderTicket(), OrderLots(), Bid, g_slippage_380, Orange);
               }
            } else {
               if (OrderMagicNumber() == magic2) {
                  if (Bid >= OrderOpenPrice() + (gd_364 - 2.0) * gd_332) {
                     RefreshRates();
                     OrderClose(OrderTicket(), OrderLots(), Bid, g_slippage_380, Orange);
                  }
               }
            }
         }
         if (OrderType() == OP_SELL) {
            if (OrderMagicNumber() == magic1) {
               if (Ask <= OrderOpenPrice() - gd_364 * gd_332) {
                  RefreshRates();
                  OrderClose(OrderTicket(), OrderLots(), Ask, g_slippage_380, Orange);
               }
            } else {
               if (OrderMagicNumber() == magic2) {
                  if (Ask <= OrderOpenPrice() - (gd_364 - 2.0) * gd_332) {
                     RefreshRates();
                     OrderClose(OrderTicket(), OrderLots(), Ask, g_slippage_380, Orange);
                  }
               }
            }
         }
      }
   }
   double l_ima_100 = iMA(Symbol(), PERIOD_M5, 1, 0, MODE_EMA, PRICE_HIGH, 0);
   double l_ima_108 = iMA(Symbol(), PERIOD_M5, 1, 0, MODE_EMA, PRICE_LOW, 0);
   for (int l_pos_116 = 0; l_pos_116 < OrdersTotal(); l_pos_116++) {
      OrderSelect(l_pos_116, SELECT_BY_POS, MODE_TRADES);
      if (OrderType() == OP_BUY && OrderMagicNumber() == magic1 || OrderMagicNumber() == magic2) {
         if (TimeCurrent() - OrderOpenTime() > 3600 && TimeCurrent() - OrderOpenTime() < 8400 && Bid >= OrderOpenPrice() + 3.0 * gd_332) {
            RefreshRates();
            OrderClose(OrderTicket(), OrderLots(), Bid, g_slippage_380, Orange);
         }
         if (TimeCurrent() - OrderOpenTime() > 8400 && TimeCurrent() - OrderOpenTime() < 10200 && Bid >= OrderOpenPrice() + 2.0 * gd_332) {
            RefreshRates();
            OrderClose(OrderTicket(), OrderLots(), Bid, g_slippage_380, Orange);
         }
         if (TimeCurrent() - OrderOpenTime() > 10200 && TimeCurrent() - OrderOpenTime() < 12000 && Bid >= OrderOpenPrice() + 1.0 * gd_332) {
            RefreshRates();
            OrderClose(OrderTicket(), OrderLots(), Bid, g_slippage_380, Orange);
         }
         if (TimeCurrent() - OrderOpenTime() > 12000 && TimeCurrent() - OrderOpenTime() < 14400 && Bid >= OrderOpenPrice() - 1.0 * gd_332) {
            RefreshRates();
            OrderClose(OrderTicket(), OrderLots(), Bid, g_slippage_380, Orange);
         }
         if (TimeCurrent() - OrderOpenTime() > 14400 && Bid >= OrderOpenPrice() - 4.0 * gd_332) {
            RefreshRates();
            OrderClose(OrderTicket(), OrderLots(), Bid, g_slippage_380, Orange);
         }
         if (DayOfWeek() == 5 && Hour() >= 19) {
            RefreshRates();
            OrderClose(OrderTicket(), OrderLots(), Bid, g_slippage_380, Orange);
         }
         if (OrderType() == OP_SELL && OrderMagicNumber() == magic1 || OrderMagicNumber() == magic2) {
            if (TimeCurrent() - OrderOpenTime() > 3600 && TimeCurrent() - OrderOpenTime() < 8400 && Ask <= OrderOpenPrice() - 3.0 * gd_332) {
               RefreshRates();
               OrderClose(OrderTicket(), OrderLots(), Ask, g_slippage_380, Orange);
            }
            if (TimeCurrent() - OrderOpenTime() > 8400 && TimeCurrent() - OrderOpenTime() < 10200 && Ask <= OrderOpenPrice() - 2.0 * gd_332) {
               RefreshRates();
               OrderClose(OrderTicket(), OrderLots(), Ask, g_slippage_380, Orange);
            }
            if (TimeCurrent() - OrderOpenTime() > 10200 && TimeCurrent() - OrderOpenTime() < 12000 && Ask <= OrderOpenPrice() - 1.0 * gd_332) {
               RefreshRates();
               OrderClose(OrderTicket(), OrderLots(), Ask, g_slippage_380, Orange);
            }
            if (TimeCurrent() - OrderOpenTime() > 12000 && TimeCurrent() - OrderOpenTime() < 14400 && Ask <= OrderOpenPrice() + 1.0 * gd_332) {
               RefreshRates();
               OrderClose(OrderTicket(), OrderLots(), Ask, g_slippage_380, Orange);
            }
            if (TimeCurrent() - OrderOpenTime() > 14400 && Ask <= OrderOpenPrice() + 4.0 * gd_332) {
               RefreshRates();
               OrderClose(OrderTicket(), OrderLots(), Ask, g_slippage_380, Orange);
            }
            if (DayOfWeek() == 5 && Hour() >= 19) {
               RefreshRates();
               OrderClose(OrderTicket(), OrderLots(), Ask, g_slippage_380, Orange);
            }
         }
      }
   }
   if (iOpen(Symbol(), PERIOD_M5, 0) < Ask + 0.001) {
      if (iOpen(Symbol(), PERIOD_M5, 0) > Bid - 0.001) {
         if (iOpen(Symbol(), PERIOD_M5, 1) < Ask + 0.001) {
            if (iOpen(Symbol(), PERIOD_M5, 1) > Bid - 0.001) {
               if (iOpen(Symbol(), PERIOD_M5, 2) < Ask + 0.0012) {
                  if (iOpen(Symbol(), PERIOD_M5, 2) > Bid - 0.0012) {
                     l_iwpr_120 = iWPR(Symbol(), PERIOD_M5, 14, 0);
                     if (IsFiveDigits == FALSE) {
                        if (Ask - Bid > g_pips_340 * Point) {
                           Print("Spread Protection System: Broker spread is too high");
                           return (0);
                        }
                     }
                     gi_424 = NormalizeDouble(gi_328 / 2, 0);
                     ld_128 = NormalizeDouble(iMA(NULL, 0, 8, 0, MODE_SMA, PRICE_WEIGHTED, 1), 4);
                     ld_136 = NormalizeDouble(iMA(NULL, 0, 8, 0, MODE_SMA, PRICE_WEIGHTED, 1), 4);
                     if (MoneyManagement == TRUE && Aggressive == FALSE && SuperAggressive == FALSE) gi_312 = 1;
                     else {
                        if (MoneyManagement == TRUE && Aggressive == TRUE && SuperAggressive == TRUE) gi_312 = 1;
                        else {
                           if (MoneyManagement == TRUE && Aggressive == TRUE && SuperAggressive == FALSE) gi_312 = 2;
                           else
                              if (MoneyManagement == TRUE && Aggressive == FALSE && SuperAggressive == TRUE) gi_312 = 3;
                        }
                     }
                     if (AccountFreeMargin() >= 100.0 && AccountFreeMargin() <= 200.0) g_lots_320 = gi_312 / 100.0;
                     else {
                        if (AccountFreeMargin() > 200.0 && AccountFreeMargin() <= 300.0) g_lots_320 = gi_312 / 50.0;
                        else {
                           if (AccountFreeMargin() > 300.0 && AccountFreeMargin() <= 400.0) g_lots_320 = 0.03 * gi_312;
                           else {
                              if (AccountFreeMargin() > 400.0 && AccountFreeMargin() <= 500.0) g_lots_320 = 0.04 * gi_312;
                              else {
                                 if (AccountFreeMargin() > 500.0 && AccountFreeMargin() <= 600.0) g_lots_320 = 0.05 * gi_312;
                                 else {
                                    if (AccountFreeMargin() > 600.0 && AccountFreeMargin() <= 700.0) g_lots_320 = 0.06 * gi_312;
                                    else {
                                       if (AccountFreeMargin() > 700.0 && AccountFreeMargin() <= 800.0) g_lots_320 = 0.07 * gi_312;
                                       else {
                                          if (AccountFreeMargin() > 800.0 && AccountFreeMargin() <= 900.0) g_lots_320 = 0.08 * gi_312;
                                          else {
                                             if (AccountFreeMargin() > 900.0 && AccountFreeMargin() < 980.0) g_lots_320 = 0.09 * gi_312;
                                             else {
                                                if (AccountFreeMargin() >= 980.0 && AccountFreeMargin() <= 1980.0) g_lots_320 = gi_312 / 10.0;
                                                else {
                                                   if (AccountFreeMargin() > 1980.0 && AccountFreeMargin() <= 2980.0) g_lots_320 = 0.2 * gi_312;
                                                   else {
                                                      if (AccountFreeMargin() > 2980.0 && AccountFreeMargin() <= 3980.0) g_lots_320 = 0.3 * gi_312;
                                                      else {
                                                         if (AccountFreeMargin() > 3980.0 && AccountFreeMargin() <= 4980.0) g_lots_320 = gi_312 / 2.0;
                                                         else {
                                                            if (AccountFreeMargin() > 4980.0 && AccountFreeMargin() <= 5980.0) g_lots_320 = gi_312 / 2.0;
                                                            else {
                                                               if (AccountFreeMargin() > 5980.0 && AccountFreeMargin() <= 6980.0) g_lots_320 = 0.6 * gi_312;
                                                               else {
                                                                  if (AccountFreeMargin() > 6980.0 && AccountFreeMargin() <= 7980.0) g_lots_320 = 0.7 * gi_312;
                                                                  else {
                                                                     if (AccountFreeMargin() > 7980.0 && AccountFreeMargin() <= 8980.0) g_lots_320 = 0.8 * gi_312;
                                                                     else {
                                                                        if (AccountFreeMargin() > 8980.0 && AccountFreeMargin() <= 9980.0) g_lots_320 = 0.9 * gi_312;
                                                                        else {
                                                                           if (AccountFreeMargin() > 9980.0 && AccountFreeMargin() < 100000.0 && MicroLots == TRUE) g_lots_320 = AccountFreeMargin() / 10000.0 * gi_312;
                                                                           else {
                                                                              if (AccountFreeMargin() > 9980.0 && AccountFreeMargin() < 999980.0 && MicroLots == FALSE) {
                                                                                 ld_144 = AccountFreeMargin() / 1000.0;
                                                                                 ld_152 = MathFloor(ld_144);
                                                                                 g_lots_320 = ld_152 / 10.0 * gi_312;
                                                                              } else
                                                                                 if (AccountFreeMargin() >= 999980.0 && AccountFreeMargin() < 1000000.0) g_lots_320 = NormalizeDouble(AccountFreeMargin() / 10000.0, 1) * gi_312;
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
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     li_160 = TRUE;
                     l_count_164 = 0;
                     for (int l_pos_168 = 0; l_pos_168 < OrdersTotal(); l_pos_168++) {
                        OrderSelect(l_pos_168, SELECT_BY_POS);
                        if (OrderMagicNumber() == magic1 || OrderMagicNumber() == magic2) {
                           l_count_164++;
                           if (l_count_164 >= MaximumTrades) {
                              li_160 = FALSE;
                              return (0);
                           }
                        }
                     }
                     if (IsTradeContextBusy() == FALSE && li_160 == TRUE) {
                        if (TradeSession() == 1 && g_count_428 < gi_328 && li_48) {
                           if (ExistPosition1() == 0) {
                              if (DayOfWeek() == 0 || DayOfWeek() == 5 && Hour() >= 14) return (0);
                              if (l_irsi_0 < NN3 || l_irsi_8 < NN4 && ld_128 >= Ask + 20.0 * gd_332) {
                                 if (g_count_464 < 1 && gi_392) {
                                    gd_472 = 0;
                                    g_price_480 = 0;
                                    ld_172 = TradeFunction(AccountNumber(), VerificationCode, gd_364, gd_332);
                                    ld_180 = TradeFunction(AccountNumber(), VerificationCode, gd_372, gd_332);
                                    if (gi_356 == FALSE) gd_472 = Ask + ld_172;
                                    g_price_480 = Ask - ld_180;
                                    l_count_164 = 0;
                                    for (l_pos_168 = 0; l_pos_168 < OrdersTotal(); l_pos_168++) {
                                       OrderSelect(l_pos_168, SELECT_BY_POS);
                                       if (OrderMagicNumber() == magic1 || OrderMagicNumber() == magic2) {
                                          l_count_164++;
                                          if (l_count_164 >= MaximumTrades) {
                                             li_160 = FALSE;
                                             return (0);
                                          }
                                       }
                                    }
                                    if (li_160 == TRUE) {
                                       if (MoneyManagement == TRUE) {
                                          g_ticket_536 = OrderSend(Symbol(), OP_BUY, g_lots_320, Ask, 0, 0, 0, EAName, magic1, 0, Green);
                                          Print("Ticket= ", g_ticket_536);
                                          if (g_ticket_536 > 0) {
                                             OrderSelect(g_ticket_536, SELECT_BY_TICKET);
                                             OrderModify(OrderTicket(), OrderOpenPrice(), g_price_480, 0, 0, Green);
                                          } else Print("OrderSend Error ", GetLastError());
                                       } else {
                                          g_ticket_540 = OrderSend(Symbol(), OP_BUY, Lots, Ask, 0, 0, 0, EAName, magic1, 0, Green);
                                          Print("Ticket1= ", g_ticket_540);
                                          if (g_ticket_540 > 0) {
                                             OrderSelect(g_ticket_540, SELECT_BY_TICKET);
                                             OrderModify(OrderTicket(), OrderOpenPrice(), g_price_480, 0, 0, Green);
                                          } else Print("OrderSend Error ", GetLastError());
                                       }
                                    }
                                    gi_392 = FALSE;
                                    gi_396 = TRUE;
                                 }
                              }
                              if (l_irsi_0 > NN1 || l_irsi_8 > NN2 && ld_136 <= Bid - 20.0 * gd_332) {
                                 if (g_count_444 < 1 && gi_396) {
                                    gd_472 = 0;
                                    g_price_480 = 0;
                                    ld_188 = TradeFunction(AccountNumber(), VerificationCode, gd_364, gd_332);
                                    ld_196 = TradeFunction(AccountNumber(), VerificationCode, gd_372, gd_332);
                                    if (gi_356 == FALSE) gd_472 = Bid - ld_188;
                                    g_price_480 = Bid + ld_196;
                                    l_count_164 = 0;
                                    for (l_pos_168 = 0; l_pos_168 < OrdersTotal(); l_pos_168++) {
                                       OrderSelect(l_pos_168, SELECT_BY_POS);
                                       if (OrderMagicNumber() == magic1 || OrderMagicNumber() == magic2) {
                                          l_count_164++;
                                          if (l_count_164 >= MaximumTrades) {
                                             li_160 = FALSE;
                                             return (0);
                                          }
                                       }
                                    }
                                    if (li_160 == TRUE) {
                                       if (MoneyManagement == TRUE) {
                                          g_ticket_544 = OrderSend(Symbol(), OP_SELL, g_lots_320, Bid, 0, 0, 0, EAName, magic1, 0, Red);
                                          Print("Ticket2= ", g_ticket_544);
                                          if (g_ticket_544 > 0) {
                                             OrderSelect(g_ticket_544, SELECT_BY_TICKET);
                                             OrderModify(OrderTicket(), OrderOpenPrice(), g_price_480, 0, 0, Green);
                                          } else Print("OrderSend Error ", GetLastError());
                                       } else {
                                          g_ticket_548 = OrderSend(Symbol(), OP_SELL, Lots, Bid, 0, 0, 0, EAName, magic1, 0, Red);
                                          Print("Ticket3= ", g_ticket_548);
                                          if (g_ticket_548 > 0) {
                                             OrderSelect(g_ticket_548, SELECT_BY_TICKET);
                                             OrderModify(OrderTicket(), OrderOpenPrice(), g_price_480, 0, 0, Green);
                                          } else Print("OrderSend Error ", GetLastError());
                                       }
                                    }
                                    gi_396 = FALSE;
                                    gi_392 = TRUE;
                                 }
                              }
                              if (l_irsi_0 < 60.0 && l_irsi_0 > 40.0) {
                                 gi_396 = TRUE;
                                 gi_392 = TRUE;
                              }
                           }
                        }
                        if (TradeSession() == 1 && gi_488 < gi_384 && gi_504 < gi_388 && g_count_428 < gi_328 && li_48) {
                           if (ExistPosition2() == 0) {
                              if (DayOfWeek() == 0 || DayOfWeek() == 5 && Hour() >= 14) return (0);
                              if (l_icci_60 <= gd_232 && l_icci_68 <= gd_240 || l_icci_52 <= gd_248 && l_icci_68 <= gd_256 && Bid <= gd_496 - 3.0 * gd_332) {
                                 if (g_count_468 < gi_424 && gi_400) {
                                    gd_472 = 0;
                                    g_price_480 = 0;
                                    ld_204 = TradeFunction(AccountNumber(), VerificationCode, gd_372, gd_332);
                                    if (gi_356) gd_472 = g_ifractals_584;
                                    g_price_480 = Ask - ld_204;
                                    l_count_164 = 0;
                                    for (l_pos_168 = 0; l_pos_168 < OrdersTotal(); l_pos_168++) {
                                       OrderSelect(l_pos_168, SELECT_BY_POS);
                                       if (OrderMagicNumber() == magic1 || OrderMagicNumber() == magic2) {
                                          l_count_164++;
                                          if (l_count_164 >= MaximumTrades) {
                                             li_160 = FALSE;
                                             return (0);
                                          }
                                       }
                                    }
                                    if (li_160 == TRUE) {
                                       if (MoneyManagement == TRUE) {
                                          g_ticket_552 = OrderSend(Symbol(), OP_BUY, g_lots_320, Ask, 0, 0, 0, EAName, magic2, 0, Green);
                                          Print("Ticket4= ", g_ticket_552);
                                          if (g_ticket_552 > 0) {
                                             OrderSelect(g_ticket_552, SELECT_BY_TICKET);
                                             OrderModify(OrderTicket(), OrderOpenPrice(), g_price_480, 0, 0, Green);
                                          } else Print("OrderSend Error ", GetLastError());
                                       } else {
                                          g_ticket_556 = OrderSend(Symbol(), OP_BUY, Lots, Ask, 0, 0, 0, EAName, magic2, 0, Green);
                                          Print("Ticket5= ", g_ticket_556);
                                          if (g_ticket_556 > 0) {
                                             OrderSelect(g_ticket_556, SELECT_BY_TICKET);
                                             OrderModify(OrderTicket(), OrderOpenPrice(), g_price_480, 0, 0, Green);
                                          } else Print("OrderSend Error ", GetLastError());
                                       }
                                    }
                                    gi_400 = FALSE;
                                    gi_404 = TRUE;
                                 }
                              }
                              if (l_icci_60 >= gd_264 && l_icci_68 >= gd_272 || l_icci_52 >= gd_280 && l_icci_68 >= gd_288 && Ask >= gd_496 + 3.0 * gd_332) {
                                 if (g_count_448 < gi_424 && gi_404) {
                                    gd_472 = 0;
                                    g_price_480 = 0;
                                    ld_212 = TradeFunction(AccountNumber(), VerificationCode, gd_372, gd_332);
                                    if (gi_356) gd_472 = g_ifractals_592;
                                    g_price_480 = Bid + ld_212;
                                    l_count_164 = 0;
                                    for (l_pos_168 = 0; l_pos_168 < OrdersTotal(); l_pos_168++) {
                                       OrderSelect(l_pos_168, SELECT_BY_POS);
                                       if (OrderMagicNumber() == magic1 || OrderMagicNumber() == magic2) {
                                          l_count_164++;
                                          if (l_count_164 >= MaximumTrades) {
                                             li_160 = FALSE;
                                             return (0);
                                          }
                                       }
                                    }
                                    if (li_160 == TRUE) {
                                       if (MoneyManagement == TRUE) {
                                          g_ticket_560 = OrderSend(Symbol(), OP_SELL, g_lots_320, Bid, 0, 0, 0, EAName, magic2, 0, Red);
                                          Print("Ticket6= ", g_ticket_560);
                                          if (g_ticket_560 > 0) {
                                             OrderSelect(g_ticket_560, SELECT_BY_TICKET);
                                             OrderModify(OrderTicket(), OrderOpenPrice(), g_price_480, 0, 0, Green);
                                          } else Print("OrderSend Error ", GetLastError());
                                       } else {
                                          g_ticket_564 = OrderSend(Symbol(), OP_SELL, Lots, Bid, 0, 0, 0, EAName, magic2, 0, Red);
                                          Print("Ticket7= ", g_ticket_564);
                                          if (g_ticket_564 > 0) {
                                             OrderSelect(g_ticket_564, SELECT_BY_TICKET);
                                             OrderModify(OrderTicket(), OrderOpenPrice(), g_price_480, 0, 0, Green);
                                          } else Print("OrderSend Error ", GetLastError());
                                       }
                                    }
                                    gi_404 = FALSE;
                                    gi_400 = TRUE;
                                 }
                              }
                              if (l_icci_52 < 50.0 && l_icci_52 > -50.0) {
                                 gi_404 = TRUE;
                                 gi_400 = TRUE;
                              }
                           }
                           if (DayOfWeek() == 0 || DayOfWeek() == 5 && Hour() >= 14) return (0);
                           if (l_imomentum_88 <= NN5 && l_icci_76 >= 200.0 && Ask >= gd_496 + 3.0 * gd_332) {
                              if (gi_452 < gi_424 && gi_408) {
                                 gd_472 = 0;
                                 g_price_480 = 0;
                                 if (gi_356) gd_472 = g_ifractals_592;
                                 if (gi_360) g_price_480 = g_ifractals_584 + gd_372 * gd_332;
                                 else g_price_480 = Bid + gd_372 * gd_332;
                                 l_count_164 = 0;
                                 for (l_pos_168 = 0; l_pos_168 < OrdersTotal(); l_pos_168++) {
                                    OrderSelect(l_pos_168, SELECT_BY_POS);
                                    if (OrderMagicNumber() == magic1 || OrderMagicNumber() == magic2) {
                                       l_count_164++;
                                       if (l_count_164 >= MaximumTrades) {
                                          li_160 = FALSE;
                                          return (0);
                                       }
                                    }
                                 }
                                 if (li_160 == TRUE) {
                                    if (MoneyManagement == TRUE) {
                                       g_ticket_568 = OrderSend(Symbol(), OP_SELL, g_lots_320, Bid, 0, 0, 0, EAName, magic2, 0, Red);
                                       Print("Ticket8= ", g_ticket_568);
                                       if (g_ticket_568 > 0) {
                                          OrderSelect(g_ticket_568, SELECT_BY_TICKET);
                                          OrderModify(OrderTicket(), OrderOpenPrice(), g_price_480, 0, 0, Green);
                                       } else Print("OrderSend Error ", GetLastError());
                                    } else {
                                       g_ticket_572 = OrderSend(Symbol(), OP_SELL, Lots, Bid, 0, 0, 0, EAName, magic2, 0, Red);
                                       Print("Ticket9= ", g_ticket_572);
                                       if (g_ticket_572 > 0) {
                                          OrderSelect(g_ticket_572, SELECT_BY_TICKET);
                                          OrderModify(OrderTicket(), OrderOpenPrice(), g_price_480, 0, 0, Green);
                                       } else Print("OrderSend Error ", GetLastError());
                                    }
                                 }
                                 gi_408 = FALSE;
                              }
                           }
                           if (l_icci_76 >= -50.0 && l_icci_76 <= 50.0) gi_408 = TRUE;
                           if (DayOfWeek() == 0 || DayOfWeek() == 5 && Hour() >= 14) return (0);
                           if (l_iwpr_120 >= -10.0 && l_ima_100 > l_ibands_32 && Bid >= gd_496 + 3.0 * gd_332) {
                              if (gi_456 < gi_424 && gi_412) {
                                 gd_472 = 0;
                                 g_price_480 = 0;
                                 if (gi_356) gd_472 = g_ifractals_592;
                                 if (gi_360) g_price_480 = Bid + gi_384 * gd_332;
                                 else g_price_480 = Bid + gd_372 * gd_332;
                                 l_count_164 = 0;
                                 for (l_pos_168 = 0; l_pos_168 < OrdersTotal(); l_pos_168++) {
                                    OrderSelect(l_pos_168, SELECT_BY_POS);
                                    if (OrderMagicNumber() == magic1 || OrderMagicNumber() == magic2) {
                                       l_count_164++;
                                       if (l_count_164 >= MaximumTrades) {
                                          li_160 = FALSE;
                                          return (0);
                                       }
                                    }
                                 }
                                 if (li_160 == TRUE) {
                                    if (MoneyManagement == TRUE) {
                                       g_ticket_576 = OrderSend(Symbol(), OP_SELL, g_lots_320, Bid, 0, 0, 0, EAName, magic2, 0, Red);
                                       Print("Ticket10= ", g_ticket_576);
                                       if (g_ticket_576 > 0) {
                                          OrderSelect(g_ticket_576, SELECT_BY_TICKET);
                                          OrderModify(OrderTicket(), OrderOpenPrice(), g_price_480, 0, 0, Green);
                                       } else Print("OrderSend Error ", GetLastError());
                                    } else {
                                       g_ticket_580 = OrderSend(Symbol(), OP_SELL, Lots, Bid, 0, 0, 0, EAName, magic2, 0, Red);
                                       Print("Ticket11= ", g_ticket_580);
                                       if (g_ticket_580 > 0) {
                                          OrderSelect(g_ticket_580, SELECT_BY_TICKET);
                                          OrderModify(OrderTicket(), OrderOpenPrice(), g_price_480, 0, 0, Green);
                                       } else Print("OrderSend Error ", GetLastError());
                                    }
                                 }
                                 gi_412 = FALSE;
                              }
                           }
                           if (l_irsi_0 < 60.0 && l_irsi_0 > 40.0) gi_412 = TRUE;
                        }
                     }
                  }
               }
            }
         }
      }
   }
   return (0);
}

int TradeSession() {
   if (StartTime < EndTime && TimeHour(TimeCurrent()) < StartTime || TimeHour(TimeCurrent()) >= EndTime) return (0);
   if (StartTime > EndTime && (TimeHour(TimeCurrent()) < StartTime && TimeHour(TimeCurrent()) >= EndTime)) return (0);
   if (EndTime == 0) EndTime = 24;
   if (Hour() == EndTime - 1 && Minute() >= 55) return (0);
   return (1);
}

int ExistPosition1() {
   bool li_ret_0 = FALSE;
   for (int l_pos_4 = 0; l_pos_4 < OrdersTotal(); l_pos_4++) {
      if (OrderSelect(l_pos_4, SELECT_BY_POS, MODE_TRADES)) {
         if (OrderSymbol() == Symbol() && OrderMagicNumber() == magic1) {
            if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
               li_ret_0 = TRUE;
               break;
            }
         }
      }
   }
   return (li_ret_0);
}

int ExistPosition2() {
   bool li_ret_0 = FALSE;
   for (int l_pos_4 = 0; l_pos_4 < OrdersTotal(); l_pos_4++) {
      if (OrderSelect(l_pos_4, SELECT_BY_POS, MODE_TRADES)) {
         if (OrderSymbol() == Symbol() && OrderMagicNumber() == magic2) {
            if (OrderType() == OP_BUY || OrderType() == OP_SELL) {
               li_ret_0 = TRUE;
               break;
            }
         }
      }
   }
   return (li_ret_0);
}
