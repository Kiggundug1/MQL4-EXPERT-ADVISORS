/*
   Opened and nulled by Gayle Woot
   Why not support the developer once you make 1000$ with this EA.
*/

#property copyright "GT-Shadow"
#property link      "http://www.forex-goldmine.com"

string gs_76 = "GT-Shadow 3.09 - Fixed by Gayle Woot";
extern string tt0 = "-----------------------------------";
extern string Version = "GT-Shadow 3.09 - Fixed by Gayle Woot";
extern string tt1 = "Please support the developer once";
extern string tt2 = "you make 1000$ with this EA.";
extern string tt3 = "-----------------------------------";
extern string webpage = "http://www.forex-goldmine.com";
string gs_100 = "http://www.forex-goldmine.com";
extern int DisplayLevel = 0;
extern string UnlockCode = "1143420711";
extern bool DoTrades = TRUE;
extern bool BlockNegativeClose = TRUE;
extern bool AllowForSpread = TRUE;
extern bool CloseAllOpenOrders = FALSE;
extern int Instances = 39;
extern int FirstInstance = 1;
extern int TradeRange = 30;
extern int GapBetween = 0;
extern string tt4 = "RangeStart based on Dec 1 2008";
extern double RangeStart = 1.1911;
extern int ForwardEnd = 20;
extern int ReverseStart = 20;
extern int Shift = 0;
extern int TradeWindow = 5;
extern string g1 = "-----------------------------------";
extern string g2 = "The Following Settings Set a Dynamic Grid";
extern bool UseDynamicGrid = FALSE;
bool gi_196 = TRUE;
extern int LookBackDays = 2;
extern int CenterRevisitLevel = 101;
bool gi_208 = FALSE;
extern int AutoCalcOffset = 8;
extern int PowerLevel = 1;
extern double Level1 = 94.0;
extern double Level2 = 84.0;
extern double Level3 = 75.0;
extern int Range1 = 10;
extern int GapBetween1 = 0;
extern int Range2 = 25;
extern int GapBetween2 = 0;
extern int Range3 = 40;
extern int GapBetween3 = 0;
extern int Range4 = 55;
extern int GapBetween4 = 0;
extern int Range5 = 70;
extern int GapBetween5 = 0;
extern double CloseThreshold = 50.0;
extern double CloseUntil = 55.0;
extern bool CloseOldOpenOrders = TRUE;
extern double OldOrderOpenDays = 30.0;
extern int MA_Period = 0;
extern int BarToUse = 0;
extern string g3 = "--------------------";
extern string e = "Enter StopLoss as Number of Ranges or 0 for None";
extern int StopLoss = 0;
extern bool ShowTakeProfit = FALSE;
extern string f01 = "-----------------------------------------------";
extern bool UseEquity = FALSE;
extern string _acb = "Leave as 0 to use actual account balance.";
extern double accountbalance = 0.0;
extern double margin = 0.25;
extern bool UseMarginPercent = TRUE;
extern double BalanceFactor = 3500.0;
extern int decimals = 2;
extern int Slippage = 16;
extern bool EnableErrorMessages = FALSE;
extern bool EnableFastBackTests = FALSE;
double g_price_408 = 0.0;
bool gi_416 = FALSE;
bool gi_420 = FALSE;
bool gi_424 = TRUE;
string gs_428 = "-----------------------------------------------";
double gd_436 = 0.0;
double gd_444 = 0.0;
bool gi_452 = FALSE;
bool gi_456 = FALSE;
bool gi_460 = FALSE;
bool gi_464 = FALSE;
bool gi_468 = FALSE;
bool gi_472 = FALSE;
int gi_476 = 1;
string gs_480 = "-----------------------------------------------";
bool gi_488 = FALSE;
bool gi_492 = FALSE;
extern string f02 = "-----------------------------------------------";
extern string Following = "Settings Apply to Shadow Profit";
bool gi_512 = TRUE;
extern double StandardBalance = 1000.0;
extern double StandardMargin = 5.0;
extern string ShadowCurrency1 = "AUDNZD";
extern bool ShadowCurrency1Buy = TRUE;
extern bool ShadowCurrency1Sell = FALSE;
extern string tt5 = "shadowopen based on Dec 1 2008, same as rangestart";
extern double shadowopen1 = 1.1911;
extern string ShadowCurrency2 = "";
extern bool ShadowCurrency2Buy = FALSE;
extern bool ShadowCurrency2Sell = FALSE;
extern double shadowopen2 = 0.0;
string gs_580 = "       ";
bool gi_588 = FALSE;
bool gi_592 = FALSE;
double gd_596 = 0.0;
string gs_604 = "      ";
bool gi_612 = FALSE;
bool gi_616 = FALSE;
double gd_620 = 0.0;
extern string f03 = "-----------------------------------------------";
double gd_636 = 0.0;
double gd_644 = 0.0;
double gd_652 = 0.0;
double gd_660 = 0.0;
double gd_668 = 0.0;
double gd_676 = 0.0;
string gs_684 = "-----------------------------------------------";
double gd_692 = 0.0;
bool gi_700 = FALSE;
string gs_704 = "-----------------------------------------------";
extern string Currency1 = "AUDNZD";
extern bool Currency1Buy = TRUE;
extern bool Currency1Sell = FALSE;
extern string Currency2 = "";
extern bool Currency2Buy = FALSE;
extern bool Currency2Sell = FALSE;
string gs_744 = "       ";
bool gi_752 = FALSE;
bool gi_756 = FALSE;
string gs_760 = "      ";
bool gi_768 = FALSE;
bool gi_772 = FALSE;
extern string f04 = "------------------------------------------------";
extern string instr = "Leave Lots 0.00 for Auto-Calculation";
extern double lots1 = 0.0;
extern double lots2 = 0.0;
double gd_808 = 0.0;
double gd_816 = 0.0;
extern string f05 = "------------------------------------------------";
extern int MagicNumber1 = 130001;
extern int MagicNumber2 = 230001;
int gi_840 = 300001;
int gi_844 = 400001;
double gd_848 = 15.0;
extern bool CheckForHalfHedge = FALSE;
bool gi_860 = FALSE;
double gda_864[1001];
double gda_868[1001];
double gda_872[1001];
double gda_876[1001];
int gia_880[1001];
int gia_884[1001];
int gia_888[1001];
int gia_892[1001];
double gd_896 = 0.0;
int gi_904 = 1440;
int g_timeframe_908 = PERIOD_H1;
string g_symbol_912 = "  ";
string g_symbol_920 = "  ";
string g_symbol_928 = "  ";
string g_symbol_936 = "  ";
double gd_944 = -1000000.0;
double gd_952 = 1000000.0;
double gd_960 = -1000000.0;
double gd_968 = 1000000.0;
double gd_976 = 0.0;
double gd_984 = 0.0;
double g_free_magrin_992 = 0.0;
double g_free_magrin_1000 = 0.0;
double gd_1008 = 0.0;
double gd_1016 = 0.0;
double gd_1024 = 0.0;
double gd_1032 = 0.0;
double gd_1040 = 0.0;
double gd_1048 = 0.0;
double gd_1056 = 0.0;
double gd_1064 = 0.0;
double gd_1072 = 0.0;
double gd_1080 = 0.0;
double g_ilow_1088 = 0.0;
double g_ilow_1096 = 0.0;
double g_ilow_1104 = 0.0;
double g_ilow_1112 = 0.0;
double gd_1120 = 0.0;
double gd_1128 = 0.0;
double gd_1136 = 0.0;
double gd_1144 = 0.0;
double g_price_1152 = 0.0;
double g_price_1160 = 0.0;
double g_price_1168 = 0.0;
double g_price_1176 = 0.0;
double gd_1184 = 0.0;
double gd_1192 = 0.0;
double gd_1200 = 0.0;
double gd_1208 = 0.0;
double gd_1216 = 0.0;
double gd_1224 = 0.0;
double gd_1232 = 0.0;
double gd_1240 = 0.0;
double gd_1248 = 0.0;
double gd_1256 = 0.0;
double gd_1264 = 0.0;
double gd_1272 = 0.0;
double gd_1280 = 0.0;
double gd_1288 = 0.0;
double gd_1296 = 0.0;
double gd_1304 = 0.0;
double gd_1312 = 0.0;
double gd_1320 = 0.0;
double gd_1328 = 0.0;
double gd_1336 = 0.0;
int g_ord_total_1344 = 0;
int g_error_1348 = 0/* NO_ERROR */;
int gi_1352 = 10;
int g_count_1356 = 4;
int gi_1360 = 0;
double gd_1364 = 0.0;
double gd_1372 = 0.0;
double g_lotsize_1380 = 0.0;
double gd_1388 = 0.0;
double gd_1396 = 0.0;
double gd_1404 = 0.0;
double gd_1412 = 0.0;
double gd_1420 = 0.0;
double gd_1428 = 0.0;
double gd_1436 = 0.0;
double gd_1444 = 0.0;
double gd_1452 = 0.0;
double gd_1460 = 0.0;
string gs_1468 = "   ";
string gs_1476 = "   ";
string gs_1484 = "   ";
string gs_1492 = "   ";
int gi_1500 = 0;
int gi_1504 = TRUE;
bool gi_1508 = FALSE;
int gi_1512 = 0;
int gi_1516 = 0;
double gd_1520 = 0.0;
double gd_1528 = 0.0;
double gd_1536 = 0.0;
int gi_1544 = 0;
int gi_1548 = 0;
bool gi_1552 = FALSE;
int g_index_1556 = 0;
int gi_1560 = 0;
bool gi_1564 = FALSE;
bool gi_1568 = FALSE;
double gda_1572[1001];
double gd_1576 = 0.0;
string gs_1584 = " ";
string g_comment_1592 = " ";
string gs_1600 = " ";
string gs_1608 = " ";
string gs_1616 = " ";
string gs_1624 = " ";
int g_digits_1632 = 4;
bool gi_1636 = TRUE;
double g_ilow_1640 = 0.0;
double g_ihigh_1648 = 0.0;
double gd_1656 = 0.0;
int gi_1664 = 0;
int gi_1668 = 0;
int gi_1672 = 0;
int gi_1676 = 0;
int gi_1680 = 0;
int gi_1684 = 0;
int g_count_1688 = 0;
int gi_1692 = 0;
int gi_1696 = 0;
double gd_1700 = 0.0;
int gi_1708 = 0;
int gi_1712 = 0;
int gi_1716 = 0;
int gi_1720 = 0;
int gi_1724 = 0;
int gi_1728 = 0;
int gi_1732 = 0;
int gi_1736 = 0;
int gi_1740 = 0;
int gi_1744 = 0;
int gi_1748 = 0;
int gi_1752 = 0;
int gi_1756 = 0;
int gi_1760 = 0;
int gi_1764 = 0;
int g_datetime_1768;
int gi_1772 = 0;

int init() {
   int li_0;
   ///if (Decoder() == 0) {
   ///   Comment("Please Enter a Valid Unlock Code");
   ///   return (0);
   ///}
   if (UseDynamicGrid == TRUE && CloseThreshold > 89.0) {
      Comment("CloseThreshold must be less than 90.");
      return (0);
   }
   if (PowerLevel > 3) PowerLevel = 1;
   if (UseDynamicGrid == TRUE) ShowTakeProfit = TRUE;
   gi_1716 = ForwardEnd;
   gi_1720 = ReverseStart;
   if (gi_1724 == 0) gi_1724 = Instances;
   if (gi_1728 == 0) gi_1728 = TradeRange;
   if (gi_1732 == 0) gi_1732 = GapBetween;
   if (gi_1736 == 0) gi_1736 = GapBetween1;
   if (gi_1740 == 0) gi_1740 = GapBetween2;
   if (gi_1744 == 0) gi_1744 = GapBetween3;
   if (gi_1748 == 0) gi_1748 = GapBetween4;
   if (gi_1752 == 0) gi_1752 = GapBetween5;
   gi_1724 = Instances;
   gi_1728 = TradeRange;
   gi_1732 = GapBetween;
   gi_1736 = GapBetween1;
   gi_1740 = GapBetween2;
   gi_1744 = GapBetween3;
   gi_1748 = GapBetween4;
   gi_1752 = GapBetween5;
   Level1 /= 100.0;
   Level2 /= 100.0;
   Level3 /= 100.0;
   gi_1756 = 0;
   if (StopLoss != 0) BlockNegativeClose = FALSE;
   g_datetime_1768 = TimeCurrent();
   Instances--;
   if (CloseAllOpenOrders == TRUE) gi_1636 = FALSE;
   if (CloseAllOpenOrders == FALSE) gi_1636 = TRUE;
   gd_1024 = shadowopen1;
   gd_1032 = shadowopen2;
   gd_1040 = gd_596;
   gd_1048 = gd_620;
   gi_1552 = FALSE;
   if (StringLen(StringTrimLeft(Currency2)) < 2 && StringLen(StringTrimLeft(Currency1)) > 2) {
      if (StringLen(StringTrimLeft(gs_744)) < 2)
         if (StringLen(StringTrimLeft(gs_760)) < 2) gi_1552 = TRUE;
   }
   if (gi_1552 == TRUE) gs_1584 = "GT-Shadow ";
   if (gi_1552 == FALSE) gs_1584 = "GT-Shadow ";
   if (gi_1552 == TRUE) g_digits_1632 = MarketInfo(Currency1, MODE_DIGITS);
   if (gi_1552 == FALSE) g_digits_1632 = 2;
   gi_1692 = FirstInstance + Instances;
   SetCurrenciesAndLotSize();
   gi_1548 = FALSE;
   if (UseDynamicGrid == TRUE) LevelSetup();
   ArraySetUp();
   if (gi_512 == TRUE && gi_1552 == FALSE) {
      SetCurrenciesAndLotSize2();
      SetForwardActions2();
      gd_1312 = lots1;
      gd_1320 = lots2;
      gd_1328 = gd_808;
      gd_1336 = gd_816;
      gd_1536 = margin;
      gd_1700 = accountbalance;
      accountbalance = StandardBalance;
      margin = StandardMargin;
      margin *= 400 / AccountLeverage();
      CalculateLots();
      gd_1280 = gd_1248;
      gd_1288 = gd_1256;
      gd_1296 = gd_1264;
      gd_1304 = gd_1272;
      accountbalance = gd_1700;
      margin = gd_1536;
      lots1 = gd_1312;
      lots2 = gd_1320;
      gd_808 = gd_1328;
      gd_816 = gd_1336;
   }
   if (gi_512 == TRUE && gi_1552 == TRUE) {
      Currency2 = Currency1;
      g_symbol_920 = Currency2;
      Currency2Buy = Currency1Buy;
      Currency2Sell = Currency1Sell;
      ShadowCurrency2 = ShadowCurrency1;
      ShadowCurrency2Buy = ShadowCurrency1Buy;
      ShadowCurrency2Sell = ShadowCurrency1Sell;
      shadowopen2 = shadowopen1;
      SetCurrenciesAndLotSize2();
      SetForwardActions2();
      gd_1312 = lots1;
      gd_1320 = lots2;
      gd_1328 = gd_808;
      gd_1336 = gd_816;
      gd_1536 = margin;
      gd_1700 = accountbalance;
      accountbalance = StandardBalance;
      margin = StandardMargin;
      margin *= 400 / AccountLeverage();
      CalculateLots();
      gd_1280 = gd_1248;
      gd_1288 = gd_1256;
      gd_1296 = gd_1264;
      gd_1304 = gd_1272;
      accountbalance = gd_1700;
      margin = gd_1536;
      lots1 = gd_1312;
      lots2 = gd_1320;
      gd_808 = gd_1328;
      gd_816 = gd_1336;
      Currency2 = " ";
      g_symbol_920 = " ";
      Currency2Buy = FALSE;
      Currency2Sell = FALSE;
      ShadowCurrency2 = "  ";
      ShadowCurrency2Buy = FALSE;
      ShadowCurrency2Sell = FALSE;
      shadowopen2 = 0.0;
   }
   SetCurrenciesAndLotSize();
   SetForwardActions();
   g_index_1556 = 1;
   GetOrderOpenPrices();
   if (lots1 == 0.0 && lots2 == 0.0 && gd_808 == 0.0 && gd_816 == 0.0) {
      gd_1312 = lots1;
      gd_1320 = lots2;
      gd_1328 = gd_808;
      gd_1336 = gd_816;
      CalculateLots();
      lots1 = gd_1312;
      lots2 = gd_1320;
      gd_808 = gd_1328;
      gd_816 = gd_1336;
   }
   if (lots1 != 0.0 || lots2 != 0.0 || gd_808 != 0.0 || gd_816 != 0.0) {
      gd_1248 = lots1;
      gd_1256 = lots2;
      gd_1264 = gd_808;
      gd_1272 = gd_816;
   }
   gd_1200 = CalculateShadowProfit("current");
   g_count_1688 = 0;
   g_index_1556 = FirstInstance - 1;
   while (g_index_1556 < gi_1692) {
      g_index_1556++;
      if (gd_1200 >= gda_864[g_index_1556] && gd_1200 <= gda_868[g_index_1556]) {
         gi_1560 = g_index_1556;
         gi_1564 = gi_488;
         gi_1568 = gi_492;
      }
   }
   g_index_1556 = FirstInstance - 1;
   while (g_index_1556 < gi_1692) {
      g_index_1556++;
      li_0 = search_for_conflict(gia_880[g_index_1556]);
      if (li_0 == 1) break;
   }
   if (li_0 == 1) {
      Comment("\nMagic Number Conflict With Another Pair...");
      return (-1);
   }
   ShowComments();
   return (0);
}

int deinit() {
   return (0);
}

int start() {
   int li_0;
   int li_8;
   ///if (Decoder() == 0) {
   ///   Comment("Please Enter a Valid Unlock Code");
   ///   return (0);
   /// }
   g_index_1556 = FirstInstance - 1;
   while (g_index_1556 < gi_1692) {
      g_index_1556++;
      li_0 = search_for_conflict(gia_880[g_index_1556]);
      if (li_0 == 1) break;
   }
   if (li_0 == 1) {
      Comment("\nMagic Number Conflict With Another Pair...");
      return (-1);
   }
   if (UseDynamicGrid == TRUE && gi_1760 == TRUE && AccountEquity() / AccountBalance() > (CloseThreshold + 10.0) / 100.0) gi_1760 = FALSE;
   if (UseDynamicGrid == TRUE && AccountEquity() / AccountBalance() < CloseThreshold / 100.0) gi_1760 = TRUE;
   if (UseDynamicGrid == TRUE && gi_1760 == TRUE) {
      FindAndCloseAll();
      gi_1756 = 0;
   }
   if (UseDynamicGrid == TRUE) {
      LevelSetup();
      if (gi_1552 == TRUE && g_symbol_912 == Symbol() && MathAbs(Bid - gda_864[gi_1560]) / Point > TradeRange + 2) ArraySetUp();
      if (gi_196 == TRUE && AccountEquity() / AccountBalance() < CenterRevisitLevel / 100 && ForwardEnd != gi_1672 + AutoCalcOffset) {
         ForwardEnd = gi_1716;
         ReverseStart = gi_1720;
         TradeRange = gi_1728;
         GapBetween = gi_1732;
         Instances = gi_1724;
         ForwardEnd = gi_1716;
         ReverseStart = gi_1720;
         ArraySetUp();
         gi_1756 = 0;
         LevelSetup();
         ForwardEnd = gi_1672 + AutoCalcOffset;
         ReverseStart = gi_1672 - AutoCalcOffset;
         gi_1676 = ForwardEnd;
         gi_1680 = ReverseStart;
      }
      if (CloseOldOpenOrders == TRUE && Minute() > 30 && gi_1764 == TRUE) gi_1764 = FALSE;
      if (CloseOldOpenOrders == TRUE && Minute() < 10 && gi_1764 == FALSE) {
         CloseOldOrders();
         gi_1764 = TRUE;
      }
      if (TimeCurrent() - g_datetime_1768 > 432000) gi_1772 = TRUE;
   }
   if (StringLen(StringTrimLeft(Currency2)) < 2 && StringLen(StringTrimLeft(Currency1)) > 2) {
      if (StringLen(StringTrimLeft(gs_744)) < 2)
         if (StringLen(StringTrimLeft(gs_760)) < 2) gi_1552 = TRUE;
   }
   if (CloseAllOpenOrders == TRUE) gi_1636 = FALSE;
   if (CloseAllOpenOrders == FALSE) gi_1636 = TRUE;
   if (gi_1552 == TRUE) {
      g_ilow_1640 = iLow(g_symbol_912, PERIOD_D1, 0);
      for (int li_4 = 0; li_4 <= LookBackDays; li_4++)
         if (iLow(g_symbol_912, PERIOD_D1, li_4) < g_ilow_1640) g_ilow_1640 = iLow(g_symbol_912, PERIOD_D1, li_4);
      g_ihigh_1648 = iHigh(g_symbol_912, PERIOD_D1, 0);
      for (li_4 = 0; li_4 <= LookBackDays; li_4++)
         if (iHigh(g_symbol_912, PERIOD_D1, li_4) > g_ihigh_1648) g_ihigh_1648 = iHigh(g_symbol_912, PERIOD_D1, li_4);
      g_ihigh_1648 = NormalizeDouble(g_ihigh_1648, MarketInfo(g_symbol_912, MODE_DIGITS));
      g_ilow_1640 = NormalizeDouble(g_ilow_1640, MarketInfo(g_symbol_912, MODE_DIGITS));
      gd_1656 = (g_ihigh_1648 + g_ilow_1640) / 2.0;
      gd_1656 = NormalizeDouble(gd_1656, MarketInfo(g_symbol_912, MODE_DIGITS));
      gi_1676 = ForwardEnd;
      gi_1680 = ReverseStart;
      if (gi_1684 == 1 && gd_1200 > gd_1656 && UseDynamicGrid == FALSE) {
         if (ForwardEnd == 0 && gi_1664 != 0) gi_1676 = gi_1664 - 1;
         if (ReverseStart == 0 && gi_1672 != 0) gi_1680 = gi_1672;
      }
      if (gi_1684 == 1 && gd_1200 < gd_1656 && UseDynamicGrid == FALSE) {
         if (ReverseStart == 0 && gi_1668 != 0) gi_1680 = gi_1668 + 1;
         if (ForwardEnd == 0 && gi_1672 != 0) gi_1676 = gi_1672;
      }
      if (gi_1684 == 0 && UseDynamicGrid == FALSE) {
         if (gi_1676 == 0) gi_1676 = gi_1672;
         if (gi_1680 == 0) gi_1680 = gi_1672;
      }
      if (gi_1676 == 0 && UseDynamicGrid == FALSE) gi_1676 = Instances;
      if (gi_1680 == 0 && UseDynamicGrid == FALSE) gi_1680 = 1;
   }
   SetCurrenciesAndLotSize();
   SetForwardActions();
   g_index_1556 = 1;
   GetOrderOpenPrices();
   if (lots1 == 0.0 && lots2 == 0.0 && gd_808 == 0.0 && gd_816 == 0.0) {
      gd_1312 = lots1;
      gd_1320 = lots2;
      gd_1328 = gd_808;
      gd_1336 = gd_816;
      CalculateLots();
      lots1 = gd_1312;
      lots2 = gd_1320;
      gd_808 = gd_1328;
      gd_816 = gd_1336;
   }
   if (lots1 != 0.0 || lots2 != 0.0 || gd_808 != 0.0 || gd_816 != 0.0) {
      gd_1248 = lots1;
      gd_1256 = lots2;
      gd_1264 = gd_808;
      gd_1272 = gd_816;
   }
   SetForwardActions();
   gd_1428 = CalculateSwap();
   gd_1200 = CalculateShadowProfit("current");
   gd_1208 = CalculateShadowProfit("average");
   if (gd_1200 != 0.0) {
      if (gi_1552 == TRUE && EnableFastBackTests == TRUE) {
         li_8 = TradeRange + GapBetween;
         if (li_8 == 0) li_8 = 1;
         g_count_1688 = 0;
         gi_1708 = (Bid - RangeStart - TradeRange * Point) / Point / li_8 - 5.0;
         gi_1712 = (Bid - RangeStart) / Point / li_8 + 5.0;
      }
      if (gi_1552 == FALSE || EnableFastBackTests == FALSE) {
         gi_1708 = 1;
         gi_1712 = 1000;
      }
      if (gi_1708 < 0) gi_1708 = 0;
      if (gi_1712 > gi_1692 - 1) gi_1712 = gi_1692 - 1;
      g_index_1556 = gi_1708;
      while (g_index_1556 <= gi_1712) {
         g_index_1556++;
         if (gi_1676 >= g_index_1556) gi_488 = TRUE;
         if (gi_1676 < g_index_1556) gi_488 = FALSE;
         if (gi_1680 > g_index_1556) gi_492 = FALSE;
         if (gi_1680 <= g_index_1556) gi_492 = TRUE;
         if (gd_1200 >= gda_864[g_index_1556] && gd_1200 <= gda_868[g_index_1556]) {
            gi_1560 = g_index_1556;
            gi_1564 = gi_488;
            gi_1568 = gi_492;
         }
         gda_1572[g_index_1556] = EAProfit();
         if (DoTrades == TRUE) {
            scanfororders2();
            if (gi_1636 == FALSE) CloseAll();
            gd_1200 = CalculateShadowProfit("ask");
            if (gi_1772 == TRUE || (gi_1760 == FALSE && scanfororders() == 0 && (gi_424 == FALSE && gd_1200 <= gda_864[g_index_1556]) || (gi_424 == TRUE && (MA_Period != 0 && gd_1200 > gd_1208) ||
               MA_Period == 0 && gd_1200 <= gda_864[g_index_1556] && gd_1200 >= gda_864[g_index_1556] - gd_1576) && gi_1636 == TRUE && gi_488 == TRUE && gi_1548 == FALSE)) {
               if (gi_1772 == TRUE) gd_1248 = 0.01;
               if (gi_1772 == TRUE) gd_1248 = NormalizeDouble(gd_1248, decimals);
               g_price_408 = gd_1200;
               SetForwardActions();
               OpenAll();
               g_datetime_1768 = TimeCurrent();
               gi_1772 = FALSE;
               gi_1360 = 1;
               GetOrderOpenPrices();
               if (gi_468 == TRUE && shadowopen1 != 0.0 || shadowopen2 != 0.0 || gd_596 != 0.0 || gd_620 != 0.0) ReadOrderOpenPrices();
               if (gi_468 == FALSE) ReadOrderOpenPrices();
               if (gi_468 == TRUE) WriteOrderOpenPrices();
               gd_1200 = CalculateShadowProfit("current");
               gi_1508 = FALSE;
            }
            gd_1200 = CalculateShadowProfit("current");
            if (UseDynamicGrid == FALSE && gi_1508 == FALSE && gd_1200 >= gda_868[g_index_1556] && scanfororders() > 0) {
               g_price_408 = gd_1200;
               CloseAll();
            }
            gd_1200 = CalculateShadowProfit("current");
            if (gi_1772 == TRUE || (gi_1760 == FALSE && gi_492 == TRUE && scanfororders() == 0 && (gi_424 == FALSE && gd_1200 >= gda_872[g_index_1556]) || (gi_424 == TRUE && (MA_Period != 0 &&
               gd_1200 < gd_1208) || MA_Period == 0 && gd_1200 <= gda_872[g_index_1556] + gd_1576 && gd_1200 >= gda_872[g_index_1556]) && gi_1636 == TRUE && gi_1548 == FALSE)) {
               if (gi_1772 == TRUE) gd_1248 = 0.01;
               if (gi_1772 == TRUE) gd_1248 = NormalizeDouble(gd_1248, decimals);
               g_price_408 = gd_1200;
               SetReverseActions();
               gi_1508 = TRUE;
               OpenAll();
               g_datetime_1768 = TimeCurrent();
               gi_1772 = FALSE;
               gi_1360 = 1;
               GetOrderOpenPrices();
               if (gi_468 == TRUE && shadowopen1 != 0.0 || shadowopen2 != 0.0 || gd_596 != 0.0 || gd_620 != 0.0) ReadOrderOpenPrices();
               if (gi_468 == FALSE) ReadOrderOpenPrices();
               if (gi_468 == TRUE) WriteOrderOpenPrices();
               SetForwardActions();
               gd_1200 = CalculateShadowProfit("current");
            }
            gd_1200 = CalculateShadowProfit("ask");
            if (UseDynamicGrid == FALSE && gi_1508 == TRUE && gd_1200 <= gda_876[g_index_1556] && scanfororders() > 0) {
               g_price_408 = gd_1200;
               CloseAll();
            }
            gd_1200 = CalculateShadowProfit("current");
            if (CheckForHalfHedge == TRUE) {
               SetForwardActions();
               scanfororders2();
               if (gi_1508 == TRUE) SetReverseActions();
               checkhalfhedge();
               SetForwardActions();
            }
         }
      }
   }
   scanfororders2();
   ShowComments();
   return (0);
}

int ShowComments() {
   SetCurrenciesAndLotSize();
   SetForwardActions();
   if (lots1 == 0.0 && lots2 == 0.0 && gd_808 == 0.0 && gd_816 == 0.0) {
      gd_1312 = lots1;
      gd_1320 = lots2;
      gd_1328 = gd_808;
      gd_1336 = gd_816;
      CalculateLots();
      lots1 = gd_1312;
      lots2 = gd_1320;
      gd_808 = gd_1328;
      gd_816 = gd_1336;
   }
   if (lots1 != 0.0 || lots2 != 0.0 || gd_808 != 0.0 || gd_816 != 0.0) {
      gd_1248 = lots1;
      gd_1256 = lots2;
      gd_1264 = gd_808;
      gd_1272 = gd_816;
   }
   string ls_0 = "";
   if (g_timeframe_908 == PERIOD_H1) ls_0 = "Hourly";
   if (g_timeframe_908 == PERIOD_H4) ls_0 = "4 Hour";
   if (g_timeframe_908 == PERIOD_D1) ls_0 = "Daily";
   if (g_timeframe_908 == PERIOD_M30) ls_0 = "30 Minute";
   if (g_timeframe_908 == PERIOD_M15) ls_0 = "15 Minute";
   if (g_timeframe_908 == PERIOD_M1) ls_0 = "1 Minute";
   if (g_timeframe_908 == PERIOD_M5) ls_0 = "5 Minute";
   double ld_8 = gd_848 / 100.0;
   double ld_16 = gd_944 - gd_952;
   double ld_24 = ld_16 * ld_8;
   double ld_32 = gd_960 - gd_968;
   double ld_40 = ld_32 * ld_8;
   int li_48 = gi_1560;
   if (DisplayLevel != 0) gi_1560 = DisplayLevel;
   if (gi_1676 >= gi_1560) gi_488 = TRUE;
   if (gi_1676 < gi_1560) gi_488 = FALSE;
   if (gi_1680 > gi_1560) gi_492 = FALSE;
   if (gi_1680 <= gi_1560) gi_492 = TRUE;
   gi_1564 = gi_488;
   gi_1568 = gi_492;
   string ls_52 = "True";
   if (DoTrades == FALSE) ls_52 = "False";
   string ls_60 = "True";
   if (gi_1564 == FALSE) ls_60 = "False";
   string ls_68 = "True";
   if (gi_1568 == FALSE) ls_68 = "False";
   string ls_76 = "False";
   if (CloseAllOpenOrders == TRUE) ls_76 = "True";
   string ls_84 = "False";
   if (CheckForHalfHedge == TRUE) ls_84 = "True";
   if (gi_1552 == FALSE) {
      Comment("\n" 
         + gs_76 
         + "\n" 
         + gs_100 
         + "\n\nShadow Profit = " + DoubleToStr(gd_1200, 2) 
         + "\nAverage Shadow Profit = " + DoubleToStr(CalculateShadowProfit("average"), 2) 
         + "\n\nComment  = " + gs_1584 + DoubleToStr(MagicNumber1, 0) + " " + DoubleToStr(gd_1200, g_digits_1632) 
         + "\n\nForward Open " + gi_1560 + " = " + DoubleToStr(gda_864[gi_1560], 2) 
         + "\nForward Close " + gi_1560 + " = " + DoubleToStr(gda_868[gi_1560], 2) 
         + "\nReverse Open " + gi_1560 + " = " + DoubleToStr(gda_872[gi_1560], 2) 
         + "\nReverse Close " + gi_1560 + " = " + DoubleToStr(gda_876[gi_1560], 2) 
         + "\n\nShift = " + DoubleToStr(Shift, 2) 
         + "\nMargin = " + DoubleToStr(margin, 2) 
         + "\nMA_Period = " + MA_Period 
         + "\nTradeWindow = " + DoubleToStr(gd_1576, 2) 
         + "\n\nTradeRange = " + TradeRange 
         + "\nRangeStart = " + DoubleToStr(RangeStart, 2) 
         + "\nTotal Ranges = " + ((Instances + 1)) 
         + "\nFirst Range = " + FirstInstance 
         + "\nLast Range = " + gi_1692 
         + "\n\nEquity Percent = " + DoubleToStr(100.0 * (AccountEquity() / AccountBalance()), 2) 
         + "\nProfit for this Instance of EA = " + DoubleToStr(gda_1572[gi_1560], 2) 
         + "\n\nLots1 = " + gs_1468 + "  " + DoubleToStr(gd_1248, 2) + " " + g_symbol_912 + " " + gia_880[gi_1560] + "  Net Total Lots = " + DoubleToStr(AddLots(g_symbol_912), 2) 
         + "\nLots2 = " + gs_1476 + "  " + DoubleToStr(gd_1256, 2) + " " + g_symbol_920 + " " + gia_884[gi_1560] + "  Net Total Lots = " + DoubleToStr(AddLots(g_symbol_920), 2) 
         + "\nLotSize = " + DoubleToStr(g_lotsize_1380, 0) 
         + "\nAccount Leverage = " + AccountLeverage() + " : 1" 
         + "\n\nDoTrades = " + ls_52 
         + "\nClose All Open Orders = " + ls_76 
         + "\nOpen Forward Orders = " + ls_60 + "  (" + gi_1676 + ") " 
         + "\nOpen Reverse Orders = " + ls_68 + "  (" + gi_1680 + ") " 
      + "\nCheck and Correct For Half Hedge = " + ls_84);
   }
   if (gi_1552 == TRUE && gi_1560 > gi_1676 && gi_1560 >= gi_1680) {
      Comment("\n" 
         + gs_76 
         + "\n" 
         + gs_100 
         + "\n\nCurrent Bid Price= " + DoubleToStr(gd_1200, MarketInfo(g_symbol_912, MODE_DIGITS)) 
         + "\n\nReverse Open " + gi_1560 + " = " + DoubleToStr(gda_872[gi_1560], MarketInfo(g_symbol_912, MODE_DIGITS)) 
         + "\nReverse Close " + gi_1560 + " = " + DoubleToStr(gda_876[gi_1560], MarketInfo(g_symbol_912, MODE_DIGITS)) 
         + "\n\nShift = " + DoubleToStr(Shift, 2) 
         + "\nMargin = " + DoubleToStr(margin, 2) 
         + "\nMA_Period = " + MA_Period 
         + "\nTradeWindow = " + DoubleToStr(gd_1576, MarketInfo(g_symbol_912, MODE_DIGITS)) 
         + "\n\nTradeRange = " + TradeRange 
         + "\nRangeStart = " + DoubleToStr(RangeStart, Digits) 
         + "\nTotal Ranges = " + ((Instances + 1)) 
         + "\nFirst Range = " + FirstInstance 
         + "\nLast Range = " + gi_1692 
         + "\nBalanceFactor = " + DoubleToStr(BalanceFactor, 2) 
         + "\nEquity Percent = " + DoubleToStr(100.0 * (AccountEquity() / AccountBalance()), 2) 
         + "\n\nPrice " + LookBackDays + " Day High = " + DoubleToStr(g_ihigh_1648, MarketInfo(g_symbol_912, MODE_DIGITS)) + " (" + gi_1664 + ") " 
         + "\nPrice " + LookBackDays + " Day Low = " + DoubleToStr(g_ilow_1640, MarketInfo(g_symbol_912, MODE_DIGITS)) + " (" + gi_1668 + ") " 
         + "\nPrice " + LookBackDays + " Mid-Range = " + DoubleToStr(gd_1656, MarketInfo(g_symbol_912, MODE_DIGITS)) + " (" + gi_1672 + ") " 
         + "\n\nProfit for this Instance of EA = " + DoubleToStr(gda_1572[gi_1560], 2) 
         + "\n\nLots1 = " + gs_1468 + "  " + DoubleToStr(gd_1248, 2) + " " + g_symbol_912 + " " + gia_880[gi_1560] + "  Net Total Lots = " + DoubleToStr(AddLots(g_symbol_912), 2) 
         + "\nLots2 = " + gs_1476 + "  " + DoubleToStr(gd_1256, 2) + " " + g_symbol_920 + " " + gia_884[gi_1560] + "  Net Total Lots = " + DoubleToStr(AddLots(g_symbol_920), 2) 
         + "\nLotSize = " + DoubleToStr(g_lotsize_1380, 0) 
         + "\nAccount Leverage = " + AccountLeverage() + " : 1" 
         + "\nMax Slippage = " + DoubleToStr(Slippage * MarketInfo(g_symbol_912, MODE_POINT), MarketInfo(g_symbol_912, MODE_DIGITS)) 
         + "\n\nDoTrades = " + ls_52 
         + "\nClose All Open Orders = " + ls_76 
         + "\nOpen Forward Orders = " + ls_60 + "  (" + gi_1676 + ") " 
      + "\nOpen Reverse Orders = " + ls_68 + "  (" + gi_1680 + ") ");
   }
   if (gi_1552 == TRUE && gi_1560 <= gi_1676 && gi_1560 < gi_1680) {
      Comment("\n" 
         + gs_76 
         + "\n" 
         + gs_100 
         + "\n\nCurrent Bid Price= " + DoubleToStr(gd_1200, MarketInfo(g_symbol_912, MODE_DIGITS)) 
         + "\n\nForward Open " + gi_1560 + " = " + DoubleToStr(gda_864[gi_1560], MarketInfo(g_symbol_912, MODE_DIGITS)) 
         + "\nForward Close " + gi_1560 + " = " + DoubleToStr(gda_868[gi_1560], MarketInfo(g_symbol_912, MODE_DIGITS)) 
         + "\n\nShift = " + DoubleToStr(Shift, 2) 
         + "\nMargin = " + DoubleToStr(margin, 2) 
         + "\nMA_Period = " + MA_Period 
         + "\nTradeWindow = " + DoubleToStr(gd_1576, MarketInfo(g_symbol_912, MODE_DIGITS)) 
         + "\n\nTradeRange = " + TradeRange 
         + "\nRangeStart = " + DoubleToStr(RangeStart, Digits) 
         + "\nTotal Ranges = " + ((Instances + 1)) 
         + "\nFirst Range = " + FirstInstance 
         + "\nLast Range = " + gi_1692 
         + "\nBalanceFactor = " + DoubleToStr(BalanceFactor, 2) 
         + "\nEquity Percent = " + DoubleToStr(100.0 * (AccountEquity() / AccountBalance()), 2) 
         + "\n\nPrice " + LookBackDays + " Day High = " + DoubleToStr(g_ihigh_1648, MarketInfo(g_symbol_912, MODE_DIGITS)) + " (" + gi_1664 + ") " 
         + "\nPrice " + LookBackDays + " Day Low = " + DoubleToStr(g_ilow_1640, MarketInfo(g_symbol_912, MODE_DIGITS)) + " (" + gi_1668 + ") " 
         + "\nPrice " + LookBackDays + " Mid-Range = " + DoubleToStr(gd_1656, MarketInfo(g_symbol_912, MODE_DIGITS)) + " (" + gi_1672 + ") " 
         + "\n\nProfit for this Instance of EA = " + DoubleToStr(gda_1572[gi_1560], 2) 
         + "\n\nLots1 = " + gs_1468 + "  " + DoubleToStr(gd_1248, 2) + " " + g_symbol_912 + " " + gia_880[gi_1560] + "  Net Total Lots = " + DoubleToStr(AddLots(g_symbol_912), 2) 
         + "\nLots2 = " + gs_1476 + "  " + DoubleToStr(gd_1256, 2) + " " + g_symbol_920 + " " + gia_884[gi_1560] + "  Net Total Lots = " + DoubleToStr(AddLots(g_symbol_920), 2) 
         + "\nLotSize = " + DoubleToStr(g_lotsize_1380, 0) 
         + "\nAccount Leverage = " + AccountLeverage() + " : 1" 
         + "\nMax Slippage = " + DoubleToStr(Slippage * MarketInfo(g_symbol_912, MODE_POINT), MarketInfo(g_symbol_912, MODE_DIGITS)) 
         + "\n\nDoTrades = " + ls_52 
         + "\nClose All Open Orders = " + ls_76 
         + "\nOpen Forward Orders = " + ls_60 + "  (" + gi_1676 + ") " 
      + "\nOpen Reverse Orders = " + ls_68 + "  (" + gi_1680 + ") ");
   }
   if (gi_1552 == TRUE && (gi_1560 <= gi_1676 && gi_1560 >= gi_1680)) {
      Comment("\n" 
         + gs_76 
         + "\n" 
         + gs_100 
         + "\n\nCurrent Bid Price= " + DoubleToStr(gd_1200, MarketInfo(g_symbol_912, MODE_DIGITS)) 
         + "\n\nForward Open " + gi_1560 + " = " + DoubleToStr(gda_864[gi_1560], MarketInfo(g_symbol_912, MODE_DIGITS)) 
         + "\nForward Close " + gi_1560 + " = " + DoubleToStr(gda_868[gi_1560], MarketInfo(g_symbol_912, MODE_DIGITS)) 
         + "\nReverse Open " + gi_1560 + " = " + DoubleToStr(gda_872[gi_1560], MarketInfo(g_symbol_912, MODE_DIGITS)) 
         + "\nReverse Close " + gi_1560 + " = " + DoubleToStr(gda_876[gi_1560], MarketInfo(g_symbol_912, MODE_DIGITS)) 
         + "\n\nShift = " + DoubleToStr(Shift, 2) 
         + "\nMargin = " + DoubleToStr(margin, 2) 
         + "\nMA_Period = " + MA_Period 
         + "\nTradeWindow = " + DoubleToStr(gd_1576, MarketInfo(g_symbol_912, MODE_DIGITS)) 
         + "\n\nTradeRange = " + TradeRange 
         + "\nRangeStart = " + DoubleToStr(RangeStart, Digits) 
         + "\nTotal Ranges = " + ((Instances + 1)) 
         + "\nFirst Range = " + FirstInstance 
         + "\nLast Range = " + gi_1692 
         + "\nBalanceFactor = " + DoubleToStr(BalanceFactor, 2) 
         + "\nEquity Percent = " + DoubleToStr(100.0 * (AccountEquity() / AccountBalance()), 2) 
         + "\n\nPrice " + LookBackDays + " Day High = " + DoubleToStr(g_ihigh_1648, MarketInfo(g_symbol_912, MODE_DIGITS)) + " (" + gi_1664 + ") " 
         + "\nPrice " + LookBackDays + " Day Low = " + DoubleToStr(g_ilow_1640, MarketInfo(g_symbol_912, MODE_DIGITS)) + " (" + gi_1668 + ") " 
         + "\nPrice " + LookBackDays + " Mid-Range = " + DoubleToStr(gd_1656, MarketInfo(g_symbol_912, MODE_DIGITS)) + " (" + gi_1672 + ") " 
         + "\n\nProfit for this Instance of EA = " + DoubleToStr(gda_1572[gi_1560], 2) 
         + "\n\nLots1 = " + gs_1468 + "  " + DoubleToStr(gd_1248, 2) + " " + g_symbol_912 + " " + gia_880[gi_1560] + "  Net Total Lots = " + DoubleToStr(AddLots(g_symbol_912), 2) 
         + "\nLots2 = " + gs_1476 + "  " + DoubleToStr(gd_1256, 2) + " " + g_symbol_920 + " " + gia_884[gi_1560] + "  Net Total Lots = " + DoubleToStr(AddLots(g_symbol_920), 2) 
         + "\nLotSize = " + DoubleToStr(g_lotsize_1380, 0) 
         + "\nAccount Leverage = " + AccountLeverage() + " : 1" 
         + "\nMax Slippage = " + DoubleToStr(Slippage * MarketInfo(g_symbol_912, MODE_POINT), MarketInfo(g_symbol_912, MODE_DIGITS)) 
         + "\n\nDoTrades = " + ls_52 
         + "\nClose All Open Orders = " + ls_76 
         + "\nOpen Forward Orders = " + ls_60 + "  (" + gi_1676 + ") " 
      + "\nOpen Reverse Orders = " + ls_68 + "  (" + gi_1680 + ") ");
   }
   gi_1560 = li_48;
   return (0);
}

double EAProfit() {
   double ld_ret_0 = 0.0;
   if (search_for(gia_880[g_index_1556]) != 0) ld_ret_0 += OrderProfit();
   if (search_for(gia_884[g_index_1556]) != 0) ld_ret_0 += OrderProfit();
   if (search_for(gia_888[g_index_1556]) != 0) ld_ret_0 += OrderProfit();
   if (search_for(gia_892[g_index_1556]) != 0) ld_ret_0 += OrderProfit();
   return (ld_ret_0);
}

int search_for(int a_magic_0) {
   g_ord_total_1344 = OrdersTotal();
   for (int l_pos_4 = g_ord_total_1344 - 1; l_pos_4 >= 0; l_pos_4--) {
      if (!OrderSelect(l_pos_4, SELECT_BY_POS, MODE_TRADES)) {
         g_error_1348 = GetLastError();
         Print("OrderSelect( ", l_pos_4, ", SELECT_BY_POS ) - Error #", g_error_1348);
      } else {
         if (OrderMagicNumber() == a_magic_0)
            if (OrderCloseTime() == 0) return (a_magic_0);
      }
   }
   return (0);
}

int search_for_conflict(int a_magic_0) {
   bool li_4 = FALSE;
   g_ord_total_1344 = OrdersTotal();
   for (int l_pos_8 = g_ord_total_1344 - 1; l_pos_8 >= 0; l_pos_8--) {
      if (!OrderSelect(l_pos_8, SELECT_BY_POS, MODE_TRADES)) {
         g_error_1348 = GetLastError();
         Print("OrderSelect( ", l_pos_8, ", SELECT_BY_POS ) - Error #", g_error_1348);
      } else {
         if (OrderMagicNumber() == a_magic_0) {
            if (OrderCloseTime() == 0) {
               if (OrderSymbol() != g_symbol_912) {
                  if (OrderSymbol() != g_symbol_912) li_4 = TRUE;
                  if (li_4 == TRUE) return (1);
               }
            }
         }
      }
   }
   return (0);
}

int FindAndCloseAll() {
   g_ord_total_1344 = OrdersTotal();
   for (int l_pos_0 = g_ord_total_1344 - 1; l_pos_0 >= 0; l_pos_0--) {
      if (!OrderSelect(l_pos_0, SELECT_BY_POS, MODE_TRADES)) {
         g_error_1348 = GetLastError();
         Print("OrderSelect( ", l_pos_0, ", SELECT_BY_POS ) - Error #", g_error_1348);
      } else {
         if (OrderMagicNumber() - MagicNumber1 <= 2000) {
            if (OrderMagicNumber() >= MagicNumber1) {
               if (OrderCloseTime() == 0)
                  if (AccountEquity() / AccountBalance() < CloseUntil / 100.0) Close_it();
            }
         }
      }
   }
   return (0);
}

int CloseOldOrders() {
   int l_index_0 = 0;
   while (l_index_0 < 2000) {
      l_index_0++;
      if (search_for(gia_880[l_index_0]) != 0)
         if (TimeCurrent() - OrderOpenTime() > 86400.0 * OldOrderOpenDays) Close_it();
   }
   return (0);
}

double AddLots(string a_symbol_0) {
   double ld_ret_8 = 0.0;
   g_ord_total_1344 = OrdersTotal();
   for (int l_pos_16 = g_ord_total_1344 - 1; l_pos_16 >= 0; l_pos_16--) {
      if (!OrderSelect(l_pos_16, SELECT_BY_POS, MODE_TRADES)) {
         g_error_1348 = GetLastError();
         Print("OrderSelect( ", l_pos_16, ", SELECT_BY_POS ) - Error #", g_error_1348);
      } else {
         if (OrderSymbol() == a_symbol_0) {
            if (OrderCloseTime() == 0) {
               if (OrderType() == OP_BUY) ld_ret_8 += OrderLots();
               if (OrderType() == OP_SELL) ld_ret_8 -= OrderLots();
            }
         }
      }
   }
   return (ld_ret_8);
}

int open_buy_market(int a_magic_0, double a_lots_4, string a_symbol_12) {
   int l_slippage_52;
   int l_count_56;
   int l_ticket_60;
   double l_price_64;
   double l_maxlot_20 = MarketInfo(a_symbol_12, MODE_MAXLOT);
   double l_minlot_28 = MarketInfo(a_symbol_12, MODE_MINLOT);
   double ld_36 = a_lots_4;
   double l_price_44 = 0.0;
   if (gi_1552 == TRUE) {
      if (StopLoss != 0.0) {
         if (gi_1772 == FALSE) l_price_44 = gda_864[g_index_1556] - StopLoss * TradeRange * MarketInfo(a_symbol_12, MODE_POINT);
         if (gi_1772 == TRUE) l_price_44 = MarketInfo(a_symbol_12, MODE_BID) - StopLoss * TradeRange * MarketInfo(a_symbol_12, MODE_POINT);
         l_price_44 = NormalizeDouble(l_price_44, MarketInfo(a_symbol_12, MODE_DIGITS));
      }
   }
   if (gi_1552 == FALSE) l_price_44 = 0.0;
   while (ld_36 > 0.0) {
      a_lots_4 = ld_36;
      if (a_lots_4 > l_maxlot_20) a_lots_4 = l_maxlot_20;
      if (a_lots_4 < l_minlot_28) a_lots_4 = l_minlot_28;
      a_lots_4 = NormalizeDouble(a_lots_4, decimals);
      ld_36 -= a_lots_4;
      l_slippage_52 = Slippage;
      l_count_56 = 0;
      l_ticket_60 = -1;
      l_price_64 = 0.0;
      if (ShowTakeProfit == TRUE && gi_1552 == TRUE) {
         if (gi_1772 == FALSE) l_price_64 = gda_864[g_index_1556] + TradeRange * MarketInfo(a_symbol_12, MODE_POINT);
         if (gi_1772 == TRUE) l_price_64 = MarketInfo(a_symbol_12, MODE_ASK) + TradeRange * MarketInfo(a_symbol_12, MODE_POINT);
         l_price_64 = NormalizeDouble(l_price_64, MarketInfo(a_symbol_12, MODE_DIGITS));
      }
      g_comment_1592 = gs_1584 + DoubleToStr(a_magic_0, 0) + " " + DoubleToStr(gd_1200, g_digits_1632);
      while (l_ticket_60 == -1 && l_count_56 <= gi_1352) {
         if (Slippage != 0 && gi_1552 == TRUE && MarketInfo(a_symbol_12, MODE_ASK) - g_price_408 < Slippage * MarketInfo(a_symbol_12, MODE_POINT)) l_ticket_60 = OrderSend(a_symbol_12, OP_BUY, a_lots_4, MarketInfo(a_symbol_12, MODE_ASK), l_slippage_52, l_price_44, l_price_64, g_comment_1592, a_magic_0, 0, CLR_NONE);
         if (Slippage == 0 || gi_1552 == FALSE) l_ticket_60 = OrderSend(a_symbol_12, OP_BUY, a_lots_4, MarketInfo(a_symbol_12, MODE_ASK), l_slippage_52, l_price_44, l_price_64, g_comment_1592, a_magic_0, 0, CLR_NONE);
         l_count_56++;
         if (l_ticket_60 >= 0) break;
         if (l_count_56 > gi_1352) break;
         Sleep(1000);
      }
      if (l_ticket_60 != 0) {
         g_error_1348 = GetLastError();
         if (EnableErrorMessages == TRUE) Alert("Error OrderSend # ", g_error_1348);
      }
      if (ld_36 > 0.0) continue;
   }
   return (0);
}

int open_sell_market(int a_magic_0, double a_lots_4, string a_symbol_12) {
   int l_slippage_52;
   int l_count_56;
   int l_ticket_60;
   double l_price_64;
   double l_maxlot_20 = MarketInfo(a_symbol_12, MODE_MAXLOT);
   double l_minlot_28 = MarketInfo(a_symbol_12, MODE_MINLOT);
   double ld_36 = a_lots_4;
   double l_price_44 = 0.0;
   if (gi_1552 == TRUE) {
      if (StopLoss != 0.0) {
         if (gi_1772 == FALSE) l_price_44 = gda_872[g_index_1556] + StopLoss * TradeRange * MarketInfo(a_symbol_12, MODE_POINT);
         if (gi_1772 == TRUE) l_price_44 = MarketInfo(a_symbol_12, MODE_ASK) + StopLoss * TradeRange * MarketInfo(a_symbol_12, MODE_POINT);
         l_price_44 = NormalizeDouble(l_price_44, MarketInfo(a_symbol_12, MODE_DIGITS));
      }
   }
   if (gi_1552 == FALSE) l_price_44 = 0.0;
   while (ld_36 > 0.0) {
      a_lots_4 = ld_36;
      if (a_lots_4 > l_maxlot_20) a_lots_4 = l_maxlot_20;
      if (a_lots_4 < l_minlot_28) a_lots_4 = l_minlot_28;
      a_lots_4 = NormalizeDouble(a_lots_4, decimals);
      ld_36 -= a_lots_4;
      l_slippage_52 = Slippage;
      l_count_56 = 0;
      l_ticket_60 = -1;
      l_price_64 = 0.0;
      if (ShowTakeProfit == TRUE && gi_1552 == TRUE) {
         if (gi_1772 == FALSE) l_price_64 = gda_872[g_index_1556] - TradeRange * MarketInfo(a_symbol_12, MODE_POINT);
         if (gi_1772 == TRUE) l_price_64 = MarketInfo(a_symbol_12, MODE_BID) - TradeRange * MarketInfo(a_symbol_12, MODE_POINT);
         l_price_64 = NormalizeDouble(l_price_64, MarketInfo(a_symbol_12, MODE_DIGITS));
      }
      g_comment_1592 = gs_1584 + DoubleToStr(a_magic_0, 0) + " " + DoubleToStr(gd_1200, g_digits_1632);
      while (l_ticket_60 == -1 && l_count_56 <= gi_1352) {
         if (Slippage != 0 && gi_1552 == TRUE && g_price_408 - MarketInfo(a_symbol_12, MODE_BID) < Slippage * MarketInfo(a_symbol_12, MODE_POINT)) l_ticket_60 = OrderSend(a_symbol_12, OP_SELL, a_lots_4, MarketInfo(a_symbol_12, MODE_BID), l_slippage_52, l_price_44, l_price_64, g_comment_1592, a_magic_0, 0, CLR_NONE);
         if (Slippage == 0 || gi_1552 == FALSE) l_ticket_60 = OrderSend(a_symbol_12, OP_SELL, a_lots_4, MarketInfo(a_symbol_12, MODE_BID), l_slippage_52, l_price_44, l_price_64, g_comment_1592, a_magic_0, 0, CLR_NONE);
         l_count_56++;
         if (l_ticket_60 >= 0) break;
         if (l_count_56 > gi_1352) break;
         Sleep(1000);
      }
      if (l_ticket_60 != 0) {
         g_error_1348 = GetLastError();
         if (EnableErrorMessages == TRUE) Alert("Error OrderSend # ", g_error_1348);
      }
      if (ld_36 > 0.0) continue;
   }
   return (0);
}

int Close_it() {
   if (BlockNegativeClose == TRUE && OrderTakeProfit() != 0.0 && OrderProfit() + OrderSwap() < 0.0) OrderModify(OrderTicket(), OrderOpenPrice(), OrderStopLoss(), 0.0, OrderExpiration(), CLR_NONE);
   if ((BlockNegativeClose == TRUE && OrderProfit() + OrderSwap() > 0.0) || BlockNegativeClose == FALSE) {
      if (OrderType() == OP_BUY) {
         if (UseDynamicGrid == TRUE) g_price_408 = MarketInfo(OrderSymbol(), MODE_BID);
         if (Slippage != 0 && gi_1552 == TRUE && g_price_408 - MarketInfo(OrderSymbol(), MODE_BID) < Slippage * MarketInfo(OrderSymbol(), MODE_POINT)) close_buy();
         if (Slippage == 0 || gi_1552 == FALSE) close_buy();
      }
      if (OrderType() == OP_SELL) {
         if (UseDynamicGrid == TRUE) g_price_408 = MarketInfo(OrderSymbol(), MODE_ASK);
         if (Slippage != 0 && gi_1552 == TRUE && MarketInfo(OrderSymbol(), MODE_ASK) - g_price_408 < Slippage * MarketInfo(OrderSymbol(), MODE_POINT)) close_sell();
         if (Slippage == 0 || gi_1552 == FALSE) close_sell();
      }
   }
   return (0);
}

int GetOrderOpenPrices() {
   int li_0 = gia_880[g_index_1556];
   if (search_for(gia_880[g_index_1556]) != 0) {
      gd_1024 = OrderOpenPrice();
      gd_1216 = OrderSwap();
      gd_1248 = OrderLots();
   } else {
      gd_1216 = 0.0;
      gd_1248 = lots1;
   }
   if (search_for(gia_884[g_index_1556]) != 0) {
      gd_1032 = OrderOpenPrice();
      gd_1224 = OrderSwap();
      gd_1256 = OrderLots();
   } else {
      gd_1224 = 0.0;
      gd_1256 = lots2;
   }
   if (search_for(gia_888[g_index_1556]) != 0) {
      gd_1040 = OrderOpenPrice();
      gd_1232 = OrderSwap();
      gd_1264 = OrderLots();
   } else {
      gd_1232 = 0.0;
      gd_1264 = gd_808;
   }
   if (search_for(gia_892[g_index_1556]) != 0) {
      gd_1048 = OrderOpenPrice();
      gd_1240 = OrderSwap();
      gd_1272 = OrderLots();
   } else {
      gd_1240 = 0.0;
      gd_1272 = gd_816;
   }
   if (search_for(gia_880[g_index_1556]) == 0 && gs_1468 == "Sell" && gd_1024 == 0.0) gd_1024 = MarketInfo(g_symbol_912, MODE_BID);
   if (search_for(gia_880[g_index_1556]) == 0 && gs_1468 == "Buy" && gd_1024 == 0.0) gd_1024 = MarketInfo(g_symbol_912, MODE_ASK);
   if (search_for(gia_884[g_index_1556]) == 0 && gs_1476 == "Sell" && gd_1032 == 0.0) gd_1032 = MarketInfo(g_symbol_920, MODE_BID);
   if (search_for(gia_884[g_index_1556]) == 0 && gs_1476 == "Buy" && gd_1032 == 0.0) gd_1032 = MarketInfo(g_symbol_920, MODE_ASK);
   if (search_for(gia_888[g_index_1556]) == 0 && gs_1484 == "Sell" && gd_1040 == 0.0) gd_1040 = MarketInfo(g_symbol_928, MODE_BID);
   if (search_for(gia_888[g_index_1556]) == 0 && gs_1484 == "Buy" && gd_1040 == 0.0) gd_1040 = MarketInfo(g_symbol_928, MODE_ASK);
   if (search_for(gia_892[g_index_1556]) == 0 && gs_1492 == "Sell" && gd_1048 == 0.0) gd_1048 = MarketInfo(g_symbol_936, MODE_BID);
   if (search_for(gia_892[g_index_1556]) == 0 && gs_1492 == "Buy" && gd_1048 == 0.0) gd_1048 = MarketInfo(g_symbol_936, MODE_ASK);
   return (0);
}

double calculateprofit(string as_0) {
   gd_1120 = 0.0;
   gd_1128 = 0.0;
   gd_1136 = 0.0;
   gd_1144 = 0.0;
   g_price_1152 = 0.0;
   g_price_1160 = 0.0;
   g_price_1168 = 0.0;
   g_price_1176 = 0.0;
   if (as_0 == "current") {
      if (gs_1468 == "Sell") g_price_1152 = MarketInfo(g_symbol_912, MODE_ASK);
      if (gs_1468 == "Buy") g_price_1152 = MarketInfo(g_symbol_912, MODE_BID);
      if (gs_1476 == "Sell") g_price_1160 = MarketInfo(g_symbol_920, MODE_ASK);
      if (gs_1476 == "Buy") g_price_1160 = MarketInfo(g_symbol_920, MODE_BID);
      if (gs_1484 == "Sell") g_price_1168 = MarketInfo(g_symbol_928, MODE_ASK);
      if (gs_1484 == "Buy") g_price_1168 = MarketInfo(g_symbol_928, MODE_BID);
      if (gs_1492 == "Sell") g_price_1176 = MarketInfo(g_symbol_936, MODE_ASK);
      if (gs_1492 == "Buy") g_price_1176 = MarketInfo(g_symbol_936, MODE_BID);
   }
   if (as_0 == "average") {
      g_price_1152 = gma(g_symbol_912);
      g_price_1160 = gma(g_symbol_920);
      g_price_1168 = gma(g_symbol_928);
      g_price_1176 = gma(g_symbol_936);
   }
   if (gs_1468 == "Sell") gd_1120 = gd_1024 - g_price_1152;
   if (gs_1468 == "Buy") gd_1120 = g_price_1152 - gd_1024;
   if (gs_1476 == "Sell") gd_1128 = gd_1032 - g_price_1160;
   if (gs_1476 == "Buy") gd_1128 = g_price_1160 - gd_1032;
   if (gs_1484 == "Sell") gd_1136 = gd_1040 - g_price_1168;
   if (gs_1484 == "Buy") gd_1136 = g_price_1168 - gd_1040;
   if (gs_1492 == "Sell") gd_1144 = gd_1048 - g_price_1176;
   if (gs_1492 == "Buy") gd_1144 = g_price_1176 - gd_1048;
   if (gd_1388 == 0.01) gd_1120 = 10000.0 * (gd_1120 * gd_1248);
   if (gd_1388 == 0.1) gd_1120 = 100000.0 * (gd_1120 * gd_1248);
   if (gd_1388 == 0.01) gd_1128 = 10000.0 * (gd_1128 * gd_1256);
   if (gd_1388 == 0.1) gd_1128 = 100000.0 * (gd_1128 * gd_1256);
   if (gd_1388 == 0.01) gd_1136 = 10000.0 * (gd_1136 * gd_1264);
   if (gd_1388 == 0.1) gd_1136 = 100000.0 * (gd_1136 * gd_1264);
   if (gd_1388 == 0.01) gd_1144 = 10000.0 * (gd_1144 * gd_1272);
   if (gd_1388 == 0.1) gd_1144 = 100000.0 * (gd_1144 * gd_1272);
   if (gi_1552 == FALSE) {
      if (gd_1388 == 0.1) {
         if (StringSubstr(g_symbol_912, 3, 3) == "JPY") gd_1120 /= MarketInfo("USDJPY", MODE_BID);
         if (StringSubstr(g_symbol_920, 3, 3) == "JPY") gd_1128 /= MarketInfo("USDJPY", MODE_BID);
         if (StringSubstr(g_symbol_928, 3, 3) == "JPY") gd_1136 /= MarketInfo("USDJPY", MODE_BID);
         if (StringSubstr(g_symbol_936, 3, 3) == "JPY") gd_1144 /= MarketInfo("USDJPY", MODE_BID);
         if (StringSubstr(g_symbol_912, 3, 3) == "CHF") gd_1120 /= MarketInfo("USDCHF", MODE_BID);
         if (StringSubstr(g_symbol_920, 3, 3) == "CHF") gd_1128 /= MarketInfo("USDCHF", MODE_BID);
         if (StringSubstr(g_symbol_928, 3, 3) == "CHF") gd_1136 /= MarketInfo("USDCHF", MODE_BID);
         if (StringSubstr(g_symbol_936, 3, 3) == "CHF") gd_1144 /= MarketInfo("USDCHF", MODE_BID);
         if (StringSubstr(g_symbol_912, 3, 3) == "CAD") gd_1120 /= MarketInfo("USDCAD", MODE_BID);
         if (StringSubstr(g_symbol_920, 3, 3) == "CAD") gd_1128 /= MarketInfo("USDCAD", MODE_BID);
         if (StringSubstr(g_symbol_928, 3, 3) == "CAD") gd_1136 /= MarketInfo("USDCAD", MODE_BID);
         if (StringSubstr(g_symbol_936, 3, 3) == "CAD") gd_1144 /= MarketInfo("USDCAD", MODE_BID);
         if (StringSubstr(g_symbol_912, 3, 3) == "GBP") gd_1120 /= 1 / MarketInfo("GBPUSD", MODE_BID);
         if (StringSubstr(g_symbol_920, 3, 3) == "GBP") gd_1128 /= 1 / MarketInfo("GBPUSD", MODE_BID);
         if (StringSubstr(g_symbol_928, 3, 3) == "GBP") gd_1136 /= 1 / MarketInfo("GBPUSD", MODE_BID);
         if (StringSubstr(g_symbol_936, 3, 3) == "GBP") gd_1144 /= 1 / MarketInfo("GBPUSD", MODE_BID);
         if (StringSubstr(g_symbol_912, 3, 3) == "AUD") gd_1120 /= 1 / MarketInfo("AUDUSD", MODE_BID);
         if (StringSubstr(g_symbol_920, 3, 3) == "AUD") gd_1128 /= 1 / MarketInfo("AUDUSD", MODE_BID);
         if (StringSubstr(g_symbol_928, 3, 3) == "AUD") gd_1136 /= 1 / MarketInfo("AUDUSD", MODE_BID);
         if (StringSubstr(g_symbol_936, 3, 3) == "AUD") gd_1144 /= 1 / MarketInfo("AUDUSD", MODE_BID);
      }
      if (gd_1388 == 0.01) {
         if (StringSubstr(g_symbol_912, 3, 3) == "JPY") gd_1120 /= MarketInfo("USDJPYm", MODE_BID);
         if (StringSubstr(g_symbol_920, 3, 3) == "JPY") gd_1128 /= MarketInfo("USDJPYm", MODE_BID);
         if (StringSubstr(g_symbol_928, 3, 3) == "JPY") gd_1136 /= MarketInfo("USDJPYm", MODE_BID);
         if (StringSubstr(g_symbol_936, 3, 3) == "JPY") gd_1144 /= MarketInfo("USDJPYm", MODE_BID);
         if (StringSubstr(g_symbol_912, 3, 3) == "CHF") gd_1120 /= MarketInfo("USDCHFm", MODE_BID);
         if (StringSubstr(g_symbol_920, 3, 3) == "CHF") gd_1128 /= MarketInfo("USDCHFm", MODE_BID);
         if (StringSubstr(g_symbol_928, 3, 3) == "CHF") gd_1136 /= MarketInfo("USDCHFm", MODE_BID);
         if (StringSubstr(g_symbol_936, 3, 3) == "CHF") gd_1144 /= MarketInfo("USDCHFm", MODE_BID);
         if (StringSubstr(g_symbol_912, 3, 3) == "CAD") gd_1120 /= MarketInfo("USDCADm", MODE_BID);
         if (StringSubstr(g_symbol_920, 3, 3) == "CAD") gd_1128 /= MarketInfo("USDCADm", MODE_BID);
         if (StringSubstr(g_symbol_928, 3, 3) == "CAD") gd_1136 /= MarketInfo("USDCADm", MODE_BID);
         if (StringSubstr(g_symbol_936, 3, 3) == "CAD") gd_1144 /= MarketInfo("USDCADm", MODE_BID);
         if (StringSubstr(g_symbol_912, 3, 3) == "GBP") gd_1120 /= 1 / MarketInfo("GBPUSDm", MODE_BID);
         if (StringSubstr(g_symbol_920, 3, 3) == "GBP") gd_1128 /= 1 / MarketInfo("GBPUSDm", MODE_BID);
         if (StringSubstr(g_symbol_928, 3, 3) == "GBP") gd_1136 /= 1 / MarketInfo("GBPUSDm", MODE_BID);
         if (StringSubstr(g_symbol_936, 3, 3) == "GBP") gd_1144 /= 1 / MarketInfo("GBPUSDm", MODE_BID);
         if (StringSubstr(g_symbol_912, 3, 3) == "AUD") gd_1120 /= 1 / MarketInfo("AUDUSDm", MODE_BID);
         if (StringSubstr(g_symbol_920, 3, 3) == "AUD") gd_1128 /= 1 / MarketInfo("AUDUSDm", MODE_BID);
         if (StringSubstr(g_symbol_928, 3, 3) == "AUD") gd_1136 /= 1 / MarketInfo("AUDUSDm", MODE_BID);
         if (StringSubstr(g_symbol_936, 3, 3) == "AUD") gd_1144 /= 1 / MarketInfo("AUDUSDm", MODE_BID);
      }
   }
   gd_1184 = gd_1120 + gd_1128 + gd_1136 + gd_1144;
   return (0);
}

int OpenAll() {
   if (gs_1468 == "Sell") open_sell_market(gia_880[g_index_1556], gd_1248, g_symbol_912);
   if (gs_1468 == "Buy") open_buy_market(gia_880[g_index_1556], gd_1248, g_symbol_912);
   if (gs_1476 == "Sell") open_sell_market(gia_884[g_index_1556], gd_1256, g_symbol_920);
   if (gs_1476 == "Buy") open_buy_market(gia_884[g_index_1556], gd_1256, g_symbol_920);
   if (gs_1484 == "Sell") open_sell_market(gia_888[g_index_1556], gd_1264, g_symbol_928);
   if (gs_1484 == "Buy") open_buy_market(gia_888[g_index_1556], gd_1264, g_symbol_928);
   if (gs_1492 == "Sell") open_sell_market(gia_892[g_index_1556], gd_1272, g_symbol_936);
   if (gs_1492 == "Buy") open_buy_market(gia_892[g_index_1556], gd_1272, g_symbol_936);
   return (0);
}

int CloseAll() {
   int l_count_0 = 0;
   while (l_count_0 < 4) {
      l_count_0++;
      if (search_for(gia_880[g_index_1556]) != 0) Close_it();
      if (search_for(gia_884[g_index_1556]) != 0) Close_it();
      if (search_for(gia_888[g_index_1556]) != 0) Close_it();
      if (search_for(gia_892[g_index_1556]) != 0) Close_it();
   }
   return (0);
}

int scanfororders() {
   int l_count_0 = 0;
   int li_4 = search_for(gia_880[g_index_1556]);
   if (li_4 == gia_880[g_index_1556]) l_count_0++;
   li_4 = search_for(gia_884[g_index_1556]);
   if (li_4 == gia_884[g_index_1556]) l_count_0++;
   li_4 = search_for(gia_888[g_index_1556]);
   if (li_4 == gia_888[g_index_1556]) l_count_0++;
   li_4 = search_for(gia_892[g_index_1556]);
   if (li_4 == gia_892[g_index_1556]) l_count_0++;
   return (l_count_0);
}

int scanfororders2() {
   bool li_ret_0 = FALSE;
   int li_4 = search_for(gia_880[g_index_1556]);
   if (li_4 == gia_880[g_index_1556]) {
      if (gs_1468 == "Sell" && OrderType() == OP_SELL) gi_1508 = FALSE;
      if (gs_1468 == "Buy" && OrderType() == OP_BUY) gi_1508 = FALSE;
      if (gs_1468 == "Buy" && OrderType() == OP_SELL) gi_1508 = TRUE;
      if (gs_1468 == "Sell" && OrderType() == OP_BUY) gi_1508 = TRUE;
   }
   li_4 = search_for(gia_884[g_index_1556]);
   if (li_4 == gia_884[g_index_1556]) {
      if (gs_1476 == "Sell" && OrderType() == OP_SELL) gi_1508 = FALSE;
      if (gs_1476 == "Buy" && OrderType() == OP_BUY) gi_1508 = FALSE;
      if (gs_1476 == "Buy" && OrderType() == OP_SELL) gi_1508 = TRUE;
      if (gs_1476 == "Sell" && OrderType() == OP_BUY) gi_1508 = TRUE;
   }
   li_4 = search_for(gia_888[g_index_1556]);
   if (li_4 == gia_888[g_index_1556]) {
      if (gs_1484 == "Sell" && OrderType() == OP_SELL) gi_1508 = FALSE;
      if (gs_1484 == "Buy" && OrderType() == OP_BUY) gi_1508 = FALSE;
      if (gs_1484 == "Buy" && OrderType() == OP_SELL) gi_1508 = TRUE;
      if (gs_1484 == "Sell" && OrderType() == OP_BUY) gi_1508 = TRUE;
   }
   li_4 = search_for(gia_892[g_index_1556]);
   if (li_4 == gia_892[g_index_1556]) {
      if (gs_1492 == "Sell" && OrderType() == OP_SELL) gi_1508 = FALSE;
      if (gs_1492 == "Buy" && OrderType() == OP_BUY) gi_1508 = FALSE;
      if (gs_1492 == "Buy" && OrderType() == OP_SELL) gi_1508 = TRUE;
      if (gs_1492 == "Sell" && OrderType() == OP_BUY) gi_1508 = TRUE;
   }
   return (li_ret_0);
}

int close_buy() {
   int l_slippage_0;
   bool l_ord_close_4;
   if ((BlockNegativeClose == TRUE && OrderProfit() + OrderSwap() > 0.0) || BlockNegativeClose == FALSE) {
      l_slippage_0 = Slippage;
      g_count_1356 = 0;
      l_ord_close_4 = FALSE;
      while (!l_ord_close_4 && g_count_1356 <= 0) {
         if (Slippage != 0 && gi_1552 == TRUE && g_price_408 - MarketInfo(OrderSymbol(), MODE_BID) < Slippage * MarketInfo(OrderSymbol(), MODE_POINT)) l_ord_close_4 = OrderClose(OrderTicket(), OrderLots(), MarketInfo(OrderSymbol(), MODE_BID), l_slippage_0, CLR_NONE);
         if (Slippage == 0 || gi_1552 == FALSE) l_ord_close_4 = OrderClose(OrderTicket(), OrderLots(), MarketInfo(OrderSymbol(), MODE_BID), l_slippage_0, CLR_NONE);
         g_count_1356++;
         if (l_ord_close_4) break;
         if (g_count_1356 > 0) break;
         Sleep(10000);
      }
      if (l_ord_close_4 == 0) {
         g_error_1348 = GetLastError();
         if (EnableErrorMessages == TRUE) Alert("Error OrderClose # ", g_error_1348);
         return (-1);
      }
   }
   return (0);
}

int close_sell() {
   int l_slippage_0;
   bool l_ord_close_4;
   if ((BlockNegativeClose == TRUE && OrderProfit() + OrderSwap() > 0.0) || BlockNegativeClose == FALSE) {
      l_slippage_0 = Slippage;
      g_count_1356 = 0;
      l_ord_close_4 = FALSE;
      while (!l_ord_close_4 && g_count_1356 <= 0) {
         if (Slippage != 0 && gi_1552 == TRUE && MarketInfo(OrderSymbol(), MODE_ASK) - g_price_408 < Slippage * MarketInfo(OrderSymbol(), MODE_POINT)) l_ord_close_4 = OrderClose(OrderTicket(), OrderLots(), MarketInfo(OrderSymbol(), MODE_ASK), l_slippage_0, CLR_NONE);
         if (Slippage == 0 || gi_1552 == FALSE) l_ord_close_4 = OrderClose(OrderTicket(), OrderLots(), MarketInfo(OrderSymbol(), MODE_ASK), l_slippage_0, CLR_NONE);
         g_count_1356++;
         if (l_ord_close_4) break;
         if (g_count_1356 > 0) break;
         Sleep(10000);
      }
      if (l_ord_close_4 == 0) {
         g_error_1348 = GetLastError();
         if (EnableErrorMessages == TRUE) Alert("?????? OrderClose No ", g_error_1348);
         return (-1);
      }
   }
   return (0);
}

int DecideLowest() {
   gd_1364 = gd_1184;
   gd_1372 = gd_1184;
   int li_0 = 0;
   int li_4 = 0;
   gd_1056 = 0.0;
   gd_1064 = 0.0;
   gd_1072 = 0.0;
   gd_1080 = 0.0;
   for (int li_8 = 1; li_8 <= gi_904; li_8++) {
      if (g_symbol_912 != "  ") gd_1056 = iClose(g_symbol_912, g_timeframe_908, li_8);
      if (g_symbol_920 != "  ") gd_1064 = iClose(g_symbol_920, g_timeframe_908, li_8);
      if (g_symbol_928 != "  ") gd_1072 = iClose(g_symbol_928, g_timeframe_908, li_8);
      if (g_symbol_936 != "  ") gd_1080 = iClose(g_symbol_936, g_timeframe_908, li_8);
      calculateprofit2();
      if (gd_1192 > gd_1364) {
         gd_1364 = gd_1192;
         li_0 = li_8;
      }
      if (gd_1192 < gd_1372) {
         gd_1372 = gd_1192;
         li_4 = li_8;
      }
      if (li_8 > gi_904) break;
   }
   gd_1056 = 0.0;
   gd_1064 = 0.0;
   gd_1072 = 0.0;
   gd_1080 = 0.0;
   calculateprofit("current");
   return (0);
}

double calculateprofit2() {
   gd_1120 = 0.0;
   gd_1128 = 0.0;
   gd_1136 = 0.0;
   gd_1144 = 0.0;
   g_price_1152 = 0.0;
   g_price_1160 = 0.0;
   g_price_1168 = 0.0;
   g_price_1176 = 0.0;
   if (gs_1468 == "Sell") g_price_1152 = MarketInfo(g_symbol_912, MODE_ASK);
   if (gs_1468 == "Buy") g_price_1152 = MarketInfo(g_symbol_912, MODE_BID);
   if (gs_1476 == "Sell") g_price_1160 = MarketInfo(g_symbol_920, MODE_ASK);
   if (gs_1476 == "Buy") g_price_1160 = MarketInfo(g_symbol_920, MODE_BID);
   if (gs_1484 == "Sell") g_price_1168 = MarketInfo(g_symbol_928, MODE_ASK);
   if (gs_1484 == "Buy") g_price_1168 = MarketInfo(g_symbol_928, MODE_BID);
   if (gs_1492 == "Sell") g_price_1176 = MarketInfo(g_symbol_936, MODE_ASK);
   if (gs_1492 == "Buy") g_price_1176 = MarketInfo(g_symbol_936, MODE_BID);
   if (gs_1468 == "Sell") gd_1120 = gd_1056 - g_price_1152;
   if (gs_1468 == "Buy") gd_1120 = g_price_1152 - gd_1024;
   if (gs_1476 == "Sell") gd_1128 = gd_1064 - g_price_1160;
   if (gs_1476 == "Buy") gd_1128 = g_price_1160 - gd_1032;
   if (gs_1484 == "Sell") gd_1136 = gd_1072 - g_price_1168;
   if (gs_1484 == "Buy") gd_1136 = g_price_1168 - gd_1040;
   if (gs_1492 == "Sell") gd_1144 = gd_1080 - g_price_1176;
   if (gs_1492 == "Buy") gd_1144 = g_price_1176 - gd_1048;
   if (gd_1388 == 0.01) gd_1120 = 10000.0 * (gd_1120 * gd_1248);
   if (gd_1388 == 0.1) gd_1120 = 100000.0 * (gd_1120 * gd_1248);
   if (gd_1388 == 0.01) gd_1128 = 10000.0 * (gd_1128 * gd_1256);
   if (gd_1388 == 0.1) gd_1128 = 100000.0 * (gd_1128 * gd_1256);
   if (gd_1388 == 0.01) gd_1136 = 10000.0 * (gd_1136 * gd_1264);
   if (gd_1388 == 0.1) gd_1136 = 100000.0 * (gd_1136 * gd_1264);
   if (gd_1388 == 0.01) gd_1144 = 10000.0 * (gd_1144 * gd_1272);
   if (gd_1388 == 0.1) gd_1144 = 100000.0 * (gd_1144 * gd_1272);
   if (gi_1552 == FALSE) {
      if (gd_1388 == 0.1) {
         if (StringSubstr(g_symbol_912, 3, 3) == "JPY") gd_1120 /= MarketInfo("USDJPY", MODE_BID);
         if (StringSubstr(g_symbol_920, 3, 3) == "JPY") gd_1128 /= MarketInfo("USDJPY", MODE_BID);
         if (StringSubstr(g_symbol_928, 3, 3) == "JPY") gd_1136 /= MarketInfo("USDJPY", MODE_BID);
         if (StringSubstr(g_symbol_936, 3, 3) == "JPY") gd_1144 /= MarketInfo("USDJPY", MODE_BID);
         if (StringSubstr(g_symbol_912, 3, 3) == "CHF") gd_1120 /= MarketInfo("USDCHF", MODE_BID);
         if (StringSubstr(g_symbol_920, 3, 3) == "CHF") gd_1128 /= MarketInfo("USDCHF", MODE_BID);
         if (StringSubstr(g_symbol_928, 3, 3) == "CHF") gd_1136 /= MarketInfo("USDCHF", MODE_BID);
         if (StringSubstr(g_symbol_936, 3, 3) == "CHF") gd_1144 /= MarketInfo("USDCHF", MODE_BID);
         if (StringSubstr(g_symbol_912, 3, 3) == "CAD") gd_1120 /= MarketInfo("USDCAD", MODE_BID);
         if (StringSubstr(g_symbol_920, 3, 3) == "CAD") gd_1128 /= MarketInfo("USDCAD", MODE_BID);
         if (StringSubstr(g_symbol_928, 3, 3) == "CAD") gd_1136 /= MarketInfo("USDCAD", MODE_BID);
         if (StringSubstr(g_symbol_936, 3, 3) == "CAD") gd_1144 /= MarketInfo("USDCAD", MODE_BID);
         if (StringSubstr(g_symbol_912, 3, 3) == "GBP") gd_1120 /= 1 / MarketInfo("GBPUSD", MODE_BID);
         if (StringSubstr(g_symbol_920, 3, 3) == "GBP") gd_1128 /= 1 / MarketInfo("GBPUSD", MODE_BID);
         if (StringSubstr(g_symbol_928, 3, 3) == "GBP") gd_1136 /= 1 / MarketInfo("GBPUSD", MODE_BID);
         if (StringSubstr(g_symbol_936, 3, 3) == "GBP") gd_1144 /= 1 / MarketInfo("GBPUSD", MODE_BID);
         if (StringSubstr(g_symbol_912, 3, 3) == "AUD") gd_1120 /= 1 / MarketInfo("AUDUSD", MODE_BID);
         if (StringSubstr(g_symbol_920, 3, 3) == "AUD") gd_1128 /= 1 / MarketInfo("AUDUSD", MODE_BID);
         if (StringSubstr(g_symbol_928, 3, 3) == "AUD") gd_1136 /= 1 / MarketInfo("AUDUSD", MODE_BID);
         if (StringSubstr(g_symbol_936, 3, 3) == "AUD") gd_1144 /= 1 / MarketInfo("AUDUSD", MODE_BID);
      }
      if (gd_1388 == 0.01) {
         if (StringSubstr(g_symbol_912, 3, 3) == "JPY") gd_1120 /= MarketInfo("USDJPYm", MODE_BID);
         if (StringSubstr(g_symbol_920, 3, 3) == "JPY") gd_1128 /= MarketInfo("USDJPYm", MODE_BID);
         if (StringSubstr(g_symbol_928, 3, 3) == "JPY") gd_1136 /= MarketInfo("USDJPYm", MODE_BID);
         if (StringSubstr(g_symbol_936, 3, 3) == "JPY") gd_1144 /= MarketInfo("USDJPYm", MODE_BID);
         if (StringSubstr(g_symbol_912, 3, 3) == "CHF") gd_1120 /= MarketInfo("USDCHFm", MODE_BID);
         if (StringSubstr(g_symbol_920, 3, 3) == "CHF") gd_1128 /= MarketInfo("USDCHFm", MODE_BID);
         if (StringSubstr(g_symbol_928, 3, 3) == "CHF") gd_1136 /= MarketInfo("USDCHFm", MODE_BID);
         if (StringSubstr(g_symbol_936, 3, 3) == "CHF") gd_1144 /= MarketInfo("USDCHFm", MODE_BID);
         if (StringSubstr(g_symbol_912, 3, 3) == "CAD") gd_1120 /= MarketInfo("USDCADm", MODE_BID);
         if (StringSubstr(g_symbol_920, 3, 3) == "CAD") gd_1128 /= MarketInfo("USDCADm", MODE_BID);
         if (StringSubstr(g_symbol_928, 3, 3) == "CAD") gd_1136 /= MarketInfo("USDCADm", MODE_BID);
         if (StringSubstr(g_symbol_936, 3, 3) == "CAD") gd_1144 /= MarketInfo("USDCADm", MODE_BID);
         if (StringSubstr(g_symbol_912, 3, 3) == "GBP") gd_1120 /= 1 / MarketInfo("GBPUSDm", MODE_BID);
         if (StringSubstr(g_symbol_920, 3, 3) == "GBP") gd_1128 /= 1 / MarketInfo("GBPUSDm", MODE_BID);
         if (StringSubstr(g_symbol_928, 3, 3) == "GBP") gd_1136 /= 1 / MarketInfo("GBPUSDm", MODE_BID);
         if (StringSubstr(g_symbol_936, 3, 3) == "GBP") gd_1144 /= 1 / MarketInfo("GBPUSDm", MODE_BID);
         if (StringSubstr(g_symbol_912, 3, 3) == "AUD") gd_1120 /= 1 / MarketInfo("AUDUSDm", MODE_BID);
         if (StringSubstr(g_symbol_920, 3, 3) == "AUD") gd_1128 /= 1 / MarketInfo("AUDUSDm", MODE_BID);
         if (StringSubstr(g_symbol_928, 3, 3) == "AUD") gd_1136 /= 1 / MarketInfo("AUDUSDm", MODE_BID);
         if (StringSubstr(g_symbol_936, 3, 3) == "AUD") gd_1144 /= 1 / MarketInfo("AUDUSDm", MODE_BID);
      }
   }
   gd_1192 = gd_1120 + gd_1128 + gd_1136 + gd_1144 + gd_1216 + gd_1224 + gd_1232 + gd_1240;
   return (0);
}

int CalculateLots() {
   double ld_0;
   double ld_8;
   double ld_16;
   double ld_24;
   string l_symbol_32;
   string l_symbol_40;
   string l_symbol_48;
   string l_symbol_56;
   double ld_64;
   double ld_72;
   double ld_80;
   double ld_88;
   double ld_96;
   double ld_104;
   double ld_112;
   double l_minlot_120;
   double ld_128;
   double ld_136;
   double ld_144;
   double l_lotsize_152;
   double ld_160;
   bool li_168;
   double ld_172;
   double ld_180;
   if (gi_1552 == FALSE) {
      ld_0 = lots1;
      ld_8 = lots2;
      ld_16 = gd_808;
      ld_24 = gd_816;
      gd_1248 = 0.0;
      gd_1256 = 0.0;
      gd_1264 = 0.0;
      gd_1272 = 0.0;
      l_symbol_32 = " ";
      l_symbol_40 = " ";
      l_symbol_48 = " ";
      l_symbol_56 = " ";
      gd_1396 = 0.0;
      gd_1404 = 0.0;
      gd_1412 = 0.0;
      gd_1420 = 0.0;
      gd_1700 = accountbalance;
      ld_64 = margin / 100.0;
      if (accountbalance == 0.0 && UseEquity == FALSE) accountbalance = AccountBalance();
      if (accountbalance == 0.0 && UseEquity == TRUE) accountbalance = AccountEquity();
      ld_72 = accountbalance * ld_64;
      g_lotsize_1380 = MarketInfo(Symbol(), MODE_LOTSIZE);
      if (g_lotsize_1380 == 100000.0) gd_1388 = 0.1;
      if (g_lotsize_1380 == 10000.0) gd_1388 = 0.01;
      ld_80 = g_lotsize_1380 / AccountLeverage();
      if (StringSubstr(g_symbol_912, 3, 3) == "USD") gd_1396 = MarketInfo(g_symbol_912, MODE_ASK);
      if (StringSubstr(g_symbol_912, 0, 3) == "USD") gd_1396 = 1;
      if (StringSubstr(g_symbol_912, 3, 3) != "USD" && StringSubstr(g_symbol_912, 0, 3) != "USD" && g_symbol_912 != "  ") {
         l_symbol_32 = StringSubstr(g_symbol_912, 0, 3) + "USD";
         if (MarketInfo(l_symbol_32, MODE_ASK) == 0.0) l_symbol_32 = l_symbol_32 + "m";
         gd_1396 = MarketInfo(l_symbol_32, MODE_ASK);
         if (gd_1396 == 0.0) {
            l_symbol_32 = "USD" + StringSubstr(g_symbol_912, 0, 3);
            if (MarketInfo(l_symbol_32, MODE_ASK) == 0.0) l_symbol_32 = l_symbol_32 + "m";
            gd_1396 = 1 / MarketInfo(l_symbol_32, MODE_ASK);
         }
      }
      if (StringSubstr(g_symbol_920, 3, 3) == "USD") gd_1404 = MarketInfo(g_symbol_920, MODE_ASK);
      if (StringSubstr(g_symbol_920, 0, 3) == "USD") gd_1404 = 1;
      if (StringSubstr(g_symbol_920, 3, 3) != "USD" && StringSubstr(g_symbol_920, 0, 3) != "USD" && g_symbol_920 != "  ") {
         l_symbol_40 = StringSubstr(g_symbol_920, 0, 3) + "USD";
         if (MarketInfo(l_symbol_40, MODE_ASK) == 0.0) l_symbol_40 = l_symbol_40 + "m";
         gd_1404 = MarketInfo(l_symbol_40, MODE_ASK);
         if (gd_1404 == 0.0) {
            l_symbol_40 = "USD" + StringSubstr(g_symbol_920, 0, 3);
            if (MarketInfo(l_symbol_40, MODE_ASK) == 0.0) l_symbol_40 = l_symbol_40 + "m";
            gd_1404 = 1 / MarketInfo(l_symbol_40, MODE_ASK);
         }
      }
      if (StringSubstr(g_symbol_928, 3, 3) == "USD") gd_1412 = MarketInfo(g_symbol_928, MODE_ASK);
      if (StringSubstr(g_symbol_928, 0, 3) == "USD") gd_1412 = 1;
      if (StringSubstr(g_symbol_928, 3, 3) != "USD" && StringSubstr(g_symbol_928, 0, 3) != "USD" && g_symbol_928 != "  ") {
         l_symbol_48 = StringSubstr(g_symbol_928, 0, 3) + "USD";
         if (MarketInfo(l_symbol_48, MODE_ASK) == 0.0) l_symbol_48 = l_symbol_48 + "m";
         gd_1412 = MarketInfo(l_symbol_48, MODE_ASK);
         if (gd_1412 == 0.0) {
            l_symbol_48 = "USD" + StringSubstr(g_symbol_928, 0, 3);
            if (MarketInfo(l_symbol_48, MODE_ASK) == 0.0) l_symbol_48 = l_symbol_48 + "m";
            gd_1412 = 1 / MarketInfo(l_symbol_48, MODE_ASK);
         }
      }
      if (StringSubstr(g_symbol_936, 3, 3) == "USD") gd_1420 = MarketInfo(g_symbol_936, MODE_ASK);
      if (StringSubstr(g_symbol_936, 0, 3) == "USD") gd_1420 = 1;
      if (StringSubstr(g_symbol_936, 3, 3) != "USD" && StringSubstr(g_symbol_936, 0, 3) != "USD" && g_symbol_936 != "  ") {
         l_symbol_56 = StringSubstr(g_symbol_936, 0, 3) + "USD";
         if (MarketInfo(l_symbol_56, MODE_ASK) == 0.0) l_symbol_56 = l_symbol_56 + "m";
         gd_1420 = MarketInfo(l_symbol_56, MODE_ASK);
         if (gd_1420 == 0.0) {
            l_symbol_56 = "USD" + StringSubstr(g_symbol_936, 0, 3);
            if (MarketInfo(l_symbol_56, MODE_ASK) == 0.0) l_symbol_56 = l_symbol_56 + "m";
            gd_1420 = 1 / MarketInfo(l_symbol_56, MODE_ASK);
         }
      }
      if (gd_1396 != 0.0 && gd_1404 != 0.0 && gd_1412 == 0.0 && gd_1420 == 0.0) {
         ld_88 = ld_72 * gd_1404 / (gd_1396 + gd_1404);
         ld_96 = ld_72 * gd_1396 / (gd_1396 + gd_1404);
         lots1 = ld_88 / ld_80;
         lots2 = ld_96 / ld_80;
         lots1 = NormalizeDouble(lots1, decimals);
         lots2 = NormalizeDouble(lots2, decimals);
      }
      if (gd_1396 != 0.0 && gd_1404 != 0.0 && gd_1412 != 0.0 && gd_1420 == 0.0) {
         ld_88 = ld_72 / 2.0 * gd_1412 / (gd_1396 + gd_1412);
         ld_104 = ld_72 / 2.0 * gd_1396 / (gd_1396 + gd_1412);
         lots1 = ld_88 / ld_80;
         gd_808 = ld_104 / ld_80;
         lots1 = NormalizeDouble(lots1, decimals);
         gd_808 = NormalizeDouble(gd_808, decimals);
         ld_96 = ld_72 / 2.0 * gd_1412 / (gd_1404 + gd_1412);
         ld_104 = ld_72 / 2.0 * gd_1404 / (gd_1404 + gd_1412);
         lots2 = ld_96 / ld_80;
         gd_816 = ld_104 / ld_80;
         lots2 = NormalizeDouble(lots2, decimals);
         gd_816 = NormalizeDouble(gd_816, decimals);
         gd_808 += gd_816;
         gd_808 = NormalizeDouble(gd_808, decimals);
         gd_816 = 0.0;
      }
      if (gd_1396 != 0.0 && gd_1404 != 0.0 && gd_1412 != 0.0 && gd_1420 != 0.0) {
         ld_88 = ld_72 / 2.0 * gd_1412 / (gd_1396 + gd_1412);
         ld_104 = ld_72 / 2.0 * gd_1396 / (gd_1396 + gd_1412);
         lots1 = ld_88 / ld_80;
         gd_808 = ld_104 / ld_80;
         lots1 = NormalizeDouble(lots1, decimals);
         gd_808 = NormalizeDouble(gd_808, decimals);
         ld_96 = ld_72 / 2.0 * gd_1420 / (gd_1404 + gd_1420);
         ld_112 = ld_72 / 2.0 * gd_1404 / (gd_1404 + gd_1420);
         lots2 = ld_96 / ld_80;
         gd_816 = ld_112 / ld_80;
         lots2 = NormalizeDouble(lots2, decimals);
         gd_816 = NormalizeDouble(gd_816, decimals);
         if (gs_1468 == "Buy") gd_1436 = lots1 * MarketInfo(g_symbol_912, MODE_SWAPLONG);
         if (gs_1468 == "Sell") gd_1436 = lots1 * MarketInfo(g_symbol_912, MODE_SWAPSHORT);
         if (gs_1476 == "Buy") gd_1444 = lots2 * MarketInfo(g_symbol_920, MODE_SWAPLONG);
         if (gs_1476 == "Sell") gd_1444 = lots2 * MarketInfo(g_symbol_920, MODE_SWAPSHORT);
         if (gs_1484 == "Buy") gd_1452 = gd_808 * MarketInfo(g_symbol_928, MODE_SWAPLONG);
         if (gs_1484 == "Sell") gd_1452 = gd_808 * MarketInfo(g_symbol_928, MODE_SWAPSHORT);
         if (gs_1492 == "Buy") gd_1460 = gd_816 * MarketInfo(g_symbol_936, MODE_SWAPLONG);
         if (gs_1492 == "Sell") gd_1460 = gd_816 * MarketInfo(g_symbol_936, MODE_SWAPSHORT);
      }
      gd_1248 = lots1;
      gd_1256 = lots2;
      gd_1264 = gd_808;
      gd_1272 = gd_816;
      lots1 = ld_0;
      lots2 = ld_8;
      gd_808 = ld_16;
      gd_816 = ld_24;
      if (gi_1552 == TRUE) {
         Currency2 = "  ";
         Currency2Buy = FALSE;
         Currency2Sell = FALSE;
         ShadowCurrency2 = "  ";
         ShadowCurrency2Buy = FALSE;
         ShadowCurrency2Sell = FALSE;
         g_symbol_920 = Currency2;
         gd_1248 = 2.0 * gd_1248;
         gd_1256 = 0.0;
      }
      l_minlot_120 = MarketInfo(g_symbol_912, MODE_MINLOT);
      if (gd_1248 < l_minlot_120) gd_1248 = l_minlot_120;
      gd_1248 = NormalizeDouble(gd_1248, decimals);
      if (gd_1256 != 0.0) {
         l_minlot_120 = MarketInfo(g_symbol_920, MODE_MINLOT);
         if (gd_1256 < l_minlot_120) gd_1256 = l_minlot_120;
         gd_1256 = NormalizeDouble(gd_1256, decimals);
      }
      accountbalance = gd_1700;
   }
   if (gi_1552 == TRUE) {
      gd_1256 = 0.0;
      gd_1264 = 0.0;
      gd_1272 = 0.0;
      lots1 = ld_0;
      lots2 = ld_8;
      gd_808 = ld_16;
      gd_816 = ld_24;
      if (UseMarginPercent == TRUE) {
         l_minlot_120 = MarketInfo(Symbol(), MODE_MINLOT);
         ld_128 = 0.0;
         if (lots1 > 0.0) ld_128 = lots1;
         if (ld_128 > 0.0) {
            if (ld_128 < l_minlot_120) ld_128 = l_minlot_120;
            ld_128 = NormalizeDouble(ld_128, decimals);
            gd_1248 = ld_128;
            return (0);
         }
         if (UseEquity == TRUE) ld_136 = AccountEquity();
         if (UseEquity == FALSE) ld_136 = AccountBalance();
         if (accountbalance != 0.0) ld_136 = accountbalance;
         ld_144 = margin / 100.0 * ld_136;
         l_lotsize_152 = MarketInfo(Symbol(), MODE_LOTSIZE);
         ld_160 = ld_144 / (l_lotsize_152 / AccountLeverage());
         ld_128 = ld_160;
         if (ld_128 < l_minlot_120) ld_128 = l_minlot_120;
         ld_128 = NormalizeDouble(ld_128, decimals);
         gd_1248 = ld_128;
         return (0);
      }
      if (UseMarginPercent == FALSE) {
         l_minlot_120 = MarketInfo(Symbol(), MODE_MINLOT);
         ld_128 = 0.0;
         li_168 = FALSE;
         l_lotsize_152 = MarketInfo(Symbol(), MODE_LOTSIZE);
         if (l_minlot_120 == 0.01) decimals = 2;
         if (l_minlot_120 == 0.1) decimals = 1;
         ld_172 = AccountBalance();
         if (accountbalance != 0.0) ld_172 = accountbalance;
         ld_180 = BalanceFactor;
         ld_180 /= 100000 / l_lotsize_152;
         gi_1696 = 0;
         if (ld_172 < ld_180) gi_1696 = 1;
         li_168 = ld_172 / ld_180;
         ld_128 = li_168 / 100.0;
         ld_128 = NormalizeDouble(ld_128, decimals);
         if (ld_128 < l_minlot_120) ld_128 = l_minlot_120;
         ld_128 = NormalizeDouble(ld_128, decimals);
         gd_1248 = ld_128;
         return (0);
      }
   }
   return (0);
}

int ReadOrderOpenPrices() {
   return (0);
}

int WriteOrderOpenPrices() {
   if (gi_860 == TRUE) {
   }
   return (0);
}

double CalculateSwap() {
   gd_1428 = 0.0;
   gd_1436 = 0.0;
   gd_1444 = 0.0;
   gd_1452 = 0.0;
   gd_1460 = 0.0;
   if (gs_1468 == "Buy") gd_1436 = lots1 * MarketInfo(g_symbol_912, MODE_SWAPLONG);
   if (gs_1468 == "Sell") gd_1436 = lots1 * MarketInfo(g_symbol_912, MODE_SWAPSHORT);
   if (gs_1476 == "Buy") gd_1444 = lots2 * MarketInfo(g_symbol_920, MODE_SWAPLONG);
   if (gs_1476 == "Sell") gd_1444 = lots2 * MarketInfo(g_symbol_920, MODE_SWAPSHORT);
   if (gs_1484 == "Buy") gd_1452 = gd_808 * MarketInfo(g_symbol_928, MODE_SWAPLONG);
   if (gs_1484 == "Sell") gd_1452 = gd_808 * MarketInfo(g_symbol_928, MODE_SWAPSHORT);
   if (gs_1492 == "Buy") gd_1460 = gd_816 * MarketInfo(g_symbol_936, MODE_SWAPLONG);
   if (gs_1492 == "Sell") gd_1460 = gd_816 * MarketInfo(g_symbol_936, MODE_SWAPSHORT);
   gd_1428 = gd_1436 + gd_1444 + gd_1452 + gd_1460;
   return (gd_1428);
}

int DecideLowest2() {
   gd_1364 = gd_1184;
   gd_1372 = gd_1184;
   double ld_0 = 0.0;
   double ld_8 = 0.0;
   double ld_16 = 0.0;
   double ld_24 = 0.0;
   double l_ilow_32 = 0.0;
   double l_ilow_40 = 0.0;
   double l_ilow_48 = 0.0;
   double l_ilow_56 = 0.0;
   int li_64 = 0;
   int li_68 = 0;
   gd_1056 = 0.0;
   gd_1064 = 0.0;
   gd_1072 = 0.0;
   gd_1080 = 0.0;
   g_ilow_1088 = 0.0;
   g_ilow_1096 = 0.0;
   g_ilow_1104 = 0.0;
   g_ilow_1112 = 0.0;
   for (int li_72 = 1; li_72 <= gi_904; li_72++) {
      if (g_symbol_912 != "  ") gd_1056 = iHigh(g_symbol_912, g_timeframe_908, li_72);
      if (g_symbol_920 != "  ") gd_1064 = iHigh(g_symbol_920, g_timeframe_908, li_72);
      if (g_symbol_928 != "  ") gd_1072 = iHigh(g_symbol_928, g_timeframe_908, li_72);
      if (g_symbol_936 != "  ") gd_1080 = iHigh(g_symbol_936, g_timeframe_908, li_72);
      if (g_symbol_912 != "  ") g_ilow_1088 = iLow(g_symbol_912, g_timeframe_908, li_72);
      if (g_symbol_920 != "  ") g_ilow_1096 = iLow(g_symbol_920, g_timeframe_908, li_72);
      if (g_symbol_928 != "  ") g_ilow_1104 = iLow(g_symbol_928, g_timeframe_908, li_72);
      if (g_symbol_936 != "  ") g_ilow_1112 = iLow(g_symbol_936, g_timeframe_908, li_72);
      if (gd_1056 > ld_0) ld_0 = gd_1056;
      if (g_ilow_1088 < l_ilow_32 || l_ilow_32 == 0.0) l_ilow_32 = g_ilow_1088;
      if (gd_1064 > ld_8) ld_8 = gd_1064;
      if (g_ilow_1096 < l_ilow_40 || l_ilow_40 == 0.0) l_ilow_40 = g_ilow_1096;
      if (gd_1072 > ld_16) ld_16 = gd_1072;
      if (g_ilow_1104 < l_ilow_48 || l_ilow_48 == 0.0) l_ilow_48 = g_ilow_1104;
      if (gd_1080 > ld_24) ld_24 = gd_1080;
      if (g_ilow_1112 < l_ilow_56 || l_ilow_56 == 0.0) l_ilow_56 = g_ilow_1112;
      if (li_72 > gi_904) break;
   }
   gd_1056 = 0.0;
   gd_1064 = 0.0;
   gd_1072 = 0.0;
   gd_1080 = 0.0;
   if (gs_1468 == "Buy") gd_1056 = ld_0;
   if (gs_1468 == "Sell") gd_1056 = l_ilow_32;
   if (gs_1476 == "Buy") gd_1064 = ld_8;
   if (gs_1476 == "Sell") gd_1064 = l_ilow_40;
   if (gs_1484 == "Buy") gd_1072 = ld_16;
   if (gs_1484 == "Sell") gd_1072 = l_ilow_48;
   if (gs_1492 == "Buy") gd_1080 = ld_24;
   if (gs_1492 == "Sell") gd_1080 = l_ilow_56;
   calculateprofit2();
   gd_1364 = gd_1192;
   gd_1056 = 0.0;
   gd_1064 = 0.0;
   gd_1072 = 0.0;
   gd_1080 = 0.0;
   if (gs_1468 == "Buy") gd_1056 = l_ilow_32;
   if (gs_1468 == "Sell") gd_1056 = ld_0;
   if (gs_1476 == "Buy") gd_1064 = l_ilow_40;
   if (gs_1476 == "Sell") gd_1064 = ld_8;
   if (gs_1484 == "Buy") gd_1072 = l_ilow_48;
   if (gs_1484 == "Sell") gd_1072 = ld_16;
   if (gs_1492 == "Buy") gd_1080 = l_ilow_56;
   if (gs_1492 == "Sell") gd_1080 = ld_24;
   calculateprofit2();
   gd_1372 = gd_1192;
   gd_1056 = 0.0;
   gd_1064 = 0.0;
   gd_1072 = 0.0;
   gd_1080 = 0.0;
   calculateprofit("current");
   return (0);
}

int SetInitialShadowProfit() {
   double ld_0 = gd_1364 + gd_1372;
   double ld_8 = -1.0 * (ld_0 / 2.0);
   gd_1184 += ld_8;
   if (gi_468 == FALSE) gd_1184 += ld_8;
   return (0);
}

int SetForwardActions() {
   gs_1468 = " ";
   gs_1476 = " ";
   gs_1484 = " ";
   gs_1492 = " ";
   if (Currency1Buy == TRUE && Currency1Sell == FALSE) gs_1468 = "Buy";
   if (Currency1Sell == TRUE && Currency1Buy == FALSE) gs_1468 = "Sell";
   if (Currency2Buy == TRUE && Currency2Sell == FALSE) gs_1476 = "Buy";
   if (Currency2Sell == TRUE && Currency2Buy == FALSE) gs_1476 = "Sell";
   if (gi_752 == TRUE && gi_756 == FALSE) gs_1484 = "Buy";
   if (gi_756 == TRUE && gi_752 == FALSE) gs_1484 = "Sell";
   if (gi_768 == TRUE && gi_772 == FALSE) gs_1492 = "Buy";
   if (gi_772 == TRUE && gi_768 == FALSE) gs_1492 = "Sell";
   return (0);
}

int SetForwardActions2() {
   gs_1468 = " ";
   gs_1476 = " ";
   gs_1484 = " ";
   gs_1492 = " ";
   if (ShadowCurrency1Buy == TRUE && ShadowCurrency1Sell == FALSE) gs_1468 = "Buy";
   if (ShadowCurrency1Sell == TRUE && ShadowCurrency1Buy == FALSE) gs_1468 = "Sell";
   if (ShadowCurrency2Buy == TRUE && ShadowCurrency2Sell == FALSE) gs_1476 = "Buy";
   if (ShadowCurrency2Sell == TRUE && ShadowCurrency2Buy == FALSE) gs_1476 = "Sell";
   if (gi_588 == TRUE && gi_592 == FALSE) gs_1484 = "Buy";
   if (gi_592 == TRUE && gi_588 == FALSE) gs_1484 = "Sell";
   if (gi_612 == TRUE && gi_616 == FALSE) gs_1492 = "Buy";
   if (gi_616 == TRUE && gi_612 == FALSE) gs_1492 = "Sell";
   return (0);
}

int SetReverseActions() {
   gs_1468 = " ";
   gs_1476 = " ";
   gs_1484 = " ";
   gs_1492 = " ";
   if (Currency1Buy == TRUE && Currency1Sell == FALSE) gs_1468 = "Sell";
   if (Currency1Sell == TRUE && Currency1Buy == FALSE) gs_1468 = "Buy";
   if (Currency2Buy == TRUE && Currency2Sell == FALSE) gs_1476 = "Sell";
   if (Currency2Sell == TRUE && Currency2Buy == FALSE) gs_1476 = "Buy";
   if (gi_752 == TRUE && gi_756 == FALSE) gs_1484 = "Sell";
   if (gi_756 == TRUE && gi_752 == FALSE) gs_1484 = "Buy";
   if (gi_768 == TRUE && gi_772 == FALSE) gs_1492 = "Sell";
   if (gi_772 == TRUE && gi_768 == FALSE) gs_1492 = "Buy";
   return (0);
}

int CalculateHighsAndLows() {
   gd_1200 = CalculateShadowProfit("current");
   if (Minute() > 10) gi_1516 = FALSE;
   if (Minute() < 10 && gi_1516 == FALSE) {
      gd_960 = -10000000.0;
      gd_968 = 10000000.0;
      gi_1516 = TRUE;
   }
   if (gd_944 < gd_1200) gd_944 = gd_1200;
   if (gd_960 < gd_1200) gd_960 = gd_1200;
   if (gd_952 > gd_1200) gd_952 = gd_1200;
   if (gd_968 > gd_1200) gd_968 = gd_1200;
   if (gd_968 == 0.0) gd_968 = gd_1200;
   if (gd_976 < AccountEquity()) gd_976 = AccountEquity();
   if (gd_984 > AccountEquity()) gd_984 = AccountEquity();
   if (g_free_magrin_1000 < AccountFreeMargin()) g_free_magrin_1000 = AccountFreeMargin();
   if (g_free_magrin_992 > AccountFreeMargin()) g_free_magrin_992 = AccountFreeMargin();
   if (gd_1008 < AccountBalance()) gd_1008 = AccountBalance();
   if (gd_1016 > AccountBalance()) gd_1016 = AccountBalance();
   return (0);
}

int SetCurrenciesAndLotSize() {
   g_symbol_912 = Currency1;
   g_symbol_920 = Currency2;
   g_symbol_928 = gs_744;
   g_symbol_936 = gs_760;
   g_lotsize_1380 = MarketInfo(Symbol(), MODE_LOTSIZE);
   if (g_lotsize_1380 == 0.0) g_lotsize_1380 = MarketInfo(Symbol(), MODE_LOTSIZE);
   if (g_lotsize_1380 == 100000.0) gd_1388 = 0.1;
   if (g_lotsize_1380 == 10000.0) gd_1388 = 0.01;
   if (g_lotsize_1380 == 10000.0) {
      if (MarketInfo(g_symbol_912, MODE_ASK) == 0.0 && StringSubstr(g_symbol_912, 0, 1) != " ") g_symbol_912 = g_symbol_912 + "m";
      if (MarketInfo(g_symbol_920, MODE_ASK) == 0.0 && StringSubstr(g_symbol_920, 0, 1) != " ") g_symbol_920 = g_symbol_920 + "m";
      if (MarketInfo(g_symbol_928, MODE_ASK) == 0.0 && StringSubstr(g_symbol_928, 0, 1) != " ") g_symbol_928 = g_symbol_928 + "m";
      if (MarketInfo(g_symbol_936, MODE_ASK) == 0.0 && StringSubstr(g_symbol_936, 0, 1) != " ") g_symbol_936 = g_symbol_936 + "m";
   }
   SetForwardActions();
   if (StringLen(StringTrimLeft(gs_1468)) < 2) g_symbol_912 = "  ";
   if (StringLen(StringTrimLeft(g_symbol_912)) < 2) gs_1468 = "  ";
   if (StringLen(StringTrimLeft(gs_1476)) < 2) g_symbol_920 = "  ";
   if (StringLen(StringTrimLeft(g_symbol_920)) < 2) gs_1476 = "  ";
   if (StringLen(StringTrimLeft(gs_1484)) < 2) g_symbol_928 = "  ";
   if (StringLen(StringTrimLeft(g_symbol_928)) < 2) gs_1484 = "  ";
   if (StringLen(StringTrimLeft(gs_1492)) < 2) g_symbol_936 = "  ";
   if (StringLen(StringTrimLeft(g_symbol_936)) < 2) gs_1492 = "  ";
   return (0);
}

int SetCurrenciesAndLotSize2() {
   g_symbol_912 = ShadowCurrency1;
   g_symbol_920 = ShadowCurrency2;
   g_symbol_928 = gs_580;
   g_symbol_936 = gs_604;
   g_lotsize_1380 = MarketInfo(Symbol(), MODE_LOTSIZE);
   if (g_lotsize_1380 == 0.0) g_lotsize_1380 = MarketInfo(Symbol(), MODE_LOTSIZE);
   if (g_lotsize_1380 == 100000.0) gd_1388 = 0.1;
   if (g_lotsize_1380 == 10000.0) gd_1388 = 0.01;
   if (g_lotsize_1380 == 10000.0) {
      if (MarketInfo(g_symbol_912, MODE_ASK) == 0.0 && StringSubstr(g_symbol_912, 0, 1) != " ") g_symbol_912 = g_symbol_912 + "m";
      if (MarketInfo(g_symbol_920, MODE_ASK) == 0.0 && StringSubstr(g_symbol_920, 0, 1) != " ") g_symbol_920 = g_symbol_920 + "m";
      if (MarketInfo(g_symbol_928, MODE_ASK) == 0.0 && StringSubstr(g_symbol_928, 0, 1) != " ") g_symbol_928 = g_symbol_928 + "m";
      if (MarketInfo(g_symbol_936, MODE_ASK) == 0.0 && StringSubstr(g_symbol_936, 0, 1) != " ") g_symbol_936 = g_symbol_936 + "m";
   }
   SetForwardActions2();
   if (StringLen(StringTrimLeft(gs_1468)) < 2) g_symbol_912 = "  ";
   if (StringLen(StringTrimLeft(g_symbol_912)) < 2) gs_1468 = "  ";
   if (StringLen(StringTrimLeft(gs_1476)) < 2) g_symbol_920 = "  ";
   if (StringLen(StringTrimLeft(g_symbol_920)) < 2) gs_1476 = "  ";
   if (StringLen(StringTrimLeft(gs_1484)) < 2) g_symbol_928 = "  ";
   if (StringLen(StringTrimLeft(g_symbol_928)) < 2) gs_1484 = "  ";
   if (StringLen(StringTrimLeft(gs_1492)) < 2) g_symbol_936 = "  ";
   if (StringLen(StringTrimLeft(g_symbol_936)) < 2) gs_1492 = "  ";
   return (0);
}

double SetSpecificShadowProfit(double ad_0) {
   gd_1200 = CalculateShadowProfit("current");
   if (gd_1200 > ad_0) ReadOrderOpenPrices();
   if (gd_1200 > ad_0) {
      if (StringSubstr(g_symbol_912, 0, 1) != " " && gs_1468 == "Buy") gd_1024 += 1.0 * MarketInfo(g_symbol_912, MODE_POINT);
      if (StringSubstr(g_symbol_920, 0, 1) != " " && gs_1476 == "Buy") gd_1032 += 1.0 * MarketInfo(g_symbol_920, MODE_POINT);
      if (StringSubstr(g_symbol_928, 0, 1) != " " && gs_1484 == "Buy") gd_1040 += 1.0 * MarketInfo(g_symbol_928, MODE_POINT);
      if (StringSubstr(g_symbol_936, 0, 1) != " " && gs_1492 == "Buy") gd_1048 += 1.0 * MarketInfo(g_symbol_936, MODE_POINT);
      if (StringSubstr(g_symbol_912, 0, 1) != " " && gs_1468 == "Sell") gd_1024 -= 1.0 * MarketInfo(g_symbol_912, MODE_POINT);
      if (StringSubstr(g_symbol_920, 0, 1) != " " && gs_1476 == "Sell") gd_1032 -= 1.0 * MarketInfo(g_symbol_920, MODE_POINT);
      if (StringSubstr(g_symbol_928, 0, 1) != " " && gs_1484 == "Sell") gd_1040 -= 1.0 * MarketInfo(g_symbol_928, MODE_POINT);
      if (StringSubstr(g_symbol_936, 0, 1) != " " && gs_1492 == "Sell") gd_1048 -= 1.0 * MarketInfo(g_symbol_936, MODE_POINT);
      gd_1200 = CalculateShadowProfit("current");
      if (gd_1200 <= ad_0) {
      }
      WriteOrderOpenPrices();
   }
   if (gd_1200 < ad_0) ReadOrderOpenPrices();
   if (gd_1200 < ad_0) {
      if (StringSubstr(g_symbol_912, 0, 1) != " " && gs_1468 == "Buy") gd_1024 -= 1.0 * MarketInfo(g_symbol_912, MODE_POINT);
      if (StringSubstr(g_symbol_920, 0, 1) != " " && gs_1476 == "Buy") gd_1032 -= 1.0 * MarketInfo(g_symbol_920, MODE_POINT);
      if (StringSubstr(g_symbol_928, 0, 1) != " " && gs_1484 == "Buy") gd_1040 -= 1.0 * MarketInfo(g_symbol_928, MODE_POINT);
      if (StringSubstr(g_symbol_936, 0, 1) != " " && gs_1492 == "Buy") gd_1048 -= 1.0 * MarketInfo(g_symbol_936, MODE_POINT);
      if (StringSubstr(g_symbol_912, 0, 1) != " " && gs_1468 == "Sell") gd_1024 += 1.0 * MarketInfo(g_symbol_912, MODE_POINT);
      if (StringSubstr(g_symbol_920, 0, 1) != " " && gs_1476 == "Sell") gd_1032 += 1.0 * MarketInfo(g_symbol_920, MODE_POINT);
      if (StringSubstr(g_symbol_928, 0, 1) != " " && gs_1484 == "Sell") gd_1040 += 1.0 * MarketInfo(g_symbol_928, MODE_POINT);
      if (StringSubstr(g_symbol_936, 0, 1) != " " && gs_1492 == "Sell") gd_1048 += 1.0 * MarketInfo(g_symbol_936, MODE_POINT);
      gd_1200 = CalculateShadowProfit("current");
      if (gd_1200 >= ad_0) {
      }
      WriteOrderOpenPrices();
   }
   return (0);
}

double CalculateShadowProfit(string as_0) {
   if (gi_1552 == FALSE) {
      if (gi_512 == TRUE) {
         gd_1528 = accountbalance;
         gd_1536 = margin;
         margin = StandardMargin;
         accountbalance = StandardBalance;
         margin *= 400 / AccountLeverage();
         gd_1312 = gd_1248;
         gd_1320 = gd_1256;
         gd_1328 = gd_1264;
         gd_1336 = gd_1272;
         gd_1248 = gd_1280;
         gd_1256 = gd_1288;
         gd_1264 = gd_1296;
         gd_1272 = gd_1304;
         SetCurrenciesAndLotSize2();
         SetForwardActions2();
         gd_1024 = shadowopen1;
         gd_1032 = shadowopen2;
         gd_1040 = gd_596;
         gd_1048 = gd_620;
      }
      SetCurrenciesAndLotSize2();
      SetForwardActions2();
      if (as_0 == "current" || as_0 == "ask") calculateprofit("current");
      if (as_0 == "average") calculateprofit("average");
      SetCurrenciesAndLotSize();
      SetForwardActions();
      if (gi_512 == TRUE) {
         accountbalance = gd_1528;
         margin = gd_1536;
         gd_1248 = gd_1312;
         gd_1256 = gd_1320;
         gd_1264 = gd_1328;
         gd_1272 = gd_1336;
      }
      SetCurrenciesAndLotSize();
      SetForwardActions();
   }
   if ((gi_1552 == TRUE && as_0 == "current") || (gi_1552 == TRUE && as_0 == "ask" && AllowForSpread == FALSE)) gd_1184 = MarketInfo(g_symbol_912, MODE_BID);
   if (gi_1552 == TRUE && as_0 == "ask" && AllowForSpread == TRUE) gd_1184 = MarketInfo(g_symbol_912, MODE_ASK);
   if (gi_1552 == TRUE && as_0 == "average") gd_1184 = gma(g_symbol_912);
   return (gd_1184);
}

int checkhalfhedge() {
   bool li_0 = FALSE;
   bool li_4 = FALSE;
   bool li_8 = FALSE;
   bool li_12 = FALSE;
   int li_16 = 0;
   int li_20 = 0;
   int li_24 = 0;
   int li_28 = 0;
   if (StringSubstr(g_symbol_912, 0, 1) != " ") li_0 = TRUE;
   if (StringSubstr(g_symbol_920, 0, 1) != " ") li_4 = TRUE;
   if (StringSubstr(g_symbol_928, 0, 1) != " ") li_8 = TRUE;
   if (StringSubstr(g_symbol_936, 0, 1) != " ") li_12 = TRUE;
   if (li_0 != FALSE) li_16 = search_for(gia_880[g_index_1556]);
   if (li_4 != FALSE) li_20 = search_for(gia_884[g_index_1556]);
   if (li_8 != FALSE) li_24 = search_for(gia_888[g_index_1556]);
   if (li_12 != FALSE) li_28 = search_for(gia_892[g_index_1556]);
   if (li_20 != 0 || li_24 != 0 || li_28 != 0 && (li_16 == 0 && li_0 != FALSE)) {
      if (gs_1468 == "Sell") open_sell_market(gia_880[g_index_1556], gd_1248, g_symbol_912);
      if (gs_1468 == "Buy") open_buy_market(gia_880[g_index_1556], gd_1248, g_symbol_912);
   }
   if (li_16 != 0 || li_24 != 0 || li_28 != 0 && (li_20 == 0 && li_4 != FALSE)) {
      if (gs_1476 == "Sell") open_sell_market(gia_884[g_index_1556], gd_1256, g_symbol_920);
      if (gs_1476 == "Buy") open_buy_market(gia_884[g_index_1556], gd_1256, g_symbol_920);
   }
   if (li_16 != 0 || li_20 != 0 || li_28 != 0 && (li_24 == 0 && li_8 != FALSE)) {
      if (gs_1484 == "Sell") open_sell_market(gia_888[g_index_1556], gd_1264, g_symbol_928);
      if (gs_1484 == "Buy") open_buy_market(gia_888[g_index_1556], gd_1264, g_symbol_928);
   }
   if (li_16 != 0 || li_20 != 0 || li_24 != 0 && (li_28 == 0 && li_12 != FALSE)) {
      if (gs_1492 == "Sell") open_sell_market(gia_892[g_index_1556], gd_1272, g_symbol_936);
      if (gs_1492 == "Buy") open_buy_market(gia_892[g_index_1556], gd_1272, g_symbol_936);
   }
   return (0);
}

double gma(string a_symbol_0) {
   double l_ima_8 = 0.0;
   int l_period_16 = MA_Period;
   if (l_period_16 == 0) l_period_16 = 36;
   int li_20 = 0;
   int l_timeframe_24 = 60;
   l_ima_8 = iMA(a_symbol_0, l_timeframe_24, l_period_16, li_20, MODE_SMA, PRICE_TYPICAL, BarToUse);
   return (l_ima_8);
}

int ArraySetUp() {
   ArrayInitialize(gda_864, 0.0);
   ArrayInitialize(gda_868, 0.0);
   ArrayInitialize(gda_872, 0.0);
   ArrayInitialize(gda_876, 0.0);
   ArrayInitialize(gia_880, 0);
   ArrayInitialize(gia_884, 0);
   ArrayInitialize(gia_888, 0);
   ArrayInitialize(gia_892, 0);
   ArrayInitialize(gda_1572, 0.0);
   gi_1708 = 1;
   gi_1712 = 1000;
   g_count_1688 = 0;
   g_index_1556 = gi_1708 - 1;
   while (g_index_1556 < gi_1712) {
      g_index_1556++;
      g_count_1688++;
      if (gi_1552 == TRUE) {
         gda_864[g_index_1556] = RangeStart + (TradeRange * MarketInfo(g_symbol_912, MODE_POINT) + GapBetween * MarketInfo(g_symbol_912, MODE_POINT)) * (g_count_1688 - 1);
         gda_868[g_index_1556] = gda_864[g_index_1556] + TradeRange * MarketInfo(g_symbol_912, MODE_POINT);
         gda_872[g_index_1556] = gda_868[g_index_1556];
         gda_876[g_index_1556] = gda_864[g_index_1556];
         gda_864[g_index_1556] += Shift * MarketInfo(g_symbol_912, MODE_POINT);
         gda_868[g_index_1556] += Shift * MarketInfo(g_symbol_912, MODE_POINT);
         gda_872[g_index_1556] += Shift * MarketInfo(g_symbol_912, MODE_POINT);
         gda_876[g_index_1556] += Shift * MarketInfo(g_symbol_912, MODE_POINT);
         gd_1576 = TradeWindow * (1.0 * MarketInfo(g_symbol_912, MODE_POINT));
         gda_1572[g_index_1556] = EAProfit();
      }
      if (gi_1552 == FALSE) {
         gda_864[g_index_1556] = RangeStart + TradeRange * (g_count_1688 - 1) + Shift;
         gda_868[g_index_1556] = gda_864[g_index_1556] + TradeRange;
         gda_872[g_index_1556] = gda_868[g_index_1556];
         gda_876[g_index_1556] = gda_864[g_index_1556];
         gd_1576 = TradeWindow;
      }
      gia_880[g_index_1556] = MagicNumber1 + (g_index_1556 - 1);
      gia_884[g_index_1556] = MagicNumber2 + (g_index_1556 - 1);
      gia_888[g_index_1556] = gi_840 + (g_index_1556 - 1);
      gia_892[g_index_1556] = gi_844 + (g_index_1556 - 1);
      gda_1572[g_index_1556] = EAProfit();
   }
   g_ilow_1640 = 10000.0;
   g_ilow_1640 = iLow(g_symbol_912, PERIOD_D1, 0);
   for (int li_0 = 0; li_0 <= LookBackDays; li_0++)
      if (iLow(g_symbol_912, PERIOD_D1, li_0) < g_ilow_1640) g_ilow_1640 = iLow(g_symbol_912, PERIOD_D1, li_0);
   g_ihigh_1648 = 0.0;
   g_ihigh_1648 = iHigh(g_symbol_912, PERIOD_D1, 0);
   for (li_0 = 0; li_0 <= LookBackDays; li_0++)
      if (iHigh(g_symbol_912, PERIOD_D1, li_0) > g_ihigh_1648) g_ihigh_1648 = iHigh(g_symbol_912, PERIOD_D1, li_0);
   g_ihigh_1648 = NormalizeDouble(g_ihigh_1648, MarketInfo(g_symbol_912, MODE_DIGITS));
   g_ilow_1640 = NormalizeDouble(g_ilow_1640, MarketInfo(g_symbol_912, MODE_DIGITS));
   gd_1656 = (g_ihigh_1648 + g_ilow_1640) / 2.0;
   gd_1656 = NormalizeDouble(gd_1656, MarketInfo(g_symbol_912, MODE_DIGITS));
   g_count_1688 = 0;
   g_index_1556 = 0;
   while (g_index_1556 < 1000) {
      g_index_1556++;
      if (gi_1676 >= g_index_1556) gi_488 = TRUE;
      if (gi_1676 < g_index_1556) gi_488 = FALSE;
      if (gi_1680 > g_index_1556) gi_492 = FALSE;
      if (gi_1680 <= g_index_1556) gi_492 = TRUE;
      if (gd_1200 >= gda_864[g_index_1556] && gd_1200 <= gda_868[g_index_1556]) {
         gi_1560 = g_index_1556;
         gi_1564 = gi_488;
         gi_1568 = gi_492;
      }
      if (gd_1656 >= gda_864[g_index_1556] && gd_1656 <= gda_868[g_index_1556]) gi_1672 = g_index_1556;
      if (g_ihigh_1648 >= gda_864[g_index_1556] && g_ihigh_1648 <= gda_868[g_index_1556]) gi_1664 = g_index_1556;
      if (g_ilow_1640 >= gda_864[g_index_1556] && g_ilow_1640 <= gda_868[g_index_1556]) gi_1668 = g_index_1556;
      gda_1572[g_index_1556] = EAProfit();
   }
   gi_1676 = ForwardEnd;
   gi_1680 = ReverseStart;
   if (gi_1684 == 1 && gd_1200 > gd_1656 && UseDynamicGrid == FALSE) {
      if (ForwardEnd == 0 && gi_1664 != 0) gi_1676 = gi_1664 - 1;
      if (ReverseStart == 0 && gi_1672 != 0) gi_1680 = gi_1672;
   }
   if (gi_1684 == 1 && gd_1200 < gd_1656 && UseDynamicGrid == FALSE) {
      if (ReverseStart == 0 && gi_1668 != 0) gi_1680 = gi_1668 + 1;
      if (ForwardEnd == 0 && gi_1672 != 0) gi_1676 = gi_1672;
   }
   if (gi_1684 == 0 && UseDynamicGrid == FALSE) {
      if (gi_1676 == 0) gi_1676 = gi_1672;
      if (gi_1680 == 0) gi_1680 = gi_1672;
   }
   if (gi_1676 == 0 && UseDynamicGrid == FALSE) gi_1676 = Instances;
   if (gi_1680 == 0 && UseDynamicGrid == FALSE) gi_1680 = 1;
   return (0);
}

int LevelSetup() {
   double ld_0 = 0.0;
   double ld_8 = gi_1728 + gi_1732;
   if (ld_8 == 0.0) ld_8 = 1;
   if (PowerLevel == -1) {
      if (AccountEquity() / AccountBalance() >= Level1 && gi_1756 != 95) {
         TradeRange = gi_1728;
         GapBetween = gi_1732;
         Instances = gi_1724;
         ForwardEnd = gi_1716;
         ReverseStart = gi_1720;
         gi_1756 = 95;
         gi_1676 = ForwardEnd;
         gi_1680 = ReverseStart;
         ArraySetUp();
      }
      if (gi_1756 != 86 && AccountEquity() / AccountBalance() < Level1 && AccountEquity() / AccountBalance() >= Level2) {
         TradeRange = Range1;
         GapBetween = gi_1736;
         ld_0 = (Range1 + gi_1736) / ld_8;
         Instances = gi_1724 / ld_0;
         ForwardEnd = gi_1716 / ld_0;
         ReverseStart = gi_1720 / ld_0;
         gi_1756 = 86;
         gi_1676 = ForwardEnd;
         gi_1680 = ReverseStart;
         ArraySetUp();
      }
      if (gi_1756 != 75 && AccountEquity() / AccountBalance() < Level2 && AccountEquity() / AccountBalance() >= Level3) {
         TradeRange = Range2;
         GapBetween = gi_1740;
         ld_0 = (Range2 + gi_1740) / ld_8;
         Instances = gi_1724 / ld_0;
         ForwardEnd = gi_1716 / ld_0;
         ReverseStart = gi_1720 / ld_0;
         gi_1756 = 75;
         gi_1676 = ForwardEnd;
         gi_1680 = ReverseStart;
         ArraySetUp();
      }
      if (gi_1756 != 70 && AccountEquity() / AccountBalance() < Level3) {
         TradeRange = Range3;
         GapBetween = gi_1744;
         ld_0 = (Range3 + gi_1744) / ld_8;
         Instances = gi_1724 / ld_0;
         ForwardEnd = gi_1716 / ld_0;
         ReverseStart = gi_1720 / ld_0;
         gi_1756 = 70;
         gi_1676 = ForwardEnd;
         gi_1680 = ReverseStart;
         ArraySetUp();
      }
   }
   if (PowerLevel == 1) {
      if (gi_1756 != 861 && AccountEquity() / AccountBalance() >= Level1) {
         TradeRange = Range1;
         GapBetween = gi_1736;
         ld_0 = (Range1 + gi_1736) / ld_8;
         Instances = gi_1724 / ld_0;
         ForwardEnd = gi_1716 / ld_0;
         ReverseStart = gi_1720 / ld_0;
         gi_1756 = 861;
         gi_1676 = ForwardEnd;
         gi_1680 = ReverseStart;
         ArraySetUp();
      }
      if (gi_1756 != 751 && AccountEquity() / AccountBalance() < Level1 && AccountEquity() / AccountBalance() >= Level2) {
         TradeRange = Range2;
         GapBetween = gi_1740;
         ld_0 = (Range2 + gi_1740) / ld_8;
         Instances = gi_1724 / ld_0;
         ForwardEnd = gi_1716 / ld_0;
         ReverseStart = gi_1720 / ld_0;
         gi_1756 = 751;
         gi_1676 = ForwardEnd;
         gi_1680 = ReverseStart;
         ArraySetUp();
      }
      if (gi_1756 != 701 && AccountEquity() / AccountBalance() < Level2) {
         TradeRange = Range3;
         GapBetween = gi_1744;
         ld_0 = (Range3 + gi_1744) / ld_8;
         Instances = gi_1724 / ld_0;
         ForwardEnd = gi_1716 / ld_0;
         ReverseStart = gi_1720 / ld_0;
         gi_1756 = 701;
         gi_1676 = ForwardEnd;
         gi_1680 = ReverseStart;
         ArraySetUp();
      }
   }
   if (PowerLevel == 2) {
      if (gi_1756 != 862 && AccountEquity() / AccountBalance() >= Level1) {
         TradeRange = Range2;
         GapBetween = gi_1740;
         ld_0 = (Range2 + gi_1740) / ld_8;
         Instances = gi_1724 / ld_0;
         ForwardEnd = gi_1716 / ld_0;
         ReverseStart = gi_1720 / ld_0;
         gi_1756 = 862;
         gi_1676 = ForwardEnd;
         gi_1680 = ReverseStart;
         ArraySetUp();
      }
      if (gi_1756 != 752 && AccountEquity() / AccountBalance() < Level1 && AccountEquity() / AccountBalance() >= Level2) {
         TradeRange = Range3;
         GapBetween = gi_1744;
         ld_0 = (Range3 + gi_1744) / ld_8;
         Instances = gi_1724 / ld_0;
         ForwardEnd = gi_1716 / ld_0;
         ReverseStart = gi_1720 / ld_0;
         gi_1756 = 752;
         gi_1676 = ForwardEnd;
         gi_1680 = ReverseStart;
         ArraySetUp();
      }
      if (gi_1756 != 702 && AccountEquity() / AccountBalance() < Level2) {
         TradeRange = Range4;
         GapBetween = gi_1748;
         ld_0 = (Range4 + gi_1748) / ld_8;
         Instances = gi_1724 / ld_0;
         ForwardEnd = gi_1716 / ld_0;
         ReverseStart = gi_1720 / ld_0;
         gi_1756 = 702;
         gi_1676 = ForwardEnd;
         gi_1680 = ReverseStart;
         ArraySetUp();
      }
   }
   if (PowerLevel == 3) {
      if (gi_1756 != 863 && AccountEquity() / AccountBalance() >= Level1) {
         TradeRange = Range3;
         GapBetween = gi_1744;
         ld_0 = (Range3 + gi_1744) / ld_8;
         Instances = gi_1724 / ld_0;
         ForwardEnd = gi_1716 / ld_0;
         ReverseStart = gi_1720 / ld_0;
         gi_1756 = 863;
         gi_1676 = ForwardEnd;
         gi_1680 = ReverseStart;
         ArraySetUp();
      }
      if (gi_1756 != 753 && AccountEquity() / AccountBalance() < Level1 && AccountEquity() / AccountBalance() >= Level2) {
         TradeRange = Range4;
         GapBetween = gi_1748;
         ld_0 = (Range4 + gi_1748) / ld_8;
         Instances = gi_1724 / ld_0;
         ForwardEnd = gi_1716 / ld_0;
         ReverseStart = gi_1720 / ld_0;
         gi_1756 = 753;
         gi_1676 = ForwardEnd;
         gi_1680 = ReverseStart;
         ArraySetUp();
      }
      if (gi_1756 != 703 && AccountEquity() / AccountBalance() < Level2) {
         TradeRange = Range5;
         GapBetween = gi_1752;
         ld_0 = (Range5 + gi_1752) / ld_8;
         Instances = gi_1724 / ld_0;
         ForwardEnd = gi_1716 / ld_0;
         ReverseStart = gi_1720 / ld_0;
         gi_1756 = 703;
         gi_1676 = ForwardEnd;
         gi_1680 = ReverseStart;
         ArraySetUp();
      }
   }
   gi_1676 = ForwardEnd;
   gi_1680 = ReverseStart;
   gi_1692 = FirstInstance + Instances;
   return (0);
}

/// Everything below is license check..... Really not needed but left to show what it looks like..
int Decoder() {
   bool li_ret_0 = FALSE;
   bool li_4 = TRUE;
   int l_acc_number_8 = AccountNumber();
   int li_12 = StrToInteger(StringSubstr(UnlockCode, 1, 2)) - 2;
   int li_16 = StrToInteger(StringSubstr(UnlockCode, 3, 2)) - 3;
   string l_dbl2str_20 = DoubleToStr(StrToInteger(StringSubstr(UnlockCode, 5, 2)) - 2, 0);
   string ls_28 = StringSubstr(UnlockCode, 7, 1);
   string ls_36 = StringSubstr(UnlockCode, 8, 1);
   string ls_44 = ls_36 + ls_28;
   ls_36 = DoubleToStr(StrToInteger(ls_44) - 2, 0);
   string ls_52 = l_dbl2str_20 + ls_36;
   int l_str2int_60 = StrToInteger(ls_52);
   if (Year() > l_str2int_60 || Month() > li_12 || (Day() > li_16 && Month() >= li_12)) {
      Comment("\n\nExpert Has Expired");
      li_4 = TRUE;
   }
   string ls_64 = StringSubstr(UnlockCode, 0, 1) + StringSubstr(UnlockCode, 9, StringLen(UnlockCode) - 9);
   int li_72 = StrToInteger(ls_64);
   li_72 += 277;
   li_72 /= 3;
   li_72 += 17;
   li_72 /= 2;
   if (!IsDemo() && li_72 == l_acc_number_8 && li_4 == FALSE) li_ret_0 = TRUE;
   if (IsDemo() && li_4 == FALSE) li_ret_0 = TRUE;
   return (li_ret_0);
}

int LookupLiveAccountNumbers() {
   int li_0 = 0;
   if (AccountNumber() == 29289) gi_1504 = TRUE;
   if (AccountNumber() == 28180) gi_1504 = TRUE;
   if (AccountNumber() == 24613) gi_1504 = TRUE;
   if (AccountNumber() == 66576) gi_1504 = TRUE;
   if (AccountNumber() == 11613) gi_1504 = TRUE;
   if (AccountNumber() == 20711) gi_1504 = TRUE;
   return (gi_1504);
}