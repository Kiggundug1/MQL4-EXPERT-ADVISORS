#property copyright "RoboMiner"
#property link      "http://www.forex-goldmine.com"

string gs_76 = "RoboMiner II - 2.18";
extern string Version = "RoboMiner II - 2.18";
extern string webpage = "http://www.forex-goldmine.com";
string gs_100 = "http://www.forex-goldmine.com";
extern string Warning = "If true, this will close all open trades.";
extern string Warning2 = "Use only in an emergency.";
extern bool EmergencyCloseAllTrades = FALSE;
extern int DisplayLevel = 0;
extern bool AllowForSpread = TRUE;
extern bool StealthMode = FALSE;
extern bool AllowInternalClose = TRUE;
extern bool FIFO = FALSE;
extern double EquityPercentTakeProfit = 101.5;
extern bool DoTrades = TRUE;
extern bool Send_EMail = FALSE;
bool gi_176 = FALSE;
string gs_unused_180 = "If set to false, then ranges will be 40 pips.";
bool gi_188 = FALSE;
extern string _BalanceFactor = "should be minimum of 2000 and on up";
extern string _BalanceFactor2 = "Leave at 0.0 for auto calculation";
extern double BalanceFactor = 0.0;
extern string Leave = "Lots as 0.0 for auto-calculation from BalanceFactor.";
extern double Lots = 0.0;
string gs_unused_232 = "AUDNZD at 50 pips: 1=40,  2=30,  3=24";
string gs_unused_240 = "AUDNZD at 40 pips: 1=50,  2=36";
string gs_unused_248 = "EURCHF at 50 pips: 1=51,  2=42";
string gs_unused_256 = "EURCHF at 40 pips: 1=64,  2=50";
int gi_264 = 1;
extern int MagicNumber1 = 510001;
int gi_272 = 60;
bool gi_276 = FALSE;
bool gi_280 = TRUE;
int gi_284 = 15;
int gi_288 = 15;
int gi_292 = 0;
int gi_296 = 29;
int gi_300 = 50;
int gi_304 = 0;
double gd_308 = 1.07;
int gi_316 = 0;
int gi_320 = 5;
int gi_324 = 0;
int gi_364 = 2;
int gi_368 = 25;
double gd_372 = 0.0;
bool gi_396 = TRUE;
bool gi_460 = FALSE;
bool gi_464 = FALSE;
double g_ilow_468 = 0.0;
double g_ihigh_476 = 0.0;
double gd_532 = 15.0;
double gda_548[101];
double gda_552[101];
double gda_556[101];
double gda_560[101];
int gia_564[101];
int gi_580 = 60;
string gs_584 = "  ";
double gd_616 = -1000000.0;
double gd_624 = 1000000.0;
double gd_632 = -1000000.0;
double gd_640 = 1000000.0;
double gd_648 = 0.0;
double gd_656 = 0.0;
double g_free_magrin_664 = 0.0;
double g_free_magrin_672 = 0.0;
double gd_680 = 0.0;
double gd_688 = 0.0;
double gd_unused_696 = 0.0;
double gd_unused_704 = 0.0;
double gd_unused_712 = 0.0;
double gd_unused_720 = 0.0;
double gd_unused_728 = 0.0;
double gd_unused_736 = 0.0;
double gd_unused_744 = 0.0;
double gd_unused_752 = 0.0;
double gd_unused_760 = 0.0;
double gd_unused_768 = 0.0;
double gd_unused_776 = 0.0;
double gd_unused_784 = 0.0;
double gd_unused_792 = 0.0;
double gd_unused_800 = 0.0;
double gd_unused_808 = 0.0;
double gd_unused_816 = 0.0;
double gd_unused_824 = 0.0;
double gd_unused_832 = 0.0;
double gd_unused_840 = 0.0;
double gd_unused_848 = 0.0;
double g_price_856 = 0.0;
double gd_unused_864 = 0.0;
double gd_872 = 0.0;
double gd_880 = 0.0;
double gd_unused_888 = 0.0;
double gd_unused_896 = 0.0;
double gd_unused_904 = 0.0;
double gd_unused_912 = 0.0;
double gd_920 = 0.0;
double gd_unused_928 = 0.0;
double gd_unused_936 = 0.0;
double gd_unused_944 = 0.0;
double gd_unused_952 = 0.0;
double gd_unused_960 = 0.0;
double gd_unused_968 = 0.0;
double gd_unused_976 = 0.0;
double gd_unused_984 = 0.0;
double gd_unused_992 = 0.0;
double gd_unused_1000 = 0.0;
double gd_unused_1008 = 0.0;
int gi_1016 = 0;
int g_error_1020 = 0/* NO_ERROR */;
int gi_1024 = 10;
int g_count_1028 = 4;
int gi_unused_1032 = 0;
double gd_unused_1036 = 0.0;
double gd_unused_1044 = 0.0;
double g_lotsize_1052 = 0.0;
double gd_unused_1060 = 0.0;
double gd_unused_1068 = 0.0;
double gd_unused_1076 = 0.0;
double gd_unused_1084 = 0.0;
double gd_unused_1092 = 0.0;
double gd_unused_1100 = 0.0;
double gd_unused_1108 = 0.0;
double gd_unused_1116 = 0.0;
double gd_unused_1124 = 0.0;
double gd_unused_1132 = 0.0;
string gs_1140 = "   ";
string gs_unused_1148 = "   ";
string gs_unused_1156 = "   ";
string gs_unused_1164 = "   ";
int gi_unused_1172 = 0;
int gi_1176 = 0;
bool gi_1180 = FALSE;
int gi_unused_1184 = 0;
int gi_1188 = 0;
double gd_unused_1192 = 0.0;
double gd_unused_1200 = 0.0;
double gd_unused_1208 = 0.0;
int gi_unused_1216 = 0;
int gi_unused_1220 = 0;
bool gi_1224 = FALSE;
bool gi_1228 = FALSE;
int gi_1232 = 0;
int gi_1236 = 0;
bool gi_1240 = FALSE;
bool gi_1244 = FALSE;
double gda_1248[101];
double gd_1252 = 0.0;
string g_comment_1260 = " ";
string gs_unused_1268 = " ";
string gs_unused_1276 = " ";
string gs_unused_1284 = " ";
string gs_unused_1292 = " ";
int g_digits_1300 = 2;
bool gi_1304 = TRUE;
double gd_1308 = 0.0;
double g_ihigh_1316 = 0.0;
double g_ilow_1324 = 0.0;
int gi_1332 = 0;
int gi_1336 = 0;
int gi_1340 = 0;
int gi_1344 = 0;
int gi_1348 = 0;
double gd_unused_1352 = 0.0;
int gi_1360 = 0;
int gi_1364 = 0;
int gi_1368 = 0;
int g_count_1372 = 0;
bool gi_1376 = TRUE;
int gi_1380 = 0;
double gd_1384 = 0.0;
int gi_unused_1392 = 0;
double gd_1396 = 0.0;
double gd_1404 = 0.0;

int init() {
   int li_0;
   if (EquityPercentTakeProfit > 0.0 && EquityPercentTakeProfit < 100.05) {
      Comment("EquitPercentProfit must either be 0 or greater than 100 ");
      return (0);
   }
   if (Symbol() != "AUDNZD" && Symbol() != "AUDNZDm" && StringSubstr(Symbol(), 0, 6) != "AUDNZD") {
      if (Symbol() != "EURCHF" && Symbol() != "EURCHFm" && StringSubstr(Symbol(), 0, 6) != "EURCHF") {
         Comment("Expert Only Trades on the AUD/NZD or EUR/CHF");
         return (0);
      }
   }
   if (gi_176 == TRUE) gi_1304 = FALSE;
   if (gi_176 == FALSE) gi_1304 = TRUE;
   if (AllowInternalClose == FALSE) StealthMode = FALSE;
   if (StealthMode == TRUE) AllowInternalClose = TRUE;
   gi_1380 = FALSE;
   if (gi_264 != 1 && gi_264 != 2 && gi_264 != 3 && gi_264 != 9 && gi_264 < 10) gi_264 = 2;
   if (gi_188 == TRUE) {
      if (Symbol() == "AUDNZD" || Symbol() == "AUDNZDm" || StringSubstr(Symbol(), 0, 6) == "AUDNZD") {
         if (gi_264 == 2) {
            gd_308 = 1.07;
            gd_308 = StartPoint() * Point + 1.065;
            if (Digits == 5) gd_308 = 10.0 * StartPoint() * Point + 1.065;
            gi_300 = 50;
            gi_1364 = 7;
            gi_296 = 40;
            gi_1368 = gi_1364 + gi_296 - 1;
            gi_284 = 27;
            gi_288 = 27;
         }
         if (gi_264 == 1) {
            gd_308 = 1.045;
            gd_308 = StartPoint() * Point + 1.04;
            if (Digits == 5) gd_308 = 10.0 * StartPoint() * Point + 1.04;
            gi_300 = 50;
            gi_1364 = 2;
            gi_296 = 54;
            gi_1368 = gi_1364 + gi_296 - 1;
            gi_284 = 27;
            gi_288 = 27;
         }
         if (gi_264 == 3) {
            gd_308 = 1.085;
            gd_308 = StartPoint() * Point + 1.08;
            if (Digits == 5) gd_308 = 10.0 * StartPoint() * Point + 1.08;
            gi_300 = 50;
            gi_1364 = 10;
            gi_296 = 30;
            gi_1368 = gi_1364 + gi_296 - 1;
            gi_284 = 27;
            gi_288 = 27;
         }
         if (gi_264 == 9) {
            gd_308 = 1.04;
            gd_308 = StartPoint() * Point + 1.035;
            if (Digits == 5) gd_308 = 10.0 * StartPoint() * Point + 1.035;
            gi_300 = 50;
            gi_1364 = 1;
            gi_296 = 54;
            gi_1368 = gi_1364 + gi_296 - 1;
            gi_284 = 27;
            gi_288 = 27;
         }
         if (gi_264 > 9) {
            gd_308 = 1.04;
            gd_308 = StartPoint() * Point + 1.035;
            if (Digits == 5) gd_308 = 10.0 * StartPoint() * Point + 1.035;
            gi_300 = 50;
            gi_1364 = 1;
            gi_296 = gi_264;
            gi_1368 = gi_1364 + gi_296 - 1;
            gi_284 = gi_296 / 2;
            gi_288 = gi_296 / 2;
         }
      }
      if (Symbol() == "EURCHF" || Symbol() == "EURCHFm" || StringSubstr(Symbol(), 0, 6) == "EURCHF") {
         if (gi_264 == 2) {
            gd_308 = 1.459;
            gd_308 = StartPoint() * Point + 1.454;
            if (Digits == 5) gd_308 = 10.0 * StartPoint() * Point + 1.434;
            gi_300 = 50;
            gi_1364 = 5;
            gi_296 = 42;
            gi_1368 = gi_1364 + gi_296 - 1;
            gi_284 = 26;
            gi_288 = 26;
         }
         if (gi_264 == 1) {
            gd_308 = 1.439;
            gd_308 = StartPoint() * Point + 1.434;
            if (Digits == 5) gd_308 = 10.0 * StartPoint() * Point + 1.434;
            gi_300 = 50;
            gi_1364 = 1;
            gi_296 = 52;
            gi_1368 = gi_1364 + gi_296 - 1;
            gi_284 = 26;
            gi_288 = 26;
         }
         if (gi_264 == 3) {
            gd_308 = 1.439;
            gd_308 = StartPoint() * Point + 1.434;
            if (Digits == 5) gd_308 = 10.0 * StartPoint() * Point + 1.434;
            gi_300 = 50;
            gi_1364 = 1;
            gi_296 = 52;
            gi_1368 = gi_1364 + gi_296 - 1;
            gi_284 = 26;
            gi_288 = 26;
         }
         if (gi_264 == 9) {
            gd_308 = 1.439;
            gd_308 = StartPoint() * Point + 1.434;
            if (Digits == 5) gd_308 = 10.0 * StartPoint() * Point + 1.434;
            gi_300 = 50;
            gi_1364 = 1;
            gi_296 = 52;
            gi_1368 = gi_1364 + gi_296 - 1;
            gi_284 = 26;
            gi_288 = 26;
         }
         if (gi_264 > 9) {
            gd_308 = 1.439;
            gd_308 = StartPoint() * Point + 1.434;
            if (Digits == 5) gd_308 = 10.0 * StartPoint() * Point + 1.434;
            gi_300 = 50;
            gi_1364 = 1;
            gi_296 = gi_264;
            gi_1368 = gi_1364 + gi_296 - 1;
            gi_284 = gi_296 / 2;
            gi_288 = gi_296 / 2;
         }
      }
   }
   if (gi_188 == FALSE) {
      if (Symbol() == "AUDNZD" || Symbol() == "AUDNZDm" || StringSubstr(Symbol(), 0, 6) == "AUDNZD") {
         if (gi_264 == 2) {
            gd_308 = 1.07;
            gd_308 = StartPoint() * Point + 1.065;
            if (Digits == 5) gd_308 = 10.0 * StartPoint() * Point + 1.065;
            gi_300 = 40;
            gi_1364 = 8;
            gi_296 = 50;
            gi_1368 = gi_1364 + gi_296 - 1;
            gi_284 = 33;
            gi_288 = 33;
         }
         if (gi_264 == 1) {
            gd_308 = 1.042;
            gd_308 = StartPoint() * Point + 1.037;
            if (Digits == 5) gd_308 = 10.0 * StartPoint() * Point + 1.037;
            gi_300 = 40;
            gi_1364 = 1;
            gi_296 = 66;
            gi_1368 = gi_1364 + gi_296 - 1;
            gi_284 = 33;
            gi_288 = 33;
         }
         if (gi_264 == 3) {
            gd_308 = 1.07;
            gd_308 = StartPoint() * Point + 1.065;
            if (Digits == 5) gd_308 = 10.0 * StartPoint() * Point + 1.065;
            gi_300 = 40;
            gi_1364 = 8;
            gi_296 = 50;
            gi_1368 = gi_1364 + gi_296 - 1;
            gi_284 = 33;
            gi_288 = 33;
         }
         if (gi_264 == 9) {
            gd_308 = 1.042;
            gd_308 = StartPoint() * Point + 1.037;
            if (Digits == 5) gd_308 = 10.0 * StartPoint() * Point + 1.037;
            gi_300 = 40;
            gi_1364 = 1;
            gi_296 = 66;
            gi_1368 = gi_1364 + gi_296 - 1;
            gi_284 = 33;
            gi_288 = 33;
         }
         if (gi_264 > 9) {
            gd_308 = 1.042;
            gd_308 = StartPoint() * Point + 1.037;
            if (Digits == 5) gd_308 = 10.0 * StartPoint() * Point + 1.037;
            gi_300 = 40;
            gi_1364 = 1;
            gi_296 = gi_264;
            gi_1368 = gi_1364 + gi_296 - 1;
            gi_284 = gi_296 / 2;
            gi_288 = gi_296 / 2;
         }
      }
      if (Symbol() == "EURCHF" || Symbol() == "EURCHFm" || StringSubstr(Symbol(), 0, 6) == "EURCHF") {
         if (gi_264 == 2) {
            gd_308 = 1.463;
            gd_308 = StartPoint() * Point + 1.458;
            if (Digits == 5) gd_308 = 10.0 * StartPoint() * Point + 1.458;
            gi_300 = 40;
            gi_1364 = 7;
            gi_296 = 50;
            gi_1368 = gi_1364 + gi_296 - 1;
            gi_284 = 31;
            gi_288 = 31;
         }
         if (gi_264 == 1) {
            gd_308 = 1.439;
            gd_308 = StartPoint() * Point + 1.434;
            if (Digits == 5) gd_308 = 10.0 * StartPoint() * Point + 1.434;
            gi_300 = 40;
            gi_1364 = 1;
            gi_296 = 64;
            gi_1368 = gi_1364 + gi_296 - 1;
            gi_284 = 31;
            gi_288 = 31;
         }
         if (gi_264 == 3) {
            gd_308 = 1.463;
            gd_308 = StartPoint() * Point + 1.458;
            if (Digits == 5) gd_308 = 10.0 * StartPoint() * Point + 1.458;
            gi_300 = 40;
            gi_1364 = 7;
            gi_296 = 50;
            gi_1368 = gi_1364 + gi_296 - 1;
            gi_284 = 31;
            gi_288 = 31;
         }
         if (gi_264 == 9) {
            gd_308 = 1.439;
            gd_308 = StartPoint() * Point + 1.434;
            if (Digits == 5) gd_308 = 10.0 * StartPoint() * Point + 1.434;
            gi_300 = 40;
            gi_1364 = 1;
            gi_296 = 64;
            gi_1368 = gi_1364 + gi_296 - 1;
            gi_284 = 31;
            gi_288 = 31;
         }
         if (gi_264 > 9) {
            gd_308 = 1.439;
            gd_308 = StartPoint() * Point + 1.434;
            if (Digits == 5) gd_308 = 10.0 * StartPoint() * Point + 1.434;
            gi_300 = 40;
            gi_1364 = 1;
            gi_296 = gi_264;
            gi_1368 = gi_1364 + gi_296 - 1;
            gi_284 = gi_296 / 2;
            gi_288 = gi_296 / 2;
         }
      }
   }
   if (Digits == 5) {
      gi_300 = 10 * gi_300;
      gi_320 = 50;
      gi_368 = 160;
   }
   CalculateHighsAndLows();
   gi_1228 = TRUE;
   gs_584 = Symbol();
   if (gi_1228 == TRUE) g_comment_1260 = "RoboMiner II ";
   if (gi_1228 == FALSE) g_comment_1260 = "RoboMiner II ";
   if (gi_1228 == TRUE) g_digits_1300 = Digits;
   if (gi_1228 == FALSE) g_digits_1300 = 2;
   gi_unused_1220 = 0;
   ArrayInitialize(gda_548, 0.0);
   ArrayInitialize(gda_552, 0.0);
   ArrayInitialize(gda_556, 0.0);
   ArrayInitialize(gda_560, 0.0);
   ArrayInitialize(gia_564, 0);
   ArrayInitialize(gda_1248, 0.0);
   g_count_1372 = 0;
   gi_1232 = gi_1364 - 1;
   while (gi_1232 < gi_1368) {
      gi_1232++;
      g_count_1372++;
      gda_548[gi_1232] = gd_308 + (gi_300 * Point + gi_304 * Point) * (g_count_1372 - 1);
      gda_552[gi_1232] = gda_548[gi_1232] + gi_300 * Point;
      gda_556[gi_1232] = gda_552[gi_1232];
      gda_560[gi_1232] = gda_548[gi_1232];
      gda_548[gi_1232] += gi_316 * Point;
      gda_552[gi_1232] += gi_316 * Point;
      gda_556[gi_1232] += gi_316 * Point;
      gda_560[gi_1232] += gi_316 * Point;
      gd_1252 = gi_320 * (1.0 * Point);
      gda_1248[gi_1232] = EAProfit();
      gia_564[gi_1232] = MagicNumber1 + (gi_1232 - 1);
      gda_1248[gi_1232] = EAProfit();
   }
   gd_920 = CalculateLots();
   SetCurrenciesAndLotSize();
   SetForwardActions();
   gi_1232 = gi_1364;
   gd_872 = CalculateShadowProfit("current");
   CalculateHighAndLow();
   g_ihigh_1316 = g_ihigh_476;
   g_ilow_1324 = g_ilow_468;
   g_ihigh_1316 = NormalizeDouble(g_ihigh_1316, Digits);
   g_ilow_1324 = NormalizeDouble(g_ilow_1324, Digits);
   gd_1308 = (g_ihigh_1316 + g_ilow_1324) / 2.0;
   gd_1308 = NormalizeDouble(gd_1308, Digits);
   gi_1232 = gi_1364 - 1;
   while (gi_1232 < gi_1368) {
      gi_1232++;
      if (gi_1332 >= gi_1232) gi_460 = TRUE;
      if (gi_1332 < gi_1232) gi_460 = FALSE;
      if (gi_1336 > gi_1232) gi_464 = FALSE;
      if (gi_1336 <= gi_1232) gi_464 = TRUE;
      if (gd_872 >= gda_548[gi_1232] && gd_872 <= gda_552[gi_1232]) {
         gi_1236 = gi_1232;
         gi_1240 = gi_460;
         gi_1244 = gi_464;
      }
      if (gd_1308 >= gda_548[gi_1232] && gd_1308 <= gda_552[gi_1232]) gi_1340 = gi_1232;
      if (g_ihigh_1316 >= gda_548[gi_1232] && g_ihigh_1316 <= gda_552[gi_1232]) gi_1344 = gi_1232;
      if (g_ilow_1324 >= gda_548[gi_1232] && g_ilow_1324 <= gda_552[gi_1232]) gi_1348 = gi_1232;
      gda_1248[gi_1232] = EAProfit();
   }
   gi_1332 = gi_284;
   gi_1336 = gi_288;
   if (gi_292 == 1 && gd_872 > gd_1308) {
      if (gi_284 == 0 && gi_1344 != 0) gi_1332 = gi_1344 - 1;
      if (gi_288 == 0 && gi_1340 != 0) gi_1336 = gi_1340;
   }
   if (gi_292 == 1 && gd_872 < gd_1308) {
      if (gi_288 == 0 && gi_1348 != 0) gi_1336 = gi_1348 + 1;
      if (gi_284 == 0 && gi_1340 != 0) gi_1332 = gi_1340;
   }
   if (gi_292 == 0) {
      if (gi_1332 == 0) gi_1332 = gi_1340;
      if (gi_1336 == 0) gi_1336 = gi_1340;
   }
   if (gi_1332 == 0) gi_1332 = gi_296;
   if (gi_1336 == 0) gi_1336 = 1;
   gi_1232 = gi_1364 - 1;
   while (gi_1232 < gi_1368) {
      gi_1232++;
      li_0 = search_for_conflict(gia_564[gi_1232]);
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
   double ld_12;
   double ld_20;
   double ld_28;
   if (EquityPercentTakeProfit > 0.0 && EquityPercentTakeProfit < 100.05) {
      Comment("EquitPercentProfit must either be 0 or greater than 100 ");
      return (0);
   }
   if (Symbol() != "AUDNZD" && Symbol() == "AUDNZDm" && StringSubstr(Symbol(), 0, 6) != "AUDNZD") {
      if (Symbol() != "EURCHF" && Symbol() != "EURCHFm" && StringSubstr(Symbol(), 0, 6) != "EURCHF") {
         Comment("Expert Only Trades on the AUD/NZD or EUR/CHF");
         return (0);
      }
   }
   gi_1232 = gi_1364 - 1;
   while (gi_1232 < gi_1368) {
      gi_1232++;
      li_0 = search_for_conflict(gia_564[gi_1232]);
      if (li_0 == 1) break;
   }
   if (li_0 == 1) {
      Comment("\nMagic Number Conflict With Another Pair...");
      return (-1);
   }
   if (EmergencyCloseAllTrades == TRUE) {
      while (EAProfitAll() != 0.0) {
         FindAndCloseAll();
         Sleep(5000);
      }
      return (0);
   }
   if (gi_176 == TRUE) gi_1304 = FALSE;
   if (gi_176 == FALSE) gi_1304 = TRUE;
   double ld_4 = MathAbs(AddLots(gs_584));
   if (gd_1396 == 0.0) gd_1396 = ld_4;
   if (Send_EMail == TRUE) {
      if (ld_4 > gd_1396) {
         SendMail("RoboMiner II Trade Opened", "The RoboMiner II just opened a trade on the " + Symbol() + " currency pair on account " + DoubleToStr(AccountNumber(), 0) +
            " at " + DoubleToStr(search_for_latest_open(), Digits) + ".");
         gd_1396 = ld_4;
      }
      if (ld_4 < gd_1396) {
         SendMail("RoboMiner II Trade Closed", "The RoboMiner II just closed a trade on the " + Symbol() + " currency pair on account " + DoubleToStr(AccountNumber(), 0) +
            " at " + DoubleToStr(search_for_latest_closed(), Digits) + ".");
         gd_1396 = ld_4;
      }
   }
   CalculateHighAndLow();
   g_ihigh_1316 = g_ihigh_476;
   g_ilow_1324 = g_ilow_468;
   g_ihigh_1316 = NormalizeDouble(g_ihigh_1316, Digits);
   g_ilow_1324 = NormalizeDouble(g_ilow_1324, Digits);
   gd_1308 = (g_ihigh_1316 + g_ilow_1324) / 2.0;
   gd_1308 = NormalizeDouble(gd_1308, Digits);
   gi_1332 = gi_284;
   gi_1336 = gi_288;
   if (gi_292 == 1 && gd_872 > gd_1308) {
      if (gi_284 == 0 && gi_1344 != 0) gi_1332 = gi_1344 - 1;
      if (gi_288 == 0 && gi_1340 != 0) gi_1336 = gi_1340;
   }
   if (gi_292 == 1 && gd_872 < gd_1308) {
      if (gi_288 == 0 && gi_1348 != 0) gi_1336 = gi_1348 + 1;
      if (gi_284 == 0 && gi_1340 != 0) gi_1332 = gi_1340;
   }
   if (gi_292 == 0) {
      if (gi_1332 == 0) gi_1332 = gi_1340;
      if (gi_1336 == 0) gi_1336 = gi_1340;
   }
   if (gi_1332 == 0) gi_1332 = gi_296;
   if (gi_1336 == 0) gi_1336 = 1;
   SetCurrenciesAndLotSize();
   SetForwardActions();
   gi_1232 = gi_1364;
   gd_920 = CalculateLots();
   gd_872 = CalculateShadowProfit("current");
   gd_880 = CalculateShadowProfit("average");
   if (gd_872 != 0.0) {
      gi_1232 = gi_1364 - 1;
      while (gi_1232 < gi_1368) {
         gi_1232++;
         if (gi_1332 >= gi_1232) gi_460 = TRUE;
         if (gi_1332 < gi_1232) gi_460 = FALSE;
         if (gi_1336 > gi_1232) gi_464 = FALSE;
         if (gi_1336 <= gi_1232) gi_464 = TRUE;
         if (gd_872 >= gda_548[gi_1232] && gd_872 <= gda_552[gi_1232]) {
            gi_1236 = gi_1232;
            gi_1240 = gi_460;
            gi_1244 = gi_464;
         }
         if (gd_1308 >= gda_548[gi_1232] && gd_1308 <= gda_552[gi_1232]) gi_1340 = gi_1232;
         if (g_ihigh_1316 >= gda_548[gi_1232] && g_ihigh_1316 <= gda_552[gi_1232]) gi_1344 = gi_1232;
         if (g_ilow_1324 >= gda_548[gi_1232] && g_ilow_1324 <= gda_552[gi_1232]) gi_1348 = gi_1232;
         gda_1248[gi_1232] = EAProfit();
         if (DoTrades == TRUE) {
            scanfororders2();
            if (gi_1304 == FALSE) CloseAll();
            if (AllowForSpread == TRUE) gd_872 = CalculateShadowProfit("ask");
            if (AllowForSpread == FALSE) gd_872 = CalculateShadowProfit("current");
            if (FIFO == TRUE && EquityPercentTakeProfit > 100.0) {
               ld_12 = EAProfitAll() + AccountBalance();
               if (ld_12 / AccountBalance() >= EquityPercentTakeProfit / 100.0) {
                  while (EAProfitAll() != 0.0) {
                     FindAndCloseAll();
                     Sleep(5000);
                  }
               }
            }
            if (FIFO == TRUE && EquityPercentTakeProfit == 0.0) {
               gd_1384 = search_for_inside_price();
               ld_20 = gd_1384 + gi_300 * Point;
               ld_28 = gd_1384 - gi_300 * Point;
               if (search_for(gia_564[gi_1232]) == gia_564[gi_1232]) {
                  if (OrderType() == OP_BUY && OrderTakeProfit() != ld_20 && gi_1376 && OrderMagicNumber() != 0) OrderModify(OrderTicket(), OrderOpenPrice(), OrderStopLoss(), NormalizeDouble(ld_20, Digits), 0, CLR_NONE);
                  if (OrderType() == OP_SELL && OrderTakeProfit() != ld_28 && gi_1376 && OrderMagicNumber() != 0) OrderModify(OrderTicket(), OrderOpenPrice(), OrderStopLoss(), NormalizeDouble(ld_28, Digits), 0, CLR_NONE);
               }
            }
            if (FIFO == FALSE && StealthMode == FALSE) {
               if (search_for(gia_564[gi_1232]) == gia_564[gi_1232]) {
                  if (OrderTakeProfit() == 0.0 && gi_1376 && OrderMagicNumber() != 0) {
                     if (OrderType() == OP_BUY) OrderModify(OrderTicket(), OrderOpenPrice(), OrderStopLoss(), NormalizeDouble(OrderOpenPrice() + gi_300 * Point, Digits), 0, CLR_NONE);
                     if (OrderType() == OP_SELL) OrderModify(OrderTicket(), OrderOpenPrice(), OrderStopLoss(), NormalizeDouble(OrderOpenPrice() - gi_300 * Point, Digits), 0, CLR_NONE);
                  }
               }
            }
            if (search_for_hedge(2) == 0.0 && gi_1224 == FALSE && scanfororders() == 0 && (gi_396 == FALSE && gd_872 <= gda_548[gi_1232]) || (gi_396 == TRUE && (gi_324 != 0 &&
               gd_872 > gd_880) || gi_324 == 0 && gd_872 <= gda_548[gi_1232] && gd_872 >= gda_548[gi_1232] - gd_1252) && gi_1304 == TRUE && gi_460 == TRUE) {
               gd_372 = gd_872;
               SetForwardActions();
               OpenAll();
               gi_unused_1032 = 1;
               gd_872 = CalculateShadowProfit("current");
               gi_1180 = FALSE;
            }
            gd_872 = CalculateShadowProfit("current");
            if (FIFO == FALSE && AllowInternalClose == TRUE && gi_1180 == FALSE && gd_872 >= gda_552[gi_1232] && scanfororders() > 0) {
               gd_372 = gd_872;
               CloseAll();
               gi_1224 = FALSE;
            }
            gd_872 = CalculateShadowProfit("current");
            if (search_for_hedge(1) == 0.0 && gi_1224 == FALSE && gi_464 == TRUE && scanfororders() == 0 && (gi_396 == FALSE && gd_872 >= gda_556[gi_1232]) || (gi_396 == TRUE &&
               (gi_324 != 0 && gd_872 < gd_880) || gi_324 == 0 && gd_872 <= gda_556[gi_1232] + gd_1252 && gd_872 >= gda_556[gi_1232]) && gi_1304 == TRUE) {
               gd_372 = gd_872;
               SetReverseActions();
               gi_1180 = TRUE;
               OpenAll();
               gi_unused_1032 = 1;
               SetForwardActions();
               gd_872 = CalculateShadowProfit("current");
            }
            if (AllowForSpread == TRUE) gd_872 = CalculateShadowProfit("ask");
            if (AllowForSpread == FALSE) gd_872 = CalculateShadowProfit("current");
            if (FIFO == FALSE && AllowInternalClose == TRUE && gi_1180 == TRUE && gd_872 <= gda_560[gi_1232] && scanfororders() > 0) {
               gd_372 = gd_872;
               CloseAll();
               gi_1224 = FALSE;
            }
            gd_872 = CalculateShadowProfit("current");
         }
      }
   }
   scanfororders2();
   CalculateHighsAndLows();
   ShowComments();
   return (0);
}

int ShowComments() {
   SetCurrenciesAndLotSize();
   SetForwardActions();
   string ls_unused_0 = "";
   if (gi_580 == 60) ls_unused_0 = "Hourly";
   if (gi_580 == 240) ls_unused_0 = "4 Hour";
   if (gi_580 == 1440) ls_unused_0 = "Daily";
   if (gi_580 == 30) ls_unused_0 = "30 Minute";
   if (gi_580 == 15) ls_unused_0 = "15 Minute";
   if (gi_580 == 1) ls_unused_0 = "1 Minute";
   if (gi_580 == 5) ls_unused_0 = "5 Minute";
   double ld_8 = gd_532 / 100.0;
   double ld_16 = gd_616 - gd_624;
   double ld_24 = ld_16 * ld_8;
   double ld_32 = gd_632 - gd_640;
   double ld_40 = ld_32 * ld_8;
   int li_48 = gi_1236;
   if (DisplayLevel != 0) gi_1236 = DisplayLevel;
   if (gi_1332 >= gi_1236) gi_460 = TRUE;
   if (gi_1332 < gi_1236) gi_460 = FALSE;
   if (gi_1336 > gi_1236) gi_464 = FALSE;
   if (gi_1336 <= gi_1236) gi_464 = TRUE;
   gi_1240 = gi_460;
   gi_1244 = gi_464;
   string ls_52 = "True";
   if (DoTrades == FALSE) ls_52 = "False";
   string ls_60 = "True";
   if (gi_1240 == FALSE) ls_60 = "False";
   string ls_68 = "True";
   if (gi_1244 == FALSE) ls_68 = "False";
   string ls_unused_76 = "False";
   if (gi_176 == TRUE) ls_unused_76 = "True";
   double ld_84 = gd_308 + gi_296 * gi_300 * Point;
   if (gi_1236 > gi_1332) {
      if (gi_1360 == FALSE && gi_1228 == TRUE) {
         Comment("\n" 
            + gs_76 
            + "\n" 
            + gs_100 
            + "\n\nCurrent Bid Price= " + DoubleToStr(gd_872, Digits) 
            + "\nCurrent Range = " + gi_1236 
            + "\n\nShort Open for Range " + gi_1236 + " = " + DoubleToStr(gda_556[gi_1236], Digits) 
            + "\nShort Close for Range " + gi_1236 + " = " + DoubleToStr(gda_560[gi_1236], Digits) 
            + "\n\nRangeStart = " + DoubleToStr(gd_308, Digits) 
            + "\nRangeEnd = " + DoubleToStr(ld_84, Digits) 
            + "\nFirst Range = " + gi_1364 
            + "\nLast Range = " + gi_1368 
            + "\nBalanceFactor = " + DoubleToStr(BalanceFactor, 2) 
            + "\nRanges Setting = " + gi_264 
            + "\nTradeRange = " + gi_300 
            + "\nTradeWindow = " + DoubleToStr(gd_1252, Digits) 
            + "\n\nPrice " + gi_272 + " Month High = " + DoubleToStr(g_ihigh_1316, Digits) + " (" + gi_1344 + ") " 
            + "\nPrice " + gi_272 + " Month Low = " + DoubleToStr(g_ilow_1324, Digits) + " (" + gi_1348 + ") " 
            + "\nPrice " + gi_272 + " Month Mid-Range = " + DoubleToStr(gd_1308, Digits) + " (" + gi_1340 + ") " 
            + "\n\nProfit for this Instance of EA = " + DoubleToStr(gda_1248[gi_1236], 2) 
            + "\nProfit for this Currency Pair = " + DoubleToStr(EAProfitAll(), 2) + "  (" + DoubleToStr(100.0 * ((AccountBalance() + EAProfitAll()) / AccountBalance()), 2) + " % )" 
            + "\n\nLots1 = " + DoubleToStr(gd_920, gi_364) + " " + gs_584 + " " + gia_564[gi_1236] + "  Net Total Lots = " + DoubleToStr(AddLots(gs_584), 2) 
            + "\nLotSize = " + DoubleToStr(MarketInfo(Symbol(), MODE_LOTSIZE), 0) 
            + "\nAccount Leverage = " + AccountLeverage() + " : 1" 
            + "\nDecimals = " + gi_364 
            + "\n\nDoTrades = " + ls_52 
            + "\nOpen Long Trades = " + ls_60 + "  (" + gi_1332 + ") " 
         + "\nOpen Short Trades = " + ls_68 + "  (" + gi_1336 + ") ");
      }
      if (gi_1360 == TRUE && gi_1228 == TRUE) {
         Comment("\n" 
            + gs_76 
            + "\n" 
            + gs_100 
            + "\n\nCurrent Bid Price= " + DoubleToStr(gd_872, Digits) 
            + "\nCurrent Range = " + gi_1236 
            + "\n\nShort Open for Range " + gi_1236 + " = " + DoubleToStr(gda_556[gi_1236], Digits) 
            + "\nShort Close for Range " + gi_1236 + " = " + DoubleToStr(gda_560[gi_1236], Digits) 
            + "\n\nRangeStart = " + DoubleToStr(gd_308, Digits) 
            + "\nRangeEnd = " + DoubleToStr(ld_84, Digits) 
            + "\nFirst Range = " + gi_1364 
            + "\nLast Range = " + gi_1368 
            + "\nBalanceFactor = " + DoubleToStr(BalanceFactor, 2) 
            + "\nRanges Setting = " + gi_264 
            + "\nTradeRange = " + gi_300 
            + "\nTradeWindow = " + DoubleToStr(gd_1252, Digits) 
            + "\n\nPrice " + gi_272 + " Month High = " + DoubleToStr(g_ihigh_1316, Digits) + " (" + gi_1344 + ") " 
            + "\nPrice " + gi_272 + " Month Low = " + DoubleToStr(g_ilow_1324, Digits) + " (" + gi_1348 + ") " 
            + "\nPrice " + gi_272 + " Month Mid-Range = " + DoubleToStr(gd_1308, Digits) + " (" + gi_1340 + ") " 
            + "\n\nProfit for this Instance of EA = " + DoubleToStr(gda_1248[gi_1236], 2) 
            + "\nProfit for this Currency Pair = " + DoubleToStr(EAProfitAll(), 2) + "  (" + DoubleToStr(100.0 * ((AccountBalance() + EAProfitAll()) / AccountBalance()), 2) + " % )" 
            + "\n\nLots1 = " + DoubleToStr(gd_920, gi_364) + " " + gs_584 + " " + gia_564[gi_1236] + "  Net Total Lots = " + DoubleToStr(AddLots(gs_584), 2) 
            + "\nLotSize = " + DoubleToStr(MarketInfo(Symbol(), MODE_LOTSIZE), 0) 
            + "\nAccount Leverage = " + AccountLeverage() + " : 1" 
            + "\nDecimals = " + gi_364 
            + "\n\nDoTrades = " + ls_52 
            + "\nOpen Long Trades = " + ls_60 + "  (" + gi_1332 + ") " 
            + "\nOpen Short Trades = " + ls_68 + "  (" + gi_1336 + ")" 
         + "\n\n**WARNING -- Account Balance may be too low to safely trade at this setting level ***");
      }
   }
   if (gi_1236 < gi_1332) {
      if (gi_1360 == FALSE && gi_1228 == TRUE) {
         Comment("\n" 
            + gs_76 
            + "\n" 
            + gs_100 
            + "\n\nCurrent Bid Price= " + DoubleToStr(gd_872, Digits) 
            + "\nCurrent Range = " + gi_1236 
            + "\n\nLong Open for Range " + gi_1236 + " = " + DoubleToStr(gda_548[gi_1236], Digits) 
            + "\nLong Close for Range " + gi_1236 + " = " + DoubleToStr(gda_552[gi_1236], Digits) 
            + "\n\nRangeStart = " + DoubleToStr(gd_308, Digits) 
            + "\nRangeEnd = " + DoubleToStr(ld_84, Digits) 
            + "\nFirst Range = " + gi_1364 
            + "\nLast Range = " + gi_1368 
            + "\nBalanceFactor = " + DoubleToStr(BalanceFactor, 2) 
            + "\nRanges Setting = " + gi_264 
            + "\nTradeRange = " + gi_300 
            + "\nTradeWindow = " + DoubleToStr(gd_1252, Digits) 
            + "\n\nPrice " + gi_272 + " Month High = " + DoubleToStr(g_ihigh_1316, Digits) + " (" + gi_1344 + ") " 
            + "\nPrice " + gi_272 + " Month Low = " + DoubleToStr(g_ilow_1324, Digits) + " (" + gi_1348 + ") " 
            + "\nPrice " + gi_272 + " Month Mid-Range = " + DoubleToStr(gd_1308, Digits) + " (" + gi_1340 + ") " 
            + "\n\nProfit for this Instance of EA = " + DoubleToStr(gda_1248[gi_1236], 2) 
            + "\nProfit for this Currency Pair = " + DoubleToStr(EAProfitAll(), 2) + "  (" + DoubleToStr(100.0 * ((AccountBalance() + EAProfitAll()) / AccountBalance()), 2) + " % )" 
            + "\n\nLots1 = " + DoubleToStr(gd_920, gi_364) + " " + gs_584 + " " + gia_564[gi_1236] + "  Net Total Lots = " + DoubleToStr(AddLots(gs_584), 2) 
            + "\nLotSize = " + DoubleToStr(MarketInfo(Symbol(), MODE_LOTSIZE), 0) 
            + "\nAccount Leverage = " + AccountLeverage() + " : 1" 
            + "\nDecimals = " + gi_364 
            + "\n\nDoTrades = " + ls_52 
            + "\nOpen Long Trades = " + ls_60 + "  (" + gi_1332 + ") " 
         + "\nOpen Short Trades = " + ls_68 + "  (" + gi_1336 + ") ");
      }
      if (gi_1360 == TRUE && gi_1228 == TRUE) {
         Comment("\n" 
            + gs_76 
            + "\n" 
            + gs_100 
            + "\n\nCurrent Bid Price= " + DoubleToStr(gd_872, Digits) 
            + "\nCurrent Range = " + gi_1236 
            + "\n\nLong Open for Range " + gi_1236 + " = " + DoubleToStr(gda_548[gi_1236], Digits) 
            + "\nLong Close for Range " + gi_1236 + " = " + DoubleToStr(gda_552[gi_1236], Digits) 
            + "\n\nRangeStart = " + DoubleToStr(gd_308, Digits) 
            + "\nRangeEnd = " + DoubleToStr(ld_84, Digits) 
            + "\nFirst Range = " + gi_1364 
            + "\nLast Range = " + gi_1368 
            + "\nBalanceFactor = " + DoubleToStr(BalanceFactor, 2) 
            + "\nRanges Setting = " + gi_264 
            + "\nTradeRange = " + gi_300 
            + "\nTradeWindow = " + DoubleToStr(gd_1252, Digits) 
            + "\n\nPrice " + gi_272 + " Month High = " + DoubleToStr(g_ihigh_1316, Digits) + " (" + gi_1344 + ") " 
            + "\nPrice " + gi_272 + " Month Low = " + DoubleToStr(g_ilow_1324, Digits) + " (" + gi_1348 + ") " 
            + "\nPrice " + gi_272 + " Month Mid-Range = " + DoubleToStr(gd_1308, Digits) + " (" + gi_1340 + ") " 
            + "\n\nProfit for this Instance of EA = " + DoubleToStr(gda_1248[gi_1236], 2) 
            + "\nProfit for this Currency Pair = " + DoubleToStr(EAProfitAll(), 2) + "  (" + DoubleToStr(100.0 * ((AccountBalance() + EAProfitAll()) / AccountBalance()), 2) + " % )" 
            + "\n\nLots1 = " + DoubleToStr(gd_920, gi_364) + " " + gs_584 + " " + gia_564[gi_1236] + "  Net Total Lots = " + DoubleToStr(AddLots(gs_584), 2) 
            + "\nLotSize = " + DoubleToStr(MarketInfo(Symbol(), MODE_LOTSIZE), 0) 
            + "\nAccount Leverage = " + AccountLeverage() + " : 1" 
            + "\nDecimals = " + gi_364 
            + "\n\nDoTrades = " + ls_52 
            + "\nOpen Long Trades = " + ls_60 + "  (" + gi_1332 + ") " 
            + "\nOpen Short Trades = " + ls_68 + "  (" + gi_1336 + ")" 
         + "\n\n**WARNING -- Account Balance may be too low to safely trade at this setting level ***");
      }
   }
   if (gi_1236 == gi_1332) {
      if (gi_1360 == FALSE && gi_1228 == TRUE) {
         Comment("\n" 
            + gs_76 
            + "\n" 
            + gs_100 
            + "\n\nCurrent Bid Price= " + DoubleToStr(gd_872, Digits) 
            + "\nCurrent Range = " + gi_1236 
            + "\n\nLong Open for Range " + gi_1236 + " = " + DoubleToStr(gda_548[gi_1236], Digits) 
            + "\nLong Close for Range " + gi_1236 + " = " + DoubleToStr(gda_552[gi_1236], Digits) 
            + "\nShort Open for Range " + gi_1236 + " = " + DoubleToStr(gda_556[gi_1236], Digits) 
            + "\nShort Close for Range " + gi_1236 + " = " + DoubleToStr(gda_560[gi_1236], Digits) 
            + "\n\nRangeStart = " + DoubleToStr(gd_308, Digits) 
            + "\nRangeEnd = " + DoubleToStr(ld_84, Digits) 
            + "\nFirst Range = " + gi_1364 
            + "\nLast Range = " + gi_1368 
            + "\nBalanceFactor = " + DoubleToStr(BalanceFactor, 2) 
            + "\nRanges Setting = " + gi_264 
            + "\nTradeRange = " + gi_300 
            + "\nTradeWindow = " + DoubleToStr(gd_1252, Digits) 
            + "\n\nPrice " + gi_272 + " Month High = " + DoubleToStr(g_ihigh_1316, Digits) + " (" + gi_1344 + ") " 
            + "\nPrice " + gi_272 + " Month Low = " + DoubleToStr(g_ilow_1324, Digits) + " (" + gi_1348 + ") " 
            + "\nPrice " + gi_272 + " Month Mid-Range = " + DoubleToStr(gd_1308, Digits) + " (" + gi_1340 + ") " 
            + "\n\nProfit for this Instance of EA = " + DoubleToStr(gda_1248[gi_1236], 2) 
            + "\nProfit for this Currency Pair = " + DoubleToStr(EAProfitAll(), 2) + "  (" + DoubleToStr(100.0 * ((AccountBalance() + EAProfitAll()) / AccountBalance()), 2) + " % )" 
            + "\n\nLots1 = " + DoubleToStr(gd_920, gi_364) + " " + gs_584 + " " + gia_564[gi_1236] + "  Net Total Lots = " + DoubleToStr(AddLots(gs_584), 2) 
            + "\nLotSize = " + DoubleToStr(MarketInfo(Symbol(), MODE_LOTSIZE), 0) 
            + "\nAccount Leverage = " + AccountLeverage() + " : 1" 
            + "\nDecimals = " + gi_364 
            + "\nOpen Long Trades = " + ls_60 + "  (" + gi_1332 + ") " 
         + "\nOpen Short Trades = " + ls_68 + "  (" + gi_1336 + ") ");
      }
      if (gi_1360 == TRUE && gi_1228 == TRUE) {
         Comment("\n" 
            + gs_76 
            + "\n" 
            + gs_100 
            + "\n\nCurrent Bid Price= " + DoubleToStr(gd_872, Digits) 
            + "\nCurrent Range = " + gi_1236 
            + "\n\nLong Open for Range " + gi_1236 + " = " + DoubleToStr(gda_548[gi_1236], Digits) 
            + "\nLong Close for Range " + gi_1236 + " = " + DoubleToStr(gda_552[gi_1236], Digits) 
            + "\nShort Open for Range " + gi_1236 + " = " + DoubleToStr(gda_556[gi_1236], Digits) 
            + "\nShort Close for Range " + gi_1236 + " = " + DoubleToStr(gda_560[gi_1236], Digits) 
            + "\n\nRangeStart = " + DoubleToStr(gd_308, Digits) 
            + "\nRangeEnd = " + DoubleToStr(ld_84, Digits) 
            + "\nFirst Range = " + gi_1364 
            + "\nLast Range = " + gi_1368 
            + "\nBalanceFactor = " + DoubleToStr(BalanceFactor, 2) 
            + "\nRanges Setting = " + gi_264 
            + "\nTradeRange = " + gi_300 
            + "\nTradeWindow = " + DoubleToStr(gd_1252, Digits) 
            + "\n\nPrice " + gi_272 + " Month High = " + DoubleToStr(g_ihigh_1316, Digits) + " (" + gi_1344 + ") " 
            + "\nPrice " + gi_272 + " Month Low = " + DoubleToStr(g_ilow_1324, Digits) + " (" + gi_1348 + ") " 
            + "\nPrice " + gi_272 + " Month Mid-Range = " + DoubleToStr(gd_1308, Digits) + " (" + gi_1340 + ") " 
            + "\n\nProfit for this Instance of EA = " + DoubleToStr(gda_1248[gi_1236], 2) 
            + "\nProfit for this Currency Pair = " + DoubleToStr(EAProfitAll(), 2) + "  (" + DoubleToStr(100.0 * ((AccountBalance() + EAProfitAll()) / AccountBalance()), 2) + " % )" 
            + "\n\nLots1 = " + DoubleToStr(gd_920, gi_364) + " " + gs_584 + " " + gia_564[gi_1236] + "  Net Total Lots = " + DoubleToStr(AddLots(gs_584), 2) 
            + "\nLotSize = " + DoubleToStr(MarketInfo(Symbol(), MODE_LOTSIZE), 0) 
            + "\nAccount Leverage = " + AccountLeverage() + " : 1" 
            + "\nDecimals = " + gi_364 
            + "\nOpen Long Trades = " + ls_60 + "  (" + gi_1332 + ") " 
            + "\nOpen Short Trades = " + ls_68 + "  (" + gi_1336 + ")" 
         + "\n\n**WARNING -- Account Balance may be too low to safely trade at this setting level ***");
      }
   }
   gi_1236 = li_48;
   return (0);
}

double EAProfit() {
   double ld_ret_0 = 0.0;
   if (search_for(gia_564[gi_1232]) != 0) ld_ret_0 += OrderProfit();
   return (ld_ret_0);
}

double EAProfitAll() {
   double ld_ret_0 = 0.0;
   gi_1016 = OrdersTotal();
   for (int l_pos_8 = 0; l_pos_8 <= gi_1016 - 1; l_pos_8++) {
      if (!OrderSelect(l_pos_8, SELECT_BY_POS, MODE_TRADES)) {
         g_error_1020 = GetLastError();
         Print("OrderSelect( ", l_pos_8, ", SELECT_BY_POS ) - Error #", g_error_1020);
      } else {
         if (OrderSymbol() == Symbol()) {
            if (OrderMagicNumber() < MagicNumber1 || OrderMagicNumber() > MagicNumber1 + 100) continue;
            if (OrderCloseTime() == 0) {
               if (OrderTakeProfit() != 0.0 && (FIFO == TRUE && EquityPercentTakeProfit > 100.0) || (StealthMode == TRUE && FIFO == FALSE)) OrderModify(OrderTicket(), OrderOpenPrice(), OrderStopLoss(), 0.0, 0, CLR_NONE);
               ld_ret_0 += OrderProfit();
            }
         }
      }
   }
   return (ld_ret_0);
}

int search_for(int a_magic_0) {
   gi_1016 = OrdersTotal();
   for (int l_pos_4 = gi_1016 - 1; l_pos_4 >= 0; l_pos_4--) {
      if (!OrderSelect(l_pos_4, SELECT_BY_POS, MODE_TRADES)) {
         g_error_1020 = GetLastError();
         Print("OrderSelect( ", l_pos_4, ", SELECT_BY_POS ) - Error #", g_error_1020);
      } else {
         if (OrderMagicNumber() == a_magic_0)
            if (OrderCloseTime() == 0) return (a_magic_0);
      }
   }
   return (0);
}

int search_for_conflict(int a_magic_0) {
   bool li_4 = FALSE;
   gi_1016 = OrdersTotal();
   for (int l_pos_8 = gi_1016 - 1; l_pos_8 >= 0; l_pos_8--) {
      if (!OrderSelect(l_pos_8, SELECT_BY_POS, MODE_TRADES)) {
         g_error_1020 = GetLastError();
         Print("OrderSelect( ", l_pos_8, ", SELECT_BY_POS ) - Error #", g_error_1020);
      } else {
         if (OrderMagicNumber() == a_magic_0) {
            if (OrderCloseTime() == 0) {
               if (OrderSymbol() != Symbol()) {
                  if (OrderSymbol() != Symbol()) li_4 = TRUE;
                  if (li_4 == TRUE) return (1);
               }
            }
         }
      }
   }
   return (0);
}

int FindAndCloseAll() {
   gi_1016 = OrdersTotal();
   for (int l_pos_0 = gi_1016 - 1; l_pos_0 >= 0; l_pos_0--) {
      if (!OrderSelect(l_pos_0, SELECT_BY_POS, MODE_TRADES)) {
         g_error_1020 = GetLastError();
         Print("OrderSelect( ", l_pos_0, ", SELECT_BY_POS ) - Error #", g_error_1020);
      } else {
         if (OrderSymbol() == Symbol()) {
            if (OrderMagicNumber() < MagicNumber1 || OrderMagicNumber() > MagicNumber1 + 100) continue;
            if (OrderCloseTime() == 0) {
               Close_it();
               Sleep(1000);
            }
         }
      }
   }
   return (0);
}

double AddLots(string a_symbol_0) {
   double ld_ret_8 = 0.0;
   gi_1016 = OrdersTotal();
   for (int l_pos_16 = gi_1016 - 1; l_pos_16 >= 0; l_pos_16--) {
      if (!OrderSelect(l_pos_16, SELECT_BY_POS, MODE_TRADES)) {
         g_error_1020 = GetLastError();
         Print("OrderSelect( ", l_pos_16, ", SELECT_BY_POS ) - Error #", g_error_1020);
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
   int l_slippage_20 = gi_368;
   int l_count_24 = 0;
   int l_ticket_28 = -1;
   double l_price_32 = 0.0;
   if (gi_1376 == TRUE && gi_1228 == TRUE) {
      l_price_32 = gda_548[gi_1232] + gi_300 * MarketInfo(a_symbol_12, MODE_POINT);
      l_price_32 = NormalizeDouble(l_price_32, MarketInfo(a_symbol_12, MODE_DIGITS));
   }
   l_price_32 = 0.0;
   string l_comment_40 = g_comment_1260;
   g_comment_1260 = g_comment_1260 + DoubleToStr(gd_872, g_digits_1300) + " " + DoubleToStr(a_magic_0, 0);
   while (l_ticket_28 == -1 && l_count_24 <= gi_1024) {
      if (gi_368 != 0 && gi_1228 == TRUE && Ask - gd_372 < gi_368 * Point) l_ticket_28 = OrderSend(Symbol(), OP_BUY, a_lots_4, Ask, l_slippage_20, 0.0, l_price_32, g_comment_1260, a_magic_0, 0, CLR_NONE);
      if (gi_368 == 0 || gi_1228 == FALSE) l_ticket_28 = OrderSend(Symbol(), OP_BUY, a_lots_4, Ask, l_slippage_20, 0.0, 0.0, g_comment_1260, a_magic_0, 0, CLR_NONE);
      l_count_24++;
      if (l_ticket_28 >= 0) break;
      if (l_count_24 > gi_1024) break;
      Sleep(10000);
   }
   if (l_ticket_28 != 0) {
      g_error_1020 = GetLastError();
      if (gi_276 == TRUE) Alert("Error OrderSend # ", g_error_1020);
   }
   g_comment_1260 = l_comment_40;
   return (0);
}

int open_sell_market(int a_magic_0, double a_lots_4, string a_symbol_12) {
   int l_slippage_20 = gi_368;
   int l_count_24 = 0;
   int l_ticket_28 = -1;
   double l_price_32 = 0.0;
   if (gi_1376 == TRUE && gi_1228 == TRUE) {
      l_price_32 = gda_556[gi_1232] - gi_300 * MarketInfo(a_symbol_12, MODE_POINT);
      l_price_32 = NormalizeDouble(l_price_32, MarketInfo(a_symbol_12, MODE_DIGITS));
   }
   l_price_32 = 0.0;
   string l_comment_40 = g_comment_1260;
   g_comment_1260 = g_comment_1260 + DoubleToStr(gd_872, g_digits_1300) + " " + DoubleToStr(a_magic_0, 0);
   while (l_ticket_28 == -1 && l_count_24 <= gi_1024) {
      if (gi_368 != 0 && gi_1228 == TRUE && gd_372 - Bid < gi_368 * Point) l_ticket_28 = OrderSend(Symbol(), OP_SELL, a_lots_4, Bid, l_slippage_20, 0.0, l_price_32, g_comment_1260, a_magic_0, 0, CLR_NONE);
      if (gi_368 == 0 || gi_1228 == FALSE) l_ticket_28 = OrderSend(Symbol(), OP_SELL, a_lots_4, Bid, l_slippage_20, 0.0, 0.0, g_comment_1260, a_magic_0, 0, CLR_NONE);
      l_count_24++;
      if (l_ticket_28 >= 0) break;
      if (l_count_24 > gi_1024) break;
      Sleep(10000);
   }
   if (l_ticket_28 != 0) {
      g_error_1020 = GetLastError();
      if (gi_276 == TRUE) Alert("Error OrderSend # ", g_error_1020);
   }
   g_comment_1260 = l_comment_40;
   return (0);
}

int Close_it() {
   if (FIFO == FALSE && gi_280 == TRUE && OrderTakeProfit() != 0.0 && OrderProfit() + OrderSwap() < 0.0) OrderModify(OrderTicket(), OrderOpenPrice(), OrderStopLoss(), 0.0, OrderExpiration(), CLR_NONE);
   if ((FIFO == FALSE && gi_280 == TRUE && OrderProfit() + OrderSwap() > 0.0) || gi_280 == FALSE || FIFO == TRUE) {
      if (OrderType() == OP_BUY) {
         if (FIFO == FALSE && gi_368 != 0 && gi_1228 == TRUE && gd_372 - Bid < gi_368 * Point) close_buy();
         if (FIFO == TRUE || gi_368 == 0 || gi_1228 == FALSE) close_buy();
      }
      if (OrderType() == OP_SELL) {
         if (FIFO == FALSE && gi_368 != 0 && gi_1228 == TRUE && Ask - gd_372 < gi_368 * Point) close_sell();
         if (FIFO == TRUE || gi_368 == 0 || gi_1228 == FALSE) close_sell();
      }
   }
   return (0);
}

int OpenAll() {
   if (gs_1140 == "Sell") open_sell_market(gia_564[gi_1232], gd_920, gs_584);
   if (gs_1140 == "Buy") open_buy_market(gia_564[gi_1232], gd_920, gs_584);
   return (0);
}

int CloseAll() {
   int l_count_0 = 0;
   while (l_count_0 < 4) {
      l_count_0++;
      if (search_for(gia_564[gi_1232]) != 0) Close_it();
   }
   return (0);
}

int scanfororders() {
   int l_count_0 = 0;
   int li_4 = search_for(gia_564[gi_1232]);
   if (li_4 == gia_564[gi_1232]) l_count_0++;
   return (l_count_0);
}

int scanfororders2() {
   bool li_ret_0 = FALSE;
   int li_4 = search_for(gia_564[gi_1232]);
   if (li_4 == gia_564[gi_1232]) {
      if (gs_1140 == "Sell" && OrderType() == OP_SELL) gi_1180 = FALSE;
      if (gs_1140 == "Buy" && OrderType() == OP_BUY) gi_1180 = FALSE;
      if (gs_1140 == "Buy" && OrderType() == OP_SELL) gi_1180 = TRUE;
      if (gs_1140 == "Sell" && OrderType() == OP_BUY) gi_1180 = TRUE;
   }
   return (li_ret_0);
}

int close_buy() {
   int l_slippage_0 = gi_368;
   g_count_1028 = 0;
   bool l_ord_close_4 = FALSE;
   while (!l_ord_close_4 && g_count_1028 <= 0) {
      if (FIFO == FALSE && gi_368 != 0 && gi_1228 == TRUE && gd_372 - Bid < gi_368 * Point) l_ord_close_4 = OrderClose(OrderTicket(), OrderLots(), Bid, l_slippage_0, CLR_NONE);
      if (FIFO == TRUE || gi_368 == 0 || gi_1228 == FALSE) l_ord_close_4 = OrderClose(OrderTicket(), OrderLots(), Bid, l_slippage_0, CLR_NONE);
      g_count_1028++;
      if (l_ord_close_4) break;
      if (g_count_1028 > 0) break;
      Sleep(10000);
   }
   if (l_ord_close_4 == 0) {
      g_error_1020 = GetLastError();
      if (gi_276 == TRUE) Alert("Error OrderClose # ", g_error_1020);
      return (-1);
   }
   return (0);
}

int close_sell() {
   int l_slippage_0 = gi_368;
   g_count_1028 = 0;
   bool l_ord_close_4 = FALSE;
   while (!l_ord_close_4 && g_count_1028 <= 0) {
      if (FIFO == FALSE && gi_368 != 0 && gi_1228 == TRUE && Ask - gd_372 < gi_368 * Point) l_ord_close_4 = OrderClose(OrderTicket(), OrderLots(), Ask, l_slippage_0, CLR_NONE);
      if (FIFO == TRUE || gi_368 == 0 || gi_1228 == FALSE) l_ord_close_4 = OrderClose(OrderTicket(), OrderLots(), Ask, l_slippage_0, CLR_NONE);
      g_count_1028++;
      if (l_ord_close_4) break;
      if (g_count_1028 > 0) break;
      Sleep(10000);
   }
   if (l_ord_close_4 == 0) {
      g_error_1020 = GetLastError();
      if (gi_276 == TRUE) Alert("?????? OrderClose No ", g_error_1020);
      return (-1);
   }
   return (0);
}

double CalculateLots() {
   double l_minlot_0 = MarketInfo(Symbol(), MODE_MINLOT);
   double l_maxlot_8 = MarketInfo(Symbol(), MODE_MAXLOT);
   double ld_ret_16 = 0.0;
   bool li_24 = FALSE;
   double l_lotsize_28 = MarketInfo(Symbol(), MODE_LOTSIZE);
   if (MarketInfo(Symbol(), MODE_MINLOT) < 1.0) gi_364 = 1;
   if (MarketInfo(Symbol(), MODE_MINLOT) < 0.1) gi_364 = 2;
   if (MarketInfo(Symbol(), MODE_MINLOT) < 0.01) gi_364 = 3;
   if (MarketInfo(Symbol(), MODE_MINLOT) < 0.001) gi_364 = 4;
   if (MarketInfo(Symbol(), MODE_MINLOT) < 0.0001) gi_364 = 5;
   if (Lots > 0.0) ld_ret_16 = Lots;
   if (ld_ret_16 > 0.0) {
      if (ld_ret_16 < l_minlot_0) ld_ret_16 = l_minlot_0;
      if (ld_ret_16 > l_maxlot_8) ld_ret_16 = l_maxlot_8;
      ld_ret_16 = NormalizeDouble(ld_ret_16, gi_364);
      return (ld_ret_16);
   }
   double ld_36 = AccountBalance();
   double ld_44 = BalanceFactor;
   if (ld_44 == 0.0) {
      if (AccountBalance() < 12000.0) ld_44 = 4000.0;
      if (AccountBalance() >= 12000.0 && AccountBalance() < 22500.0) ld_44 = 5000.0;
      if (AccountBalance() >= 22500.0 && AccountBalance() < 35000.0) ld_44 = 5500.0;
      if (AccountBalance() >= 35000.0 && AccountBalance() < 60000.0) ld_44 = 6000.0;
      if (AccountBalance() >= 60000.0 && AccountBalance() < 100000.0) ld_44 = 7000.0;
      if (AccountBalance() >= 100000.0) ld_44 = 8000.0;
   }
   ld_44 /= 100000 / l_lotsize_28;
   gi_1360 = FALSE;
   if (ld_36 < ld_44) gi_1360 = TRUE;
   li_24 = ld_36 / ld_44;
   ld_ret_16 = li_24 / 100.0;
   ld_ret_16 = NormalizeDouble(ld_ret_16, gi_364);
   if (ld_ret_16 < l_minlot_0) ld_ret_16 = l_minlot_0;
   if (ld_ret_16 > l_maxlot_8) ld_ret_16 = l_maxlot_8;
   ld_ret_16 = NormalizeDouble(ld_ret_16, gi_364);
   if (gi_1380 == FALSE && ld_ret_16 > 0.09 && ld_36 < 10000.0 && l_lotsize_28 == 100000.0) {
      Alert("Is your account set to trade only 1 decimal place for lots? Your account balance should be higher for this lot size!");
      gi_1380 = TRUE;
   }
   if (gi_1380 == FALSE && ld_ret_16 > 0.09 && ld_36 < 1000.0 && l_lotsize_28 == 10000.0) {
      Alert("Is your account set to trade only 1 decimal place for lots? Your account balance should be higher for this lot size!");
      gi_1380 = TRUE;
   }
   if (gi_1380 == FALSE && gi_364 == 1) {
      Alert("Is your account set to trade only 1 decimal place for lots? We recommend 2 decimal places for lot sizes if possible!");
      gi_1380 = TRUE;
   }
   return (ld_ret_16);
}

void CalculateHighAndLow() {
   g_ihigh_476 = iHigh(Symbol(), PERIOD_MN1, iHighest(Symbol(), PERIOD_MN1, MODE_HIGH, gi_272, 0));
   g_ilow_468 = iLow(Symbol(), PERIOD_MN1, iLowest(Symbol(), PERIOD_MN1, MODE_LOW, gi_272, 0));
   gd_1404 = (g_ihigh_476 + g_ilow_468) / 2.0;
   gd_1404 = NormalizeDouble(gd_1404, Digits);
}

int SetForwardActions() {
   gs_1140 = "Buy";
   return (0);
}

int SetReverseActions() {
   gs_1140 = "Sell";
   return (0);
}

int CalculateHighsAndLows() {
   gd_872 = CalculateShadowProfit("current");
   if (Minute() > 10) gi_1188 = FALSE;
   if (Minute() < 10 && gi_1188 == FALSE) {
      gd_632 = -10000000.0;
      gd_640 = 10000000.0;
      gi_1188 = TRUE;
   }
   if (gd_616 < gd_872) gd_616 = gd_872;
   if (gd_632 < gd_872) gd_632 = gd_872;
   if (gd_624 > gd_872) gd_624 = gd_872;
   if (gd_640 > gd_872) gd_640 = gd_872;
   if (gd_640 == 0.0) gd_640 = gd_872;
   if (gd_648 < AccountEquity()) gd_648 = AccountEquity();
   if (gd_656 > AccountEquity()) gd_656 = AccountEquity();
   if (g_free_magrin_672 < AccountFreeMargin()) g_free_magrin_672 = AccountFreeMargin();
   if (g_free_magrin_664 > AccountFreeMargin()) g_free_magrin_664 = AccountFreeMargin();
   if (gd_680 < AccountBalance()) gd_680 = AccountBalance();
   if (gd_688 > AccountBalance()) gd_688 = AccountBalance();
   return (0);
}

int SetCurrenciesAndLotSize() {
   gs_584 = Symbol();
   g_lotsize_1052 = MarketInfo(Symbol(), MODE_LOTSIZE);
   if (g_lotsize_1052 == 0.0) g_lotsize_1052 = MarketInfo(Symbol(), MODE_LOTSIZE);
   if (g_lotsize_1052 == 100000.0) gd_unused_1060 = 0.1;
   if (g_lotsize_1052 == 10000.0) gd_unused_1060 = 0.01;
   SetForwardActions();
   if (StringLen(StringTrimLeft(gs_1140)) < 2) gs_584 = "  ";
   if (StringLen(StringTrimLeft(gs_584)) < 2) gs_1140 = "  ";
   return (0);
}

double CalculateShadowProfit(string as_0) {
   if ((gi_1228 == TRUE && as_0 == "current") || (gi_1228 == TRUE && as_0 == "ask" && AllowForSpread == FALSE)) g_price_856 = Bid;
   if (gi_1228 == TRUE && as_0 == "ask" && AllowForSpread == TRUE) g_price_856 = Ask;
   if (gi_1228 == TRUE && as_0 == "average") g_price_856 = gma(gs_584);
   return (g_price_856);
}

double gma(string a_symbol_0) {
   double l_ima_8 = 0.0;
   int l_period_16 = gi_324;
   if (l_period_16 == 0) l_period_16 = 36;
   int li_20 = 0;
   int l_timeframe_24 = 60;
   l_ima_8 = iMA(a_symbol_0, l_timeframe_24, l_period_16, li_20, MODE_SMA, PRICE_TYPICAL, 0);
   return (l_ima_8);
}

double StartPoint() {
   double l_acc_number_0 = AccountNumber();
   string l_dbl2str_8 = DoubleToStr(l_acc_number_0, 0);
   int l_str2int_16 = StrToInteger(StringSubstr(l_dbl2str_8, StringLen(l_dbl2str_8) - 2, 2));
   return (l_str2int_16);
}

double search_for_inside_price() {
   double l_ord_open_price_0 = 0.0;
   gi_1016 = OrdersTotal();
   for (int l_pos_8 = gi_1016 - 1; l_pos_8 >= 0; l_pos_8--) {
      if (!OrderSelect(l_pos_8, SELECT_BY_POS, MODE_TRADES)) {
         g_error_1020 = GetLastError();
         Print("OrderSelect( ", l_pos_8, ", SELECT_BY_POS ) - Error #", g_error_1020);
      } else {
         if (OrderSymbol() == Symbol()) {
            if (OrderMagicNumber() < MagicNumber1 || OrderMagicNumber() > MagicNumber1 + 100) continue;
            if (OrderCloseTime() == 0) {
               if (OrderType() == OP_SELL && l_ord_open_price_0 == 0.0) l_ord_open_price_0 = 999999.9999000001;
               if (OrderType() == OP_BUY && OrderOpenPrice() <= l_ord_open_price_0) continue;
               if (OrderType() == OP_SELL && OrderOpenPrice() >= l_ord_open_price_0) continue;
               l_ord_open_price_0 = OrderOpenPrice();
            }
         }
      }
   }
   return (l_ord_open_price_0);
}

double search_for_hedge(int ai_0) {
   double l_ord_lots_4 = 0.0;
   gi_1016 = OrdersTotal();
   for (int l_pos_12 = gi_1016 - 1; l_pos_12 >= 0; l_pos_12--) {
      if (!OrderSelect(l_pos_12, SELECT_BY_POS, MODE_TRADES)) {
         g_error_1020 = GetLastError();
         Print("OrderSelect( ", l_pos_12, ", SELECT_BY_POS ) - Error #", g_error_1020);
      } else {
         if (OrderSymbol() == Symbol()) {
            if (OrderCloseTime() == 0) {
               if (ai_0 == 1 && OrderType() == OP_SELL) continue;
               if (ai_0 == 2 && OrderType() == OP_BUY) continue;
               if (OrderLots() > l_ord_lots_4) l_ord_lots_4 = OrderLots();
            }
         }
      }
   }
   return (l_ord_lots_4);
}

double search_for_latest_closed() {
   gi_1016 = OrdersHistoryTotal();
   int l_datetime_0 = 0;
   bool li_4 = FALSE;
   int l_ticket_8 = 0;
   int li_unused_12 = 0;
   for (int l_pos_16 = gi_1016 - 1; l_pos_16 >= 0; l_pos_16--) {
      if (!OrderSelect(l_pos_16, SELECT_BY_POS, MODE_HISTORY)) {
         g_error_1020 = GetLastError();
         Print("OrderSelect( ", l_pos_16, ", SELECT_BY_POS ) - Error #", g_error_1020);
      } else {
         if (OrderSymbol() == Symbol()) {
            if (OrderCloseTime() != 0) {
               if (OrderCloseTime() > l_datetime_0) {
                  l_datetime_0 = OrderCloseTime();
                  l_ticket_8 = OrderTicket();
                  li_4 = TRUE;
               }
            }
         }
      }
   }
   if (li_4 == TRUE) {
      for (l_pos_16 = gi_1016 - 1; l_pos_16 >= 0; l_pos_16--) {
         if (!OrderSelect(l_pos_16, SELECT_BY_POS, MODE_HISTORY)) {
            g_error_1020 = GetLastError();
            Print("OrderSelect( ", l_pos_16, ", SELECT_BY_POS ) - Error #", g_error_1020);
         } else {
            if (OrderSymbol() == Symbol())
               if (OrderTicket() == l_ticket_8) return (OrderClosePrice());
         }
      }
   }
   return (0.0);
}

double search_for_latest_open() {
   gi_1016 = OrdersTotal();
   int l_datetime_0 = 0;
   bool li_4 = FALSE;
   int l_ticket_8 = 0;
   int li_unused_12 = 0;
   for (int l_pos_16 = gi_1016 - 1; l_pos_16 >= 0; l_pos_16--) {
      if (!OrderSelect(l_pos_16, SELECT_BY_POS, MODE_TRADES)) {
         g_error_1020 = GetLastError();
         Print("OrderSelect( ", l_pos_16, ", SELECT_BY_POS ) - Error #", g_error_1020);
      } else {
         if (OrderSymbol() == Symbol()) {
            if (OrderCloseTime() == 0) {
               if (OrderOpenTime() > l_datetime_0) {
                  l_datetime_0 = OrderOpenTime();
                  l_ticket_8 = OrderTicket();
                  li_4 = TRUE;
               }
            }
         }
      }
   }
   if (li_4 == TRUE) {
      for (l_pos_16 = gi_1016 - 1; l_pos_16 >= 0; l_pos_16--) {
         if (!OrderSelect(l_pos_16, SELECT_BY_POS, MODE_TRADES)) {
            g_error_1020 = GetLastError();
            Print("OrderSelect( ", l_pos_16, ", SELECT_BY_POS ) - Error #", g_error_1020);
         } else {
            if (OrderSymbol() == Symbol())
               if (OrderTicket() == l_ticket_8) return (OrderOpenPrice());
         }
      }
   }
   return (0.0);
}

