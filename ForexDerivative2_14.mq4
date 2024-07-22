#property copyright "Quantum Globe Inc."
#property link      "http://www.forexderivative.com/"
/*
#import "ForexDerivative.dll"
   int Func1(string a0, string a1);
   void Func2(double& a0[], int a1, string a2);
   int Func3(int a0);
#import
*/
int gia_76[];
string gs_unused_80 = "1.0.0";
bool gi_88;
int gi_92 = 0;
int g_timeframe_96 = PERIOD_M1;
int gi_100 = 2;
double gd_104 = 0.5;
double gd_112 = 2.0;
double gd_120 = 1.3;
double gd_128 = 1.3;
double gd_136 = 20.0;
double gd_144 = 4.0;
double gd_152 = 2.0;
double gd_160 = 1.0;
int gi_168 = 1;
int gi_172 = 1;
int gi_176 = 0;
int gi_180 = 0;
int gi_184 = 1;
int gi_188 = 10;
int gi_192 = 30;
int gi_196 = 10;
int gi_200 = 10;
int gi_204 = 100;
int gi_208 = 100;
int gi_212;
int g_timeframe_216 = PERIOD_M5;
int gi_220 = 1;
int gi_224 = 10;
double gda_228[];
double gd_232 = 0.8;
int gi_240 = 60;
int gi_244 = 70;
int gi_248 = 500;
int gi_252;
double gd_256 = 1.0;
double gd_264 = 0.3;
double gd_272 = 0.75;
int gi_280 = 2;
int gi_284 = 1;
double gd_288 = 2.0;
int gi_296 = 10;
int gi_300 = 1;
int gi_304 = 4;
int gi_308 = 2;
int gi_312;
int g_timeframe_316;
int g_period_320;
int g_ma_method_324 = MODE_EMA;
int gi_328;
double gd_332;
int g_period_340 = 15;
int gi_344 = 4;
int g_timeframe_348;
double gd_352 = 0.0;
double gd_360 = 0.0;
int gi_unused_368 = 40;
int gi_unused_372 = 1;
int gi_376 = 20;
int gi_380 = 0;
int gi_384 = 0;
double gd_388 = 10.0;
double gd_396 = 15.0;
int gi_404 = 10;
int gi_408 = 10;
double gd_412 = 1.0;
double gd_420 = 1.0;
int gi_428 = 8;
int gi_432 = 8;
int gi_unused_436 = 15;
int gi_unused_440 = 40;
double gd_444 = 4.0;
double gd_452 = 2.0;
double gd_460 = 5000.0;
int gi_468 = 1;
int gi_472 = 1;
int gi_476 = 1;
int gi_480 = 2;
double gd_484 = 15.0;
double g_period_492;
double gd_500 = 10.0;
double g_period_508;
int gi_516 = 1;
int g_timeframe_520;
int gi_524 = -10;
double g_period_528 = 100.0;
double gd_536 = 12.0;
double gd_544 = 10.0;
int gi_552 = 1;
int g_timeframe_556;
int g_ma_method_560 = MODE_EMA;
int g_period_564 = 14;
int gi_568 = 4;
int g_timeframe_572;
double gd_576 = 0.0;
double gd_584 = 0.0;
int g_timeframe_592 = PERIOD_M5;
int g_timeframe_596 = PERIOD_M15;
double gd_600 = 0.5;
double gd_608 = 0.25;
double gd_616 = 0.25;
double gd_624 = 2.0;
double gd_632 = 2.0;
int gi_640 = 0;
int gi_644 = 1;
int gi_648 = 20;
int gi_652 = 2;
int gi_656 = 1;
double gd_660 = 0.1;
int gi_668 = 0;
double gd_672 = 125.0;
double gd_680;
double gd_688 = 2.0;
double gd_696;
double gd_704 = 0.8;
int gi_712 = 0;
double gd_716 = 0.5;
int gi_724 = 1;
double gd_728 = 3.0;
double gd_736 = 0.3;
int gi_744 = 0;
int gi_748 = 12;
double gd_752;
double gd_760 = 0.9;
double gd_768 = 0.382;
int gi_776 = 2;
int gi_780 = 55;
double gd_784 = 30.0;
double gd_792 = 24.0;
double gd_unused_800 = 0.0;
double gd_unused_808 = 24.0;
int gi_unused_816 = 0;
int gi_820 = 1;
int gi_824 = 50;
int gi_828 = 0;
int gi_832 = 0;
//extern string KEY = "";
extern int MoneyManagement = 1;
double gd_848 = 1.0;
double gd_856 = 1.0;
double gd_864 = 1.0;
double gd_unused_872 = 0.1;
double gd_880 = 87878.0;
double gd_888 = 37841.0;
double gd_896 = 6748155.0;
double gd_904 = 100.0;
double gd_912 = 2000.0;
double gd_920 = 10000.0;
double gd_928 = 50000.0;
extern double FixLotSize = 1.0;
double gd_944 = 5.0;
double gd_952 = 2.0;
double gd_960 = 1232.0;
double gd_968 = 78.0;
double gd_976 = 192.0;
double gd_984 = 4786.0;
extern bool ProfitProtect = TRUE;
int g_bool_996;
double gd_1000 = 0.5;
double gd_1008 = 0.0;
double gd_1016 = 0.0;
double gd_1024 = 60.0;
extern bool Hedging = FALSE;
extern bool DisplayOnChart = TRUE;
extern bool EmailNotification = FALSE;
int gia_1044[][4];
int gia_1048[][4];
int gia_1052[][4];
int gia_1056[3];
double gda_1060[3];
string gsa_1064[3];
bool gi_1068 = FALSE;
extern bool ECN_TradeExecution = FALSE;
extern string INFO = "FOREX DERIVATIVE 2.0 v1.4";
bool gi_1084 = FALSE;
double gd_1088 = 6.0;
double gd_1096 = 6.0;
double gd_1104 = 7.0;
double gd_1112 = 7.0;
bool gi_1120;
bool gi_1124;
string gsa_1128[6];
bool gi_1132;
double gd_1136;
double gd_1144;
bool gi_1152;
bool gba_1156[];
double gda_1160[];
double gda_1164[];
bool gba_1168[];
double gda_1172[];
bool gba_1176[];
bool gi_1180;
double gd_1184;
bool gi_1192;
double gd_1196;
double gd_1204;
bool gi_1212;
double gd_1216;
bool gi_1224;
double gd_1228;
bool gi_1244;
bool gi_1248;
double gd_1252;
int gi_1260;
double gd_1264;
bool gi_1272;
bool gi_1276;
int gi_1280;
bool gi_1284 = FALSE;
double gd_unused_1288;
int gi_unused_1304;
bool gi_1308;
double gd_1312;
int gi_1320;
double gd_unused_1324;
double g_ima_on_arr_1332;
double g_ima_on_arr_1340;
int gi_1348 = 5000;
double g_ima_on_arr_1352;
int gia_1360[4];
int gi_1364;
int gi_1368;
double gda_1372[];
double gda_1376[];
int gia_1380[4];
int gia_1384[4];
int g_datetime_1392 = 0;
int g_datetime_1396 = 0;
int g_datetime_1400 = 0;
int g_datetime_1404 = 0;
int g_year_1408 = 0;
int g_datetime_1412 = 0;
bool gi_1416;
int gi_unused_1420;
bool gi_1424;
double gd_1428;
bool gi_1436;
double gd_1440;
double gd_unused_1448;
double gda_1456[];
int gi_1460;
int gi_1464;
int gi_unused_1468 = 200;
bool gi_1472;
int gi_1476;
int gi_1480;
int g_count_1484;
int g_count_1488;
double gd_1492;
double gd_1500;
int gi_1508;
double gd_1512;
int g_count_1520;
double gd_1524;
int gi_unused_1532 = 10;
bool gba_1536[];
double gda_1540[];
double gda_1544[];
double gda_1548[];
double gda_1552[];
double gda_1556[];
double gda_1560[];
int gia_1564[];
int gia_1568[];
int gi_1572;
bool gba_1576[];
int gia_1580[];
int gia_1584[];
int gia_1588[];
int gia_1592[];
double gda_1596[];
double gda_1600[];
double gda_1604[][3][3];
int gia_1608[];
double gd_1612;
double gd_1620;
double gd_1628;
double gd_1636;
double gd_1644;
double gd_1652;
double gd_1660;
double gd_1668;
double gd_1676;
double gd_1684;
double gd_1692;
double gd_1700;
bool gi_1708;
bool gi_1712;
bool gi_1716;
bool gi_1720;
int g_count_1724;
int g_count_1728;
int g_count_1732;
int g_count_1736;
int gi_1740;
int g_count_1744;
int g_count_1748;
int g_count_1752;
int g_count_1756;
double gd_1760;
double gd_1768;
double gd_1776;
double gd_1784;
double gd_1792;
double gd_1800;
double gd_1808;
bool gi_1816;
int gi_unused_1820;
double gd_1824;
double gd_1832;
double gd_1840;
double gd_1848;
int g_file_1856;
int g_file_1860;
int g_file_1864;
int g_file_1868;
double g_minlot_1872;
bool gi_1880;
bool gi_1884;
int gi_unused_1888;
int g_error_1892;
string gs_1896;
double gd_unused_1912;
int g_count_1920;
int gi_1924 = D'18.05.2009 12:00';
bool gi_1928;
bool gi_1932;
int gi_1936;
bool gi_1940 = TRUE;
bool gi_1944 = FALSE;
int gi_1948 = 0;
int gia_1952[4];
double gda_1956[];
double gda_1960[];
double gda_1964[];
double gda_1968[];
double gda_1972[];
double gda_1976[];
double gda_1980[];
double gda_1984[];
int gia_1988[4];
int gia_1992[4];
int gi_1996 = 500;
int gi_unused_2000 = 1800;
double gd_unused_2004 = 0.0;
double gd_unused_2012 = 0.0;
int gia_2020[];
bool gba_unused_2024[];
double gd_2028;
double gd_unused_2036;
int gi_2044;
int g_count_2048;
double gda_2052[][4];
string gs_unused_2056 = "V1_0_0";
int gi_2064 = 10;
double gd_2068 = 4.0;
double gd_2076 = 25.0;
string gs_unused_2084 = "OrderReliable fname unset";
int gi_unused_2092 = 0/* NO_ERROR */;

void FindLevels(int ai_0) {
   int li_4;
   int li_8;
   int li_12;
   int li_16;
   double ld_20;
   int li_40;
   double ld_52;
   double ld_64;
   double ld_72;
   double ld_80;
   string ls_unused_88;
   double lda_96[];
   double lda_100[];
   int li_116;
   int lia_120[4];
   int lia_124[4];
   int li_136;
   double ld_140;
   int li_28 = 0;
   int li_112 = 0;
   if (ai_0 == 395790116) {
      li_4 = gi_428;
      li_8 = gi_380;
      li_12 = gd_388;
      li_16 = gi_404;
      ld_20 = gd_412;
      for (int l_index_104 = 0; l_index_104 < 4; l_index_104++) lia_124[l_index_104] = gia_1380[l_index_104];
   } else {
      if (ai_0 == 395790115) {
         li_4 = gi_432;
         li_8 = gi_384;
         li_12 = gd_396;
         li_16 = gi_408;
         ld_20 = gd_420;
         for (l_index_104 = 0; l_index_104 < 4; l_index_104++) lia_124[l_index_104] = gia_1384[l_index_104];
      }
   }
   lia_120[0] = 4200;
   lia_120[1] = 21000;
   lia_120[2] = 259200;
   lia_120[3] = 5184000;
   gia_1952[0] = 1000;
   gia_1952[1] = 1000;
   gia_1952[2] = 1000;
   gia_1952[3] = 1000;
   li_28 = 0;
   ArrayResize(lda_100, 1);
   ArrayInitialize(lda_100, 0);
   for (l_index_104 = li_8; l_index_104 < 4; l_index_104++) {
      li_116 = gia_1952[l_index_104];
      if (TimeCurrent() - lia_124[l_index_104] >= lia_120[l_index_104]) {
         for (int li_60 = li_16; li_60 >= 2.5; li_60 = li_60 - 2.5) {
            ld_64 = li_60 / 10000.0 * ld_20;
            ld_72 = NormalizeDouble(iLow(NULL, gia_1360[l_index_104], iLowest(NULL, gia_1360[l_index_104], MODE_LOW, li_116, 0)), 4);
            ld_80 = NormalizeDouble(iHigh(NULL, gia_1360[l_index_104], iHighest(NULL, gia_1360[l_index_104], MODE_HIGH, li_116, 0)), 4);
            ArrayResize(gia_2020, (ld_80 - ld_72) / 0.0001 + 1.0);
            ArrayInitialize(gia_2020, 0);
            ArrayResize(lda_96, 1);
            ArrayInitialize(lda_96, 0);
            li_112 = 0;
            for (double ld_128 = ld_72; ld_128 <= ld_80; ld_128 += 0.0001) {
               li_136 = (ld_128 - ld_72) / 0.0001;
               for (int li_48 = 1; li_48 < li_116; li_48++)
                  if (ld_128 > NormalizeDouble(iLow(NULL, gia_1360[l_index_104], li_48), 4) && ld_128 < NormalizeDouble(iHigh(NULL, gia_1360[l_index_104], li_48), 4)) gia_2020[li_136]++;
            }
            ld_140 = ld_64 / 0.0001;
            for (ld_128 = ld_72 + ld_64; ld_128 <= ld_80 - ld_64; ld_128 += 0.0001) {
               li_136 = (ld_128 - ld_72) / 0.0001;
               if (gia_2020[li_136] == gia_2020[ArrayMinimum(gia_2020, 2.0 * ld_140, li_136 - ld_64 / 0.0001)] && gia_2020[li_136 - 1] != gia_2020[ArrayMinimum(gia_2020, 2.0 * ld_140, li_136 - ld_64 / 0.0001)] &&
                  gia_2020[ArrayMaximum(gia_2020, 2.0 * ld_140, li_136 - ld_64 / 0.0001)] - gia_2020[ArrayMinimum(gia_2020, 2.0 * ld_140, li_136 - ld_64 / 0.0001)] > li_60) {
                  ArrayResize(lda_96, li_112 + 1);
                  lda_96[li_112] = ld_72 + li_136 / 10000.0;
                  gd_2028 = ld_72 + li_136 / 10000.0;
                  gd_unused_2036 = lda_96[li_112];
                  li_112++;
               }
            }
            if (li_112 >= li_4) break;
         }
         if (ld_72 != NormalizeDouble(iLow(NULL, gia_1360[l_index_104], 0), 4)) {
            ArrayResize(lda_96, li_112 + 1);
            lda_96[li_112] = ld_72;
            li_112++;
         }
         if (ld_80 != NormalizeDouble(iHigh(NULL, gia_1360[l_index_104], 0), 4)) {
            ArrayResize(lda_96, li_112 + 1);
            lda_96[li_112] = ld_80;
            li_112++;
         }
         if (ai_0 == 395790116) {
            switch (gia_1360[l_index_104]) {
            case 1:
               ArrayResize(gda_1956, li_112);
               ArrayCopy(gda_1956, lda_96, 0, 0, WHOLE_ARRAY);
               break;
            case 5:
               ArrayResize(gda_1960, li_112);
               ArrayCopy(gda_1960, lda_96, 0, 0, WHOLE_ARRAY);
               break;
            case 60:
               ArrayResize(gda_1964, li_112);
               ArrayCopy(gda_1964, lda_96, 0, 0, WHOLE_ARRAY);
               break;
            case 1440:
               ArrayResize(gda_1968, li_112);
               ArrayCopy(gda_1968, lda_96, 0, 0, WHOLE_ARRAY);
            }
            gia_1380[l_index_104] = TimeCurrent();
            gia_1992[l_index_104] = li_112;
         } else {
            if (ai_0 == 395790115) {
               switch (gia_1360[l_index_104]) {
               case 1:
                  ArrayResize(gda_1972, li_112);
                  ArrayCopy(gda_1972, lda_96, 0, 0, WHOLE_ARRAY);
                  break;
               case 5:
                  ArrayResize(gda_1976, li_112);
                  ArrayCopy(gda_1976, lda_96, 0, 0, WHOLE_ARRAY);
                  break;
               case 60:
                  ArrayResize(gda_1980, li_112);
                  ArrayCopy(gda_1980, lda_96, 0, 0, WHOLE_ARRAY);
                  break;
               case 1440:
                  ArrayResize(gda_1984, li_112);
                  ArrayCopy(gda_1984, lda_96, 0, 0, WHOLE_ARRAY);
               }
               gia_1384[l_index_104] = TimeCurrent();
               gia_1988[l_index_104] = li_112;
            }
         }
      }
   }
   li_28 = 0;
   if (ai_0 == 395790116) {
      if (li_8 <= 0) {
         ArrayResize(lda_100, li_28 + gia_1992[0]);
         ArrayCopy(lda_100, gda_1956, li_28, 0, WHOLE_ARRAY);
         li_28 += gia_1992[0];
      }
      if (li_8 <= 1) {
         ArrayResize(lda_100, li_28 + gia_1992[1]);
         ArrayCopy(lda_100, gda_1960, li_28, 0, WHOLE_ARRAY);
         li_28 += gia_1992[1];
      }
      if (li_8 <= 2) {
         ArrayResize(lda_100, li_28 + gia_1992[2]);
         ArrayCopy(lda_100, gda_1964, li_28, 0, WHOLE_ARRAY);
         li_28 += gia_1992[2];
      }
      if (li_8 <= 3) {
         ArrayResize(lda_100, li_28 + gia_1992[3]);
         ArrayCopy(lda_100, gda_1968, li_28, 0, WHOLE_ARRAY);
         li_28 += gia_1992[3];
      }
   } else {
      if (ai_0 == 395790115) {
         if (li_8 <= 0) {
            ArrayResize(lda_100, li_28 + gia_1988[0]);
            ArrayCopy(lda_100, gda_1972, li_28, 0, WHOLE_ARRAY);
            li_28 += gia_1988[0];
         }
         if (li_8 <= 1) {
            ArrayResize(lda_100, li_28 + gia_1988[1]);
            ArrayCopy(lda_100, gda_1976, li_28, 0, WHOLE_ARRAY);
            li_28 += gia_1988[1];
         }
         if (li_8 <= 2) {
            ArrayResize(lda_100, li_28 + gia_1988[2]);
            ArrayCopy(lda_100, gda_1980, li_28, 0, WHOLE_ARRAY);
            li_28 += gia_1988[2];
         }
         if (li_8 <= 3) {
            ArrayResize(lda_100, li_28 + gia_1988[3]);
            ArrayCopy(lda_100, gda_1984, li_28, 0, WHOLE_ARRAY);
            li_28 += gia_1988[3];
         }
      }
   }
   double ld_156 = NormalizeDouble(iClose(NULL, 0, 0), 4);
   double ld_164 = MathRound(ld_156 / 0.0001 / 1000.0);
   ArrayResize(lda_100, li_28 + 3);
   lda_100[li_28] = 1000.0 * ld_164 / 10000.0 + gi_1996 / 10000.0;
   lda_100[li_28 + 1] = 1000.0 * ld_164 / 10000.0;
   lda_100[li_28 + 2] = 1000.0 * ld_164 / 10000.0 - gi_1996 / 10000.0;
   li_28 += 3;
   ArraySort(lda_100);
   if (li_28 > 0) {
      ArrayResize(lda_96, li_28);
      ArrayInitialize(lda_96, 0);
   }
   int li_44 = 0;
   for (int l_index_36 = 0; l_index_36 < li_28; l_index_36++) {
      ld_52 = lda_100[l_index_36];
      li_40 = 1;
      while (l_index_36 < li_28 && MathAbs(lda_100[l_index_36] - (lda_100[l_index_36 + 1])) < gi_376 * li_12 / 10000.0) {
         ld_52 += lda_100[l_index_36 + 1];
         li_40++;
         l_index_36++;
      }
      if (li_40 != 0) lda_96[li_44] = ld_52 / li_40;
      li_44 += 1;
   }
   li_28 = li_44;
   ArrayResize(lda_96, li_28);
   ArrayResize(lda_100, li_28);
   ArrayInitialize(lda_100, 0);
   ArrayCopy(lda_100, lda_96, 0, 0, WHOLE_ARRAY);
   if (ai_0 == 395790116) {
      gi_1364 = li_28;
      ArrayResize(gda_1372, gi_1364);
      ArrayInitialize(gda_1372, 0);
      ArrayCopy(gda_1372, lda_100, 0, 0, WHOLE_ARRAY);
      return;
   }
   if (ai_0 == 395790115) {
      gi_1368 = li_28;
      ArrayResize(gda_1376, gi_1368);
      ArrayInitialize(gda_1376, 0);
      ArrayCopy(gda_1376, lda_100, 0, 0, WHOLE_ARRAY);
   }
}

void FindTP_SR(int ai_0, int ai_4) {
   double ld_8;
   double ld_16;
   double ld_24;
   double ld_32;
   bool li_40;
   bool li_44;
   int li_48;
   double ld_56;
   double ld_64;
   bool li_72;
   bool li_76;
   double ld_80;
   if (ai_4 == 395790116) ld_80 = gd_444;
   else
      if (ai_4 == 395790115) ld_80 = gd_452;
   if (ai_4 == 395790116) {
      ld_8 = NormalizeDouble(iClose(NULL, 0, 0), 4);
      if (ai_0 == 1) ld_16 = ld_8 + gd_460 / 10000.0;
      else ld_16 = ld_8 - gd_460 / 10000.0;
      if (ld_16 > gda_1372[gi_1364 - 1]) {
         li_44 = TRUE;
         ld_32 = gda_1372[gi_1364 - 1];
      } else {
         if (ld_16 < gda_1372[0]) {
            li_40 = TRUE;
            ld_24 = gda_1372[0];
         } else {
            for (int li_52 = 0; li_52 < gi_1364; li_52 += 1) {
               if (ld_16 > gda_1372[li_52] && ld_16 <= gda_1372[li_52 + 1]) {
                  li_48 = li_52;
                  break;
               }
            }
            ld_24 = gda_1372[li_48 + 1];
            ld_32 = gda_1372[li_48];
            li_40 = TRUE;
            li_44 = TRUE;
         }
      }
   } else {
      if (ai_4 == 395790115) {
         ld_8 = NormalizeDouble(iClose(NULL, 0, 0), 4);
         if (ld_8 > gda_1376[gi_1368 - 1]) {
            li_44 = TRUE;
            ld_32 = gda_1376[gi_1368 - 1];
         } else {
            if (ld_8 < gda_1376[0]) {
               li_40 = TRUE;
               ld_24 = gda_1376[0];
            } else {
               for (li_52 = 0; li_52 < gi_1368; li_52 += 1) {
                  if (ld_8 > gda_1376[li_52] && ld_8 <= gda_1376[li_52 + 1]) {
                     li_48 = li_52;
                     break;
                  }
               }
               ld_24 = gda_1376[li_48 + 1];
               ld_32 = gda_1376[li_48];
               li_40 = TRUE;
               li_44 = TRUE;
            }
         }
      }
   }
   if (ai_4 == 395790115) {
      if (ai_0 == 1 && li_40 == TRUE) {
         if (ld_24 - ld_8 > ld_80 * gi_376 / 10000.0) {
            ld_56 = ld_24 - ld_80 * gi_376 / 10000.0;
            li_72 = TRUE;
            li_76 = FALSE;
            ld_64 = ld_24 + ld_80 * gi_376 / 10000.0;
         } else {
            if (gi_184 == 3) {
               li_72 = FALSE;
               ld_56 = ld_24 - ld_80 * gi_376 / 10000.0;
               li_76 = TRUE;
               ld_64 = ld_24 + ld_80 * gi_376 / 10000.0;
               gi_1320 = 1;
            } else {
               ld_56 = ld_24;
               li_72 = TRUE;
               li_76 = FALSE;
               ld_64 = 0;
            }
         }
      } else {
         if (ai_0 == 2 && li_44 == TRUE) {
            if (ld_8 - ld_32 > ld_80 * gi_376 / 10000.0) {
               ld_56 = ld_32 + ld_80 * gi_376 / 10000.0;
               li_72 = TRUE;
               li_76 = FALSE;
               ld_64 = ld_32 - ld_80 * gi_376 / 10000.0;
            } else {
               if (gi_184 == 3) {
                  li_72 = FALSE;
                  ld_56 = ld_32 + ld_80 * gi_376 / 10000.0;
                  li_76 = TRUE;
                  ld_64 = ld_32 - ld_80 * gi_376 / 10000.0;
                  gi_1320 = 2;
               } else {
                  ld_56 = ld_32;
                  li_72 = TRUE;
                  li_76 = FALSE;
                  ld_64 = ld_32 - ld_80 * gi_376 / 10000.0;
               }
            }
         } else {
            li_72 = FALSE;
            li_76 = FALSE;
         }
      }
      gi_1192 = li_72;
      gd_1196 = ld_56;
      gd_1312 = ld_64;
      gi_1308 = li_76;
      return;
   }
   if (ai_4 == 395790116) {
      if (ai_0 == 1 && li_40 == TRUE) {
         if (ld_24 - ld_8 > ld_80 * gi_376 / 10000.0) {
            ld_56 = ld_24 - ld_80 * gi_376 / 10000.0;
            li_72 = TRUE;
            li_76 = FALSE;
            ld_64 = ld_24 + ld_80 * gi_376 / 10000.0;
         } else {
            li_72 = FALSE;
            ld_56 = ld_24 - ld_80 * gi_376 / 10000.0;
            li_76 = TRUE;
            ld_64 = ld_24 + ld_80 * gi_376 / 10000.0;
            gi_1260 = 1;
         }
      } else {
         if (ai_0 == 2 && li_44 == TRUE) {
            if (ld_8 - ld_32 > ld_80 * gi_376 / 10000.0) {
               ld_56 = ld_32 + ld_80 * gi_376 / 10000.0;
               li_72 = TRUE;
               li_76 = FALSE;
               ld_64 = ld_32 - ld_80 * gi_376 / 10000.0;
            } else {
               li_72 = FALSE;
               ld_56 = ld_32 + ld_80 * gi_376 / 10000.0;
               li_76 = TRUE;
               ld_64 = ld_32 - ld_80 * gi_376 / 10000.0;
               gi_1260 = 2;
            }
         } else {
            if (ai_0 == 1) {
               ld_56 = ld_8 + gd_460 / 10000.0 - ld_80 * gi_376 / 10000.0;
               li_72 = TRUE;
               li_76 = FALSE;
               ld_64 = ld_8 + gd_460 / 10000.0 + ld_80 * gi_376 / 10000.0;
            } else {
               if (ai_0 == 2) {
                  ld_56 = ld_8 - gd_460 / 10000.0 + ld_80 * gi_376 / 10000.0;
                  li_72 = TRUE;
                  li_76 = FALSE;
                  ld_64 = ld_8 - gd_460 / 10000.0 - ld_80 * gi_376 / 10000.0;
               } else {
                  li_72 = FALSE;
                  li_76 = FALSE;
               }
            }
         }
      }
      gi_1132 = li_72;
      gd_1136 = ld_56;
      gd_1252 = ld_64;
      gi_1248 = li_76;
   }
}

void CheckStateSingleShot() {
   gi_1120 = gi_1124;
   switch (gi_1124) {
   case 1:
      if (Transition_Exit_SingleShot() != 1) return;
      gi_1120 = FALSE;
      gi_1308 = FALSE;
      return;
   case 0:
      if (Transition_Entry_SingleShot() == 1) {
         gi_1120 = TRUE;
         return;
      }
      return;
   }
}

int CheckEntrySingleShot() {
   if (gi_1120 == TRUE && gi_1120 != gi_1124) {
      if (gi_92 == 0) {
         if (Transition_Entry_SingleShot() != 1) return (0);
         gi_2044 = CheckSingleShotDirection(0);
         if (gi_2044 == 1) return (1);
         if (gi_2044 != 2) return (0);
         return (2);
      }
      if (gi_92 == 1) {
         if (gi_2044 == 1) return (1);
         if (gi_2044 == 2) return (2);
      }
   }
   return (0);
}

int Transition_Entry_SingleShot() {
   bool li_4;
   bool li_8;
   bool li_12;
   bool li_16;
   int li_24;
   int li_28;
   int li_32;
   double ld_36;
   double l_ima_on_arr_44;
   double ld_52;
   double ld_60;
   double ld_68;
   double ld_76;
   int l_highest_84;
   int l_lowest_88;
   int li_92;
   double ld_96;
   double ld_104;
   int li_112;
   int li_116;
   bool li_ret_0 = FALSE;
   if (SecureCallATR(0, g_timeframe_96, 1000, 0) == 0.0) return (0);
   if (gi_92 == 0) {
      li_4 = FALSE;
      ld_52 = NormalizeDouble(iHigh(NULL, g_timeframe_96, iHighest(NULL, g_timeframe_96, MODE_HIGH, gi_100, 0)), 4);
      ld_60 = NormalizeDouble(iLow(NULL, g_timeframe_96, iLowest(NULL, g_timeframe_96, MODE_LOW, gi_100, 0)), 4);
      ld_68 = ld_52 - ld_60;
      if (ld_68 > gd_104 * gi_100 * SecureCallATR(0, g_timeframe_96, 1000, 0) && CheckNoGap(0, gi_100, ld_68, g_timeframe_96, 0.3) == 1) li_4 = TRUE;
      else return (0);
      if (gi_168 == 0) li_8 = TRUE;
      else {
         li_8 = TRUE;
         if (gi_168 == 2) li_24 = 1;
         else li_24 = gi_100 - 1;
         for (int li_20 = 0; li_20 < li_24; li_20++) {
            gi_2044 = CheckSingleShotDirection(li_20);
            if (gi_2044 == 0) {
               li_8 = FALSE;
               return (0);
            }
            if (li_20 >= 1 && li_32 != gi_2044) {
               li_8 = FALSE;
               return (0);
            }
            li_32 = gi_2044;
         }
      }
      if (gi_172 == 0) li_12 = TRUE;
      else {
         li_12 = TRUE;
         if (gi_172 == 2) li_24 = 1;
         else li_24 = gi_100 - 1;
         for (li_20 = 1; li_20 < li_24; li_20++) {
            ld_36 = CheckSingleShotExpansion(li_20);
            if (ld_36 < gd_120) {
               li_12 = FALSE;
               return (0);
            }
         }
      }
      if (gi_176 == 0) li_16 = TRUE;
      else {
         li_16 = TRUE;
         if (g_timeframe_96 == PERIOD_M1) l_ima_on_arr_44 = g_ima_on_arr_1332;
         else l_ima_on_arr_44 = g_ima_on_arr_1340;
         if (gi_176 == 1 || gi_176 == 2) {
            if (gi_176 == 2) li_24 = 1;
            else li_24 = gi_100 - 1;
            for (li_20 = 1; li_20 <= li_24; li_20++) {
               if (iVolume(NULL, g_timeframe_96, li_20) < gd_128 * l_ima_on_arr_44) {
                  li_16 = FALSE;
                  return (0);
               }
            }
         } else {
            if (gi_176 == 3) {
               ld_96 = CalculateVolumeMovementStrength(gi_100 - 1, 0, g_timeframe_96);
               ld_104 = gd_128 * l_ima_on_arr_44 * gi_100;
               if (ld_96 < ld_104) {
                  li_16 = FALSE;
                  return (0);
               }
            }
         }
      }
   } else {
      if (gi_92 == 1) {
         li_4 = FALSE;
         l_highest_84 = iHighest(NULL, g_timeframe_96, MODE_HIGH, gi_100, 0);
         ld_52 = NormalizeDouble(iHigh(NULL, g_timeframe_96, l_highest_84), 4);
         l_lowest_88 = iLowest(NULL, g_timeframe_96, MODE_LOW, gi_100, 0);
         ld_60 = NormalizeDouble(iLow(NULL, g_timeframe_96, l_lowest_88), 4);
         ld_68 = ld_52 - ld_60;
         if (CheckNoGap(0, gi_100, ld_68, g_timeframe_96, 0.3) == 1) {
            ld_76 = gd_104 * gi_100 * SecureCallATR(0, g_timeframe_96, 1000, 0);
            li_112 = iClose(NULL, g_timeframe_96, 0) - ld_60 > ld_76;
            li_116 = ld_52 - iClose(NULL, g_timeframe_96, 0) > ld_76;
            if (li_112 == 1 && li_116 == 0) {
               gi_2044 = 1;
               li_92 = l_lowest_88;
               li_4 = TRUE;
            } else {
               if (li_112 == 0 && li_116 == 1) {
                  gi_2044 = 2;
                  li_92 = l_highest_84;
                  li_4 = TRUE;
               } else return (0);
            }
         } else return (0);
         if (gi_168 == 0) li_8 = TRUE;
         else {
            li_8 = TRUE;
            if (gi_168 == 2) li_24 = 1;
            else li_24 = li_92;
            for (li_20 = 0; li_20 < li_24; li_20++) {
               li_28 = CheckSingleShotDirection(li_20);
               if (li_28 != gi_2044) {
                  li_8 = FALSE;
                  return (0);
               }
            }
         }
         if (gi_172 == 0) li_12 = TRUE;
         else {
            li_12 = TRUE;
            if (gi_172 == 2) li_24 = 1;
            else li_24 = li_92;
            for (li_20 = 1; li_20 < li_24; li_20++) {
               ld_36 = CheckSingleShotExpansion(li_20);
               if (ld_36 < gd_120) {
                  li_12 = FALSE;
                  return (0);
               }
            }
         }
         if (gi_176 == 0) li_16 = TRUE;
         else {
            li_16 = TRUE;
            if (g_timeframe_96 == PERIOD_M1) l_ima_on_arr_44 = g_ima_on_arr_1332;
            else l_ima_on_arr_44 = g_ima_on_arr_1340;
            if (gi_176 == 1 || gi_176 == 2) {
               if (gi_176 == 2) li_24 = 1;
               else li_24 = li_92;
               for (li_20 = 1; li_20 <= li_24; li_20++) {
                  if (iVolume(NULL, g_timeframe_96, li_20) < gd_128 * l_ima_on_arr_44) {
                     li_16 = FALSE;
                     return (0);
                  }
               }
            } else {
               if (gi_176 == 3) {
                  ld_96 = CalculateVolumeMovementStrength(li_92, 0, g_timeframe_96);
                  ld_104 = gd_128 * l_ima_on_arr_44 * (li_92 + 1);
                  if (ld_96 < ld_104) {
                     li_16 = FALSE;
                     return (0);
                  }
               }
            }
         }
      }
   }
   li_ret_0 = li_4 && li_8 && li_12 && li_16;
   return (li_ret_0);
}

int Transition_Exit_SingleShot() {
   bool li_ret_0 = FALSE;
   double ld_4 = NormalizeDouble(iHigh(NULL, g_timeframe_96, iHighest(NULL, g_timeframe_96, MODE_HIGH, gd_112 * gi_100, 0)), 4);
   double ld_12 = NormalizeDouble(iLow(NULL, g_timeframe_96, iLowest(NULL, g_timeframe_96, MODE_LOW, gd_112 * gi_100, 0)), 4);
   double ld_20 = ld_4 - ld_12;
   if (ld_20 < gd_104 * gi_100 * SecureCallATR(0, g_timeframe_96, 1000, 0)) li_ret_0 = TRUE;
   return (li_ret_0);
}

int CheckSingleShotDirection(int ai_0) {
   int li_ret_4;
   if (NormalizeDouble(iHigh(NULL, g_timeframe_96, ai_0), 4) > NormalizeDouble(iHigh(NULL, g_timeframe_96, ai_0 + 1), 4) && NormalizeDouble(iLow(NULL, g_timeframe_96, ai_0), 4) > NormalizeDouble(iLow(NULL, g_timeframe_96, ai_0 +
      1), 4)) li_ret_4 = 1;
   else {
      if (NormalizeDouble(iHigh(NULL, g_timeframe_96, ai_0), 4) < NormalizeDouble(iHigh(NULL, g_timeframe_96, ai_0 + 1), 4) && NormalizeDouble(iLow(NULL, g_timeframe_96, ai_0), 4) < NormalizeDouble(iLow(NULL, g_timeframe_96, ai_0 +
         1), 4)) li_ret_4 = 2;
      else li_ret_4 = 0;
   }
   return (li_ret_4);
}

double CheckSingleShotExpansion(int ai_0) {
   double ld_ret_36;
   double ld_4 = NormalizeDouble(iHigh(NULL, g_timeframe_96, ai_0), 4);
   double ld_12 = NormalizeDouble(iLow(NULL, g_timeframe_96, ai_0), 4);
   double ld_20 = NormalizeDouble(iHigh(NULL, g_timeframe_96, ai_0 + 1), 4);
   double ld_28 = NormalizeDouble(iLow(NULL, g_timeframe_96, ai_0 + 1), 4);
   if (ld_20 - ld_28 == 0.0) ld_ret_36 = 10000;
   else ld_ret_36 = (ld_4 - ld_12) / (ld_20 - ld_28);
   return (ld_ret_36);
}

int OrderOpen_SINGLESHOT(int ai_0) {
   int l_ticket_4;
   double ld_8;
   int li_16;
   if (ai_0 == 1) {
      if (gi_184 == 1) {
         gd_1196 = Ask + gd_136 * gd_104 * gi_100 * SecureCallATR(0, g_timeframe_96, 1000, 0);
         gi_1192 = TRUE;
      } else {
         if (gi_184 == 2 || gi_184 == 3) {
            FindLevels(395790115);
            FindTP_SR(1, 395790115);
         }
      }
      gd_1184 = gd_152 * NormalizeDouble(SecureCallATR(0, PERIOD_M5, 1000, 0), 4);
      gd_1204 = NormalizeDouble(Bid, 4) - gd_1184;
      gd_1216 = NormalizeDouble(Bid, 4) - gd_160 * NormalizeDouble(SecureCallATR(0, PERIOD_M5, 1000, 0), 4);
      if ((gi_1192 == TRUE && gd_1196 - Ask <= 0.001) || NormalizeDouble(Bid, 4) - gd_1204 <= 0.001) return (0);
      if (gi_180 == 1) gd_1204 = MathMax(gd_1204, NormalizeDouble(iLow(NULL, PERIOD_M1, 1), 4));
      gd_unused_1288 = gd_1204;
      ld_8 = MoneyManagement(NormalizeDouble(Ask, 4), gd_1204, 395790115, OP_BUY, 0);
      if (gi_184 < 2 || gi_1308 == FALSE && ld_8 != 0.0) {
         gi_1180 = TRUE;
         gi_1212 = TRUE;
         gi_1224 = TRUE;
         gi_1276 = TRUE;
         if (!IsTesting()) RefreshRates();
         if (ECN_TradeExecution == FALSE) {
            if (gi_1192 == TRUE) l_ticket_4 = OrderSendReliable(Symbol(), OP_BUY, ld_8, Ask, gi_1936, gd_1204 - 0.001, gd_1196, "", 395790115, 0, Blue);
            else l_ticket_4 = OrderSendReliable(Symbol(), OP_BUY, ld_8, Ask, gi_1936, gd_1204 - 0.001, 0, "", 395790115, 0, Blue);
         } else {
            l_ticket_4 = OrderSendReliable(Symbol(), OP_BUY, ld_8, Ask, gi_1936, 0, 0, "", 395790115, 0, Blue);
            if (l_ticket_4 >= 0) {
               Sleep(1000);
               if (OrderSelect(l_ticket_4, SELECT_BY_TICKET) == TRUE) {
                  if (gi_1192 == TRUE) li_16 = OrderModifyReliable(l_ticket_4, OrderOpenPrice(), gd_1204 - 0.001, gd_1196 + 0.001, 0, Violet);
                  else li_16 = OrderModifyReliable(l_ticket_4, OrderOpenPrice(), gd_1204 - 0.001, OrderTakeProfit(), 0, Violet);
               }
            }
         }
         if (EmailNotification == TRUE && l_ticket_4 != -1) SendMail("Forex Derivative 2.0 for " + Symbol(), "Open buy " + DoubleToStr(ld_8, 2) + " " + Symbol() + " at " + DoubleToStr(Ask, Digits));
         if (l_ticket_4 < 0) {
            AlertIsError(GetLastError());
            return (0);
         }
         return (1);
      }
   } else {
      if (ai_0 == 2) {
         if (gi_184 == 1) {
            gd_1196 = Bid - gd_136 * gd_104 * gi_100 * SecureCallATR(0, g_timeframe_96, 1000, 0);
            gi_1192 = TRUE;
         } else {
            if (gi_184 == 2 || gi_184 == 3) {
               FindLevels(395790115);
               FindTP_SR(2, 395790115);
            }
         }
         gd_1184 = gd_152 * NormalizeDouble(SecureCallATR(0, PERIOD_M5, 1000, 0), 4);
         gd_1204 = NormalizeDouble(Ask, 4) + gd_1184;
         gd_1216 = NormalizeDouble(Ask, 4) + gd_160 * NormalizeDouble(SecureCallATR(0, PERIOD_M5, 1000, 0), 4);
         if ((gi_1192 == TRUE && Bid - gd_1196 <= 0.001) || gd_1204 - NormalizeDouble(Ask, 4) <= 0.001) return (0);
         if (gi_180 == 1) gd_1204 = MathMin(gd_1204, NormalizeDouble(iHigh(NULL, PERIOD_M1, 1), 4));
         gd_unused_1288 = gd_1204;
         ld_8 = MoneyManagement(NormalizeDouble(Bid, 4), gd_1204, 395790115, OP_SELL, 0);
         if (gi_184 < 2 || gi_1308 == FALSE && ld_8 != 0.0) {
            gi_1180 = TRUE;
            gi_1212 = TRUE;
            gi_1224 = TRUE;
            gi_1276 = TRUE;
            if (!IsTesting()) RefreshRates();
            if (ECN_TradeExecution == FALSE) {
               if (gi_1192 == TRUE) l_ticket_4 = OrderSendReliable(Symbol(), OP_SELL, ld_8, Bid, gi_1936, gd_1204 + 0.001, gd_1196, "", 395790115, 0, Blue);
               else l_ticket_4 = OrderSendReliable(Symbol(), OP_SELL, ld_8, Bid, gi_1936, gd_1204 + 0.001, 0, "", 395790115, 0, Blue);
            } else {
               l_ticket_4 = OrderSendReliable(Symbol(), OP_SELL, ld_8, Bid, gi_1936, 0, 0, "", 395790115, 0, Blue);
               if (l_ticket_4 >= 0) {
                  Sleep(1000);
                  if (OrderSelect(l_ticket_4, SELECT_BY_TICKET) == TRUE) {
                     if (gi_1192 == TRUE) li_16 = OrderModifyReliable(l_ticket_4, OrderOpenPrice(), gd_1204 + 0.001, gd_1196 - 0.001, 0, Violet);
                     else li_16 = OrderModifyReliable(l_ticket_4, OrderOpenPrice(), gd_1204 + 0.001, OrderTakeProfit(), 0, Violet);
                  }
               }
            }
            if (EmailNotification == TRUE && l_ticket_4 != -1) SendMail("Forex Derivative 2.0 for " + Symbol(), "Open sell " + DoubleToStr(ld_8, 2) + " " + Symbol() + " at " + DoubleToStr(Bid, Digits));
            if (l_ticket_4 < 0) {
               AlertIsError(GetLastError());
               return (0);
            }
            return (1);
         }
      }
   }
   return (0);
}

void CheckForOpenSingleShot() {
   int l_ticket_4;
   double ld_8;
   int li_16;
   int li_20;
   if (gi_1308 == TRUE && gi_184 == 3) {
      if (gi_1320 == 1 && NormalizeDouble(iClose(NULL, PERIOD_M1, 0), 4) > gd_1312) {
         if (gi_472 == 0) {
            gd_1204 = gd_1196;
            gd_1184 = gd_152 * NormalizeDouble(SecureCallATR(0, PERIOD_M5, 1000, 0), 4);
         } else {
            if (gi_472 == 1) {
               gd_1184 = gd_152 * NormalizeDouble(SecureCallATR(0, PERIOD_M5, 1000, 0), 4);
               gd_1204 = NormalizeDouble(Bid, 4) - gd_1184;
            }
         }
         gd_unused_1324 = gd_1312;
         FindLevels(395790115);
         FindTP_SR(1, 395790115);
         ld_8 = MoneyManagement(NormalizeDouble(Ask, 4), gd_1204, 395790115, OP_BUY, 0);
         if (gi_1308 == FALSE && ld_8 != 0.0) {
            gi_1212 = TRUE;
            gi_1180 = TRUE;
            if (!IsTesting()) RefreshRates();
            if (ECN_TradeExecution == FALSE) l_ticket_4 = OrderSendReliable(Symbol(), OP_BUY, ld_8, Ask, gi_1936, gd_1204 - 0.001, 0, "", 395790115, 0, Blue);
            else {
               l_ticket_4 = OrderSendReliable(Symbol(), OP_BUY, ld_8, Ask, gi_1936, 0, 0, "", 395790115, 0, Blue);
               if (l_ticket_4 >= 0) {
                  Sleep(1000);
                  if (OrderSelect(l_ticket_4, SELECT_BY_TICKET) == TRUE) {
                     if (gi_1192 == TRUE) li_20 = OrderModifyReliable(l_ticket_4, OrderOpenPrice(), gd_1204 - 0.001, gd_1196 + 0.001, 0, Violet);
                     else li_20 = OrderModifyReliable(l_ticket_4, OrderOpenPrice(), gd_1204 - 0.001, OrderTakeProfit(), 0, Violet);
                  }
               }
            }
            if (EmailNotification == TRUE && l_ticket_4 != -1) SendMail("Forex Derivative 2.0 for " + Symbol(), "Open buy " + DoubleToStr(ld_8, 2) + " " + Symbol() + " at " + DoubleToStr(Ask, Digits));
            if (l_ticket_4 < 0) {
               AlertIsError(GetLastError());
               return;
            }
            gi_unused_1304 = 1;
            return;
         }
      } else {
         if (gi_1320 == 2 && NormalizeDouble(iClose(NULL, PERIOD_M1, 0), 4) < gd_1312) {
            if (gi_472 == 0) {
               gd_1204 = gd_1196;
               gd_1184 = gd_152 * NormalizeDouble(SecureCallATR(0, PERIOD_M5, 1000, 0), 4);
            } else {
               if (gi_472 == 1) {
                  gd_1184 = gd_152 * NormalizeDouble(SecureCallATR(0, PERIOD_M5, 1000, 0), 4);
                  gd_1204 = NormalizeDouble(Ask, 4) + gd_1184;
               }
            }
            gd_unused_1324 = gd_1312;
            FindLevels(395790115);
            FindTP_SR(2, 395790115);
            ld_8 = MoneyManagement(NormalizeDouble(Bid, 4), gd_1204, 395790115, OP_SELL, 0);
            if (gi_1308 == FALSE && ld_8 != 0.0) {
               gi_1212 = TRUE;
               gi_1180 = TRUE;
               if (!IsTesting()) RefreshRates();
               if (ECN_TradeExecution == FALSE) l_ticket_4 = OrderSendReliable(Symbol(), OP_SELL, ld_8, Bid, gi_1936, gd_1204 + 0.001, 0, "", 395790115, 0, Blue);
               else {
                  l_ticket_4 = OrderSendReliable(Symbol(), OP_SELL, ld_8, Bid, gi_1936, gd_1204 + 0.001, 0, "", 395790115, 0, Blue);
                  if (l_ticket_4 >= 0) {
                     Sleep(1000);
                     if (OrderSelect(l_ticket_4, SELECT_BY_TICKET) == TRUE) {
                        if (gi_1192 == TRUE) li_20 = OrderModifyReliable(l_ticket_4, OrderOpenPrice(), gd_1204 + 0.001, gd_1196 - 0.001, 0, Violet);
                        else li_20 = OrderModifyReliable(l_ticket_4, OrderOpenPrice(), gd_1204 + 0.001, OrderTakeProfit(), 0, Violet);
                     }
                  }
               }
               if (EmailNotification == TRUE && l_ticket_4 != -1) SendMail("Forex Derivative 2.0 for " + Symbol(), "Open sell " + DoubleToStr(ld_8, 2) + " " + Symbol() + " at " + DoubleToStr(Bid, Digits));
               if (l_ticket_4 < 0) {
                  AlertIsError(GetLastError());
                  return;
               }
               gi_unused_1304 = 1;
               return;
            }
         }
      }
   }
   int li_0 = CheckEntrySingleShot();
   if (li_0 == 1 && gi_1308 == FALSE || gi_1320 == 2) {
      if (gi_88 == FALSE || CheckForOppositeOpenOrders(Symbol(), OP_SELL) == 0) li_16 = OrderOpen_SINGLESHOT(1);
   } else {
      if (li_0 == 2 && gi_1308 == FALSE || gi_1320 == 1)
         if (gi_88 == FALSE || CheckForOppositeOpenOrders(Symbol(), OP_BUY) == 0) li_16 = OrderOpen_SINGLESHOT(2);
   }
}

int CheckForLongTermTrend(int ai_0) {
   double ld_4;
   double ld_20;
   double ld_28;
   double ld_44;
   double ld_52;
   double ld_60;
   double ld_68;
   double ld_76;
   double ld_84;
   switch (gi_480) {
   case 0:
      return (1);
   case 1:
      ld_20 = NormalizeDouble(iMA(NULL, g_timeframe_520, g_period_492, 0, MODE_EMA, PRICE_CLOSE, 0), 4);
      ld_4 = NormalizeDouble(iMA(NULL, g_timeframe_520, g_period_508, 0, MODE_EMA, PRICE_CLOSE, 0), 4);
      ld_28 = (ld_20 - ld_4) / 0.0001;
      if (ai_0 == 1) {
         if (ld_28 > gi_524) return (1);
         return (0);
      }
      if (ai_0 == 2) {
         if (ld_28 < -gi_524) return (1);
         return (0);
      }
   case 2:
      ld_44 = NormalizeDouble(iMA(NULL, g_timeframe_556, g_period_528, 0, g_ma_method_560, PRICE_CLOSE, 0), 4);
      ld_52 = NormalizeDouble(iMA(NULL, g_timeframe_556, g_period_528, 0, g_ma_method_560, PRICE_CLOSE, gd_536), 4);
      if (gd_536 != 0.0) ld_60 = (ld_44 - ld_52) / 0.0001 / gd_536;
      else ld_60 = 0;
      if (ai_0 == 1) {
         if (ld_60 > gd_544) return (1);
         return (0);
      }
      if (ai_0 != 2) return (0);
      if (ld_60 < -gd_544) return (1);
      return (0);
   case 3:
      return (0);
   case 4:
      ld_68 = NormalizeDouble(iRSI(NULL, g_timeframe_572, g_period_564, PRICE_CLOSE, 0), 4);
      ld_68 /= 100.0;
      if (ai_0 == 1 && ld_68 > gd_576 + 0.5 && ld_68 < 1 - gd_584) return (1);
      if (ai_0 == 2 && ld_68 < 0.5 - gd_576 && ld_68 > gd_584) return (1);
      return (0);
   case 5:
      ld_76 = NormalizeDouble(iDeMarker(NULL, g_timeframe_572, g_period_564, 0), 4);
      if (ai_0 == 1 && ld_76 > gd_576 + 0.5 && ld_76 < 1 - gd_584) return (1);
      if (ai_0 == 2 && ld_76 < 0.5 - gd_576 && ld_76 > gd_584) return (1);
      return (0);
   case 6:
      ld_84 = (-1.0 * NormalizeDouble(iWPR(NULL, g_timeframe_572, g_period_564, 0), 4)) / 100.0;
      if (ai_0 == 1 && ld_84 < 0.5 - gd_576 && ld_84 > gd_584) return (1);
      if (ai_0 == 2 && ld_84 > gd_576 + 0.5 && ld_84 < 1 - gd_584) return (1);
      return (0);
   case 7:
      ld_76 = NormalizeDouble(iDeMarker(NULL, g_timeframe_572, g_period_564, 0), 4);
      ld_84 = (-1.0 * NormalizeDouble(iWPR(NULL, g_timeframe_572, g_period_564, 0), 4)) / 100.0;
      if (ai_0 == 1 && ld_76 > gd_576 + 0.5 && ld_84 > gd_584) return (1);
      if (ai_0 == 2 && ld_76 < 0.5 - gd_576 && ld_84 < 1 - gd_584) return (1);
      return (0);
   case 8:
      ld_76 = NormalizeDouble(iDeMarker(NULL, g_timeframe_572, g_period_564, 0), 4);
      if (ld_76 > gd_576 + 0.5 && ld_76 < 1 - gd_584) return (1);
      if (ld_76 < 0.5 - gd_576 && ld_76 > gd_584) return (2);
      return (0);
   }
   return (0);
}

int CheckForSidewaysMarket(int ai_0, int ai_4) {
   double ld_8 = NormalizeDouble(iHigh(NULL, PERIOD_M5, iHighest(NULL, PERIOD_M5, MODE_HIGH, ai_0, 0)), 4);
   double ld_16 = NormalizeDouble(iLow(NULL, PERIOD_M5, iLowest(NULL, PERIOD_M5, MODE_LOW, ai_0, 0)), 4);
   double ld_24 = (ld_8 - ld_16) / 0.0001;
   if (ld_24 > ai_4) return (1);
   return (0);
}

int RecognizeWavesInit() {
   int li_0;
   int li_8 = iBars(NULL, g_timeframe_592);
   if (g_timeframe_592 == PERIOD_M1) li_0 = 43200;
   else
      if (g_timeframe_592 == PERIOD_M5) li_0 = 8640;
   gi_1460 = 0;
   ArrayResize(gda_1456, 1);
   ArrayInitialize(gda_1456, 0);
   gd_752 = gd_1792;
   if (gi_776 == 1) {
      gd_1776 = NormalizeDouble(iHigh(NULL, g_timeframe_592, li_0 + 1), 4);
      gd_1784 = NormalizeDouble(iLow(NULL, g_timeframe_592, li_0 + 1), 4);
      gd_1676 = 0;
      gd_1684 = gd_1792;
      gd_1692 = 0;
      gd_1700 = gd_1792;
      gi_1708 = FALSE;
      gi_1712 = FALSE;
      g_count_1744 = 0;
      g_count_1748 = 0;
      g_count_1752 = 0;
      g_count_1756 = 0;
      gd_1768 = 0;
      gd_1760 = 0;
      for (int li_4 = li_0; li_4 > 1; li_4--) WaveAlgorithm_1(li_4, 1);
   } else {
      gi_1476 = 0;
      gi_1480 = 0;
      gd_1492 = NormalizeDouble(iHigh(NULL, g_timeframe_592, li_0 + 1), 4);
      gd_1500 = NormalizeDouble(iLow(NULL, g_timeframe_592, li_0 + 1), 4);
      g_count_1484 = li_0 + 1;
      g_count_1488 = li_0 + 1;
      g_count_1520 = li_0 + 1;
      gd_1524 = NormalizeDouble(iClose(NULL, g_timeframe_592, li_0 + 1), 4);
      for (li_4 = li_0; li_4 > 1; li_4--) WaveAlgorithm_2(li_4, 1);
   }
   if (li_0 > li_8) {
      if (li_8 != 0) gi_1464 = gi_1460 * li_0 / li_8;
      else gi_1464 = 1000;
   } else gi_1464 = gi_1460;
   if (gi_668 == 1) gd_752 = CheckHeightOfWave();
   else {
      gd_752 = gd_680 * NormalizeDouble(SecureCallATR(0, gd_696, 1000, 0), 4);
      if (gd_752 == 0.0) gd_752 = gd_1792;
   }
   gi_1472 = FALSE;
   return (0);
}

int RecognizeWaves() {
   g_error_1892 = GetLastError();
   if (g_error_1892 != 0/* NO_ERROR */) AlertIsError(g_error_1892);
   if (g_timeframe_592 == PERIOD_M1 && g_datetime_1392 == iTime(NULL, PERIOD_M1, 0)) return (0);
   if (g_timeframe_592 == PERIOD_M5 && g_datetime_1396 == iTime(NULL, PERIOD_M5, 0)) return (0);
   g_error_1892 = GetLastError();
   if (g_error_1892 != 0/* NO_ERROR */) AlertIsError(g_error_1892);
   if (gi_668 != 1) gd_752 = gd_680 * NormalizeDouble(SecureCallATR(0, gd_696, 1000, 0), 4);
   if (gi_776 == 1) WaveAlgorithm_1(1, 0);
   else WaveAlgorithm_2(1, 0);
   return (0);
}

int CheckWaveSignal(int ai_0, int ai_4) {
   int li_ret_8 = 0;
   if (gd_1440 == 0.0) return (0);
   if (gi_1436 == TRUE) {
      gi_1816 = FALSE;
      gd_1824 = gd_1440 - gd_1612 * gd_1428;
      gd_1832 = gd_1440 - gd_1620 * gd_1428;
      gd_1840 = gd_1440 - gd_1628 * gd_1428;
      gd_1848 = gd_1440 - gd_1636 * gd_1428;
      gd_1660 = gd_624 * gd_1428;
      gd_1668 = gd_632 * gd_1428;
      if (gi_1248 == TRUE) gi_1248 = FALSE;
      if (gi_1280 == 1) gi_1280 = 2;
      if (gi_1284 == TRUE) gi_1284 = FALSE;
   }
   if (gi_640 > 0 && ai_0 == 4 || gi_640 == 2) CheckRetracementChannelWave(gi_1436, gi_1416, ai_0);
   else gi_1816 = TRUE;
   if (gi_1284 == TRUE) return (0);
   if (gi_1472 == TRUE) li_ret_8 = CheckEntryWarningSignalWave(ai_0, ai_4);
   gi_1436 = FALSE;
   return (li_ret_8);
}

int CheckEntryWarningSignalWave(int ai_0, int ai_4) {
   double ld_32;
   double ld_40;
   double ld_48;
   double ld_56;
   double ld_64;
   double ld_72;
   double ld_80;
   double ld_88;
   double ld_96;
   double ld_104;
   double ld_112;
   int li_ret_8 = 0;
   bool li_12 = TRUE;
   double ld_24 = 0;
   if (ai_0 == 4) {
      ld_48 = gd_1824;
      ld_56 = gd_1832;
      ld_64 = gd_1660;
   } else {
      ld_48 = gd_1840;
      ld_56 = gd_1848;
      ld_64 = gd_1668;
   }
   if (gi_1816 == TRUE) {
      switch (gi_652) {
      case 0:
         if (g_timeframe_596 == PERIOD_M1 && g_datetime_1392 == iTime(NULL, PERIOD_M1, 0)) return (0);
         if (g_timeframe_596 == PERIOD_M5 && g_datetime_1396 == iTime(NULL, PERIOD_M5, 0)) return (0);
         if (gi_744 == 1 && ai_0 == 4)
            if (iTime(NULL, g_timeframe_596, 0) - g_datetime_1412 > 3600 * gi_748) return (0);
         if (gi_724 == 1) {
            ld_32 = NormalizeDouble(iHigh(NULL, g_timeframe_596, 1), 4) - NormalizeDouble(iLow(NULL, g_timeframe_596, 1), 4);
            ld_40 = NormalizeDouble(SecureCallATR(0, g_timeframe_596, 1000, 0), 4) * gd_728;
            if (ld_32 < ld_40 && ld_40 != 0.0) ld_24 = ld_64 * (1 - ld_32 / ld_40);
         }
         if (gi_644 == 1 && ai_0 == 4) {
            ld_72 = NormalizeDouble(iLow(NULL, g_timeframe_596, iLowest(NULL, g_timeframe_596, MODE_LOW, gi_648, 2)), 4);
            ld_80 = NormalizeDouble(iHigh(NULL, g_timeframe_596, iHighest(NULL, g_timeframe_596, MODE_HIGH, gi_648, 2)), 4);
            ld_88 = NormalizeDouble(iLow(NULL, g_timeframe_596, 1), 4);
            ld_96 = NormalizeDouble(iHigh(NULL, g_timeframe_596, 1), 4);
            ld_112 = NormalizeDouble(iOpen(NULL, g_timeframe_596, 0), 4);
            if (ld_88 < ld_72 && ld_96 > ld_80) ld_104 = 0;
            else {
               if (ld_96 > ld_80 && ld_112 > ld_88) ld_104 = 1;
               else {
                  if (ld_88 < ld_72 && ld_112 < ld_96) ld_104 = -1;
                  else ld_104 = 0;
               }
            }
         }
         if (NormalizeDouble(iLow(NULL, g_timeframe_596, 1), 4) > ld_48 + ld_24 && gi_712 == 0 || NormalizeDouble(SecureCallATR(0, g_timeframe_596, 1, 1), 4) > NormalizeDouble(SecureCallATR(0, g_timeframe_596, 1000, 0), 4) * gd_716 &&
            gi_644 == 0 || ai_0 == 5 || ld_104 == 1.0) li_ret_8 = 1;
         else {
            if (NormalizeDouble(iHigh(NULL, g_timeframe_596, 1), 4) < ld_56 - ld_24 && gi_712 == 0 || NormalizeDouble(SecureCallATR(0, g_timeframe_596, 1, 1), 4) > NormalizeDouble(SecureCallATR(0, g_timeframe_596, 1000, 0), 4) * gd_716 &&
               gi_644 == 0 || ai_0 == 5 || ld_104 == -1.0) li_ret_8 = 2;
         }
         break;
      case 1:
         if (NormalizeDouble(Close[0], 4) > ld_48) li_ret_8 = 1;
         else
            if (NormalizeDouble(Close[0], 4) < ld_56) li_ret_8 = 2;
         break;
      case 2:
         if (g_timeframe_596 == PERIOD_M1 && g_datetime_1392 == iTime(NULL, PERIOD_M1, 0)) li_12 = FALSE;
         else
            if (g_timeframe_596 == PERIOD_M5 && g_datetime_1396 == iTime(NULL, PERIOD_M5, 0)) li_12 = FALSE;
         if (gi_744 == 1 && ai_0 == 4)
            if (iTime(NULL, g_timeframe_596, 0) - g_datetime_1412 > 3600 * gi_748) return (0);
         if (li_12 == TRUE && gi_724 == 1) {
            ld_32 = NormalizeDouble(iHigh(NULL, g_timeframe_596, 1), 4) - NormalizeDouble(iLow(NULL, g_timeframe_596, 1), 4);
            ld_40 = NormalizeDouble(SecureCallATR(0, g_timeframe_596, 1000, 0), 4) * gd_728;
            if (ld_32 < ld_40 && ld_40 != 0.0) ld_24 = ld_64 * (1 - ld_32 / ld_40);
         }
         if (gi_644 == 1 && ai_0 == 4) {
            ld_72 = NormalizeDouble(iLow(NULL, g_timeframe_596, iLowest(NULL, g_timeframe_596, MODE_LOW, gi_648, 2)), 4);
            ld_80 = NormalizeDouble(iHigh(NULL, g_timeframe_596, iHighest(NULL, g_timeframe_596, MODE_HIGH, gi_648, 2)), 4);
            ld_88 = NormalizeDouble(iLow(NULL, g_timeframe_596, 1), 4);
            ld_96 = NormalizeDouble(iHigh(NULL, g_timeframe_596, 1), 4);
            ld_112 = NormalizeDouble(iOpen(NULL, g_timeframe_596, 0), 4);
            if (ld_88 < ld_72 && ld_96 > ld_80) ld_104 = 0;
            else {
               if (ld_96 > ld_80 && ld_112 > ld_88) ld_104 = 1;
               else {
                  if (ld_88 < ld_72 && ld_112 < ld_96) ld_104 = -1;
                  else ld_104 = 0;
               }
            }
         }
         if ((li_12 == TRUE && NormalizeDouble(iLow(NULL, g_timeframe_596, 1), 4) > ld_48 + ld_24 && gi_712 == 0 || NormalizeDouble(SecureCallATR(0, g_timeframe_596, 1, 1), 4) > NormalizeDouble(SecureCallATR(0, g_timeframe_596, 1000, 0), 4) * gd_716 &&
            gi_644 == 0 || ai_0 == 5 || ld_104 == 1.0) || NormalizeDouble(Close[0], 4) > ld_48 + ld_64) li_ret_8 = 1;
         else {
            if ((li_12 == TRUE && NormalizeDouble(iHigh(NULL, g_timeframe_596, 1), 4) < ld_56 - ld_24 && gi_712 == 0 || NormalizeDouble(SecureCallATR(0, g_timeframe_596, 1, 1), 4) > NormalizeDouble(SecureCallATR(0, g_timeframe_596, 1000, 0), 4) * gd_716 &&
               gi_644 == 0 || ai_0 == 5 || ld_104 == -1.0) || NormalizeDouble(Close[0], 4) < ld_56 - ld_64) li_ret_8 = 2;
         }
         if (ai_0 == 5 && ai_4 == 2 && NormalizeDouble(Close[0], 4) > ld_48 + ld_64 && gi_1280 == 1) gi_1280 = 2;
         else
            if (ai_0 == 5 && ai_4 == 1 && NormalizeDouble(Close[0], 4) < ld_56 - ld_64 && gi_1280 == 1) gi_1280 = 2;
      }
   }
   return (li_ret_8);
}

void CheckRetracementChannelWave(int ai_0, int ai_4, int ai_8) {
   double ld_16;
   if (ai_8 == 4) {
      gd_1644 = gd_600 * (gd_1612 - 0.5) + 0.5;
      gd_1652 = gd_600 * (gd_1620 - 0.5) + 0.5;
      gd_1800 = gd_1440 - gd_1644 * gd_1428;
      gd_1808 = gd_1440 - gd_1652 * gd_1428;
   } else {
      gd_1644 = gd_600 * (gd_1628 - 0.5) + 0.5;
      gd_1652 = gd_600 * (gd_1636 - 0.5) + 0.5;
      gd_1800 = gd_1440 - gd_1644 * gd_1428;
      gd_1808 = gd_1440 - gd_1652 * gd_1428;
   }
   if (ai_0 == 1) {
      for (int li_12 = gi_1424; li_12 >= 0; li_12--) {
         ld_16 = NormalizeDouble(iClose(NULL, g_timeframe_596, li_12), 4);
         if ((ai_4 == 1 && ld_16 < gd_1800) || (ai_4 == 0 && ld_16 > gd_1808)) {
            gi_1816 = TRUE;
            return;
         }
      }
   } else {
      if (g_timeframe_596 == PERIOD_M1 && g_datetime_1392 == iTime(NULL, PERIOD_M1, 0)) return;
      if (g_timeframe_596 == PERIOD_M5 && g_datetime_1396 == iTime(NULL, PERIOD_M5, 0)) return;
      if (gi_1816 == FALSE) {
         ld_16 = NormalizeDouble(iClose(NULL, g_timeframe_596, 1), 4);
         if ((ai_4 == 1 && ld_16 < gd_1800) || (ai_4 == 0 && ld_16 > gd_1808)) gi_1816 = TRUE;
      }
   }
}

void WaveAlgorithm_1(int ai_0, int ai_4) {
   double ld_8;
   double ld_16;
   double ld_24;
   double ld_32 = NormalizeDouble(iHigh(NULL, g_timeframe_592, ai_0), 4);
   double ld_40 = NormalizeDouble(iLow(NULL, g_timeframe_592, ai_0), 4);
   if (ld_32 > gd_1776 || ld_40 > gd_1784) {
      if (gi_1708 == FALSE) {
         g_count_1744 = 0;
         g_count_1752 = 0;
         if (gd_1784 < ld_40) {
            gd_1700 = gd_1784;
            g_count_1724 = ai_0 + 1;
         } else {
            gd_1700 = ld_40;
            g_count_1724 = ai_0;
         }
      }
      gi_1708 = TRUE;
      if (ld_32 > gd_1692) {
         gd_1692 = ld_32;
         g_count_1728 = ai_0;
      }
      if (ld_40 < gd_1700) {
         gd_1700 = ld_40;
         g_count_1724 = ai_0;
         g_count_1744 = 0;
         g_count_1752 = 0;
         gd_1692 = ld_32;
         g_count_1728 = ai_0;
      }
      gd_1760 = gd_1692 - gd_1700;
      if (ld_32 > gd_1776 && ld_40 > gd_1784) g_count_1744++;
      ld_24 = gd_1692 - ld_40;
      if (gi_1708 == TRUE && ld_40 < gd_1784 && gd_1760 > gd_752 && ld_24 > gd_768 * gd_1760) gi_1708 = FALSE;
   } else {
      ld_24 = gd_1692 - ld_40;
      if (gi_1708 == TRUE && gd_1760 > gd_752 && ld_24 > gd_768 * gd_1760) gi_1708 = FALSE;
      else {
         if (gi_1708 == TRUE && g_count_1752 < gd_760 * g_count_1744) {
            g_count_1752++;
            if (ld_40 < gd_1700) {
               gd_1700 = ld_40;
               g_count_1724 = ai_0;
               g_count_1744 = 0;
               g_count_1752 = 0;
               gd_1692 = ld_32;
               g_count_1728 = ai_0;
            }
         } else gi_1708 = FALSE;
      }
   }
   if (ld_32 < gd_1776 || ld_40 < gd_1784) {
      if (gi_1712 == FALSE) {
         g_count_1748 = 0;
         g_count_1756 = 0;
         if (gd_1776 > ld_32) {
            gd_1676 = gd_1776;
            g_count_1732 = ai_0 + 1;
         } else {
            gd_1676 = ld_32;
            g_count_1732 = ai_0;
         }
      }
      gi_1712 = TRUE;
      if (ld_32 > gd_1676) {
         gd_1676 = ld_32;
         g_count_1732 = ai_0;
         g_count_1748 = 0;
         g_count_1756 = 0;
         gd_1684 = ld_40;
         g_count_1736 = ai_0;
      }
      if (ld_40 < gd_1684) {
         gd_1684 = ld_40;
         g_count_1736 = ai_0;
      }
      gd_1768 = gd_1676 - gd_1684;
      if (ld_32 < gd_1776 && ld_40 < gd_1784) g_count_1748++;
      ld_24 = gd_1684 - ld_32;
      if (gi_1712 == TRUE && ld_32 > gd_1776 && gd_1768 > gd_752 && ld_24 > gd_768 * gd_1768) gi_1712 = FALSE;
   } else {
      ld_24 = ld_32 - gd_1684;
      if (gi_1712 == TRUE && gd_1768 > gd_752 && ld_24 > gd_768 * gd_1768) gi_1712 = FALSE;
      else {
         if (gi_1712 == TRUE && g_count_1756 < gd_760 * g_count_1748) {
            g_count_1756++;
            if (ld_32 > gd_1676) {
               gd_1676 = ld_32;
               g_count_1732 = ai_0;
               g_count_1748 = 0;
               g_count_1756 = 0;
               gd_1684 = ld_40;
               g_count_1736 = ai_0;
            }
         } else gi_1712 = FALSE;
      }
   }
   if (gi_1716 == TRUE && gi_1708 == FALSE) {
      if (ai_4 == 1) {
         gi_1460++;
         ArrayResize(gda_1456, gi_1460);
         gda_1456[gi_1460 - 1] = gd_1768;
      } else {
         if (ai_4 == 0) {
            if (gi_1460 < gi_1464) {
               gi_1460++;
               ArrayResize(gda_1456, gi_1460);
               gda_1456[gi_1460 - 1] = gd_1768;
               if (gi_668 == 1) gd_752 = CheckHeightOfWave();
            } else {
               for (int l_index_48 = 0; l_index_48 < gi_1460 - 1; l_index_48++) gda_1456[l_index_48] = gda_1456[l_index_48 + 1];
               gda_1456[gi_1460 - 1] = gd_1768;
               if (gi_668 == 1) gd_752 = CheckHeightOfWave();
            }
         }
      }
      if (gd_1760 >= gd_752) {
         if (gi_656 == 1) {
            ld_8 = CalculateVolumeMovementStrength(g_count_1724, g_count_1728, g_timeframe_592);
            ld_16 = gd_660 * g_ima_on_arr_1352 * (g_count_1724 - g_count_1728);
         }
         if (CheckNoGap(g_count_1736, g_count_1732, gd_1768, g_timeframe_592, gd_736) == 1 && gi_656 == 0 || ld_8 > ld_16) {
            gi_1416 = TRUE;
            gi_unused_1420 = g_count_1724;
            gi_1424 = g_count_1728;
            gd_1428 = gd_1760;
            gd_1440 = gd_1692;
            gd_unused_1448 = gd_1700;
            gi_1436 = TRUE;
            g_datetime_1412 = iTime(NULL, g_timeframe_592, 0);
            if (gi_1472 == FALSE && ai_4 == 0) gi_1472 = TRUE;
         }
      }
   }
   if (gi_1708 == FALSE) {
      gd_1692 = 0;
      gd_1700 = gd_1792;
   }
   if (gi_1720 == TRUE && gi_1712 == FALSE) {
      if (ai_4 == 1) {
         gi_1460++;
         ArrayResize(gda_1456, gi_1460);
         gda_1456[gi_1460 - 1] = gd_1768;
      } else {
         if (ai_4 == 0) {
            if (gi_1460 < gi_1464) {
               gi_1460++;
               ArrayResize(gda_1456, gi_1460);
               gda_1456[gi_1460 - 1] = gd_1768;
               if (gi_668 == 1) gd_752 = CheckHeightOfWave();
            } else {
               for (l_index_48 = 0; l_index_48 < gi_1460 - 1; l_index_48++) gda_1456[l_index_48] = gda_1456[l_index_48 + 1];
               gda_1456[gi_1460 - 1] = gd_1768;
               if (gi_668 == 1) gd_752 = CheckHeightOfWave();
            }
         }
      }
      if (gd_1768 >= gd_752) {
         if (gi_656 == 1) {
            ld_8 = CalculateVolumeMovementStrength(g_count_1732, g_count_1736, g_timeframe_592);
            ld_16 = gd_660 * g_ima_on_arr_1352 * (g_count_1732 - g_count_1736);
         }
         if (CheckNoGap(g_count_1736, g_count_1732, gd_1768, g_timeframe_592, gd_736) == 1 && gi_656 == 0 || ld_8 > ld_16) {
            gi_1416 = FALSE;
            gi_unused_1420 = g_count_1732;
            gi_1424 = g_count_1736;
            gd_1428 = gd_1768;
            gd_1440 = gd_1676;
            gd_unused_1448 = gd_1684;
            gi_1436 = TRUE;
            g_datetime_1412 = iTime(NULL, g_timeframe_592, 0);
            if (gi_1472 == FALSE && ai_4 == 0) gi_1472 = TRUE;
         }
      }
   }
   if (gi_1712 == FALSE) {
      gd_1676 = 0;
      gd_1684 = gd_1792;
   }
   gd_1776 = ld_32;
   gd_1784 = ld_40;
   gi_1716 = gi_1708;
   gi_1720 = gi_1712;
   g_count_1724++;
   g_count_1728++;
   g_count_1732++;
   g_count_1736++;
}

void WaveAlgorithm_2(int ai_0, int ai_4) {
   double ld_28;
   double ld_36;
   g_error_1892 = GetLastError();
   if (g_error_1892 != 0/* NO_ERROR */) AlertIsError(g_error_1892);
   double ld_44 = NormalizeDouble(iLow(NULL, g_timeframe_592, iLowest(NULL, g_timeframe_592, MODE_LOW, gi_1740, ai_0 + 1)), 4);
   double ld_52 = NormalizeDouble(iHigh(NULL, g_timeframe_592, iHighest(NULL, g_timeframe_592, MODE_HIGH, gi_1740, ai_0 + 1)), 4);
   double ld_60 = NormalizeDouble(iLow(NULL, g_timeframe_592, ai_0), 4);
   double ld_68 = NormalizeDouble(iHigh(NULL, g_timeframe_592, ai_0), 4);
   g_error_1892 = GetLastError();
   if (g_error_1892 != 0/* NO_ERROR */) AlertIsError(g_error_1892);
   if (ld_60 < ld_44 && ld_68 > ld_52) {
      gi_1480 = 2;
      if (gi_1476 == 1) g_count_1484 = ai_0 + 1;
      if (gi_1476 == -1) g_count_1488 = ai_0 + 1;
   } else {
      if (ld_60 < ld_44) gi_1480 = -1;
      if (ld_68 > ld_52) gi_1480 = 1;
   }
   if (gi_1480 != gi_1476 && gi_1476 != 0) {
      if (gi_1480 == 2) {
         gi_1480 = -gi_1476;
         gd_1492 = ld_68;
         gd_1500 = ld_60;
      }
      if (gi_1480 == 1) {
         gi_1508 = g_count_1520;
         gd_1512 = gd_1524;
         g_count_1520 = g_count_1488;
         gd_1524 = gd_1500;
         gd_1768 = MathAbs(gd_1524 - gd_1512);
         g_error_1892 = GetLastError();
         if (g_error_1892 != 0/* NO_ERROR */) AlertIsError(g_error_1892);
         if (ai_4 == 1) {
            gi_1460++;
            ArrayResize(gda_1456, gi_1460);
            gda_1456[gi_1460 - 1] = gd_1768;
         } else {
            if (ai_4 == 0) {
               if (gi_1460 < gi_1464) {
                  gi_1460++;
                  ArrayResize(gda_1456, gi_1460);
                  gda_1456[gi_1460 - 1] = gd_1768;
                  if (gi_668 == 1) gd_752 = CheckHeightOfWave();
               } else {
                  for (int l_index_24 = 0; l_index_24 < gi_1460 - 1; l_index_24++) gda_1456[l_index_24] = gda_1456[l_index_24 + 1];
                  gda_1456[gi_1460 - 1] = gd_1768;
                  if (gi_668 == 1) gd_752 = CheckHeightOfWave();
               }
            }
         }
         if (GetLastError() != 0/* NO_ERROR */) AlertIsError(g_error_1892);
         if (gi_656 == 1) {
            ld_28 = CalculateVolumeMovementStrength(gi_1508, g_count_1520, g_timeframe_592);
            ld_36 = gd_660 * g_ima_on_arr_1352 * (gi_1508 - g_count_1520);
         }
         g_error_1892 = GetLastError();
         if (g_error_1892 != 0/* NO_ERROR */) AlertIsError(g_error_1892);
         if (gd_1768 >= gd_752 && gi_656 == 0 || ld_28 > ld_36 && CheckNoGap(g_count_1520, gi_1508, gd_1768, g_timeframe_592, gd_736) == 1) {
            gi_1416 = FALSE;
            gi_unused_1420 = gi_1508;
            gi_1424 = g_count_1520;
            gd_1428 = gd_1768;
            gd_1440 = gd_1512;
            gd_unused_1448 = gd_1524;
            gi_1436 = TRUE;
            g_datetime_1412 = iTime(NULL, g_timeframe_592, 0);
            if (gi_1472 == FALSE && ai_4 == 0) gi_1472 = TRUE;
         }
      }
      if (gi_1480 == -1) {
         gi_1508 = g_count_1520;
         gd_1512 = gd_1524;
         g_count_1520 = g_count_1484;
         gd_1524 = gd_1492;
         gd_1768 = MathAbs(gd_1524 - gd_1512);
         g_error_1892 = GetLastError();
         if (g_error_1892 != 0/* NO_ERROR */) AlertIsError(g_error_1892);
         if (ai_4 == 1) {
            gi_1460++;
            ArrayResize(gda_1456, gi_1460);
            gda_1456[gi_1460 - 1] = gd_1768;
         } else {
            if (ai_4 == 0) {
               if (gi_1460 < gi_1464) {
                  gi_1460++;
                  ArrayResize(gda_1456, gi_1460);
                  gda_1456[gi_1460 - 1] = gd_1768;
                  if (gi_668 == 1) gd_752 = CheckHeightOfWave();
               } else {
                  for (l_index_24 = 0; l_index_24 < gi_1460 - 1; l_index_24++) gda_1456[l_index_24] = gda_1456[l_index_24 + 1];
                  gda_1456[gi_1460 - 1] = gd_1768;
                  if (gi_668 == 1) gd_752 = CheckHeightOfWave();
               }
            }
         }
         g_error_1892 = GetLastError();
         if (g_error_1892 != 0/* NO_ERROR */) AlertIsError(g_error_1892);
         if (gi_656 == 1) {
            ld_28 = CalculateVolumeMovementStrength(gi_1508, g_count_1520, g_timeframe_592);
            ld_36 = gd_660 * g_ima_on_arr_1352 * (gi_1508 - g_count_1520);
         }
         g_error_1892 = GetLastError();
         if (g_error_1892 != 0/* NO_ERROR */) AlertIsError(g_error_1892);
         if (gd_1768 >= gd_752 && gi_656 == 0 || ld_28 > ld_36 && CheckNoGap(g_count_1520, gi_1508, gd_1768, g_timeframe_592, gd_736) == 1) {
            gi_1416 = TRUE;
            gi_unused_1420 = gi_1508;
            gi_1424 = g_count_1520;
            gd_1428 = gd_1768;
            gd_1440 = gd_1524;
            gd_unused_1448 = gd_1512;
            gi_1436 = TRUE;
            g_datetime_1412 = iTime(NULL, g_timeframe_592, 0);
            if (gi_1472 == FALSE && ai_4 == 0) gi_1472 = TRUE;
         }
      }
      gd_1492 = ld_68;
      gd_1500 = ld_60;
   }
   if (gi_1480 == 1) {
      if (ld_68 >= gd_1492) {
         gd_1492 = ld_68;
         g_count_1484 = ai_0;
      }
   }
   if (gi_1480 == -1) {
      if (ld_60 <= gd_1500) {
         gd_1500 = ld_60;
         g_count_1488 = ai_0;
      }
   }
   gi_1476 = gi_1480;
   g_count_1520++;
   g_count_1488++;
   g_count_1484++;
}

double CheckHeightOfWave() {
   double lda_4[];
   if (gi_1460 <= 0) return (10000);
   double ld_20 = gi_1460 * gd_704;
   int li_8 = MathMax(ld_20 - 1.0, 0);
   ArrayResize(lda_4, gi_1460);
   ArrayCopy(lda_4, gda_1456, 0, 0, WHOLE_ARRAY);
   ArraySort(lda_4, WHOLE_ARRAY, 0, MODE_ASCEND);
   double ld_ret_12 = lda_4[li_8];
   return (ld_ret_12);
}

void DoPerformanceReportTesting() {
   int lia_48[];
   double l_ord_profit_56;
   double ld_104;
   double ld_120;
   double lda_132[];
   double lda_136[];
   double lda_140[];
   double lda_144[];
   double lda_148[];
   double lda_152[];
   double lda_156[];
   double lda_160[];
   int lia_164[];
   double ld_176;
   double ld_192;
   string lsa_200[];
   int li_204;
   int li_208;
   int li_212;
   double l_hist_total_40 = OrdersHistoryTotal();
   int li_32 = 7;
   ArrayResize(lia_48, li_32);
   lia_48[0] = 2000;
   lia_48[1] = 2001;
   lia_48[2] = 2002;
   lia_48[3] = 2004;
   lia_48[4] = 2005;
   lia_48[5] = 2006;
   lia_48[6] = 2008;
   ArrayResize(lda_132, li_32);
   ArrayResize(lda_136, li_32);
   ArrayResize(lda_140, li_32);
   ArrayResize(lda_144, li_32);
   ArrayResize(lda_148, li_32);
   ArrayResize(lda_156, li_32);
   ArrayResize(lia_164, li_32);
   ArrayResize(lda_152, li_32);
   ArrayResize(lda_160, li_32);
   Print("OrdersHistoryTotal: ", l_hist_total_40);
   Print("hstTotal", ",CONST_NUMBEROFTRADES", ", ProfitBigLoop", ", ProfitFactor", ", MaxDrawdownBigLoop", ", PercentageOfWinners");
   double ld_72 = 0;
   double ld_80 = 0;
   double ld_88 = 0;
   double ld_112 = 0;
   double ld_96 = 0;
   int l_count_128 = 0;
   double ld_16 = 0;
   for (int l_pos_36 = 0; l_pos_36 < l_hist_total_40; l_pos_36++) {
      if (OrderSelect(l_pos_36, SELECT_BY_POS, MODE_HISTORY) == FALSE) {
         Print("Access to history failed with error (", GetLastError(), ")");
         break;
      }
      l_ord_profit_56 = OrderProfit();
      ld_72 += l_ord_profit_56;
      if (ld_72 > ld_112) ld_112 = ld_72;
      if (ld_112 - ld_72 > ld_96) ld_96 = ld_112 - ld_72;
      if (l_ord_profit_56 > 0.0) {
         ld_80 += l_ord_profit_56;
         l_count_128++;
      } else {
         if (MathAbs(l_ord_profit_56) > ld_16) ld_16 = MathAbs(l_ord_profit_56);
         ld_88 += MathAbs(l_ord_profit_56);
      }
   }
   if (l_hist_total_40 > 0.0) ld_104 = l_count_128 / l_hist_total_40;
   else ld_104 = 0;
   if (ld_88 > 0.0) ld_120 = ld_80 / ld_88;
   else ld_120 = 0;
   Print(l_hist_total_40, " ", ld_72, " ", ld_120, " ", ld_96, " ", ld_104);
   double ld_168 = ld_72 - ld_16;
   if (ld_88 + ld_16 != 0.0) ld_176 = ld_80 / (ld_88 + ld_16);
   double ld_184 = ld_96 + ld_16;
   if (l_hist_total_40 + 1.0 != 0.0) ld_192 = l_count_128 / (l_hist_total_40 + 1.0);
   Print(l_hist_total_40 + 1.0, " ", ld_168, " ", ld_176, " ", ld_184, " ", ld_192);
   for (int l_index_52 = 0; l_index_52 < li_32; l_index_52++) {
      lda_132[l_index_52] = 0;
      lda_136[l_index_52] = 0;
      lda_140[l_index_52] = 0;
      lda_156[l_index_52] = 0;
      lda_144[l_index_52] = 0;
      lia_164[l_index_52] = 0;
      lda_160[l_index_52] = 0;
      for (l_pos_36 = 0; l_pos_36 < l_hist_total_40; l_pos_36++) {
         if (OrderSelect(l_pos_36, SELECT_BY_POS, MODE_HISTORY) == FALSE) {
            Print("Access to history failed with error (", GetLastError(), ")");
            break;
         }
         if (TimeYear(OrderOpenTime()) == lia_48[l_index_52]) {
            lda_160[l_index_52] += 1.0;
            l_ord_profit_56 = OrderProfit();
            lda_132[l_index_52] += l_ord_profit_56;
            if (lda_132[l_index_52] > lda_156[l_index_52]) lda_156[l_index_52] = lda_132[l_index_52];
            if (lda_156[l_index_52] - lda_132[l_index_52] > lda_144[l_index_52]) lda_144[l_index_52] = lda_156[l_index_52] - lda_132[l_index_52];
            if (l_ord_profit_56 > 0.0) {
               lda_136[l_index_52] += l_ord_profit_56;
               lia_164[l_index_52]++;
            } else lda_140[l_index_52] += MathAbs(l_ord_profit_56);
         }
      }
      if (lda_160[l_index_52] > 0.0) lda_148[l_index_52] = lia_164[l_index_52] / lda_160[l_index_52];
      else lda_148[l_index_52] = 0;
      if (lda_140[l_index_52] > 0.0) lda_152[l_index_52] = lda_136[l_index_52] / lda_140[l_index_52];
      else lda_152[l_index_52] = 0;
      Print(lia_48[l_index_52], " ", lda_160[l_index_52], " ", lda_132[l_index_52], " ", lda_152[l_index_52], " ", lda_144[l_index_52], " ", lda_148[l_index_52]);
   }
   g_file_1860 = FileOpen("performace.txt", FILE_WRITE|FILE_READ, ';');
   Print("handlerss2: ", g_file_1860);
   if (g_file_1860 != -1 && FileSize(g_file_1860) == 0) FileWrite(g_file_1860, l_hist_total_40, ld_72, DoubleToStr(ld_120, 2), ld_96, DoubleToStr(ld_104, 2), l_hist_total_40 + 1.0, ld_168, DoubleToStr(ld_176, 2), ld_184, DoubleToStr(ld_192, 2), lia_48[0], lda_160[0], lda_132[0], DoubleToStr(lda_152[0], 2), lda_144[0], DoubleToStr(lda_148[0], 2), lia_48[1], lda_160[1], lda_132[1], DoubleToStr(lda_152[1], 2), lda_144[1], DoubleToStr(lda_148[1], 2), lia_48[2], lda_160[2], lda_132[2], DoubleToStr(lda_152[2], 2), lda_144[2], DoubleToStr(lda_148[2], 2), lia_48[3], lda_160[3], lda_132[3], DoubleToStr(lda_152[3], 2), lda_144[3], DoubleToStr(lda_148[3], 2), lia_48[4], lda_160[4], lda_132[4], DoubleToStr(lda_152[4], 2), lda_144[4], DoubleToStr(lda_148[4], 2), lia_48[5], lda_160[5], lda_132[5], DoubleToStr(lda_152[5], 2), lda_144[5], DoubleToStr(lda_148[5], 2), lia_48[6], lda_160[6], lda_132[6], DoubleToStr(lda_152[6], 2), lda_144[6], DoubleToStr(lda_148[6], 2));
   else {
      if (g_file_1860 != -1) {
         li_204 = 0;
         while (FileIsEnding(g_file_1860) == FALSE) {
            li_204++;
            ArrayResize(lsa_200, li_204);
            lsa_200[li_204 - 1] = FileReadString(g_file_1860);
         }
         li_208 = 52;
         if (li_208 != 0) li_212 = li_204 / li_208;
         g_file_1860 = FileOpen("performace.txt", FILE_WRITE, ';');
         for (l_pos_36 = 0; l_pos_36 < li_212; l_pos_36++) {
            FileWrite(g_file_1860, lsa_200[l_pos_36 * li_208], lsa_200[l_pos_36 * li_208 + 1], lsa_200[l_pos_36 * li_208 + 2], lsa_200[l_pos_36 * li_208 + 3], lsa_200[l_pos_36 * li_208 +
               4], lsa_200[l_pos_36 * li_208 + 5], lsa_200[l_pos_36 * li_208 + 6], lsa_200[l_pos_36 * li_208 + 7], lsa_200[l_pos_36 * li_208 + 8], lsa_200[l_pos_36 * li_208 + 9], lsa_200[l_pos_36 * li_208 +
               10], lsa_200[l_pos_36 * li_208 + 11], lsa_200[l_pos_36 * li_208 + 12], lsa_200[l_pos_36 * li_208 + 13], lsa_200[l_pos_36 * li_208 + 14], lsa_200[l_pos_36 * li_208 +
               15], lsa_200[l_pos_36 * li_208 + 16], lsa_200[l_pos_36 * li_208 + 17], lsa_200[l_pos_36 * li_208 + 18], lsa_200[l_pos_36 * li_208 + 19], lsa_200[l_pos_36 * li_208 +
               20], lsa_200[l_pos_36 * li_208 + 21], lsa_200[l_pos_36 * li_208 + 22], lsa_200[l_pos_36 * li_208 + 23], lsa_200[l_pos_36 * li_208 + 24], lsa_200[l_pos_36 * li_208 +
               25], lsa_200[l_pos_36 * li_208 + 26], lsa_200[l_pos_36 * li_208 + 27], lsa_200[l_pos_36 * li_208 + 28], lsa_200[l_pos_36 * li_208 + 29], lsa_200[l_pos_36 * li_208 +
               30], lsa_200[l_pos_36 * li_208 + 31], lsa_200[l_pos_36 * li_208 + 32], lsa_200[l_pos_36 * li_208 + 33], lsa_200[l_pos_36 * li_208 + 34], lsa_200[l_pos_36 * li_208 +
               35], lsa_200[l_pos_36 * li_208 + 36], lsa_200[l_pos_36 * li_208 + 37], lsa_200[l_pos_36 * li_208 + 38], lsa_200[l_pos_36 * li_208 + 39], lsa_200[l_pos_36 * li_208 +
               40], lsa_200[l_pos_36 * li_208 + 41], lsa_200[l_pos_36 * li_208 + 42], lsa_200[l_pos_36 * li_208 + 43], lsa_200[l_pos_36 * li_208 + 44], lsa_200[l_pos_36 * li_208 +
               45], lsa_200[l_pos_36 * li_208 + 46], lsa_200[l_pos_36 * li_208 + 47], lsa_200[l_pos_36 * li_208 + 48], lsa_200[l_pos_36 * li_208 + 49], lsa_200[l_pos_36 * li_208 +
               50], lsa_200[l_pos_36 * li_208 + 51]);
         }
         FileWrite(g_file_1860, l_hist_total_40, ld_72, DoubleToStr(ld_120, 2), ld_96, DoubleToStr(ld_104, 2), l_hist_total_40 + 1.0, ld_168, DoubleToStr(ld_176, 2), ld_184, DoubleToStr(ld_192, 2), lia_48[0], lda_160[0], lda_132[0], DoubleToStr(lda_152[0], 2), lda_144[0], DoubleToStr(lda_148[0], 2), lia_48[1], lda_160[1], lda_132[1], DoubleToStr(lda_152[1], 2), lda_144[1], DoubleToStr(lda_148[1], 2), lia_48[2], lda_160[2], lda_132[2], DoubleToStr(lda_152[2], 2), lda_144[2], DoubleToStr(lda_148[2], 2), lia_48[3], lda_160[3], lda_132[3], DoubleToStr(lda_152[3], 2), lda_144[3], DoubleToStr(lda_148[3], 2), lia_48[4], lda_160[4], lda_132[4], DoubleToStr(lda_152[4], 2), lda_144[4], DoubleToStr(lda_148[4], 2), lia_48[5], lda_160[5], lda_132[5], DoubleToStr(lda_152[5], 2), lda_144[5], DoubleToStr(lda_148[5], 2), lia_48[6], lda_160[6], lda_132[6], DoubleToStr(lda_152[6], 2), lda_144[6], DoubleToStr(lda_148[6], 2));
      }
   }
   if (g_file_1860 != -1) FileClose(g_file_1860);
}

void DoPerformanceReportStandard() {
   int li_48;
   double l_ord_profit_56;
   double ld_104;
   double ld_120;
   double ld_164;
   double lda_192[];
   double lda_196[];
   double lda_200[];
   double lda_204[];
   double lda_208[];
   double lda_212[];
   double lda_216[];
   int lia_220[];
   double ld_232;
   double ld_248;
   string lsa_256[];
   int li_260;
   int li_264;
   int li_268;
   double ld_0 = 100;
   int li_32 = 4;
   double l_hist_total_40 = OrdersHistoryTotal();
   if (li_32 != 0) li_48 = l_hist_total_40 / li_32;
   double ld_24 = li_48;
   Print("CONST_NUMBEROFTRADESMIN: ", ld_24);
   ArrayResize(lda_192, li_32);
   ArrayResize(lda_196, li_32);
   ArrayResize(lda_200, li_32);
   ArrayResize(lda_204, li_32);
   ArrayResize(lda_208, li_32);
   ArrayResize(lda_216, li_32);
   ArrayResize(lia_220, li_32);
   ArrayResize(lda_212, li_32);
   Print("OrdersHistoryTotal: ", l_hist_total_40);
   Print("hstTotal", ",CONST_NUMBEROFTRADES", ", ProfitBigLoop", ", ProfitFactor", ", MaxDrawdownBigLoop", ", PercentageOfWinners");
   double ld_72 = 0;
   double ld_80 = 0;
   double ld_88 = 0;
   double ld_112 = 0;
   double ld_96 = 0;
   int l_count_128 = 0;
   double ld_16 = 0;
   for (int l_pos_36 = 0; l_pos_36 < l_hist_total_40; l_pos_36++) {
      if (OrderSelect(l_pos_36, SELECT_BY_POS, MODE_HISTORY) == FALSE) {
         Print("Access to history failed with error (", GetLastError(), ")");
         break;
      }
      l_ord_profit_56 = OrderProfit();
      ld_72 += l_ord_profit_56;
      if (ld_72 > ld_112) ld_112 = ld_72;
      if (ld_112 - ld_72 > ld_96) ld_96 = ld_112 - ld_72;
      if (l_ord_profit_56 > 0.0) {
         ld_80 += l_ord_profit_56;
         l_count_128++;
      } else {
         if (MathAbs(l_ord_profit_56) > ld_16) ld_16 = MathAbs(l_ord_profit_56);
         ld_88 += MathAbs(l_ord_profit_56);
      }
   }
   if (l_hist_total_40 > 0.0) ld_104 = l_count_128 / l_hist_total_40;
   else ld_104 = 0;
   if (ld_88 > 0.0) ld_120 = ld_80 / ld_88;
   else ld_120 = 0;
   Print(l_hist_total_40, " ", ld_72, " ", ld_120, " ", ld_96, " ", ld_104);
   double ld_224 = ld_72 - ld_16;
   if (ld_88 + ld_16 != 0.0) ld_232 = ld_80 / (ld_88 + ld_16);
   double ld_240 = ld_96 + ld_16;
   if (l_hist_total_40 + 1.0 != 0.0) ld_248 = l_count_128 / (l_hist_total_40 + 1.0);
   Print(l_hist_total_40 + 1.0, " ", ld_224, " ", ld_232, " ", ld_240, " ", ld_248);
   double ld_132 = 0;
   double ld_140 = 0;
   double ld_148 = 0;
   double ld_172 = 0;
   double ld_156 = 0;
   int l_count_188 = 0;
   double ld_180 = 0;
   if (l_hist_total_40 > ld_0) {
      for (l_pos_36 = l_hist_total_40 - ld_0; l_pos_36 < l_hist_total_40; l_pos_36++) {
         if (OrderSelect(l_pos_36, SELECT_BY_POS, MODE_HISTORY) == FALSE) {
            Print("Access to history failed with error (", GetLastError(), ")");
            break;
         }
         l_ord_profit_56 = OrderProfit();
         ld_132 += l_ord_profit_56;
         if (ld_132 > ld_172) ld_172 = ld_132;
         if (ld_172 - ld_132 > ld_156) ld_156 = ld_172 - ld_132;
         if (l_ord_profit_56 > 0.0) {
            ld_140 += l_ord_profit_56;
            l_count_188++;
         } else ld_148 += MathAbs(l_ord_profit_56);
      }
      if (ld_0 > 0.0) ld_164 = l_count_188 / ld_0;
      else ld_164 = 0;
   }
   if (ld_148 > 0.0) ld_180 = ld_140 / ld_148;
   else ld_180 = 0;
   Print(ld_0, " ", ld_132, " ", ld_180, " ", ld_156, " ", ld_164);
   for (int l_index_52 = 0; l_index_52 < li_32; l_index_52++) {
      lda_192[l_index_52] = 0;
      lda_196[l_index_52] = 0;
      lda_200[l_index_52] = 0;
      lda_216[l_index_52] = 0;
      lda_204[l_index_52] = 0;
      lia_220[l_index_52] = 0;
      for (l_pos_36 = l_hist_total_40 - li_32 * ld_24 + l_index_52 * ld_24; l_pos_36 < l_hist_total_40 - li_32 * ld_24 + (l_index_52 + 1) * ld_24; l_pos_36++) {
         if (OrderSelect(l_pos_36, SELECT_BY_POS, MODE_HISTORY) == FALSE) {
            Print("Access to history failed with error (", GetLastError(), ")");
            break;
         }
         l_ord_profit_56 = OrderProfit();
         lda_192[l_index_52] += l_ord_profit_56;
         if (lda_192[l_index_52] > lda_216[l_index_52]) lda_216[l_index_52] = lda_192[l_index_52];
         if (lda_216[l_index_52] - lda_192[l_index_52] > lda_204[l_index_52]) lda_204[l_index_52] = lda_216[l_index_52] - lda_192[l_index_52];
         if (l_ord_profit_56 > 0.0) {
            lda_196[l_index_52] += l_ord_profit_56;
            lia_220[l_index_52]++;
         } else lda_200[l_index_52] += MathAbs(l_ord_profit_56);
      }
      if (ld_24 > 0.0) lda_208[l_index_52] = lia_220[l_index_52] / ld_24;
      else lda_208[l_index_52] = 0;
      if (lda_200[l_index_52] > 0.0) lda_212[l_index_52] = lda_196[l_index_52] / lda_200[l_index_52];
      else lda_212[l_index_52] = 0;
      Print(ld_24, " ", lda_192[l_index_52], " ", lda_212[l_index_52], " ", lda_204[l_index_52], " ", lda_208[l_index_52]);
   }
   g_file_1860 = FileOpen("performace.txt", FILE_WRITE|FILE_READ, ';');
   Print("handlerss2: ", g_file_1860);
   if (g_file_1860 != -1 && FileSize(g_file_1860) == 0) FileWrite(g_file_1860, l_hist_total_40, ld_72, DoubleToStr(ld_120, 2), ld_96, DoubleToStr(ld_104, 2), l_hist_total_40 + 1.0, ld_224, DoubleToStr(ld_232, 2), ld_240, DoubleToStr(ld_248, 2), ld_0, ld_132, DoubleToStr(ld_180, 2), ld_156, DoubleToStr(ld_164, 2), ld_24, lda_192[0], DoubleToStr(lda_212[0], 2), lda_204[0], DoubleToStr(lda_208[0], 2), ld_24, lda_192[1], DoubleToStr(lda_212[1], 2), lda_204[1], DoubleToStr(lda_208[1], 2), ld_24, lda_192[2], DoubleToStr(lda_212[2], 2), lda_204[2], DoubleToStr(lda_208[2], 2), ld_24, lda_192[3], DoubleToStr(lda_212[3], 2), lda_204[3], DoubleToStr(lda_208[3], 2));
   else {
      if (g_file_1860 != -1) {
         li_260 = 0;
         while (FileIsEnding(g_file_1860) == FALSE) {
            li_260++;
            ArrayResize(lsa_256, li_260);
            lsa_256[li_260 - 1] = FileReadString(g_file_1860);
         }
         li_264 = 35;
         if (li_264 != 0) li_268 = li_260 / li_264;
         g_file_1860 = FileOpen("performace.txt", FILE_WRITE, ';');
         for (l_pos_36 = 0; l_pos_36 < li_268; l_pos_36++) {
            FileWrite(g_file_1860, lsa_256[l_pos_36 * li_264], lsa_256[l_pos_36 * li_264 + 1], lsa_256[l_pos_36 * li_264 + 2], lsa_256[l_pos_36 * li_264 + 3], lsa_256[l_pos_36 * li_264 +
               4], lsa_256[l_pos_36 * li_264 + 5], lsa_256[l_pos_36 * li_264 + 6], lsa_256[l_pos_36 * li_264 + 7], lsa_256[l_pos_36 * li_264 + 8], lsa_256[l_pos_36 * li_264 + 9], lsa_256[l_pos_36 * li_264 +
               10], lsa_256[l_pos_36 * li_264 + 11], lsa_256[l_pos_36 * li_264 + 12], lsa_256[l_pos_36 * li_264 + 13], lsa_256[l_pos_36 * li_264 + 14], lsa_256[l_pos_36 * li_264 +
               15], lsa_256[l_pos_36 * li_264 + 16], lsa_256[l_pos_36 * li_264 + 17], lsa_256[l_pos_36 * li_264 + 18], lsa_256[l_pos_36 * li_264 + 19], lsa_256[l_pos_36 * li_264 +
               20], lsa_256[l_pos_36 * li_264 + 21], lsa_256[l_pos_36 * li_264 + 22], lsa_256[l_pos_36 * li_264 + 23], lsa_256[l_pos_36 * li_264 + 24], lsa_256[l_pos_36 * li_264 +
               25], lsa_256[l_pos_36 * li_264 + 26], lsa_256[l_pos_36 * li_264 + 27], lsa_256[l_pos_36 * li_264 + 28], lsa_256[l_pos_36 * li_264 + 29], lsa_256[l_pos_36 * li_264 +
               30], lsa_256[l_pos_36 * li_264 + 31], lsa_256[l_pos_36 * li_264 + 32], lsa_256[l_pos_36 * li_264 + 33], lsa_256[l_pos_36 * li_264 + 34]);
         }
         FileWrite(g_file_1860, l_hist_total_40, ld_72, DoubleToStr(ld_120, 2), ld_96, DoubleToStr(ld_104, 2), l_hist_total_40 + 1.0, ld_224, DoubleToStr(ld_232, 2), ld_240, DoubleToStr(ld_248, 2), ld_0, ld_132, DoubleToStr(ld_180, 2), ld_156, DoubleToStr(ld_164, 2), ld_24, lda_192[0], DoubleToStr(lda_212[0], 2), lda_204[0], DoubleToStr(lda_208[0], 2), ld_24, lda_192[1], DoubleToStr(lda_212[1], 2), lda_204[1], DoubleToStr(lda_208[1], 2), ld_24, lda_192[2], DoubleToStr(lda_212[2], 2), lda_204[2], DoubleToStr(lda_208[2], 2), ld_24, lda_192[3], DoubleToStr(lda_212[3], 2), lda_204[3], DoubleToStr(lda_208[3], 2));
      }
   }
   if (g_file_1860 != -1) FileClose(g_file_1860);
}

int CalculateCurrentOrders(string as_unused_0, int a_magic_8) {
   int l_count_12 = 0;
   for (int l_pos_16 = 0; l_pos_16 < OrdersTotal(); l_pos_16++) {
      if (OrderSelect(l_pos_16, SELECT_BY_POS, MODE_TRADES) == FALSE) break;
      if (OrderSymbol() == Symbol() && OrderMagicNumber() == a_magic_8) l_count_12++;
   }
   return (l_count_12);
}

int CheckNoGap(int ai_0, int ai_4, double ad_8, int a_timeframe_16, double ad_20) {
   double ld_40;
   double ld_48;
   double ld_56;
   double ld_64;
   bool li_ret_72;
   double ld_32 = 0;
   for (int li_28 = ai_0; li_28 < ai_4; li_28++) {
      ld_40 = NormalizeDouble(iLow(NULL, a_timeframe_16, li_28), 4);
      ld_48 = NormalizeDouble(iHigh(NULL, a_timeframe_16, li_28), 4);
      ld_56 = NormalizeDouble(iLow(NULL, a_timeframe_16, li_28 + 1), 4);
      ld_64 = NormalizeDouble(iHigh(NULL, a_timeframe_16, li_28 + 1), 4);
      if (ld_40 > ld_64) ld_32 += ld_40 - ld_64;
      if (ld_48 < ld_56) ld_32 += ld_56 - ld_48;
   }
   if (ad_8 > 0.0) {
      if (ld_32 / ad_8 > ad_20) li_ret_72 = FALSE;
      else li_ret_72 = TRUE;
   } else li_ret_72 = FALSE;
   return (li_ret_72);
}

double CalculateVolumeMovementStrength(int ai_0, int ai_4, int a_timeframe_8) {
   if (ai_0 - ai_4 <= 0) return (0);
   double ld_ret_16 = 0;
   for (int li_12 = ai_0; li_12 >= ai_4; li_12--) ld_ret_16 += iVolume(NULL, a_timeframe_8, li_12);
   return (ld_ret_16);
}

int CheckMagigNumber(int ai_0) {
   int li_unused_4 = 0;
   if (ai_0 == 395790116 || ai_0 == 395790115 || CheckSwingMagigNumber(ai_0) == 1) return (1);
   return (0);
}

int CheckSwingMagigNumber(int ai_0) {
   for (int l_index_4 = 0; l_index_4 < gi_1572; l_index_4++)
      if (ai_0 == gia_76[l_index_4]) return (1);
   return (0);
}

int ReturnSwingMagigNumber(int ai_0) {
   for (int l_index_4 = 0; l_index_4 < gi_1572; l_index_4++)
      if (ai_0 == gia_76[l_index_4]) return (l_index_4);
   return (-1);
}

int ReturnStrategyMagigNumber(int ai_0) {
   if (ai_0 == 395790115) return (0);
   if (ai_0 == 395790116) return (1);
   if (CheckSwingMagigNumber(ai_0) == 1) return (2);
   return (-1);
}

int CheckForTestingModeResult(int ai_0) {
   bool li_ret_8;
   int l_year_4 = TimeYear(iTime(NULL, PERIOD_M1, 0));
   if (ai_0 == 0) {
      if (l_year_4 == 2000 || l_year_4 == 2001 || l_year_4 == 2002 || l_year_4 == 2004 || l_year_4 == 2005 || l_year_4 == 2006 || l_year_4 == 2008) li_ret_8 = TRUE;
      else li_ret_8 = FALSE;
   } else {
      if (ai_0 == 1) {
         if (l_year_4 == 2003 || l_year_4 == 2007 || l_year_4 == 2009) li_ret_8 = TRUE;
         else li_ret_8 = FALSE;
      } else li_ret_8 = FALSE;
   }
   return (li_ret_8);
}

void PrintOnChart(int ai_0, int ai_4, int ai_8) {
   string ls_12;
   string ls_20 = "";
   int li_28 = 4;
   if (DisplayOnChart != FALSE) {
      if (ai_4 == 1 || ai_8 == 1) ls_12 = "EA STOPPED --> " + gs_1896;
      else {
         if (ai_0 == 0) ls_12 = "RUNNING PROPERLY";
         else
            if (ai_0 == 1) ls_12 = "RUNNING PROPERLY";
         if (ai_0 == 1) {
            if (g_count_2048 < 6) g_count_2048++;
            else g_count_2048 = 0;
            if (g_count_2048 == 0) ls_20 = ".";
            if (g_count_2048 == 1) ls_20 = "..";
            if (g_count_2048 == 2) ls_20 = "...";
            if (g_count_2048 == 3) ls_20 = "....";
            if (g_count_2048 == 4) ls_20 = ".....";
            if (g_count_2048 == 5) ls_20 = "......";
            if (g_count_2048 == 6) ls_20 = ".......";
         }
      }
      if (li_28 == 1) {
         Comment("" 
            + "\n" 
            + "FOREX DERIVATIVE 2.0" 
            + "\n" 
            + "\n" 
            + "EA State:                  " + ls_12 + " " + ls_20 
            + "\n" 
            + "Current Server Time:  " + TimeToStr(TimeCurrent(), TIME_DATE|TIME_SECONDS) 
            + "\n" 
            + "________________________________________________" 
            + "\n" 
            + "\n" 
            + "BROKER INFORMATION:" 
            + "\n" 
            + "Broker Company:       " + AccountCompany() 
            + "\n" 
            + "________________________________________________" 
            + "\n" 
            + "\n" 
            + "ACCOUNT INFORMATION:" 
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
            + "________________________________________________" 
            + "\n" 
            + "\n" 
            + "MARGIN INFORMATION:" 
            + "\n" 
            + "Free Margin:             " + DoubleToStr(AccountFreeMargin(), 2) 
         + "\n");
      } else {
         if (li_28 == 2) {
            Comment("" + "___________________________________________" 
               + "\n" 
               + "\n" 
               + "FOREX DERIVATIVE 2.0" 
               + "\n" 
               + "\n" 
               + "EA State:                  " + ls_12 + " " + ls_20 
               + "\n" 
               + "\n" 
               + "Current Server Time:  " + TimeToStr(TimeCurrent(), TIME_DATE|TIME_SECONDS) 
               + "\n" 
               + "\n" 
            + "___________________________________________");
         } else {
            if (li_28 == 3) {
               Comment("" 
                  + "\n" 
                  + "FOREX DERIVATIVE 2.0" 
                  + "\n" 
                  + "\n" 
                  + "EA State:                  " + ls_12 + " " + ls_20 
                  + "\n" 
                  + "Current Server Time:  " + TimeToStr(TimeCurrent(), TIME_DATE|TIME_SECONDS) 
                  + "\n" 
                  + "________________________________________________" 
                  + "\n" 
                  + "\n" 
                  + "TRADING PERFORMANCE:" 
                  + "\n" 
                  + "Balance:                    " + DoubleToStr(10000, 0) + " " + AccountCurrency() 
                  + "\n" 
                  + "Equity:                      " + DoubleToStr(10000, 0) + " " + AccountCurrency() 
                  + "\n" 
                  + "Profit Factor:              " + DoubleToStr(1.14567, 2) 
                  + "\n" 
                  + "Accuracy:                  " + DoubleToStr(97.546, 0) + " %" 
                  + "\n" 
                  + "________________________________________________" 
                  + "\n" 
                  + "\n" 
                  + "ACCOUNT INFORMATION:" 
                  + "\n" 
                  + "Broker Company:       " + AccountCompany() 
                  + "\n" 
                  + "Account Number:       " + AccountNumber() 
                  + "\n" 
                  + "Account Leverage:     " + DoubleToStr(AccountLeverage(), 0) 
                  + "\n" 
                  + "Account Currency:     " + AccountCurrency() 
                  + "\n" 
                  + "________________________________________________" 
                  + "\n" 
                  + "\n" 
                  + "MARGIN INFORMATION:" 
                  + "\n" 
                  + "Free Margin:             " + DoubleToStr(AccountFreeMargin(), 0) + " " + AccountCurrency() 
               + "\n");
            } else {
               if (li_28 == 4) {
                  Comment("" 
                     + "\n" 
                     + "FOREX DERIVATIVE 2.0" 
                     + "\n" 
                     + "\n" 
                     + "EA State:                  " + ls_12 + " " + ls_20 
                     + "\n" 
                     + "Current Server Time:  " + TimeToStr(TimeCurrent(), TIME_DATE|TIME_SECONDS) 
                     + "\n" 
                     + "________________________________________________" 
                     + "\n" 
                     + "\n" 
                     + "TRADING PERFORMANCE:" 
                     + "\n" 
                     + "Balance:                    " + DoubleToStr(AccountBalance(), 0) + " " + AccountCurrency() 
                     + "\n" 
                     + "Equity:                      " + DoubleToStr(AccountEquity(), 0) + " " + AccountCurrency() 
                     + "\n" 
                     + "________________________________________________" 
                     + "\n" 
                     + "\n" 
                     + "ACCOUNT INFORMATION:" 
                     + "\n" 
                     + "Broker Company:       " + AccountCompany() 
                     + "\n" 
                     + "Account Number:       " + AccountNumber() 
                     + "\n" 
                     + "Account Leverage:     " + DoubleToStr(AccountLeverage(), 0) 
                     + "\n" 
                     + "Account Currency:     " + AccountCurrency() 
                     + "\n" 
                     + "________________________________________________" 
                     + "\n" 
                     + "\n" 
                     + "MARGIN INFORMATION:" 
                     + "\n" 
                     + "Free Margin:             " + DoubleToStr(AccountFreeMargin(), 0) + " " + AccountCurrency() 
                  + "\n");
               }
            }
         }
      }
   }
}

void DefineParameters() {
   double lda_0[102];
   int l_year_4;
   string ls_8 = StringSubstr(Symbol(), 0, 6);
   /*if (IsTesting() && TimeCurrent() < gi_1924) l_year_4 = TimeYear(TimeCurrent());
   else*/ l_year_4 = 9999;
/*
   lda_0[0] = 5;
   lda_0[1] = 3;
   lda_0[2] = 0.5;
   lda_0[3] = 5;
   lda_0[4] = 2.2;
   lda_0[5] = 0.2;
   lda_0[6] = 20;
   lda_0[7] = 2;
   lda_0[8] = 5;
   lda_0[9] = 2;
   lda_0[10] = 1;
   lda_0[11] = 2;
   lda_0[12] = 0;
   lda_0[13] = 1;
   lda_0[14] = 0;
   lda_0[15] = 10;
   lda_0[16] = 30;
   lda_0[17] = 10;
   lda_0[18] = 5;
   lda_0[19] = 10;
   lda_0[20] = 100;
   lda_0[21] = 1;
   lda_0[22] = 1;
   lda_0[23] = 200;
   lda_0[24] = 0.4;
   lda_0[25] = 20;
   lda_0[26] = 30;
   lda_0[27] = 100;
   lda_0[28] = 1;
   lda_0[29] = 0.5;
   lda_0[30] = 2;
   lda_0[31] = 10;
   lda_0[32] = 2;
   lda_0[33] = 10;
   lda_0[34] = 2;
   lda_0[35] = 2;
   lda_0[36] = 4;
   lda_0[37] = 2;
   lda_0[38] = 100;
   lda_0[39] = 1;
   lda_0[40] = 12;
   lda_0[41] = 1;
   lda_0[42] = 14;
   lda_0[43] = 2;
   lda_0[44] = 0.2;
   lda_0[45] = 0.1;
   lda_0[45] = 1;
   lda_0[46] = 15;
   lda_0[47] = 0.5;
   lda_0[48] = 0.25;
   lda_0[49] = 0.25;
   lda_0[50] = 2;
   lda_0[51] = 2;
   lda_0[52] = 1;
   lda_0[53] = 1;
   lda_0[54] = 20;
   lda_0[55] = 2;
   lda_0[56] = 50;
   lda_0[57] = 1;
   lda_0[58] = 225;
   lda_0[59] = 2;
   lda_0[60] = 0.1;
   lda_0[61] = 5;
   lda_0[62] = 15;
   lda_0[63] = 5;
   lda_0[64] = 20;
   lda_0[65] = 100;
   lda_0[66] = 3;
   lda_0[67] = 20;
   lda_0[68] = 100;
   lda_0[69] = 24;
   lda_0[70] = 0;
   lda_0[71] = 2;
   lda_0[72] = 1;
   lda_0[73] = 30;
   lda_0[74] = 2;
   lda_0[75] = 0.2;
   lda_0[76] = 0.3;
   lda_0[77] = 30;
   lda_0[78] = 0;
   lda_0[79] = 1.2;
   lda_0[80] = 1;
   lda_0[81] = 2.25;
   lda_0[82] = 5;
   lda_0[83] = 21;
   lda_0[84] = 1;
   lda_0[85] = 2;
   lda_0[86] = 30;
   lda_0[87] = 24;
   lda_0[88] = 50;
   lda_0[89] = 0;
   lda_0[90] = 5;
   lda_0[91] = 1000;
   lda_0[92] = 1000;
   lda_0[93] = 1000;
   lda_0[94] = 34;
   lda_0[95] = 123;
   lda_0[96] = 1;
   lda_0[97] = 27;
   lda_0[98] = 4000;
   if (Hedging == FALSE) lda_0[99] = 1;
   else lda_0[99] = 0;
   lda_0[100] = 0;
   lda_0[101] = 0;
   Func2(lda_0, l_year_4, ls_8);
   for (int i=0; i<102; i++)
     Print(i+" : "+lda_0[i]);
   g_timeframe_96 = lda_0[0];
   gi_100 = lda_0[1];
   gd_104 = lda_0[2];
   gd_112 = lda_0[3];
   gd_120 = lda_0[4];
   gd_128 = lda_0[5];
   gd_136 = lda_0[6];
   gd_144 = lda_0[7];
   gd_152 = lda_0[8];
   gd_160 = lda_0[9];
   gi_168 = lda_0[10];
   gi_172 = lda_0[11];
   gi_176 = lda_0[12];
   gi_180 = lda_0[13];
   gi_92 = lda_0[14];
   gi_188 = lda_0[15];
   gi_192 = lda_0[16];
   gi_196 = lda_0[17];
   gi_200 = lda_0[18];
   gi_204 = lda_0[19];
   gi_208 = lda_0[20];
   g_timeframe_216 = lda_0[21];
   gi_220 = lda_0[22];
   gi_224 = lda_0[23];
   gd_232 = lda_0[24];
   gi_240 = lda_0[25];
   gi_244 = lda_0[26];
   gi_248 = lda_0[27];
   gd_256 = lda_0[28];
   gd_264 = lda_0[29];
   gd_272 = lda_0[30];
   gi_280 = lda_0[31];
   gi_284 = lda_0[32];
   gd_288 = lda_0[33];
   gi_296 = lda_0[34];
   gi_308 = lda_0[35];
   gi_312 = lda_0[36];
   g_timeframe_316 = lda_0[37];
   g_period_320 = lda_0[38];
   g_ma_method_324 = lda_0[39];
   gi_328 = lda_0[40];
   gd_332 = lda_0[41];
   g_period_340 = lda_0[42];
   gi_344 = lda_0[43];
   gd_352 = lda_0[44];
   gd_360 = lda_0[45];
   g_timeframe_592 = lda_0[45];
   g_timeframe_596 = lda_0[46];
   gd_600 = lda_0[47];
   gd_608 = lda_0[48];
   gd_616 = lda_0[49];
   gd_624 = lda_0[50];
   gd_632 = lda_0[51];
   gi_640 = lda_0[52];
   gi_644 = lda_0[53];
   gi_648 = lda_0[54];
   gi_652 = lda_0[55];
   gd_660 = lda_0[56];
   gi_668 = lda_0[57];
   gd_672 = lda_0[58];
   gd_688 = lda_0[59];
   gd_704 = lda_0[60];
   gd_728 = lda_0[61];
   gi_780 = lda_0[62];
   gi_480 = lda_0[63];
   gd_484 = lda_0[64];
   gd_500 = lda_0[65];
   gi_516 = lda_0[66];
   gi_524 = lda_0[67];
   g_period_528 = lda_0[68];
   gd_536 = lda_0[69];
   gd_544 = lda_0[70];
   gi_552 = lda_0[71];
   g_ma_method_560 = lda_0[72];
   g_period_564 = lda_0[73];
   gi_568 = lda_0[74];
   gd_576 = lda_0[75];
   gd_584 = lda_0[76];
   gi_376 = lda_0[77];
   gi_380 = lda_0[78];
   gd_388 = lda_0[79];
   gi_404 = lda_0[80];
   gd_412 = lda_0[81];
   gi_428 = lda_0[82];
   gd_444 = lda_0[83];
   gi_468 = lda_0[84];
   gi_476 = lda_0[85];
   gd_460 = lda_0[98];
   gd_784 = lda_0[86];
   gd_792 = lda_0[87];
   gi_824 = lda_0[88];
   gi_828 = lda_0[89];
   gi_832 = lda_0[90];
   gd_880 = lda_0[91];
   gd_888 = lda_0[92];
   gd_896 = lda_0[93];
   gd_960 = lda_0[94];
   gd_968 = lda_0[95];
   gd_976 = lda_0[96];
   gd_984 = lda_0[97];
   gi_88 = lda_0[99];
   gi_712 = lda_0[100];
   gi_776 = lda_0[101];
*/
//parameters read from func2()   
   g_timeframe_96 = 5;
   gi_100 = 4;
   gd_104 = 2;
   gd_112 = 2;
   gd_120 = 1;
   gd_128 = 1.75;
   gd_136 = 2;
   gd_144 = 4;
   gd_152 = 4;
   gd_160 = 1;
   gi_168 = 0;
   gi_172 = 0;
   gi_176 = 1;
   gi_180 = 0;
   gi_92 = 1;
   gi_188 = 30;
   gi_192 = 120;
   gi_196 = 30;
   gi_200 = 10;
   gi_204 = 100;
   gi_208 = 400;
   g_timeframe_216 = 5;
   gi_220 = 2;
   gi_224 = 80;
   gd_232 = 0.5;
   gi_240 = 30;
   gi_244 = 40;
   gi_248 = 400;
   gd_256 = 1;
   gd_264 = 2;
   gd_272 = 0.6;
   gi_280 = 4;
   gi_284 = 1;
   gd_288 = 7;
   gi_296 = 10;
   gi_308 = 0;
   gi_312 = 4;
   g_timeframe_316 = 2;
   g_period_320 = 100;
   g_ma_method_324 = 1;
   gi_328 = 12;
   gd_332 = 1;
   g_period_340 = 14;
   gi_344 = 2;
   gd_352 = 0.2;
   gd_360 = 1;
   g_timeframe_592 = 1;
   g_timeframe_596 = 5;
   gd_600 = 0.5;
   gd_608 = 0.4;
   gd_616 = 0.3;
   gd_624 = 0.2;
   gd_632 = 0.2;
   gi_640 = 0;
   gi_644 = 1;
   gi_648 = 3;
   gi_652 = 2;
   gd_660 = 0;
   gi_668 = 2;
   gd_672 = 2;
   gd_688 = 2;
   gd_704 = 0.8;
   gd_728 = 1;
   gi_780 = 15;
   gi_480 = 2;
   gd_484 = 20;
   gd_500 = 26;
   gi_516 = 3;
   gi_524 = 20;
   g_period_528 = 100;
   gd_536 = 18;
   gd_544 = 1;
   gi_552 = 3;
   g_ma_method_560 = 1;
   g_period_564 = 30;
   gi_568 = 2;
   gd_576 = 0.2;
   gd_584 = 0.3;
   gi_376 = 40;
   gi_380 = 2;
   gd_388 = 2;
   gi_404 = 10;
   gd_412 = 1;
   gi_428 = 4;
   gd_444 = 1.5;
   gi_468 = 1;
   gi_476 = 1;
   gd_784 = 30;
   gd_792 = 24;
   gi_824 = 75;
   gi_828 = 2;
   gi_832 = 5;
   gd_880 = 900;
   gd_888 = 6000;
   gd_896 = 4000;
   gd_960 = 0.8;
   gd_968 = 0.699;
   gd_976 = 1.6;
   gd_984 = 0.69;
   gd_460 = 260;
   gi_88 = 1;
   gi_712 = 0;
   gi_776 = 2;
}

string ErrorDescription(int ai_0) {
   string ls_ret_4;
   switch (ai_0) {
   case 0:
   case 1:
      ls_ret_4 = "no error";
      break;
   case 2:
      ls_ret_4 = "common error";
      break;
   case 3:
      ls_ret_4 = "invalid trade parameters";
      break;
   case 4:
      ls_ret_4 = "trade server is busy";
      break;
   case 5:
      ls_ret_4 = "old version of the client terminal";
      break;
   case 6:
      ls_ret_4 = "no connection with trade server";
      break;
   case 7:
      ls_ret_4 = "not enough rights";
      break;
   case 8:
      ls_ret_4 = "too frequent requests";
      break;
   case 9:
      ls_ret_4 = "malfunctional trade operation (never returned error)";
      break;
   case 64:
      ls_ret_4 = "account disabled";
      break;
   case 65:
      ls_ret_4 = "invalid account";
      break;
   case 128:
      ls_ret_4 = "trade timeout";
      break;
   case 129:
      ls_ret_4 = "invalid price";
      break;
   case 130:
      ls_ret_4 = "invalid stops";
      break;
   case 131:
      ls_ret_4 = "invalid trade volume";
      break;
   case 132:
      ls_ret_4 = "market is closed";
      break;
   case 133:
      ls_ret_4 = "trade is disabled";
      break;
   case 134:
      ls_ret_4 = "not enough money";
      break;
   case 135:
      ls_ret_4 = "price changed";
      break;
   case 136:
      ls_ret_4 = "off quotes";
      break;
   case 137:
      ls_ret_4 = "broker is busy (never returned error)";
      break;
   case 138:
      ls_ret_4 = "requote";
      break;
   case 139:
      ls_ret_4 = "order is locked";
      break;
   case 140:
      ls_ret_4 = "long positions only allowed";
      break;
   case 141:
      ls_ret_4 = "too many requests";
      break;
   case 145:
      ls_ret_4 = "modification denied because order too close to market";
      break;
   case 146:
      ls_ret_4 = "trade context is busy";
      break;
   case 147:
      ls_ret_4 = "expirations are denied by broker";
      break;
   case 148:
      ls_ret_4 = "amount of open and pending orders has reached the limit";
      break;
   case 4000:
      ls_ret_4 = "no error (never generated code)";
      break;
   case 4001:
      ls_ret_4 = "wrong function pointer";
      break;
   case 4002:
      ls_ret_4 = "array index is out of range";
      break;
   case 4003:
      ls_ret_4 = "no memory for function call stack";
      break;
   case 4004:
      ls_ret_4 = "recursive stack overflow";
      break;
   case 4005:
      ls_ret_4 = "not enough stack for parameter";
      break;
   case 4006:
      ls_ret_4 = "no memory for parameter string";
      break;
   case 4007:
      ls_ret_4 = "no memory for temp string";
      break;
   case 4008:
      ls_ret_4 = "not initialized string";
      break;
   case 4009:
      ls_ret_4 = "not initialized string in array";
      break;
   case 4010:
      ls_ret_4 = "no memory for array\' string";
      break;
   case 4011:
      ls_ret_4 = "too long string";
      break;
   case 4012:
      ls_ret_4 = "remainder from zero divide";
      break;
   case 4013:
      ls_ret_4 = "zero divide";
      break;
   case 4014:
      ls_ret_4 = "unknown command";
      break;
   case 4015:
      ls_ret_4 = "wrong jump (never generated error)";
      break;
   case 4016:
      ls_ret_4 = "not initialized array";
      break;
   case 4017:
      ls_ret_4 = "dll calls are not allowed";
      break;
   case 4018:
      ls_ret_4 = "cannot load library";
      break;
   case 4019:
      ls_ret_4 = "cannot call function";
      break;
   case 4020:
      ls_ret_4 = "expert function calls are not allowed";
      break;
   case 4021:
      ls_ret_4 = "not enough memory for temp string returned from function";
      break;
   case 4022:
      ls_ret_4 = "system is busy (never generated error)";
      break;
   case 4050:
      ls_ret_4 = "invalid function parameters count";
      break;
   case 4051:
      ls_ret_4 = "invalid function parameter value";
      break;
   case 4052:
      ls_ret_4 = "string function internal error";
      break;
   case 4053:
      ls_ret_4 = "some array error";
      break;
   case 4054:
      ls_ret_4 = "incorrect series array using";
      break;
   case 4055:
      ls_ret_4 = "custom indicator error";
      break;
   case 4056:
      ls_ret_4 = "arrays are incompatible";
      break;
   case 4057:
      ls_ret_4 = "global variables processing error";
      break;
   case 4058:
      ls_ret_4 = "global variable not found";
      break;
   case 4059:
      ls_ret_4 = "function is not allowed in testing mode";
      break;
   case 4060:
      ls_ret_4 = "function is not confirmed";
      break;
   case 4061:
      ls_ret_4 = "send mail error";
      break;
   case 4062:
      ls_ret_4 = "string parameter expected";
      break;
   case 4063:
      ls_ret_4 = "integer parameter expected";
      break;
   case 4064:
      ls_ret_4 = "double parameter expected";
      break;
   case 4065:
      ls_ret_4 = "array as parameter expected";
      break;
   case 4066:
      ls_ret_4 = "requested history data in update state";
      break;
   case 4099:
      ls_ret_4 = "end of file";
      break;
   case 4100:
      ls_ret_4 = "some file error";
      break;
   case 4101:
      ls_ret_4 = "wrong file name";
      break;
   case 4102:
      ls_ret_4 = "too many opened files";
      break;
   case 4103:
      ls_ret_4 = "cannot open file";
      break;
   case 4104:
      ls_ret_4 = "incompatible access to a file";
      break;
   case 4105:
      ls_ret_4 = "no order selected";
      break;
   case 4106:
      ls_ret_4 = "unknown symbol";
      break;
   case 4107:
      ls_ret_4 = "invalid price parameter for trade function";
      break;
   case 4108:
      ls_ret_4 = "invalid ticket";
      break;
   case 4109:
      ls_ret_4 = "trade is not allowed in the expert properties";
      break;
   case 4110:
      ls_ret_4 = "longs are not allowed in the expert properties";
      break;
   case 4111:
      ls_ret_4 = "shorts are not allowed in the expert properties";
      break;
   case 4200:
      ls_ret_4 = "object is already exist";
      break;
   case 4201:
      ls_ret_4 = "unknown object property";
      break;
   case 4202:
      ls_ret_4 = "object is not exist";
      break;
   case 4203:
      ls_ret_4 = "unknown object type";
      break;
   case 4204:
      ls_ret_4 = "no object name";
      break;
   case 4205:
      ls_ret_4 = "object coordinates error";
      break;
   case 4206:
      ls_ret_4 = "no specified subwindow";
      break;
   default:
      ls_ret_4 = "unknown error";
   }
   return (ls_ret_4);
}

void ClosePositions() {
   int li_12;
   int l_magic_16;
   double l_ord_open_price_20;
   int li_28;
   int li_32;
   for (int l_pos_36 = 0; l_pos_36 < OrdersTotal(); l_pos_36++) {
      if (OrderSelect(l_pos_36, SELECT_BY_POS, MODE_TRADES) == FALSE) break;
      l_magic_16 = OrderMagicNumber();
      if (CheckMagigNumber(l_magic_16) == 0 || OrderSymbol() != Symbol()) continue;
      l_ord_open_price_20 = OrderOpenPrice();
      if (OrderType() == OP_BUY) li_32 = 1;
      else li_32 = 2;
      if (l_magic_16 == 395790116) {
         if (!IsTesting()) RefreshRates();
         li_28 = OrderCloseReliable(OrderTicket(), OrderLots(), OrderClosePrice(), 3, Violet);
         if (li_28 == 0) {
            AlertIsError(GetLastError());
            return;
         }
         InitExit(li_32, gd_1144, 3, l_magic_16);
         FileWriteTradeOutcome(l_ord_open_price_20, OrderClosePrice(), l_magic_16, OrderType());
      } else {
         if (l_magic_16 == 395790115) {
            if (!IsTesting()) RefreshRates();
            li_28 = OrderCloseReliable(OrderTicket(), OrderLots(), OrderClosePrice(), 3, Violet);
            if (li_28 == 0) {
               AlertIsError(GetLastError());
               return;
            }
            InitExit(li_32, gd_1204, 3, l_magic_16);
            FileWriteTradeOutcome(l_ord_open_price_20, OrderClosePrice(), l_magic_16, OrderType());
         } else {
            if (CheckSwingMagigNumber(l_magic_16) == 1) {
               li_12 = ReturnSwingMagigNumber(l_magic_16);
               if (!IsTesting()) RefreshRates();
               li_28 = OrderCloseReliable(OrderTicket(), OrderLots(), OrderClosePrice(), 3, Violet);
               if (li_28 == 0) {
                  AlertIsError(GetLastError());
                  return;
               }
               InitExit(li_32, gda_1164[li_12], 3, l_magic_16);
               FileWriteTradeOutcome(l_ord_open_price_20, OrderClosePrice(), l_magic_16, OrderType());
            }
         }
      }
   }
}

void InitPhaseCheckOpenPositions() {
   int li_12;
   int l_magic_16;
   double l_ord_open_price_20;
   for (int l_pos_32 = 0; l_pos_32 < OrdersTotal(); l_pos_32++) {
      if (OrderSelect(l_pos_32, SELECT_BY_POS, MODE_TRADES) == FALSE) break;
      l_magic_16 = OrderMagicNumber();
      if (CheckMagigNumber(l_magic_16) == 0 || OrderSymbol() != Symbol()) continue;
      l_ord_open_price_20 = OrderOpenPrice();
      if (OrderType() == OP_BUY) {
         if (l_magic_16 == 395790116) {
            if (OrderStopLoss() != 0.0) {
               gi_1152 = TRUE;
               gd_1144 = OrderStopLoss() + 0.001;
            }
            if (OrderTakeProfit() != 0.0) {
               gi_1132 = TRUE;
               gd_1136 = OrderTakeProfit() - 0.001;
            }
         } else {
            if (l_magic_16 == 395790115) {
               if (OrderStopLoss() != 0.0) {
                  gi_1212 = TRUE;
                  gd_1204 = OrderStopLoss() + 0.001;
                  gi_1180 = TRUE;
                  gd_1184 = gd_152 * NormalizeDouble(SecureCallATR(0, PERIOD_M5, 1000, 0), 4);
                  gi_1224 = TRUE;
                  gd_1216 = OrderOpenPrice() - gd_160 * NormalizeDouble(SecureCallATR(0, PERIOD_M5, 1000, 0), 4);
               }
               if (OrderTakeProfit() != 0.0) {
                  gi_1192 = TRUE;
                  gd_1196 = OrderTakeProfit() - 0.001;
               }
            } else {
               if (CheckSwingMagigNumber(l_magic_16) == 1) {
                  li_12 = ReturnSwingMagigNumber(l_magic_16);
                  if (OrderStopLoss() != 0.0) {
                     gba_1168[li_12] = 1;
                     gda_1164[li_12] = OrderStopLoss() + 0.001;
                     gba_1176[li_12] = 1;
                     gda_1172[li_12] = OrderOpenPrice() - gd_272 * gd_288 * gi_252 / 10000.0;
                  }
                  if (OrderTakeProfit() != 0.0) {
                     gba_1156[li_12] = 1;
                     gda_1160[li_12] = OrderTakeProfit() - 0.001;
                  }
               }
            }
         }
      } else {
         if (OrderType() == OP_SELL) {
            if (l_magic_16 == 395790116) {
               if (OrderStopLoss() != 0.0) {
                  gi_1152 = TRUE;
                  gd_1144 = OrderStopLoss() - 0.001;
               }
               if (OrderTakeProfit() != 0.0) {
                  gi_1132 = TRUE;
                  gd_1136 = OrderTakeProfit() + 0.001;
               }
            } else {
               if (l_magic_16 == 395790115) {
                  if (OrderStopLoss() != 0.0) {
                     gi_1212 = TRUE;
                     gd_1204 = OrderStopLoss() - 0.001;
                     gi_1180 = TRUE;
                     gd_1184 = gd_152 * NormalizeDouble(SecureCallATR(0, PERIOD_M5, 1000, 0), 4);
                     gi_1224 = TRUE;
                     gd_1216 = OrderOpenPrice() + gd_160 * NormalizeDouble(SecureCallATR(0, PERIOD_M5, 1000, 0), 4);
                  }
                  if (OrderTakeProfit() != 0.0) {
                     gi_1192 = TRUE;
                     gd_1196 = OrderTakeProfit() + 0.001;
                  }
               } else {
                  if (CheckSwingMagigNumber(l_magic_16) == 1) {
                     li_12 = ReturnSwingMagigNumber(l_magic_16);
                     if (OrderStopLoss() != 0.0) {
                        gba_1168[li_12] = 1;
                        gda_1164[li_12] = OrderStopLoss() - 0.001;
                        gba_1176[li_12] = 1;
                        gda_1172[li_12] = OrderOpenPrice() + gd_272 * gd_288 * gi_252 / 10000.0;
                     }
                     if (OrderTakeProfit() != 0.0) {
                        gba_1156[li_12] = 1;
                        gda_1160[li_12] = OrderTakeProfit() + 0.001;
                     }
                  }
               }
            }
         }
      }
   }
}

int CheckForOppositeOpenOrders(string as_unused_0, int a_cmd_8) {
   int l_count_12 = 0;
   for (int l_pos_16 = 0; l_pos_16 < OrdersTotal(); l_pos_16++) {
      if (OrderSelect(l_pos_16, SELECT_BY_POS, MODE_TRADES) == FALSE) break;
      if (OrderSymbol() == Symbol() && OrderType() == a_cmd_8) l_count_12++;
   }
   return (l_count_12);
}

double SecureCallATR(string as_unused_0, int a_timeframe_8, int ai_12, int ai_16) {
   double ld_28 = ai_12;
   int l_period_36 = ai_12;
   for (double l_iatr_20 = iATR(NULL, a_timeframe_8, l_period_36, ai_16); l_iatr_20 == 0.0 && l_period_36 > 5; l_iatr_20 = iATR(NULL, a_timeframe_8, l_period_36, ai_16)) {
      ld_28 /= 5.0;
      l_period_36 = ld_28;
   }
   if (l_iatr_20 != 0.0) return (l_iatr_20);
   return (100000);
}

void CheckForOpenICWR() {
   int li_4;
   int li_8;
   int l_ticket_12;
   double ld_16;
   int li_24;
   if (gi_1248 == TRUE) {
      if (gi_1260 == 1 && NormalizeDouble(iClose(NULL, PERIOD_M1, 0), 4) > gd_1252 && gi_88 == FALSE || CheckForOppositeOpenOrders(Symbol(), OP_SELL) == 0) {
         if (gi_476 == 0) gd_1144 = gd_1136;
         else {
            if (gi_476 == 1) gd_1144 = NormalizeDouble(Bid, 4) - gi_824 / 10000.0;
            else
               if (gi_476 == 2) gd_1144 = gd_1228;
         }
         gd_1264 = gd_1252;
         gi_1132 = FALSE;
         FindLevels(395790116);
         FindTP_SR(1, 395790116);
         ld_16 = MoneyManagement(NormalizeDouble(Ask, 4), gd_1144, 395790116, OP_BUY, 0);
         if (gi_1248 == FALSE && ld_16 != 0.0) {
            if (gi_1132 == TRUE && gd_1136 - Ask <= 0.001 || NormalizeDouble(Bid, 4) - gd_1144 <= 0.001) return;
            gd_1008 = 0;
            gd_1016 = 0;
            gi_1152 = TRUE;
            gi_1280 = 0;
            if (!IsTesting()) RefreshRates();
            if (ECN_TradeExecution == FALSE) {
               if (gi_1132 == TRUE) l_ticket_12 = OrderSendReliable(Symbol(), OP_BUY, ld_16, Ask, gi_1936, gd_1144 - 0.001, gd_1136 + 0.001, "", 395790116, 0, Blue);
               else l_ticket_12 = OrderSendReliable(Symbol(), OP_BUY, ld_16, Ask, gi_1936, gd_1144 - 0.001, 0, "", 395790116, 0, Blue);
            } else {
               l_ticket_12 = OrderSendReliable(Symbol(), OP_BUY, ld_16, Ask, gi_1936, 0, 0, "", 395790116, 0, Blue);
               if (l_ticket_12 >= 0) {
                  Sleep(1000);
                  if (OrderSelect(l_ticket_12, SELECT_BY_TICKET) == TRUE) {
                     if (gi_1132 == TRUE) li_24 = OrderModifyReliable(l_ticket_12, OrderOpenPrice(), gd_1144 - 0.001, gd_1136 + 0.001, 0, Violet);
                     else li_24 = OrderModifyReliable(l_ticket_12, OrderOpenPrice(), gd_1144 - 0.001, OrderTakeProfit(), 0, Violet);
                  }
               }
            }
            if (EmailNotification == TRUE && l_ticket_12 != -1) SendMail("Forex Derivative 2.0 for " + Symbol(), "Open buy " + DoubleToStr(ld_16, 2) + " " + Symbol() + " at " + DoubleToStr(Ask, Digits));
            if (l_ticket_12 < 0) {
               AlertIsError(GetLastError());
               return;
            }
            gi_1244 = TRUE;
            return;
         }
      } else {
         if (gi_1260 == 2 && NormalizeDouble(iClose(NULL, PERIOD_M1, 0), 4) < gd_1252 && gi_88 == FALSE || CheckForOppositeOpenOrders(Symbol(), OP_BUY) == 0) {
            if (gi_476 == 0) gd_1144 = gd_1136;
            else {
               if (gi_476 == 1) gd_1144 = NormalizeDouble(Ask, 4) + gi_824 / 10000.0;
               else
                  if (gi_476 == 2) gd_1144 = gd_1228;
            }
            gd_1264 = gd_1252;
            gi_1132 = FALSE;
            FindLevels(395790116);
            FindTP_SR(2, 395790116);
            ld_16 = MoneyManagement(NormalizeDouble(Bid, 4), gd_1144, 395790116, OP_SELL, 0);
            if (gi_1248 == FALSE && ld_16 != 0.0) {
               if (gi_1132 == TRUE && Bid - gd_1136 <= 0.001 || gd_1144 - NormalizeDouble(Ask, 4) <= 0.001) return;
               gd_1008 = 0;
               gd_1016 = 0;
               gi_1152 = TRUE;
               gi_1280 = 0;
               if (!IsTesting()) RefreshRates();
               if (ECN_TradeExecution == FALSE) {
                  if (gi_1132 == TRUE) l_ticket_12 = OrderSendReliable(Symbol(), OP_SELL, ld_16, Bid, gi_1936, gd_1144 + 0.001, gd_1136 - 0.001, "", 395790116, 0, Blue);
                  else l_ticket_12 = OrderSendReliable(Symbol(), OP_SELL, ld_16, Bid, gi_1936, gd_1144 + 0.001, 0, "", 395790116, 0, Blue);
               } else {
                  l_ticket_12 = OrderSendReliable(Symbol(), OP_SELL, ld_16, Bid, gi_1936, 0, 0, "", 395790116, 0, Blue);
                  if (l_ticket_12 >= 0) {
                     Sleep(1000);
                     if (OrderSelect(l_ticket_12, SELECT_BY_TICKET) == TRUE) {
                        if (gi_1132 == TRUE) li_24 = OrderModifyReliable(l_ticket_12, OrderOpenPrice(), gd_1144 + 0.001, gd_1136 - 0.001, 0, Violet);
                        else li_24 = OrderModifyReliable(l_ticket_12, OrderOpenPrice(), gd_1144 + 0.001, OrderTakeProfit(), 0, Violet);
                     }
                  }
               }
               if (EmailNotification == TRUE && l_ticket_12 != -1) SendMail("Forex Derivative 2.0 for " + Symbol(), "Open sell " + DoubleToStr(ld_16, 2) + " " + Symbol() + " at " + DoubleToStr(Bid, Digits));
               if (l_ticket_12 < 0) {
                  AlertIsError(GetLastError());
                  return;
               }
               gi_1244 = TRUE;
               return;
            }
         }
      }
   }
   int li_0 = CheckWaveSignal(4, 0);
   if (li_0 == 1 && gi_1248 == FALSE || gi_1260 == 2 && gi_88 == FALSE || CheckForOppositeOpenOrders(Symbol(), OP_SELL) == 0) {
      li_4 = CheckForLongTermTrend(1);
      li_8 = CheckForSidewaysMarket(gd_792, gd_784);
      if (li_4 == 1 && li_8 == 1) {
         gi_1132 = FALSE;
         if (gi_468 == 1) {
            FindLevels(395790116);
            FindTP_SR(1, 395790116);
         }
         gd_1144 = NormalizeDouble(Bid, 4) - gi_824 / 10000.0;
         gd_1228 = gd_1144;
         ld_16 = MoneyManagement(NormalizeDouble(Ask, 4), gd_1144, 395790116, OP_BUY, 0);
         if (gi_468 == 0 || gi_1248 == FALSE && ld_16 != 0.0) {
            if (gi_1132 == TRUE && gd_1136 - Ask <= 0.001 || NormalizeDouble(Bid, 4) - gd_1144 <= 0.001) return;
            gd_1008 = 0;
            gd_1016 = 0;
            gi_1152 = TRUE;
            gi_1272 = TRUE;
            gi_1280 = 0;
            if (!IsTesting()) RefreshRates();
            if (ECN_TradeExecution == FALSE) {
               if (gi_1132 == TRUE) l_ticket_12 = OrderSendReliable(Symbol(), OP_BUY, ld_16, Ask, gi_1936, gd_1144 - 0.001, gd_1136 + 0.001, "", 395790116, 0, Blue);
               else l_ticket_12 = OrderSendReliable(Symbol(), OP_BUY, ld_16, Ask, gi_1936, gd_1144 - 0.001, 0, "", 395790116, 0, Blue);
            } else {
               l_ticket_12 = OrderSendReliable(Symbol(), OP_BUY, ld_16, Ask, gi_1936, 0, 0, "", 395790116, 0, Blue);
               if (l_ticket_12 >= 0) {
                  Sleep(1000);
                  if (OrderSelect(l_ticket_12, SELECT_BY_TICKET) == TRUE) {
                     if (gi_1132 == TRUE) li_24 = OrderModifyReliable(l_ticket_12, OrderOpenPrice(), gd_1144 - 0.001, gd_1136 + 0.001, 0, Violet);
                     else li_24 = OrderModifyReliable(l_ticket_12, OrderOpenPrice(), gd_1144 - 0.001, OrderTakeProfit(), 0, Violet);
                  }
               }
            }
            if (EmailNotification == TRUE && l_ticket_12 != -1) SendMail("Forex Derivative 2.0 for " + Symbol(), "Open buy " + DoubleToStr(ld_16, 2) + " " + Symbol() + " at " + DoubleToStr(Ask, Digits));
            if (l_ticket_12 < 0) AlertIsError(GetLastError());
         }
      }
   } else {
      if (li_0 == 2 && gi_1248 == FALSE || gi_1260 == 1 && gi_88 == FALSE || CheckForOppositeOpenOrders(Symbol(), OP_BUY) == 0) {
         li_4 = CheckForLongTermTrend(2);
         li_8 = CheckForSidewaysMarket(gd_792, gd_784);
         if (li_4 == 1 && li_8 == 1) {
            gi_1132 = FALSE;
            if (gi_468 == 1) {
               FindLevels(395790116);
               FindTP_SR(2, 395790116);
            }
            gd_1144 = NormalizeDouble(Ask, 4) + gi_824 / 10000.0;
            gd_1228 = gd_1144;
            ld_16 = MoneyManagement(NormalizeDouble(Bid, 4), gd_1144, 395790116, OP_SELL, 0);
            if (gi_468 == 0 || gi_1248 == FALSE && ld_16 != 0.0) {
               if (gi_1132 == TRUE && Bid - gd_1136 <= 0.001 || gd_1144 - NormalizeDouble(Ask, 4) <= 0.001) return;
               gd_1008 = 0;
               gd_1016 = 0;
               gi_1152 = TRUE;
               gi_1272 = TRUE;
               gi_1280 = 0;
               if (!IsTesting()) RefreshRates();
               if (ECN_TradeExecution == FALSE) {
                  if (gi_1132 == TRUE) l_ticket_12 = OrderSendReliable(Symbol(), OP_SELL, ld_16, Bid, gi_1936, gd_1144 + 0.001, gd_1136 - 0.001, "", 395790116, 0, Blue);
                  else l_ticket_12 = OrderSendReliable(Symbol(), OP_SELL, ld_16, Bid, gi_1936, gd_1144 + 0.001, 0, "", 395790116, 0, Blue);
               } else {
                  l_ticket_12 = OrderSendReliable(Symbol(), OP_SELL, ld_16, Bid, gi_1936, 0, 0, "", 395790116, 0, Blue);
                  if (l_ticket_12 >= 0) {
                     Sleep(1000);
                     if (OrderSelect(l_ticket_12, SELECT_BY_TICKET) == TRUE) {
                        if (gi_1132 == TRUE) li_24 = OrderModifyReliable(l_ticket_12, OrderOpenPrice(), gd_1144 + 0.001, gd_1136 - 0.001, 0, Violet);
                        else li_24 = OrderModifyReliable(l_ticket_12, OrderOpenPrice(), gd_1144 + 0.001, OrderTakeProfit(), 0, Violet);
                     }
                  }
               }
               if (EmailNotification == TRUE && l_ticket_12 != -1) SendMail("Forex Derivative 2.0 for " + Symbol(), "Open sell " + DoubleToStr(ld_16, 2) + " " + Symbol() + " at " + DoubleToStr(Bid, Digits));
               if (l_ticket_12 < 0) AlertIsError(GetLastError());
            }
         }
      }
   }
}

int RecognizeSwingInit(int ai_0) {
   int li_4;
   int li_12 = iBars(NULL, g_timeframe_216);
   if (g_timeframe_216 == PERIOD_M1) li_4 = 43200;
   else
      if (g_timeframe_216 == PERIOD_M5) li_4 = 8640;
   gia_1580[ai_0] = 0;
   gia_1584[ai_0] = 0;
   gda_1596[ai_0] = NormalizeDouble(iHigh(NULL, g_timeframe_216, li_4 + 1), 4);
   gda_1600[ai_0] = NormalizeDouble(iLow(NULL, g_timeframe_216, li_4 + 1), 4);
   gia_1588[ai_0] = li_4 + 1;
   gia_1592[ai_0] = li_4 + 1;
   gia_1564[ai_0] = 0;
   gda_228[ai_0] = 5000;
   for (int li_8 = li_4; li_8 > 1; li_8--) SwingAlgorithm(li_8, ai_0, 1);
   if (li_4 > li_12) {
      if (li_12 != 0) gia_1568[ai_0] = gia_1564[ai_0] * li_4 / li_12;
      else gia_1568[ai_0] = 1000;
   } else gia_1568[ai_0] = gia_1564[ai_0];
   if (gi_220 == 1) gda_228[ai_0] = gi_224 / 10000.0;
   else gda_228[ai_0] = CheckHeightOfSwing(ai_0);
   gba_1536[ai_0] = 0;
   return (0);
}

void RecognizeSwing(int ai_0) {
   if (g_timeframe_216 == PERIOD_M1) {
      if (g_datetime_1392 == iTime(NULL, g_timeframe_216, 0)) return;
   } else {
      if (g_timeframe_216 == PERIOD_M5)
         if (g_datetime_1396 == iTime(NULL, g_timeframe_216, 0)) return;
   }
   SwingAlgorithm(1, ai_0, 0);
}

int CheckForOpenSwing(int ai_0) {
   double ld_8;
   double ld_16;
   double ld_24;
   int li_32;
   int li_36;
   double ld_40;
   int li_unused_4 = 0;
   if (gda_1604[ai_0][2][1] == 0.0) return (0);
   if (gba_1576[ai_0] == 1) {
      if ((gda_1604[ai_0][0][2] == 1.0 && gda_1604[ai_0][1][2] == -1.0 && gda_1604[ai_0][2][2] == 1.0) || (gda_1604[ai_0][0][2] == -1.0 && gda_1604[ai_0][1][2] == 1.0 &&
         gda_1604[ai_0][2][2] == -1.0)) {
         ld_24 = MathAbs(gda_1604[ai_0][1][1] - gda_1604[ai_0][0][1]);
         if (ld_24 > gi_208 / 10000.0) gi_212 = gi_204;
         else {
            if (gi_208 / 10000.0 - gda_228[ai_0] != 0.0) gi_212 = gi_200 + (ld_24 - gda_228[ai_0]) / (gi_208 / 10000.0 - gda_228[ai_0]) * (gi_204 - gi_200);
            else gi_212 = gi_200;
         }
         if (MathAbs(gda_1604[ai_0][0][1] - gda_1604[ai_0][2][1]) < gi_212 / 10000.0 && MathAbs(gda_1604[ai_0][0][1] - gda_1604[ai_0][1][1]) > gda_228[ai_0]) {
            ld_40 = gda_1604[ai_0][0][1] + gd_256 * (gda_1604[ai_0][1][1] - gda_1604[ai_0][0][1]);
            ld_8 = NormalizeDouble(iClose(NULL, PERIOD_M1, 0), 4);
            if (gda_1604[ai_0][0][2] == -1.0) ld_16 = (ld_8 - ld_40) / 0.0001;
            else
               if (gda_1604[ai_0][0][2] == 1.0) ld_16 = (ld_40 - ld_8) / 0.0001;
            if (ld_24 > gi_248 / 10000.0) gi_252 = gi_244;
            else {
               if (gi_248 / 10000.0 - gda_228[ai_0] != 0.0) gi_252 = gi_240 + (ld_24 - gda_228[ai_0]) / (gi_248 / 10000.0 - gda_228[ai_0]) * (gi_244 - gi_240);
               else gi_252 = gi_240;
            }
            if (ld_16 > gd_264 * gi_252) {
               if (gda_1604[ai_0][0][2] == -1.0 && gi_300 == 0 || CheckMiniSwing() == -1) {
                  li_36 = ConfirmSwing(2);
                  if (li_36 == 1)
                     if (gi_88 == FALSE || CheckForOppositeOpenOrders(Symbol(), OP_BUY) == 0) li_32 = Open_SwingOrder(2, ai_0);
               } else {
                  if (gda_1604[ai_0][0][2] == 1.0 && gi_300 == 0 || CheckMiniSwing() == 1) {
                     li_36 = ConfirmSwing(1);
                     if (li_36 == 1)
                        if (gi_88 == FALSE || CheckForOppositeOpenOrders(Symbol(), OP_SELL) == 0) li_32 = Open_SwingOrder(1, ai_0);
                  }
               }
            }
         }
      }
      gba_1576[ai_0] = 0;
   }
   return (0);
}

int Open_SwingOrder(int ai_0, int ai_4) {
   int l_ticket_8;
   double ld_12;
   int li_20;
   if (ai_0 == 1) {
      gda_1160[ai_4] = NormalizeDouble(Ask, 4) + gi_252 / 10000.0;
      gba_1156[ai_4] = 1;
      if (gi_284 == 1) gda_1164[ai_4] = NormalizeDouble(Bid, 4) - gd_288 * gi_252 / 10000.0;
      else
         if (gi_284 == 2) gda_1164[ai_4] = gda_1604[ai_4][0][1] - gi_296 / 10000.0;
      gda_1172[ai_4] = NormalizeDouble(Bid, 4) - gd_272 * gd_288 * gi_252 / 10000.0;
      gba_1168[ai_4] = 1;
      gba_1176[ai_4] = 1;
      if (gda_1160[ai_4] - NormalizeDouble(Ask, 4) <= 0.001 || NormalizeDouble(Bid, 4) - gda_1164[ai_4] <= 0.001) return (0);
      ld_12 = MoneyManagement(NormalizeDouble(Ask, 4), gda_1164[ai_4], gia_76[ai_4], OP_BUY, 0);
      if (!IsTesting()) RefreshRates();
      if (ld_12 != 0.0) {
         if (ECN_TradeExecution == FALSE) l_ticket_8 = OrderSendReliable(Symbol(), OP_BUY, ld_12, Ask, gi_1936, gda_1164[ai_4] - 0.001, gda_1160[ai_4] + 0.001, "", gia_76[ai_4], 0, Blue);
         else {
            l_ticket_8 = OrderSendReliable(Symbol(), OP_BUY, ld_12, Ask, gi_1936, 0, 0, "", gia_76[ai_4], 0, Blue);
            if (l_ticket_8 >= 0) {
               Sleep(1000);
               if (OrderSelect(l_ticket_8, SELECT_BY_TICKET) == TRUE) li_20 = OrderModifyReliable(l_ticket_8, OrderOpenPrice(), gda_1164[ai_4] - 0.001, gda_1160[ai_4] + 0.001, 0, Violet);
            }
         }
      }
      if (EmailNotification == TRUE && l_ticket_8 != -1) SendMail("Forex Derivative 2.0 for " + Symbol(), "Open buy " + DoubleToStr(ld_12, 2) + " " + Symbol() + " at " + DoubleToStr(Ask, Digits));
      if (l_ticket_8 < 0) {
         AlertIsError(GetLastError());
         return (0);
      }
      if (l_ticket_8 > 0) return (1);
      return (0);
   }
   if (ai_0 == 2) {
      gda_1160[ai_4] = NormalizeDouble(Bid, 4) - gi_252 / 10000.0;
      gba_1156[ai_4] = 1;
      if (gi_284 == 1) gda_1164[ai_4] = NormalizeDouble(Ask, 4) + gd_288 * gi_252 / 10000.0;
      else
         if (gi_284 == 2) gda_1164[ai_4] = gda_1604[ai_4][0][1] + gi_296 / 10000.0;
      gda_1172[ai_4] = NormalizeDouble(Ask, 4) + gd_272 * gd_288 * gi_252 / 10000.0;
      gba_1168[ai_4] = 1;
      gba_1176[ai_4] = 1;
      if (NormalizeDouble(Bid, 4) - gda_1160[ai_4] <= 0.001 || gda_1164[ai_4] - NormalizeDouble(Ask, 4) <= 0.001) return (0);
      ld_12 = MoneyManagement(NormalizeDouble(Bid, 4), gda_1164[ai_4], gia_76[ai_4], OP_SELL, 0);
      if (!IsTesting()) RefreshRates();
      if (ld_12 != 0.0) {
         if (ECN_TradeExecution == FALSE) l_ticket_8 = OrderSendReliable(Symbol(), OP_SELL, ld_12, Bid, gi_1936, gda_1164[ai_4] + 0.001, gda_1160[ai_4] - 0.001, "", gia_76[ai_4], 0, Blue);
         else {
            l_ticket_8 = OrderSendReliable(Symbol(), OP_SELL, ld_12, Bid, gi_1936, 0, 0, "", gia_76[ai_4], 0, Blue);
            if (l_ticket_8 >= 0) {
               Sleep(1000);
               if (OrderSelect(l_ticket_8, SELECT_BY_TICKET) == TRUE) li_20 = OrderModifyReliable(l_ticket_8, OrderOpenPrice(), gda_1164[ai_4] + 0.001, gda_1160[ai_4] - 0.001, 0, Violet);
            }
         }
      }
      if (EmailNotification == TRUE && l_ticket_8 != -1) SendMail("Forex Derivative 2.0 for " + Symbol(), "Open sell " + DoubleToStr(ld_12, 2) + " " + Symbol() + " at " + DoubleToStr(Bid, Digits));
      if (l_ticket_8 < 0) {
         AlertIsError(GetLastError());
         return (0);
      }
      if (l_ticket_8 > 0) return (1);
      return (0);
   }
   return (0);
}

void SwingAlgorithm(int ai_0, int ai_4, int ai_8) {
   double ld_56 = NormalizeDouble(iLow(NULL, g_timeframe_216, iLowest(NULL, g_timeframe_216, MODE_LOW, gia_1608[ai_4], ai_0 + 1)), 4);
   double ld_64 = NormalizeDouble(iHigh(NULL, g_timeframe_216, iHighest(NULL, g_timeframe_216, MODE_HIGH, gia_1608[ai_4], ai_0 + 1)), 4);
   double ld_72 = NormalizeDouble(iLow(NULL, g_timeframe_216, ai_0), 4);
   double ld_80 = NormalizeDouble(iHigh(NULL, g_timeframe_216, ai_0), 4);
   if (ld_72 < ld_56 && ld_80 > ld_64) {
      gia_1584[ai_4] = 2;
      if (gia_1580[ai_4] == 1) gia_1588[ai_4] = ai_0 + 1;
      if (gia_1580[ai_4] == -1) gia_1592[ai_4] = ai_0 + 1;
   } else {
      if (ld_72 < ld_56) gia_1584[ai_4] = -1;
      if (ld_80 > ld_64) gia_1584[ai_4] = 1;
   }
   if (gia_1584[ai_4] != gia_1580[ai_4] && gia_1580[ai_4] != 0) {
      if (gia_1584[ai_4] == 2) {
         gia_1584[ai_4] = -gia_1580[ai_4];
         gda_1596[ai_4] = ld_80;
         gda_1600[ai_4] = ld_72;
      }
      if (gia_1584[ai_4] == 1) {
         gda_1604[ai_4][2][0] = gda_1604[ai_4][1][0];
         gda_1604[ai_4][2][1] = gda_1604[ai_4][1][1];
         gda_1604[ai_4][2][2] = gda_1604[ai_4][1][2];
         gda_1604[ai_4][1][0] = gda_1604[ai_4][0][0];
         gda_1604[ai_4][1][1] = gda_1604[ai_4][0][1];
         gda_1604[ai_4][1][2] = gda_1604[ai_4][0][2];
         gda_1604[ai_4][0][0] = gia_1592[ai_4];
         gda_1604[ai_4][0][1] = gda_1600[ai_4];
         gda_1604[ai_4][0][2] = 1;
         gd_1768 = MathAbs(gda_1604[ai_4][0][1] - gda_1604[ai_4][1][1]);
         if (ai_8 == 1) {
            gia_1564[ai_4]++;
            if (ai_4 == 0) ArrayResize(gda_1540, gia_1564[ai_4]);
            else {
               if (ai_4 == 1) ArrayResize(gda_1544, gia_1564[ai_4]);
               else {
                  if (ai_4 == 2) ArrayResize(gda_1548, gia_1564[ai_4]);
                  else {
                     if (ai_4 == 3) ArrayResize(gda_1552, gia_1564[ai_4]);
                     else {
                        if (ai_4 == 4) ArrayResize(gda_1556, gia_1564[ai_4]);
                        else
                           if (ai_4 == 5) ArrayResize(gda_1560, gia_1564[ai_4]);
                     }
                  }
               }
            }
            if (ai_4 == 0) gda_1540[gia_1564[ai_4] - 1] = gd_1768;
            else {
               if (ai_4 == 1) gda_1544[gia_1564[ai_4] - 1] = gd_1768;
               else {
                  if (ai_4 == 2) gda_1548[gia_1564[ai_4] - 1] = gd_1768;
                  else {
                     if (ai_4 == 3) gda_1552[gia_1564[ai_4] - 1] = gd_1768;
                     else {
                        if (ai_4 == 4) gda_1556[gia_1564[ai_4] - 1] = gd_1768;
                        else
                           if (ai_4 == 5) gda_1560[gia_1564[ai_4] - 1] = gd_1768;
                     }
                  }
               }
            }
         } else {
            if (ai_8 == 0) {
               if (gia_1564[ai_4] < gia_1568[ai_4]) {
                  gia_1564[ai_4]++;
                  if (ai_4 == 0) ArrayResize(gda_1540, gia_1564[ai_4]);
                  else {
                     if (ai_4 == 1) ArrayResize(gda_1544, gia_1564[ai_4]);
                     else {
                        if (ai_4 == 2) ArrayResize(gda_1548, gia_1564[ai_4]);
                        else {
                           if (ai_4 == 3) ArrayResize(gda_1552, gia_1564[ai_4]);
                           else {
                              if (ai_4 == 4) ArrayResize(gda_1556, gia_1564[ai_4]);
                              else
                                 if (ai_4 == 5) ArrayResize(gda_1560, gia_1564[ai_4]);
                           }
                        }
                     }
                  }
                  if (ai_4 == 0) gda_1540[gia_1564[ai_4] - 1] = gd_1768;
                  else {
                     if (ai_4 == 1) gda_1544[gia_1564[ai_4] - 1] = gd_1768;
                     else {
                        if (ai_4 == 2) gda_1548[gia_1564[ai_4] - 1] = gd_1768;
                        else {
                           if (ai_4 == 3) gda_1552[gia_1564[ai_4] - 1] = gd_1768;
                           else {
                              if (ai_4 == 4) gda_1556[gia_1564[ai_4] - 1] = gd_1768;
                              else
                                 if (ai_4 == 5) gda_1560[gia_1564[ai_4] - 1] = gd_1768;
                           }
                        }
                     }
                  }
                  if (gi_220 != 1) gda_228[ai_4] = CheckHeightOfSwing(ai_4);
               } else {
                  for (int l_index_16 = 0; l_index_16 < gia_1564[ai_4] - 1; l_index_16++) {
                     if (ai_4 == 0) gda_1540[l_index_16] = gda_1540[l_index_16 + 1];
                     else {
                        if (ai_4 == 1) gda_1544[l_index_16] = gda_1544[l_index_16 + 1];
                        else {
                           if (ai_4 == 2) gda_1548[l_index_16] = gda_1548[l_index_16 + 1];
                           else {
                              if (ai_4 == 3) gda_1552[l_index_16] = gda_1552[l_index_16 + 1];
                              else {
                                 if (ai_4 == 4) gda_1556[l_index_16] = gda_1556[l_index_16 + 1];
                                 else
                                    if (ai_4 == 5) gda_1560[l_index_16] = gda_1560[l_index_16 + 1];
                              }
                           }
                        }
                     }
                  }
                  if (ai_4 == 0) gda_1540[gia_1564[ai_4] - 1] = gd_1768;
                  else {
                     if (ai_4 == 1) gda_1544[gia_1564[ai_4] - 1] = gd_1768;
                     else {
                        if (ai_4 == 2) gda_1548[gia_1564[ai_4] - 1] = gd_1768;
                        else {
                           if (ai_4 == 3) gda_1552[gia_1564[ai_4] - 1] = gd_1768;
                           else {
                              if (ai_4 == 4) gda_1556[gia_1564[ai_4] - 1] = gd_1768;
                              else
                                 if (ai_4 == 5) gda_1560[gia_1564[ai_4] - 1] = gd_1768;
                           }
                        }
                     }
                  }
                  if (gi_220 != 1) gda_228[ai_4] = CheckHeightOfSwing(ai_4);
               }
            }
         }
         gba_1576[ai_4] = 1;
      }
      if (gia_1584[ai_4] == -1) {
         gda_1604[ai_4][2][0] = gda_1604[ai_4][1][0];
         gda_1604[ai_4][2][1] = gda_1604[ai_4][1][1];
         gda_1604[ai_4][2][2] = gda_1604[ai_4][1][2];
         gda_1604[ai_4][1][0] = gda_1604[ai_4][0][0];
         gda_1604[ai_4][1][1] = gda_1604[ai_4][0][1];
         gda_1604[ai_4][1][2] = gda_1604[ai_4][0][2];
         gda_1604[ai_4][0][0] = gia_1588[ai_4];
         gda_1604[ai_4][0][1] = gda_1596[ai_4];
         gda_1604[ai_4][0][2] = -1;
         gd_1768 = MathAbs(gda_1604[ai_4][0][1] - gda_1604[ai_4][1][1]);
         if (ai_8 == 1) {
            gia_1564[ai_4]++;
            if (ai_4 == 0) ArrayResize(gda_1540, gia_1564[ai_4]);
            else {
               if (ai_4 == 1) ArrayResize(gda_1544, gia_1564[ai_4]);
               else {
                  if (ai_4 == 2) ArrayResize(gda_1548, gia_1564[ai_4]);
                  else {
                     if (ai_4 == 3) ArrayResize(gda_1552, gia_1564[ai_4]);
                     else {
                        if (ai_4 == 4) ArrayResize(gda_1556, gia_1564[ai_4]);
                        else
                           if (ai_4 == 5) ArrayResize(gda_1560, gia_1564[ai_4]);
                     }
                  }
               }
            }
            if (ai_4 == 0) gda_1540[gia_1564[ai_4] - 1] = gd_1768;
            else {
               if (ai_4 == 1) gda_1544[gia_1564[ai_4] - 1] = gd_1768;
               else {
                  if (ai_4 == 2) gda_1548[gia_1564[ai_4] - 1] = gd_1768;
                  else {
                     if (ai_4 == 3) gda_1552[gia_1564[ai_4] - 1] = gd_1768;
                     else {
                        if (ai_4 == 4) gda_1556[gia_1564[ai_4] - 1] = gd_1768;
                        else
                           if (ai_4 == 5) gda_1560[gia_1564[ai_4] - 1] = gd_1768;
                     }
                  }
               }
            }
         } else {
            if (ai_8 == 0) {
               if (gia_1564[ai_4] < gia_1568[ai_4]) {
                  gia_1564[ai_4]++;
                  if (ai_4 == 0) ArrayResize(gda_1540, gia_1564[ai_4]);
                  else {
                     if (ai_4 == 1) ArrayResize(gda_1544, gia_1564[ai_4]);
                     else {
                        if (ai_4 == 2) ArrayResize(gda_1548, gia_1564[ai_4]);
                        else {
                           if (ai_4 == 3) ArrayResize(gda_1552, gia_1564[ai_4]);
                           else {
                              if (ai_4 == 4) ArrayResize(gda_1556, gia_1564[ai_4]);
                              else
                                 if (ai_4 == 5) ArrayResize(gda_1560, gia_1564[ai_4]);
                           }
                        }
                     }
                  }
                  if (ai_4 == 0) gda_1540[gia_1564[ai_4] - 1] = gd_1768;
                  else {
                     if (ai_4 == 1) gda_1544[gia_1564[ai_4] - 1] = gd_1768;
                     else {
                        if (ai_4 == 2) gda_1548[gia_1564[ai_4] - 1] = gd_1768;
                        else {
                           if (ai_4 == 3) gda_1552[gia_1564[ai_4] - 1] = gd_1768;
                           else {
                              if (ai_4 == 4) gda_1556[gia_1564[ai_4] - 1] = gd_1768;
                              else
                                 if (ai_4 == 5) gda_1560[gia_1564[ai_4] - 1] = gd_1768;
                           }
                        }
                     }
                  }
                  if (gi_220 != 1) gda_228[ai_4] = CheckHeightOfSwing(ai_4);
               } else {
                  for (l_index_16 = 0; l_index_16 < gia_1564[ai_4] - 1; l_index_16++) {
                     if (ai_4 == 0) gda_1540[l_index_16] = gda_1540[l_index_16 + 1];
                     else {
                        if (ai_4 == 1) gda_1544[l_index_16] = gda_1544[l_index_16 + 1];
                        else {
                           if (ai_4 == 2) gda_1548[l_index_16] = gda_1548[l_index_16 + 1];
                           else {
                              if (ai_4 == 3) gda_1552[l_index_16] = gda_1552[l_index_16 + 1];
                              else {
                                 if (ai_4 == 4) gda_1556[l_index_16] = gda_1556[l_index_16 + 1];
                                 else
                                    if (ai_4 == 5) gda_1560[l_index_16] = gda_1560[l_index_16 + 1];
                              }
                           }
                        }
                     }
                  }
                  if (ai_4 == 0) gda_1540[gia_1564[ai_4] - 1] = gd_1768;
                  else {
                     if (ai_4 == 1) gda_1544[gia_1564[ai_4] - 1] = gd_1768;
                     else {
                        if (ai_4 == 2) gda_1548[gia_1564[ai_4] - 1] = gd_1768;
                        else {
                           if (ai_4 == 3) gda_1552[gia_1564[ai_4] - 1] = gd_1768;
                           else {
                              if (ai_4 == 4) gda_1556[gia_1564[ai_4] - 1] = gd_1768;
                              else
                                 if (ai_4 == 5) gda_1560[gia_1564[ai_4] - 1] = gd_1768;
                           }
                        }
                     }
                  }
                  if (gi_220 != 1) gda_228[ai_4] = CheckHeightOfSwing(ai_4);
               }
            }
         }
         gba_1576[ai_4] = 1;
      }
      gda_1596[ai_4] = ld_80;
      gda_1600[ai_4] = ld_72;
   }
   if (gia_1584[ai_4] == 1) {
      if (ld_80 >= gda_1596[ai_4]) {
         gda_1596[ai_4] = ld_80;
         gia_1588[ai_4] = ai_0;
      }
   }
   if (gia_1584[ai_4] == -1) {
      if (ld_72 <= gda_1600[ai_4]) {
         gda_1600[ai_4] = ld_72;
         gia_1592[ai_4] = ai_0;
      }
   }
   gia_1580[ai_4] = gia_1584[ai_4];
   gda_1604[ai_4][2][0]++;
   gda_1604[ai_4][1][0]++;
   gda_1604[ai_4][0][0]++;
   gia_1592[ai_4]++;
   gia_1588[ai_4]++;
}

int ConfirmSwing(int ai_0) {
   double ld_12;
   double ld_20;
   double ld_28;
   double ld_36;
   double ld_44;
   switch (gi_308) {
   case 0:
      return (1);
   case 1:
      ld_28 = NormalizeDouble(iMA(NULL, g_timeframe_316, g_period_320, 0, g_ma_method_324, PRICE_CLOSE, 0), 4);
      ld_36 = NormalizeDouble(iMA(NULL, g_timeframe_316, g_period_320, 0, g_ma_method_324, PRICE_CLOSE, gi_328), 4);
      if (gi_328 != 0) ld_44 = MathAbs((ld_28 - ld_36) / 0.0001 / gi_328);
      else ld_44 = 0;
      if (ld_44 < gd_332) return (1);
      return (0);
   case 2:
      ld_12 = NormalizeDouble(iDeMarker(NULL, g_timeframe_348, g_period_340, 0), 4);
      Print("dMarker: ", ld_12);
      if (ai_0 == 1 && ld_12 < gd_360) return (1);
      if (ai_0 == 2 && ld_12 > 1 - gd_360) return (1);
      return (0);
   case 3:
      ld_12 = NormalizeDouble(iDeMarker(NULL, g_timeframe_348, g_period_340, 0), 4);
      Print("dMarker: ", ld_12);
      if (ai_0 == 1 && ld_12 > gd_352 + 0.5 && ld_12 < 1 - gd_360) return (1);
      if (ai_0 == 2 && ld_12 < 0.5 - gd_352 && ld_12 > gd_360) return (1);
      return (0);
   case 4:
      ld_12 = NormalizeDouble(iDeMarker(NULL, g_timeframe_348, g_period_340, 0), 4);
      ld_20 = (-1.0 * NormalizeDouble(iWPR(NULL, g_timeframe_348, g_period_340, 0), 4)) / 100.0;
      if (ai_0 == 1 && ld_12 > gd_352 + 0.5 && ld_20 > gd_360 && ld_20 < 1 - gd_360) return (1);
      if (ai_0 == 2 && ld_12 < 0.5 - gd_352 && ld_20 > gd_360 && ld_20 < 1 - gd_360) return (1);
      return (0);
   }
   return (0);
}

int CheckMiniSwing() {
   double ld_ret_32;
   double ld_0 = NormalizeDouble(iLow(NULL, g_timeframe_216, iLowest(NULL, g_timeframe_216, MODE_LOW, gi_304, 2)), 4);
   double ld_8 = NormalizeDouble(iHigh(NULL, g_timeframe_216, iHighest(NULL, g_timeframe_216, MODE_HIGH, gi_304, 2)), 4);
   double ld_16 = NormalizeDouble(iLow(NULL, g_timeframe_216, 1), 4);
   double ld_24 = NormalizeDouble(iHigh(NULL, g_timeframe_216, 1), 4);
   double ld_40 = NormalizeDouble(iOpen(NULL, g_timeframe_216, 0), 4);
   if (ld_16 < ld_0 && ld_24 > ld_8) ld_ret_32 = 0;
   else {
      if (ld_24 > ld_8 && ld_40 > ld_16) ld_ret_32 = 1;
      else {
         if (ld_16 < ld_0 && ld_40 < ld_24) ld_ret_32 = -1;
         else ld_ret_32 = 0;
      }
   }
   return (ld_ret_32);
}

double CheckHeightOfSwing(int ai_0) {
   double lda_8[];
   if (gia_1564[ai_0] <= 0) return (10000);
   double ld_24 = gia_1564[ai_0] * gd_232;
   int li_12 = MathMax(ld_24 - 1.0, 0);
   ArrayResize(lda_8, gia_1564[ai_0]);
   if (ai_0 == 0) ArrayCopy(lda_8, gda_1540, 0, 0, WHOLE_ARRAY);
   else {
      if (ai_0 == 1) ArrayCopy(lda_8, gda_1544, 0, 0, WHOLE_ARRAY);
      else {
         if (ai_0 == 2) ArrayCopy(lda_8, gda_1548, 0, 0, WHOLE_ARRAY);
         else {
            if (ai_0 == 3) ArrayCopy(lda_8, gda_1552, 0, 0, WHOLE_ARRAY);
            else {
               if (ai_0 == 4) ArrayCopy(lda_8, gda_1556, 0, 0, WHOLE_ARRAY);
               else
                  if (ai_0 == 5) ArrayCopy(lda_8, gda_1560, 0, 0, WHOLE_ARRAY);
            }
         }
      }
   }
   ArraySort(lda_8, WHOLE_ARRAY, 0, MODE_ASCEND);
   double ld_ret_16 = lda_8[li_12];
   return (ld_ret_16);
}

double MoneyManagement(double ad_unused_0, double ad_unused_8, int ai_16, int a_cmd_20, int ai_24) {
   int li_28;
   double ld_32;
   double ld_40;
   double ld_48;
   double lda_56[3];
   double ld_92;
   double ld_ret_152;
   double ld_160;
   double ld_176;
   double ld_184;
   double ld_192;
   double ld_200;
   if (gi_1084 == TRUE) return (0);
   if (ai_16 == 395790115) li_28 = 0;
   else {
      if (ai_16 == 395790116) li_28 = 1;
      else {
         if (CheckSwingMagigNumber(ai_16) == 1) li_28 = 2;
         else li_28 = -1;
      }
   }
   lda_56[0] = 10.0 * (gd_152 * NormalizeDouble(SecureCallATR(0, PERIOD_M5, 1000, 0), 4) / 0.0001);
   lda_56[1] = 10 * gi_824;
   lda_56[2] = 10.0 * (gd_288 * gi_240);
   double l_minlot_60 = MarketInfo(Symbol(), MODE_MINLOT);
   double l_maxlot_68 = MarketInfo(Symbol(), MODE_MAXLOT);
   double l_lotstep_76 = MarketInfo(Symbol(), MODE_LOTSTEP);
   double l_lotsize_84 = MarketInfo(Symbol(), MODE_LOTSIZE);
   if (l_lotsize_84 != 0.0) ld_92 = 100000 / l_lotsize_84;
   double l_tickvalue_100 = MarketInfo(Symbol(), MODE_TICKVALUE);
   double l_point_108 = MarketInfo(Symbol(), MODE_POINT);
   int l_digits_116 = MarketInfo(Symbol(), MODE_DIGITS);
   double ld_120 = l_tickvalue_100 * MathPow(10, l_digits_116) / MathPow(10, 4);
   double ld_136 = MarketInfo(Symbol(), MODE_MARGINREQUIRED) * ld_92;
   double l_lotsize_144 = MarketInfo(Symbol(), MODE_LOTSIZE);
   double ld_168 = AccountBalance();
   if (MoneyManagement == TRUE || MoneyManagement == 2 || MoneyManagement == 3 && 1) {
      if (MoneyManagement == TRUE) {
         ld_176 = gd_976 * MathPow(ld_168, gd_984);
         ld_48 = gd_960 * MathPow(ld_168, gd_968);
      } else {
         if (MoneyManagement == 2) {
            if (MathPow(ld_168, 0.699) != 0.0) ld_184 = ld_168 * gd_952 / 100.0 / MathPow(ld_168, 0.699);
            else ld_184 = 0;
            ld_176 = ld_184 * MathPow(ld_168, 0.699);
            if (MathPow(ld_168, 0.699) != 0.0) ld_192 = ld_168 * gd_944 / 100.0 / MathPow(ld_168, 0.699);
            else ld_192 = 0;
            ld_48 = ld_192 * MathPow(ld_168, 0.699);
         } else {
            if (MoneyManagement == 3) {
               if (ld_168 < 1000.0) ld_176 = gd_904;
               else {
                  if (ld_168 > 1000000.0) ld_176 = gd_928;
                  else {
                     if (ld_168 >= 1000.0 && ld_168 < 10000.0) ld_176 = gd_904 + (ld_168 - 1000.0) / 9000.0 * (gd_912 - gd_904);
                     else {
                        if (ld_168 >= 10000.0 && ld_168 < 100000.0) ld_176 = gd_912 + (ld_168 - 10000.0) / 90000.0 * (gd_920 - gd_912);
                        else
                           if (ld_168 >= 100000.0 && ld_168 < 1000000.0) ld_176 = gd_920 + (ld_168 - 100000.0) / 900000.0 * (gd_928 - gd_920);
                     }
                  }
               }
            }
         }
      }
      if (gda_1060[li_28] != 0.0) {
         if (gda_1060[li_28] * ld_120 / 10.0 != 0.0) ld_32 = ld_176 / (gda_1060[li_28] * ld_120 / 10.0);
         else ld_32 = l_minlot_60;
      } else ld_32 = 0.1;
      if (lda_56[li_28] != 0.0) {
         if (lda_56[li_28] * ld_120 / 10.0 != 0.0) ld_40 = ld_48 / (lda_56[li_28] * ld_120 / 10.0);
         else ld_40 = l_minlot_60;
      } else ld_40 = 0.1;
      ld_160 = MathMin(ld_32, ld_40);
      if (ld_160 < l_minlot_60) {
         if (ai_24 == 0) {
            ld_200 = ld_160 / l_minlot_60;
            if (ld_200 >= 0.01) {
               ld_ret_152 = l_minlot_60;
               return (0);
            }
            ld_ret_152 = 0;
            return (0);
         }
         ld_ret_152 = ld_160;
      } else {
         if (ld_160 > l_maxlot_68) {
            ld_ret_152 = 0;
            return (0);
         }
         if (l_lotstep_76 != 0.0) ld_ret_152 = MathRound(ld_160 / l_lotstep_76) * l_lotstep_76;
         else ld_ret_152 = ld_160;
      }
      if (ai_24 == 0) {
         if (AccountFreeMarginCheck(Symbol(), a_cmd_20, ld_ret_152) <= 0.0 || GetLastError() == 134/* NOT_ENOUGH_MONEY */) {
            ld_ret_152 = 0;
            return (0);
         }
      }
   } else {
      if (MoneyManagement == FALSE) {
         ld_ret_152 = FixLotSize;
         if (ai_24 != 0) return (ld_ret_152);
         if (!(AccountFreeMarginCheck(Symbol(), a_cmd_20, ld_ret_152) <= 0.0 || GetLastError() == 134/* NOT_ENOUGH_MONEY */)) return (0);
         //ld_ret_152 = 0;
         return (ld_ret_152);
      }
      if (MoneyManagement == 4) {
         if (ai_16 == 395790115) ld_ret_152 = gd_848;
         else {
            if (ai_16 == 395790116) ld_ret_152 = gd_856;
            else
               if (CheckSwingMagigNumber(ai_16) == 1) ld_ret_152 = gd_864;
         }
         if (ai_24 == 0) {
            if (AccountFreeMarginCheck(Symbol(), a_cmd_20, ld_ret_152) <= 0.0 || GetLastError() == 134/* NOT_ENOUGH_MONEY */) {
               ld_ret_152 = 0;
               return (0);
            }
         }
      }
   }
   return (ld_ret_152);
}

void FileWriteTradeOutcome(double ad_unused_0, double ad_unused_8, int ai_unused_16, int ai_unused_20) {
   double lda_56[1];
   double lda_60[];
}

int Create_SingleOutcomePDF(int ai_0, int ai_4) {
   string ls_unused_8;
   int l_index_20;
   int li_40;
   double lda_44[1];
   double lda_48[];
   double ld_52;
   double ld_60;
   double ld_68;
   double ld_76;
   int li_84;
   int li_88;
   int lia_92[][4];
   int lia_96[][4];
   double ld_100;
   double ld_108;
   int li_116;
   int li_120;
   double ld_124;
   double ld_132;
   int l_index_140;
   int li_144;
   int li_148;
   int l_count_152;
   int li_156;
   double ld_160;
   bool li_168;
   int li_172;
   int li_176;
   int li_180;
   double ld_184;
   double ld_192;
   bool li_200;
   int li_204;
   int li_212;
   double ld_216;
   double ld_224;
   double ld_232;
   double ld_240;
   if (ai_0 == 1) {
      li_200 = FALSE;
      li_204 = 2;
   } else {
      li_200 = ai_4;
      li_204 = ai_4;
   }
   for (int li_208 = li_200; li_208 <= li_204; li_208++) {
      ArrayResize(lia_92, 1);
      ArrayResize(lia_96, 1);
      ArrayInitialize(lia_92, 0);
      ArrayInitialize(lia_96, 0);
      g_file_1864 = FileOpen(gsa_1064[li_208], FILE_CSV|FILE_READ, ';');
      Print("handlerss3: ", g_file_1864, ", ", gsa_1064[li_208]);
      if (g_file_1864 == -1 || FileSize(g_file_1864) == 0) return (0);
      l_index_20 = 0;
      while (FileIsEnding(g_file_1864) == FALSE) {
         ld_192 = FileReadNumber(g_file_1864);
         lda_44[l_index_20] = ld_192;
         l_index_20++;
         ArrayResize(lda_44, l_index_20 + 1);
      }
      if (g_file_1864 != -1) FileClose(g_file_1864);
      li_40 = l_index_20 - 1;
      ArrayResize(lda_48, li_40);
      ArrayInitialize(lda_48, 0);
      ArrayCopy(lda_48, lda_44, 0, 0, li_40);
      ArrayResize(lda_44, li_40);
      ArrayCopy(lda_44, lda_48, 0, 0, WHOLE_ARRAY);
      li_212 = li_40;
      ArrayInitialize(lda_44, 0);
      ArrayResize(lda_44, li_212);
      ArrayCopy(lda_44, lda_48, 0, li_40 - li_212, li_212);
      if (li_208 == 0 || li_208 == 1) {
         ld_52 = -1000000;
         ld_60 = 1000000;
         for (int l_index_16 = 0; l_index_16 < li_212; l_index_16++) {
            if (lda_44[l_index_16] > ld_52) ld_52 = lda_44[l_index_16];
            if (lda_44[l_index_16] < ld_60) ld_60 = lda_44[l_index_16];
         }
         ld_68 = ld_52 - ld_60;
         li_84 = 5;
         li_88 = li_212 / li_84;
         if (li_88 != 0) ld_76 = ld_68 / li_88;
         else ld_76 = 0;
         if (ld_68 == 0.0 && li_212 > 0) {
            lia_92[l_index_140][0] = ld_52 - 1.0;
            lia_92[l_index_140][1] = ld_52 + 1.0;
            lia_92[l_index_140][2] = li_212;
            l_index_140++;
            ArrayResize(lia_92, l_index_140 + 1);
         } else {
            if (ld_76 != 0.0) {
               if (ld_60 < 0.0) {
                  li_116 = MathAbs(ld_60) / ld_76 + 1.0;
                  ld_124 = (-1 * li_116) * ld_76;
               } else {
                  ld_124 = 0;
                  li_116 = 0;
               }
               if (ld_52 >= 0.0) {
                  li_120 = MathAbs(ld_52) / ld_76 + 1.0;
                  ld_132 = li_120 * ld_76;
               } else {
                  li_120 = 0;
                  ld_132 = 0;
               }
               li_88 = li_116 + li_120;
               ArrayResize(lia_92, 1);
               ld_108 = 0;
               l_index_20 = 0;
               l_index_140 = 0;
               while (ld_108 < ld_52) {
                  ld_100 = ld_124 + ld_76 * l_index_20;
                  ld_108 = ld_124 + ld_76 * (l_index_20 + 1);
                  l_count_152 = 0;
                  for (l_index_16 = 0; l_index_16 < li_212; l_index_16++)
                     if (lda_44[l_index_16] >= ld_100 && lda_44[l_index_16] < ld_108) l_count_152++;
                  if (l_count_152 > 2 * li_84) {
                     li_168 = FALSE;
                     for (double ld_32 = 2; li_168 == FALSE; ld_32 = 2.0 * ld_32) {
                        li_156 = 0;
                        for (int l_count_28 = 0; l_count_28 < ld_32; l_count_28++) {
                           ld_100 = ld_124 + ld_76 * (l_index_20 + l_count_28 / ld_32);
                           ld_108 = ld_124 + ld_76 * (l_index_20 + (l_count_28 + 1) / ld_32);
                           l_count_152 = 0;
                           for (l_index_16 = 0; l_index_16 < li_212; l_index_16++)
                              if (lda_44[l_index_16] >= ld_100 && lda_44[l_index_16] < ld_108) l_count_152++;
                           if (l_count_152 > li_156) li_156 = l_count_152;
                        }
                        if (li_156 <= 2 * li_84) {
                           li_168 = TRUE;
                           ld_160 = ld_32;
                        }
                     }
                  } else ld_160 = 0;
                  if (ld_160 == 0.0) {
                     lia_92[l_index_140][0] = ld_100;
                     lia_92[l_index_140][1] = ld_108;
                     lia_92[l_index_140][2] = l_count_152;
                     l_index_140++;
                     ArrayResize(lia_92, l_index_140 + 1);
                  } else {
                     for (l_count_28 = 0; l_count_28 < ld_160; l_count_28++) {
                        ld_100 = ld_124 + ld_76 * (l_index_20 + l_count_28 / ld_160);
                        ld_108 = ld_124 + ld_76 * (l_index_20 + (l_count_28 + 1) / ld_160);
                        for (l_index_16 = 0; l_index_16 < li_212; l_index_16++)
                           if (lda_44[l_index_16] >= ld_100 && lda_44[l_index_16] < ld_108) lia_92[l_index_140][2]++;
                        lia_92[l_index_140][0] = ld_100;
                        lia_92[l_index_140][1] = ld_108;
                        l_index_140++;
                        ArrayResize(lia_92, l_index_140 + 1);
                     }
                  }
                  l_index_20++;
               }
               li_144 = 0;
               li_176 = li_84 / 2.0;
               li_180 = MathMax(li_212 / 20, li_176 + 1);
               ArrayResize(lia_96, 1);
               for (l_index_16 = 0; l_index_16 < l_index_140; l_index_16++) {
                  if (l_index_16 == 0 && lia_92[l_index_16][2] == 0) continue;
                  if (lia_92[l_index_16][2] < li_176 && l_index_16 != l_index_140 - 1) {
                     l_index_20 = l_index_16 + 1;
                     li_168 = FALSE;
                     ld_184 = lia_92[l_index_16][2];
                     while (li_168 == FALSE) {
                        ld_184 += lia_92[l_index_20][2];
                        if (ld_184 >= li_176 && ld_184 < li_180) {
                           li_168 = TRUE;
                           ld_160 = l_index_20;
                        } else {
                           if (ld_184 >= li_180) {
                              ld_184 -= lia_92[l_index_20][2];
                              li_168 = TRUE;
                              ld_160 = l_index_20 - 1;
                           } else {
                              if (l_index_20 >= l_index_140 - 1) {
                                 li_168 = TRUE;
                                 ld_160 = l_index_20;
                              }
                           }
                        }
                        l_index_20++;
                     }
                     li_172 = ld_160 - l_index_16;
                     li_148 = ld_160;
                     lia_96[li_144][0] = lia_92[l_index_16][0];
                     lia_96[li_144][1] = lia_92[li_148][1];
                     lia_96[li_144][2] = ld_184;
                     l_index_16 += li_172;
                     li_144++;
                     ArrayResize(lia_96, li_144 + 1);
                  } else {
                     lia_96[li_144][0] = lia_92[l_index_16][0];
                     lia_96[li_144][1] = lia_92[l_index_16][1];
                     lia_96[li_144][2] = lia_92[l_index_16][2];
                     li_144++;
                     ArrayResize(lia_96, li_144 + 1);
                  }
               }
            }
         }
      } else {
         if (li_208 == 2) {
            ld_216 = 29;
            ld_224 = -151;
            ld_232 = 5;
            ld_240 = 10;
            l_count_152 = 0;
            ld_100 = ld_224 - ld_240;
            ld_108 = ld_224 + ld_240;
            l_index_140 = 0;
            for (l_index_16 = 0; l_index_16 < li_212; l_index_16++)
               if (lda_44[l_index_16] >= ld_100 && lda_44[l_index_16] < ld_108) l_count_152++;
            lia_96[l_index_140][0] = ld_100;
            lia_96[l_index_140][1] = ld_108;
            lia_96[l_index_140][2] = l_count_152;
            l_index_140++;
            ArrayResize(lia_96, l_index_140 + 1);
            l_count_152 = 0;
            ld_100 = ld_216 - ld_232;
            ld_108 = ld_216 + ld_232;
            for (l_index_16 = 0; l_index_16 < li_212; l_index_16++)
               if (lda_44[l_index_16] >= ld_100 && lda_44[l_index_16] < ld_108) l_count_152++;
            lia_96[l_index_140][0] = ld_100;
            lia_96[l_index_140][1] = ld_108;
            lia_96[l_index_140][2] = l_count_152;
            l_index_140++;
            ArrayResize(lia_96, l_index_140 + 1);
            l_count_152 = 0;
            ld_52 = -1000000;
            ld_60 = 1000000;
            for (l_index_16 = 0; l_index_16 < li_212; l_index_16++) {
               if (lda_44[l_index_16] < ld_224 - ld_240 || (lda_44[l_index_16] >= ld_224 + ld_240 && lda_44[l_index_16] <= ld_216 - ld_232) || lda_44[l_index_16] > ld_216 + ld_232) {
                  l_count_152++;
                  if (lda_44[l_index_16] > ld_52) ld_52 = lda_44[l_index_16];
                  if (lda_44[l_index_16] < ld_60) ld_60 = lda_44[l_index_16];
               }
            }
            ld_68 = ld_52 - ld_60;
            li_84 = 1;
            li_88 = l_count_152 / li_84;
            if (l_count_152 != 0) ld_76 = ld_68 / li_88;
            else ld_76 = 0;
            if (ld_68 == 0.0 && l_count_152 > 0) {
               lia_96[l_index_140][0] = ld_52 - 1.0;
               lia_96[l_index_140][1] = ld_52 + 1.0;
               lia_96[l_index_140][2] = l_count_152;
               l_index_140++;
               ArrayResize(lia_96, l_index_140 + 1);
            } else {
               if (ld_76 != 0.0) {
                  if (ld_60 < 0.0) {
                     li_116 = MathAbs(ld_60) / ld_76 + 1.0;
                     ld_124 = (-1 * li_116) * ld_76;
                  } else {
                     ld_124 = 0;
                     li_116 = 0;
                  }
                  if (ld_52 >= 0.0) {
                     li_120 = MathAbs(ld_52) / ld_76 + 1.0;
                     ld_132 = li_120 * ld_76;
                  } else {
                     li_120 = 0;
                     ld_132 = 0;
                  }
                  li_88 = li_116 + li_120;
                  ld_108 = 0;
                  for (l_index_20 = 0; ld_108 < ld_52; l_index_20++) {
                     ld_100 = ld_124 + ld_76 * l_index_20;
                     ld_108 = ld_124 + ld_76 * (l_index_20 + 1);
                     l_count_152 = 0;
                     if (ld_100 < ld_224 - ld_240 && ld_108 > ld_224 + ld_240) {
                        for (l_index_16 = 0; l_index_16 < li_212; l_index_16++)
                           if (lda_44[l_index_16] >= ld_100 && lda_44[l_index_16] < ld_224 - ld_240) l_count_152++;
                        lia_96[l_index_140][0] = ld_100;
                        lia_96[l_index_140][1] = ld_224 - ld_240;
                        lia_96[l_index_140][2] = l_count_152;
                        l_index_140++;
                        ArrayResize(lia_96, l_index_140 + 1);
                        for (l_index_16 = 0; l_index_16 < li_212; l_index_16++)
                           if (lda_44[l_index_16] >= ld_224 + ld_240 && lda_44[l_index_16] < ld_108) l_count_152++;
                        lia_96[l_index_140][0] = ld_224 + ld_240;
                        lia_96[l_index_140][1] = ld_108;
                        lia_96[l_index_140][2] = l_count_152;
                        l_index_140++;
                        ArrayResize(lia_96, l_index_140 + 1);
                     } else {
                        if (ld_224 - ld_240 < ld_108 && ld_108 < ld_224 + ld_240) {
                           for (l_index_16 = 0; l_index_16 < li_212; l_index_16++)
                              if (lda_44[l_index_16] >= ld_100 && lda_44[l_index_16] < ld_224 - ld_240) l_count_152++;
                           lia_96[l_index_140][0] = ld_100;
                           lia_96[l_index_140][1] = ld_224 - ld_240;
                           lia_96[l_index_140][2] = l_count_152;
                           l_index_140++;
                           ArrayResize(lia_96, l_index_140 + 1);
                        } else {
                           if (ld_224 < ld_100 && ld_100 < ld_224 + ld_240) {
                              for (l_index_16 = 0; l_index_16 < li_212; l_index_16++)
                                 if (lda_44[l_index_16] >= ld_224 + ld_240 && lda_44[l_index_16] < ld_108) l_count_152++;
                              lia_96[l_index_140][0] = ld_224 + ld_240;
                              lia_96[l_index_140][1] = ld_108;
                              lia_96[l_index_140][2] = l_count_152;
                              l_index_140++;
                              ArrayResize(lia_96, l_index_140 + 1);
                           } else {
                              if (ld_100 < ld_216 - ld_232 && ld_108 > ld_216 + ld_232) {
                                 for (l_index_16 = 0; l_index_16 < li_212; l_index_16++)
                                    if (lda_44[l_index_16] >= ld_100 && lda_44[l_index_16] < ld_216 - ld_232) l_count_152++;
                                 lia_96[l_index_140][0] = ld_100;
                                 lia_96[l_index_140][1] = ld_216 - ld_232;
                                 lia_96[l_index_140][2] = l_count_152;
                                 l_index_140++;
                                 ArrayResize(lia_96, l_index_140 + 1);
                                 for (l_index_16 = 0; l_index_16 < li_212; l_index_16++)
                                    if (lda_44[l_index_16] >= ld_216 + ld_232 && lda_44[l_index_16] < ld_108) l_count_152++;
                                 lia_96[l_index_140][0] = ld_216 + ld_232;
                                 lia_96[l_index_140][1] = ld_108;
                                 lia_96[l_index_140][2] = l_count_152;
                                 l_index_140++;
                                 ArrayResize(lia_96, l_index_140 + 1);
                              } else {
                                 if (ld_216 - ld_232 < ld_108 && ld_108 < ld_216 + ld_232) {
                                    for (l_index_16 = 0; l_index_16 < li_212; l_index_16++)
                                       if (lda_44[l_index_16] >= ld_100 && lda_44[l_index_16] < ld_216 - ld_232) l_count_152++;
                                    lia_96[l_index_140][0] = ld_100;
                                    lia_96[l_index_140][1] = ld_216 - ld_232;
                                    lia_96[l_index_140][2] = l_count_152;
                                    l_index_140++;
                                    ArrayResize(lia_96, l_index_140 + 1);
                                 } else {
                                    if (ld_216 < ld_100 && ld_100 < ld_216 + ld_232) {
                                       for (l_index_16 = 0; l_index_16 < li_212; l_index_16++)
                                          if (lda_44[l_index_16] >= ld_216 + ld_232 && lda_44[l_index_16] < ld_108) l_count_152++;
                                       lia_96[l_index_140][0] = ld_216 + ld_232;
                                       lia_96[l_index_140][1] = ld_108;
                                       lia_96[l_index_140][2] = l_count_152;
                                       l_index_140++;
                                       ArrayResize(lia_96, l_index_140 + 1);
                                    } else {
                                       for (l_index_16 = 0; l_index_16 < li_212; l_index_16++)
                                          if (lda_44[l_index_16] >= ld_100 && lda_44[l_index_16] < ld_108) l_count_152++;
                                       lia_96[l_index_140][0] = ld_100;
                                       lia_96[l_index_140][1] = ld_108;
                                       lia_96[l_index_140][2] = l_count_152;
                                       l_index_140++;
                                       ArrayResize(lia_96, l_index_140 + 1);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
            li_144 = l_index_140;
         }
      }
      switch (li_208) {
      case 0:
         ArrayResize(gia_1044, li_144);
         ArrayInitialize(gia_1044, li_144);
         break;
      case 1:
         ArrayResize(gia_1048, li_144);
         ArrayInitialize(gia_1048, li_144);
         break;
      case 2:
         ArrayResize(gia_1052, li_144);
         ArrayInitialize(gia_1052, li_144);
      }
      for (l_index_16 = 0; l_index_16 < li_144; l_index_16++) {
         switch (li_208) {
         case 0:
            gia_1044[l_index_16][0] = lia_96[l_index_16][0];
            gia_1044[l_index_16][1] = lia_96[l_index_16][1];
            gia_1044[l_index_16][2] = lia_96[l_index_16][2];
            gia_1044[l_index_16][3] = lia_96[l_index_16][3];
            break;
         case 1:
            gia_1048[l_index_16][0] = lia_96[l_index_16][0];
            gia_1048[l_index_16][1] = lia_96[l_index_16][1];
            gia_1048[l_index_16][2] = lia_96[l_index_16][2];
            gia_1048[l_index_16][3] = lia_96[l_index_16][3];
            break;
         case 2:
            gia_1052[l_index_16][0] = lia_96[l_index_16][0];
            gia_1052[l_index_16][1] = lia_96[l_index_16][1];
            gia_1052[l_index_16][2] = lia_96[l_index_16][2];
            gia_1052[l_index_16][3] = lia_96[l_index_16][3];
         }
      }
   }
   return (1);
}

void Calculate_3SigmaQuantile(int ai_0, int ai_4) {
   bool li_12;
   int li_16;
   int l_count_8 = 0;
   if (ai_0 == 1) {
      li_12 = FALSE;
      li_16 = 2;
   } else {
      li_12 = ai_4;
      li_16 = ai_4;
   }
   for (l_count_8 = li_12; l_count_8 <= li_16; l_count_8++) Create_TradingSamples(l_count_8);
}

void Create_TradingSamples(int ai_0) {
   double ld_12;
   double ld_20;
   int lia_32[][10000];
   double lda_36[10000];
   int li_40;
   double ld_44;
   double ld_52;
   double ld_60;
   double ld_68;
   double ld_76;
   double ld_84;
   int l_count_92;
   double ld_96;
   ArrayResize(lia_32, 1);
   MathSrand(1);
   switch (ai_0) {
   case 0:
      li_40 = ArrayRange(gia_1044, 0);
      ArrayResize(gda_2052, li_40);
      ld_44 = 0;
      for (int l_index_8 = 0; l_index_8 < li_40; l_index_8++) ld_44 += gia_1044[l_index_8][2];
      for (l_index_8 = 0; l_index_8 < li_40; l_index_8++) {
         gda_2052[l_index_8][0] = gia_1044[l_index_8][0];
         gda_2052[l_index_8][1] = gia_1044[l_index_8][1];
         if (ld_44 != 0.0) gda_2052[l_index_8][2] = gia_1044[l_index_8][2] / ld_44;
         gda_2052[l_index_8][3] = gia_1044[l_index_8][3];
      }
      break;
   case 1:
      li_40 = ArrayRange(gia_1048, 0);
      ArrayResize(gda_2052, li_40);
      ld_44 = 0;
      for (l_index_8 = 0; l_index_8 < li_40; l_index_8++) ld_44 += gia_1048[l_index_8][2];
      for (l_index_8 = 0; l_index_8 < li_40; l_index_8++) {
         gda_2052[l_index_8][0] = gia_1048[l_index_8][0];
         gda_2052[l_index_8][1] = gia_1048[l_index_8][1];
         if (ld_44 != 0.0) gda_2052[l_index_8][2] = gia_1048[l_index_8][2] / ld_44;
         gda_2052[l_index_8][3] = gia_1048[l_index_8][3];
      }
      break;
   case 2:
      li_40 = ArrayRange(gia_1052, 0);
      ArrayResize(gda_2052, li_40);
      ld_44 = 0;
      for (l_index_8 = 0; l_index_8 < li_40; l_index_8++) ld_44 += gia_1052[l_index_8][2];
      for (l_index_8 = 0; l_index_8 < li_40; l_index_8++) {
         gda_2052[l_index_8][0] = gia_1052[l_index_8][0];
         gda_2052[l_index_8][1] = gia_1052[l_index_8][1];
         if (ld_44 != 0.0) gda_2052[l_index_8][2] = gia_1052[l_index_8][2] / ld_44;
         gda_2052[l_index_8][3] = gia_1052[l_index_8][3];
      }
   }
   ArrayResize(lia_32, gia_1056[ai_0]);
   for (int l_index_4 = 0; l_index_4 < 10000; l_index_4++) {
      for (l_index_8 = 0; l_index_8 < gia_1056[ai_0]; l_index_8++) {
         ld_12 = MathRand();
         ld_12 /= 32767.0;
         ld_20 = FunctionTransformRandomNumber(ld_12, li_40, ai_0);
         lia_32[l_index_8][l_index_4] = 10.0 * ld_20;
      }
   }
   for (l_index_4 = 0; l_index_4 < 10000; l_index_4++) {
      ld_52 = 0;
      ld_60 = 0;
      ld_68 = 0;
      ld_76 = 0;
      ld_84 = 0;
      l_count_92 = 0;
      for (l_index_8 = 0; l_index_8 < gia_1056[ai_0]; l_index_8++) {
         ld_96 = lia_32[l_index_8][l_index_4];
         ld_52 += ld_96;
         if (ld_52 > ld_76) ld_76 = ld_52;
         if (ld_76 - ld_52 > ld_84) ld_84 = ld_76 - ld_52;
         if (ld_96 > 0.0) {
            ld_60 += ld_96;
            l_count_92++;
         } else ld_68 += MathAbs(ld_96);
      }
      lda_36[l_index_4] = ld_84;
   }
   ArraySort(lda_36, WHOLE_ARRAY, 0, MODE_ASCEND);
   gda_1060[ai_0] = lda_36[9800];
   if (ai_0 == 2) gda_1060[ai_0] = gi_1572 * lda_36[9800];
}

double FunctionTransformRandomNumber(double ad_0, int ai_8, int ai_unused_12) {
   double ld_ret_36;
   double ld_44;
   double ld_20 = 0;
   double ld_28 = 0;
   for (int l_index_16 = 0; l_index_16 < ai_8; l_index_16++) {
      ld_28 += gda_2052[l_index_16][2];
      if (ad_0 >= ld_20 && ad_0 < ld_28) {
         if (ld_28 - ld_20 != 0.0) ld_44 = (ad_0 - ld_20) / (ld_28 - ld_20);
         ld_ret_36 = gda_2052[l_index_16][0] + ld_44 * (gda_2052[l_index_16][1] - gda_2052[l_index_16][0]);
         break;
      }
      ld_20 += gda_2052[l_index_16][2];
   }
   return (ld_ret_36);
}

void CheckErrorHandlingInit() {
   string l_acc_number_0 = AccountNumber();
   if (!IsDllsAllowed()) {
      gs_1896 = "Warning: Wrong EA Settings => Please check \" AllowDLL Imports\" under Tools -> Options -> ExpertAdvisors.";
      Alert(gs_1896);
      Print(gs_1896);
      gi_1884 = TRUE;
      return;
   }
   if (!IsTesting() && !IsExpertEnabled()) {
      gs_1896 = "Warning: Wrong EA Settings => Please enable EA under Tools -> Options -> ExpertAdvisors and restart EA.";
      Alert(gs_1896);
      Print(gs_1896);
      gi_1880 = TRUE;
      return;
   }
/*
   if (Func3(354619) == 0) {
      gs_1896 = "Warning: Wrong dll file => Please download dll file again and read the instructions in our download area";
      Alert(gs_1896);
      Print(gs_1896);
      gi_1884 = TRUE;
      return;
   }
   if (IsTesting() && TimeCurrent() < 946681200) {
      gi_1884 = TRUE;
      return;
   }
   string ls_8 = StringSubstr(Symbol(), 0, 6);
   if (!(ls_8 == "EURUSD" || ls_8 == "GBPUSD" || ls_8 == "USDCAD" || ls_8 == "AUDUSD")) {
      gs_1896 = "Warning: Wrong Currency Pair => Use Forex Derivative 2.0 only on EURUSD, GBPUSD, USDCAD or AUDUSD";
      Alert(gs_1896);
      Print(gs_1896);
      gi_1884 = TRUE;
      return;
   }
*/   
   if (Period() != PERIOD_M1) {
      gs_1896 = "Warning: Wrong Time Frame => Forex Derivative 2.0 works on M1 chart";
      Alert(gs_1896);
      Print(gs_1896);
      gi_1884 = TRUE;
      return;
   }
   if (iBars(Symbol(), PERIOD_M1) < 800) {
      if (!IsTesting()) {
         gi_1944 = TRUE;
         gi_1948 = MathMax(800 - iBars(Symbol(), PERIOD_M1), 0);
         gi_1948 = MathMin(gi_1948, 800);
      } else {
         gs_1896 = "Warning: Amount of Bars should be greater than " + 800 + " => Download historical data under Tools -> History Center";
         Alert(gs_1896);
         Print(gs_1896);
         gi_1884 = TRUE;
         return;
      }
   }
   if (!IsTesting()) {
      if (!IsTradeAllowed()) {
         gs_1896 = "Warning: Wrong EA Settings => Please check \" Allow Live Trading\" under Tools -> Options -> ExpertAdvisors.";
         Alert(gs_1896);
         Print(gs_1896);
         gi_1884 = TRUE;
         return;
      }
   }
   if (MoneyManagement < FALSE || MoneyManagement > TRUE) {
      gs_1896 = "Warning: Wrong parameter value \"Money Management\" => Please read user manual";
      Alert(gs_1896);
      Print(gs_1896);
      gi_1884 = TRUE;
      return;
   }
   double l_minlot_16 = MarketInfo(Symbol(), MODE_MINLOT);
   double l_maxlot_24 = MarketInfo(Symbol(), MODE_MAXLOT);
   if (MoneyManagement == FALSE && FixLotSize < l_minlot_16) {
      gs_1896 = "Warning: Wrong parameter value \"FixLotSize\" => FixLotSize must be greater than " + l_minlot_16;
      Alert(gs_1896);
      Print(gs_1896);
      gi_1884 = TRUE;
      return;
   }
   if (MoneyManagement == FALSE && FixLotSize > l_maxlot_24) {
      gs_1896 = "Warning: Wrong parameter value \"FixLotSize\" => FixLotSize must be lower than " + l_maxlot_24;
      Alert(gs_1896);
      Print(gs_1896);
      gi_1884 = TRUE;
      return;
   }
/*
   if (!IsConnected() && 1) {
      if (IsTesting()) gs_1896 = "Warning: No connection available (also in testing mode a requisite)";
      else gs_1896 = "Warning: No connection available!";
      Alert(gs_1896);
      Print(gs_1896);
      gi_1884 = TRUE;
      return;
   }
   string ls_32 = StringTrimLeft(StringTrimRight(KEY));
   if (StringLen(ls_32) == 0) {
      gs_1896 = "Please insert the KEY";
      Print(gs_1896);
      gi_1884 = TRUE;
      return;
   }
   if (StringLen(ls_32) != 8) {
      gs_1896 = "Warning: Wrong KEY => Please get the right key in our download area";
      Alert(gs_1896);
      Print(gs_1896);
      gi_1884 = TRUE;
      return;
   }

   if (Func1(ls_32, l_acc_number_0) == 0) {
      if (!IsTesting()) gs_1896 = "Warning: Wrong KEY => Please get the right key in our download area";
      else gs_1896 = "Warning: Not Connected OR Wrong KEY => Please log into MT4 account AND check the key in our download area";
      Alert(gs_1896);
      Print(gs_1896);
      Print("Information: Your Current Account Number as returned by Metatrader is ", l_acc_number_0);
      gi_1884 = TRUE;
   }
*/   
}

void CheckMinLotForMoneyManagement() {
   string ls_32;
   double ld_56;
   double ld_64;
   double ld_0 = MoneyManagement(1, 1, 395790115, OP_BUY, 1);
   double ld_8 = MoneyManagement(1, 1, 395790116, OP_BUY, 1);
   double ld_16 = MoneyManagement(1, 1, 395790117, OP_BUY, 1);
   double ld_24 = MathMin(ld_0, MathMin(ld_8, ld_16));
   double l_minlot_40 = MarketInfo(Symbol(), MODE_MINLOT);
   double l_lotsize_48 = MarketInfo(Symbol(), MODE_LOTSIZE);
   if (l_lotsize_48 != 0.0) ld_56 = 100000 / l_lotsize_48;
   if (ld_24 < l_minlot_40) {
      ld_64 = ld_24 * ld_56;
      if (ld_64 >= 0.1 && ld_64 < 1.0) {
         ls_32 = "Information: Forex Derivative 2.0 is not able to open mini lots in order to trade with appropiate risk level";
         Print(ls_32);
         ls_32 = "Information: We recommend you to use a brokerage which permits to open mini lots (= 0.1 standard lot = 10,000 units)";
         Print(ls_32);
         ls_32 = "Information: Forex Derivative 2.0 will open trades using the lowest lot size provided by your broker company";
         Print(ls_32);
      } else {
         if (ld_64 >= 0.01 && ld_64 < 0.1) {
            ls_32 = "Information: Forex Derivative 2.0 is not able to open micro lots in order to trade with appropiate risk level";
            Print(ls_32);
            ls_32 = "Information: We recommend you to use a brokerage which permits to open micro lots (= 0.01 standard lot = 1,000 units)";
            Print(ls_32);
            ls_32 = "Information: Forex Derivative 2.0 will open trades using the lowest lot size provided by your broker company";
            Print(ls_32);
         } else {
            if (ld_64 >= 0.001 && ld_64 < 0.01) {
               ls_32 = "Information: Forex Derivative 2.0 is not able to open nano lots in order to trade with appropiate risk level";
               Print(ls_32);
               ls_32 = "Information: We recommend you to use a brokerage which permits to open nano lots (= 0.001 standard lot = 100 units)";
               Print(ls_32);
               ls_32 = "Information: Forex Derivative 2.0 will open trades using the lowest lot size provided by your broker company";
               Print(ls_32);
            }
         }
      }
   }
}

void CheckErrorHandling() {
   string ls_0;
   int li_28;
   if (IsStopped()) {
      ls_0 = "Warning: EA has been commanded to stop its operation!";
      Alert(ls_0);
      Print(ls_0);
      gi_1880 = TRUE;
      return;
   }
   if (!IsTesting() && !IsExpertEnabled()) {
      ls_0 = "Warning: Wrong EA Settings => Please enable EA under Tools -> Options -> ExpertAdvisors and restart the EA.";
      Alert(ls_0);
      Print(ls_0);
      gi_1880 = TRUE;
      return;
   }
   if (!IsTesting()) {
      if (IsTradeContextBusy()) g_count_1920++;
      else g_count_1920 = 0;
      if (g_count_1920 >= 100) {
         ls_0 = "Warning: Thread for trading is occupied for at least 100 ticks!";
         Alert(ls_0);
         Print(ls_0);
         gi_1880 = TRUE;
         return;
      }
   }
   double ld_8 = MarketInfo("EURUSD", MODE_SPREAD);
   int l_digits_16 = MarketInfo("EURUSD", MODE_DIGITS);
   ld_8 = ld_8 * MathPow(10, 4) / MathPow(10, l_digits_16);
   double ld_20 = ld_8 / MathPow(10, 4);
   string ls_32 = StringSubstr(Symbol(), 0, 6);
   if (ls_32 == "EURUSD") li_28 = gd_1088;
   else {
      if (ls_32 == "GBPUSD") li_28 = gd_1096;
      else {
         if (ls_32 == "USDCAD") li_28 = gd_1104;
         else {
            if (ls_32 == "AUDUSD") li_28 = gd_1112;
            else li_28 = 15000;
         }
      }
   }
   int li_40 = gi_1084;
   if (ld_8 > li_28) {
      ls_0 = "Information: Current spread " + DoubleToStr(ld_20, l_digits_16) + " for the currency " + ls_32 + " is too high => no trades will be opened for this currency";
      gi_1084 = TRUE;
      if (li_40 == 0 && gi_1084 == TRUE) Print(ls_0);
   } else {
      ls_0 = "Information: Current spread " + DoubleToStr(ld_20, l_digits_16) + " for the currency " + ls_32 + " is again within predefined range => normal trading";
      gi_1084 = FALSE;
      if (li_40 == 1 && gi_1084 == FALSE) Print(ls_0);
   }
   g_minlot_1872 = MarketInfo(Symbol(), MODE_MINLOT);
   if (AccountFreeMarginCheck(Symbol(), OP_BUY, g_minlot_1872) <= 0.0 || g_error_1892 == 134/* NOT_ENOUGH_MONEY */ || g_error_1892 == 131/* INVALID_TRADE_VOLUME */) {
      ls_0 = "Warning: Not enough money to open new orders!";
      Alert(ls_0);
      Print(ls_0);
      gi_1880 = TRUE;
      return;
   }
   if (IsTesting() && gi_1944 == FALSE) {
      if (iATR(NULL, PERIOD_M5, 5, 0) == 0.0 && iMA(NULL, PERIOD_M5, 5, 0, MODE_EMA, PRICE_CLOSE, 0) == 0.0) {
         ls_0 = "Warning: Missing historical data for time period " + 5 + " => Download historical data under Tools -> History Center ";
         Alert(ls_0);
         Print(ls_0);
         gi_1880 = TRUE;
         return;
      }
      if (iATR(NULL, PERIOD_M15, 5, 0) == 0.0 && iMA(NULL, PERIOD_M15, 5, 0, MODE_EMA, PRICE_CLOSE, 0) == 0.0) {
         ls_0 = "Warning: Missing historical data for time period " + 15 + " => Download historical data under Tools -> History Center ";
         Alert(ls_0);
         Print(ls_0);
         gi_1880 = TRUE;
         return;
      }
      if (iATR(NULL, PERIOD_M30, 5, 0) == 0.0 && iMA(NULL, PERIOD_M30, 5, 0, MODE_EMA, PRICE_CLOSE, 0) == 0.0) {
         ls_0 = "Warning: Missing historical data for time period " + 30 + " => Download historical data under Tools -> History Center ";
         Alert(ls_0);
         Print(ls_0);
         gi_1880 = TRUE;
         return;
      }
      if (iATR(NULL, PERIOD_H1, 5, 0) == 0.0 && iMA(NULL, PERIOD_H1, 5, 0, MODE_EMA, PRICE_CLOSE, 0) == 0.0) {
         ls_0 = "Warning: Missing historical data for time period " + 60 + " => Download historical data under Tools -> History Center ";
         Alert(ls_0);
         Print(ls_0);
         gi_1880 = TRUE;
         return;
      }
      if (iATR(NULL, PERIOD_H4, 5, 0) == 0.0 && iMA(NULL, PERIOD_H4, 5, 0, MODE_EMA, PRICE_CLOSE, 0) == 0.0) {
         ls_0 = "Warning: Missing historical data for time period " + 240 + " => Download historical data under Tools -> History Center ";
         Alert(ls_0);
         Print(ls_0);
         gi_1880 = TRUE;
         return;
      }
      if (iATR(NULL, PERIOD_D1, 5, 0) == 0.0 && iMA(NULL, PERIOD_D1, 5, 0, MODE_EMA, PRICE_CLOSE, 0) == 0.0) {
         ls_0 = "Warning: Missing historical data for time period " + 1440 + " => Download historical data under Tools -> History Center ";
         Alert(ls_0);
         Print(ls_0);
         gi_1880 = TRUE;
         return;
      }
   }
   gi_1880 = FALSE;
   if (g_error_1892 != 0/* NO_ERROR */) AlertIsError(g_error_1892);
}

void AlertIsError(int ai_0) {
   string ls_4;
   if (ai_0 >= 2 && ai_0 <= 148) {
      ls_4 = ErrorDescription(g_error_1892);
      Print(ls_4);
   }
}

int OrderSendReliable(string a_symbol_0, int a_cmd_8, double a_lots_12, double a_price_20, int a_slippage_28, double a_price_32, double a_price_40, string a_comment_48, int a_magic_56, int a_datetime_60 = 0, color a_color_64 = -1) {
   double ld_96;
   gs_unused_2084 = "OrderSendReliable";
   OrderReliablePrint(" attempted " + OrderReliable_CommandString(a_cmd_8) + " " + a_lots_12 + " lots @" + a_price_20 + " sl:" + a_price_32 + " tp:" + a_price_40);
   if (!IsConnected()) {
      OrderReliablePrint("error: IsConnected() == false");
      gi_unused_2092 = 6;
      return (-1);
   }
   if (IsStopped()) {
      OrderReliablePrint("error: IsStopped() == true");
      gi_unused_2092 = 2;
      return (-1);
   }
   for (int l_count_68 = 0; !IsTradeAllowed() && l_count_68 < gi_2064; l_count_68++) OrderReliable_SleepRandomTime(gd_2068, gd_2076);
   if (!IsTradeAllowed()) {
      OrderReliablePrint("error: no operation possible because IsTradeAllowed()==false, even after retries.");
      gi_unused_2092 = 146;
      return (-1);
   }
   int l_digits_72 = MarketInfo(a_symbol_0, MODE_DIGITS);
   if (l_digits_72 > 0) {
      a_price_20 = NormalizeDouble(a_price_20, l_digits_72);
      a_price_32 = NormalizeDouble(a_price_32, l_digits_72);
      a_price_40 = NormalizeDouble(a_price_40, l_digits_72);
   }
   if (a_price_32 != 0.0) OrderReliable_EnsureValidStop(a_symbol_0, a_price_20, a_price_32);
   int l_error_76 = GetLastError();
   l_error_76 = 0;
   gi_unused_2092 = 0;
   bool li_80 = FALSE;
   bool li_84 = FALSE;
   int l_ticket_88 = -1;
   if (a_cmd_8 == OP_BUYSTOP || a_cmd_8 == OP_SELLSTOP || a_cmd_8 == OP_BUYLIMIT || a_cmd_8 == OP_SELLLIMIT) {
      l_count_68 = 0;
      while (!li_80) {
         if (IsTradeAllowed()) {
            l_ticket_88 = OrderSend(a_symbol_0, a_cmd_8, a_lots_12, a_price_20, a_slippage_28, a_price_32, a_price_40, a_comment_48, a_magic_56, a_datetime_60, a_color_64);
            l_error_76 = GetLastError();
            gi_unused_2092 = l_error_76;
         } else l_count_68++;
         switch (l_error_76) {
         case 0/* NO_ERROR */:
            li_80 = TRUE;
            break;
         case 4/* SERVER_BUSY */:
         case 6/* NO_CONNECTION */:
         case 129/* INVALID_PRICE */:
         case 136/* OFF_QUOTES */:
         case 137/* BROKER_BUSY */:
         case 146/* TRADE_CONTEXT_BUSY */:
            l_count_68++;
            break;
         case 135/* PRICE_CHANGED */:
         case 138/* REQUOTE */:
            RefreshRates();
            continue;
            break;
         case 130/* INVALID_STOPS */:
            ld_96 = MarketInfo(a_symbol_0, MODE_STOPLEVEL) / MathPow(10, MarketInfo(a_symbol_0, MODE_DIGITS));
            if (a_cmd_8 == OP_BUYSTOP) {
               if (MathAbs(Ask - a_price_20) <= ld_96) li_84 = TRUE;
            } else {
               if (a_cmd_8 == OP_SELLSTOP)
                  if (MathAbs(Bid - a_price_20) <= ld_96) li_84 = TRUE;
            }
            li_80 = TRUE;
            break;
         default:
            li_80 = TRUE;
         }
         if (l_count_68 > gi_2064) li_80 = TRUE;
         if (li_80) {
            if (l_error_76 != 0/* NO_ERROR */) OrderReliablePrint("non-retryable error: " + OrderReliableErrTxt(l_error_76));
            if (l_count_68 > gi_2064) OrderReliablePrint("retry attempts maxed at " + gi_2064);
         }
         if (!li_80) {
            OrderReliablePrint("retryable error (" + l_count_68 + "/" + gi_2064 + "): " + OrderReliableErrTxt(l_error_76));
            OrderReliable_SleepRandomTime(gd_2068, gd_2076);
            RefreshRates();
         }
      }
      if (l_error_76 == 0/* NO_ERROR */) {
         OrderReliablePrint("apparently successful OP_BUYSTOP or OP_SELLSTOP order placed, details follow.");
         OrderSelect(l_ticket_88, SELECT_BY_TICKET, MODE_TRADES);
         return (l_ticket_88);
      }
      if (!li_84) {
         OrderReliablePrint("failed to execute stop or limit order after " + l_count_68 + " retries");
         OrderReliablePrint("failed trade: " + OrderReliable_CommandString(a_cmd_8) + " " + a_symbol_0 + "@" + a_price_20 + " tp@" + a_price_40 + " sl@" + a_price_32);
         OrderReliablePrint("last error: " + OrderReliableErrTxt(l_error_76));
         return (-1);
      }
   }
   if (li_84) {
      OrderReliablePrint("going from limit order to market order because market is too close.");
      if (a_cmd_8 == OP_BUYSTOP || a_cmd_8 == OP_BUYLIMIT) {
         a_cmd_8 = 0;
         a_price_20 = Ask;
      } else {
         if (a_cmd_8 == OP_SELLSTOP || a_cmd_8 == OP_SELLLIMIT) {
            a_cmd_8 = 1;
            a_price_20 = Bid;
         }
      }
   }
   l_error_76 = GetLastError();
   l_error_76 = 0;
   gi_unused_2092 = 0;
   l_ticket_88 = -1;
   if (a_cmd_8 == OP_BUY || a_cmd_8 == OP_SELL) {
      l_count_68 = 0;
      while (!li_80) {
         if (IsTradeAllowed()) {
            l_ticket_88 = OrderSend(a_symbol_0, a_cmd_8, a_lots_12, a_price_20, a_slippage_28, a_price_32, a_price_40, a_comment_48, a_magic_56, a_datetime_60, a_color_64);
            l_error_76 = GetLastError();
            gi_unused_2092 = l_error_76;
         } else l_count_68++;
         switch (l_error_76) {
         case 0/* NO_ERROR */:
            li_80 = TRUE;
            break;
         case 4/* SERVER_BUSY */:
         case 6/* NO_CONNECTION */:
         case 129/* INVALID_PRICE */:
         case 136/* OFF_QUOTES */:
         case 137/* BROKER_BUSY */:
         case 146/* TRADE_CONTEXT_BUSY */:
            l_count_68++;
            break;
         case 135/* PRICE_CHANGED */:
         case 138/* REQUOTE */:
            RefreshRates();
            continue;
            break;
         default:
            li_80 = TRUE;
         }
         if (l_count_68 > gi_2064) li_80 = TRUE;
         if (!li_80) {
            OrderReliablePrint("retryable error (" + l_count_68 + "/" + gi_2064 + "): " + OrderReliableErrTxt(l_error_76));
            OrderReliable_SleepRandomTime(gd_2068, gd_2076);
            RefreshRates();
         }
         if (li_80) {
            if (l_error_76 != 0/* NO_ERROR */) OrderReliablePrint("non-retryable error: " + OrderReliableErrTxt(l_error_76));
            if (l_count_68 > gi_2064) OrderReliablePrint("retry attempts maxed at " + gi_2064);
         }
      }
      if (l_error_76 == 0/* NO_ERROR */) {
         OrderReliablePrint("apparently successful OP_BUY or OP_SELL order placed, details follow.");
         OrderSelect(l_ticket_88, SELECT_BY_TICKET, MODE_TRADES);
         return (l_ticket_88);
      }
      OrderReliablePrint("failed to execute OP_BUY/OP_SELL, after " + l_count_68 + " retries");
      OrderReliablePrint("failed trade: " + OrderReliable_CommandString(a_cmd_8) + " " + a_symbol_0 + "@" + a_price_20 + " tp@" + a_price_40 + " sl@" + a_price_32);
      OrderReliablePrint("last error: " + OrderReliableErrTxt(l_error_76));
      return (-1);
   }
   return (0);
}

int OrderModifyReliable(int a_ticket_0, double a_price_4, double a_price_12, double a_price_20, int a_datetime_28, color a_color_32 = -1) {
   string ls_40;
   gs_unused_2084 = "OrderModifyReliable";
   OrderReliablePrint(" attempted modify of #" + a_ticket_0 + " price:" + a_price_4 + " sl:" + a_price_12 + " tp:" + a_price_20);
   if (!IsConnected()) {
      OrderReliablePrint("error: IsConnected() == false");
      gi_unused_2092 = 6;
      return (0);
   }
   if (IsStopped()) {
      OrderReliablePrint("error: IsStopped() == true");
      return (0);
   }
   for (int l_count_36 = 0; !IsTradeAllowed() && l_count_36 < gi_2064; l_count_36++) OrderReliable_SleepRandomTime(gd_2068, gd_2076);
   if (!IsTradeAllowed()) {
      OrderReliablePrint("error: no operation possible because IsTradeAllowed()==false, even after retries.");
      gi_unused_2092 = 146;
      return (0);
   }
   int l_error_52 = GetLastError();
   l_error_52 = 0;
   gi_unused_2092 = 0;
   bool li_56 = FALSE;
   l_count_36 = 0;
   bool l_bool_60 = FALSE;
   while (!li_56) {
      if (IsTradeAllowed()) {
         l_bool_60 = OrderModify(a_ticket_0, a_price_4, a_price_12, a_price_20, a_datetime_28, a_color_32);
         l_error_52 = GetLastError();
         gi_unused_2092 = l_error_52;
      } else l_count_36++;
      if (l_bool_60 == TRUE) li_56 = TRUE;
      switch (l_error_52) {
      case 0/* NO_ERROR */:
         li_56 = TRUE;
         break;
      case 1/* NO_RESULT */:
         li_56 = TRUE;
         break;
      case 4/* SERVER_BUSY */:
      case 6/* NO_CONNECTION */:
      case 129/* INVALID_PRICE */:
      case 136/* OFF_QUOTES */:
      case 137/* BROKER_BUSY */:
      case 146/* TRADE_CONTEXT_BUSY */:
      case 128/* TRADE_TIMEOUT */:
         l_count_36++;
         break;
      case 135/* PRICE_CHANGED */:
      case 138/* REQUOTE */:
         RefreshRates();
         continue;
         break;
      default:
         li_56 = TRUE;
      }
      if (l_count_36 > gi_2064) li_56 = TRUE;
      if (!li_56) {
         OrderReliablePrint("retryable error (" + l_count_36 + "/" + gi_2064 + "): " + OrderReliableErrTxt(l_error_52));
         OrderReliable_SleepRandomTime(gd_2068, gd_2076);
         RefreshRates();
      }
      if (li_56) {
         if (l_error_52 != 0/* NO_ERROR */ && l_error_52 != 1/* NO_RESULT */) OrderReliablePrint("non-retryable error: " + OrderReliableErrTxt(l_error_52));
         if (l_count_36 > gi_2064) OrderReliablePrint("retry attempts maxed at " + gi_2064);
      }
   }
   if (l_bool_60 == TRUE || l_error_52 == 0/* NO_ERROR */) {
      OrderReliablePrint("apparently successful modification order, updated trade details follow.");
      OrderSelect(a_ticket_0, SELECT_BY_TICKET, MODE_TRADES);
      return (1);
   }
   if (l_error_52 == 1/* NO_RESULT */) {
      OrderReliablePrint("Server reported modify order did not actually change parameters.");
      OrderReliablePrint("redundant modification: " + a_ticket_0 + " " + ls_40 + "@" + a_price_4 + " tp@" + a_price_20 + " sl@" + a_price_12);
      OrderReliablePrint("Suggest modifying code logic to avoid.");
      return (1);
   }
   OrderReliablePrint("failed to execute modify after " + l_count_36 + " retries");
   OrderReliablePrint("failed modification: " + a_ticket_0 + " " + ls_40 + "@" + a_price_4 + " tp@" + a_price_20 + " sl@" + a_price_12);
   OrderReliablePrint("last error: " + OrderReliableErrTxt(l_error_52));
   return (0);
}

int OrderCloseReliable(int a_ticket_0, double a_lots_4, double a_price_12, int a_slippage_20, color a_color_24 = -1) {
   gs_unused_2084 = "OrderCloseReliable";
   OrderReliablePrint(" attempted close of #" + a_ticket_0 + " price:" + a_price_12 + " lots:" + a_lots_4 + " slippage:" + a_slippage_20);
   if (!IsConnected()) {
      OrderReliablePrint("error: IsConnected() == false");
      gi_unused_2092 = 6;
      return (0);
   }
   if (IsStopped()) {
      OrderReliablePrint("error: IsStopped() == true");
      return (0);
   }
   for (int l_count_28 = 0; !IsTradeAllowed() && FALSE; l_count_28++) OrderReliable_SleepRandomTime(gd_2068, gd_2076);
   if (!IsTradeAllowed()) {
      OrderReliablePrint("error: no operation possible because IsTradeAllowed()==false, even after retries.");
      gi_unused_2092 = 146;
      return (0);
   }
   int l_error_32 = GetLastError();
   l_error_32 = 0;
   gi_unused_2092 = 0;
   bool li_36 = FALSE;
   l_count_28 = 0;
   bool l_ord_close_40 = FALSE;
   while (!li_36) {
      if (IsTradeAllowed()) {
         l_ord_close_40 = OrderClose(a_ticket_0, a_lots_4, a_price_12, a_slippage_20, a_color_24);
         l_error_32 = GetLastError();
         gi_unused_2092 = l_error_32;
      } else l_count_28++;
      if (l_ord_close_40 == 1) li_36 = TRUE;
      switch (l_error_32) {
      case 0/* NO_ERROR */:
         li_36 = TRUE;
         break;
      case 4/* SERVER_BUSY */:
      case 6/* NO_CONNECTION */:
      case 129/* INVALID_PRICE */:
      case 136/* OFF_QUOTES */:
      case 137/* BROKER_BUSY */:
      case 146/* TRADE_CONTEXT_BUSY */:
      case 128/* TRADE_TIMEOUT */:
         l_count_28++;
         break;
      case 135/* PRICE_CHANGED */:
      case 138/* REQUOTE */:
         RefreshRates();
         continue;
         break;
      default:
         li_36 = TRUE;
      }
      if (l_count_28 > gi_2064) li_36 = TRUE;
      if (!li_36) {
         OrderReliablePrint("retryable error (" + l_count_28 + "/" + gi_2064 + "): " + OrderReliableErrTxt(l_error_32));
         OrderReliable_SleepRandomTime(gd_2068, gd_2076);
         RefreshRates();
      }
      if (li_36) {
         if (l_error_32 != 0/* NO_ERROR */ && l_error_32 != 1/* NO_RESULT */) OrderReliablePrint("non-retryable error: " + OrderReliableErrTxt(l_error_32));
         if (l_count_28 > gi_2064) OrderReliablePrint("retry attempts maxed at " + gi_2064);
      }
   }
   if (l_ord_close_40 == 1 || l_error_32 == 0/* NO_ERROR */) {
      OrderReliablePrint("apparently successful modification order, updated trade details follow.");
      OrderSelect(a_ticket_0, SELECT_BY_TICKET, MODE_TRADES);
      return (1);
   }
   OrderReliablePrint("failed to execute close after " + l_count_28 + " retries");
   OrderReliablePrint("failed close: Ticket #" + a_ticket_0 + ", Price: " + a_price_12 + ", Slippage: " + a_slippage_20);
   OrderReliablePrint("last error: " + OrderReliableErrTxt(l_error_32));
   return (0);
}

string OrderReliableErrTxt(int ai_0) {
   return ("" + ai_0 + ":" + ErrorDescription(ai_0));
}

void OrderReliablePrint(string as_unused_0) {
}

string OrderReliable_CommandString(int ai_0) {
   if (ai_0 == 0) return ("OP_BUY");
   if (ai_0 == 1) return ("OP_SELL");
   if (ai_0 == 4) return ("OP_BUYSTOP");
   if (ai_0 == 5) return ("OP_SELLSTOP");
   if (ai_0 == 2) return ("OP_BUYLIMIT");
   if (ai_0 == 3) return ("OP_SELLLIMIT");
   return ("(CMD==" + ai_0 + ")");
}

void OrderReliable_EnsureValidStop(string a_symbol_0, double ad_8, double &ad_16) {
   double ld_24;
   if (ad_16 != 0.0) {
      ld_24 = MarketInfo(a_symbol_0, MODE_STOPLEVEL) / MathPow(10, MarketInfo(a_symbol_0, MODE_DIGITS));
      if (MathAbs(ad_8 - ad_16) <= ld_24) {
         if (ad_8 > ad_16) ad_16 = ad_8 - ld_24;
         else {
            if (ad_8 < ad_16) ad_16 = ad_8 + ld_24;
            else OrderReliablePrint("EnsureValidStop: error, passed in price == sl, cannot adjust");
         }
         ad_16 = NormalizeDouble(ad_16, MarketInfo(a_symbol_0, MODE_DIGITS));
      }
   }
}

void OrderReliable_SleepRandomTime(double ad_0, double ad_8) {
   double ld_16;
   int li_24;
   double ld_28;
   if (IsTesting() == 0) {
      ld_16 = MathCeil(ad_0 / 0.1);
      if (ld_16 > 0.0) {
         li_24 = MathRound(ad_8 / 0.1);
         ld_28 = 1.0 - 1.0 / ld_16;
         Sleep(1000);
         for (int l_count_36 = 0; l_count_36 < li_24; l_count_36++) {
            if (MathRand() > 32768.0 * ld_28) break;
            Sleep(1000);
         }
      }
   }
}

void CheckForClose() {
   int li_0;
   int li_12;
   int l_magic_16;
   double l_ord_open_price_20;
   int l_ticket_32;
   double ld_36;
   int li_28 = 1;
   for (int l_pos_44 = 0; l_pos_44 < OrdersTotal(); l_pos_44++) {
      if (OrderSelect(l_pos_44, SELECT_BY_POS, MODE_TRADES) == FALSE) break;
      l_magic_16 = OrderMagicNumber();
      l_ticket_32 = OrderTicket();
      if (CheckMagigNumber(l_magic_16) == 0 || OrderSymbol() != Symbol()) continue;
      l_ord_open_price_20 = OrderOpenPrice();
      if (OrderType() == OP_BUY) {
         if (l_magic_16 == 395790116) {
            if (g_bool_996 == TRUE) {
               ld_36 = (NormalizeDouble(Bid, 4) - l_ord_open_price_20) / 0.0001;
               if (ld_36 > gd_1024 && ld_36 > gd_1008) {
                  gd_1008 = ld_36;
                  gd_1016 = l_ord_open_price_20 + gd_1000 * (NormalizeDouble(Bid, 4) - l_ord_open_price_20);
               }
               if (gd_1008 > gd_1024 && NormalizeDouble(Bid, 4) <= gd_1016) {
                  if (!IsTesting()) RefreshRates();
                  if (OrderSelect(l_ticket_32, SELECT_BY_TICKET, MODE_TRADES) == TRUE) li_28 = OrderCloseReliable(OrderTicket(), OrderLots(), OrderClosePrice(), gi_1936, Violet);
                  if (li_28 == 0) {
                     AlertIsError(GetLastError());
                     return;
                  }
                  gi_1284 = TRUE;
                  continue;
               }
            }
            if (gi_1152 == TRUE && NormalizeDouble(Bid, 4) <= gd_1144) {
               if (!IsTesting()) RefreshRates();
               if (OrderSelect(l_ticket_32, SELECT_BY_TICKET, MODE_TRADES) == TRUE) li_28 = OrderCloseReliable(OrderTicket(), OrderLots(), OrderClosePrice(), gi_1936, Violet);
               if (li_28 == 0) {
                  AlertIsError(GetLastError());
                  return;
               }
               InitExit(1, gd_1144, 1, l_magic_16);
               FileWriteTradeOutcome(l_ord_open_price_20, OrderClosePrice(), l_magic_16, OrderType());
            } else {
               li_0 = CheckWaveSignal(5, 1);
               if (li_0 == 2) {
                  if (gi_828 == 0 || (gi_828 == 2 && gi_1280 == 2) || NormalizeDouble(Close[0], 4) > OrderOpenPrice()) {
                     if (!IsTesting()) RefreshRates();
                     if (OrderSelect(l_ticket_32, SELECT_BY_TICKET, MODE_TRADES) == TRUE) li_28 = OrderCloseReliable(OrderTicket(), OrderLots(), OrderClosePrice(), gi_1936, Violet);
                     if (li_28 == 0) {
                        AlertIsError(GetLastError());
                        return;
                     }
                     InitExit(1, gd_1144, 2, l_magic_16);
                     FileWriteTradeOutcome(l_ord_open_price_20, OrderClosePrice(), l_magic_16, OrderType());
                     continue;
                  }
                  if (gi_828 == 2 && gi_1280 == 0) {
                     gi_1132 = TRUE;
                     gd_1136 = l_ord_open_price_20 + gi_832 / 10000.0;
                     gi_1272 = FALSE;
                     gi_1280 = 1;
                     continue;
                  }
               }
               if (gi_1132 == TRUE && NormalizeDouble(Bid, 4) > gd_1136 && OrderTakeProfit() == 0.0 || NormalizeDouble(Bid, 4) < OrderTakeProfit()) {
                  if (!IsTesting()) RefreshRates();
                  if (OrderSelect(l_ticket_32, SELECT_BY_TICKET, MODE_TRADES) == TRUE) li_28 = OrderCloseReliable(OrderTicket(), OrderLots(), OrderClosePrice(), gi_1936, Violet);
                  if (li_28 == 0) {
                     AlertIsError(GetLastError());
                     return;
                  }
                  InitExit(1, gd_1144, 0, l_magic_16);
                  FileWriteTradeOutcome(l_ord_open_price_20, OrderClosePrice(), l_magic_16, OrderType());
               }
            }
         } else {
            if (l_magic_16 == 395790115) {
               if (gi_1212 == TRUE && NormalizeDouble(Bid, 4) <= gd_1204) {
                  if (!IsTesting()) RefreshRates();
                  if (OrderSelect(l_ticket_32, SELECT_BY_TICKET, MODE_TRADES) == TRUE) li_28 = OrderCloseReliable(OrderTicket(), OrderLots(), OrderClosePrice(), gi_1936, Violet);
                  if (li_28 == 0) {
                     AlertIsError(GetLastError());
                     return;
                  }
                  InitExit(1, gd_1204, 1, l_magic_16);
                  FileWriteTradeOutcome(l_ord_open_price_20, OrderClosePrice(), l_magic_16, OrderType());
               } else {
                  if (gi_1180 == TRUE && gd_1184 > 0.0 && NormalizeDouble(Bid, 4) - gd_1184 > gd_1204 && gi_820 == 0 || NormalizeDouble(Bid, 4) - gd_1184 > OrderOpenPrice()) {
                     gd_1204 = NormalizeDouble(Bid, 4) - gd_1184;
                     gd_unused_1288 = gd_1204;
                  }
                  if (gi_1120 != TRUE) {
                     if (!IsTesting()) RefreshRates();
                     if (OrderSelect(l_ticket_32, SELECT_BY_TICKET, MODE_TRADES) == TRUE) li_28 = OrderCloseReliable(OrderTicket(), OrderLots(), OrderClosePrice(), gi_1936, Violet);
                     if (li_28 == 0) {
                        AlertIsError(GetLastError());
                        return;
                     }
                     InitExit(1, gd_1204, 4, l_magic_16);
                     FileWriteTradeOutcome(l_ord_open_price_20, OrderClosePrice(), l_magic_16, OrderType());
                  } else {
                     if (gi_1192 == TRUE && NormalizeDouble(Bid, 4) > gd_1196 && OrderTakeProfit() == 0.0 || NormalizeDouble(Bid, 4) < OrderTakeProfit()) {
                        if (!IsTesting()) RefreshRates();
                        if (OrderSelect(l_ticket_32, SELECT_BY_TICKET, MODE_TRADES) == TRUE) li_28 = OrderCloseReliable(OrderTicket(), OrderLots(), OrderClosePrice(), gi_1936, Violet);
                        if (li_28 == 0) {
                           AlertIsError(GetLastError());
                           return;
                        }
                        InitExit(1, gd_1204, 0, l_magic_16);
                        FileWriteTradeOutcome(l_ord_open_price_20, OrderClosePrice(), l_magic_16, OrderType());
                     } else {
                        if (gi_1224 == TRUE && NormalizeDouble(Bid, 4) <= gd_1216) {
                           gi_1192 = TRUE;
                           gd_1196 = l_ord_open_price_20 + gd_144 / 10000.0;
                           gi_1276 = FALSE;
                        }
                     }
                  }
               }
            } else {
               if (CheckSwingMagigNumber(l_magic_16) == 1) {
                  li_12 = ReturnSwingMagigNumber(l_magic_16);
                  if (gba_1168[li_12] == 1 && NormalizeDouble(Bid, 4) <= gda_1164[li_12]) {
                     if (!IsTesting()) RefreshRates();
                     if (OrderSelect(l_ticket_32, SELECT_BY_TICKET, MODE_TRADES) == TRUE) li_28 = OrderCloseReliable(OrderTicket(), OrderLots(), OrderClosePrice(), gi_1936, Violet);
                     if (li_28 == 0) {
                        AlertIsError(GetLastError());
                        return;
                     }
                     InitExit(1, gda_1164[li_12], 1, l_magic_16);
                     FileWriteTradeOutcome(l_ord_open_price_20, OrderClosePrice(), l_magic_16, OrderType());
                  } else {
                     if (gba_1176[li_12] == 1 && NormalizeDouble(Bid, 4) <= gda_1172[li_12]) {
                        gba_1156[li_12] = 1;
                        gda_1160[li_12] = l_ord_open_price_20 + gi_280 / 10000.0;
                     } else {
                        if (gba_1156[li_12] == 1 && NormalizeDouble(Bid, 4) >= gda_1160[li_12] && OrderTakeProfit() == 0.0 || NormalizeDouble(Bid, 4) < OrderTakeProfit()) {
                           if (!IsTesting()) RefreshRates();
                           if (OrderSelect(l_ticket_32, SELECT_BY_TICKET, MODE_TRADES) == TRUE) li_28 = OrderCloseReliable(OrderTicket(), OrderLots(), OrderClosePrice(), gi_1936, Violet);
                           if (li_28 == 0) {
                              AlertIsError(GetLastError());
                              return;
                           }
                           InitExit(1, gda_1164[li_12], 0, l_magic_16);
                           FileWriteTradeOutcome(l_ord_open_price_20, OrderClosePrice(), l_magic_16, OrderType());
                        }
                     }
                  }
               }
            }
         }
      } else {
         if (OrderType() == OP_SELL) {
            if (l_magic_16 == 395790116) {
               if (g_bool_996 == TRUE) {
                  ld_36 = (l_ord_open_price_20 - NormalizeDouble(Ask, 4)) / 0.0001;
                  if (ld_36 > gd_1024 && ld_36 > gd_1008) {
                     gd_1008 = ld_36;
                     gd_1016 = l_ord_open_price_20 + gd_1000 * (NormalizeDouble(Ask, 4) - l_ord_open_price_20);
                  }
                  if (gd_1008 > gd_1024 && NormalizeDouble(Ask, 4) >= gd_1016) {
                     if (!IsTesting()) RefreshRates();
                     if (OrderSelect(l_ticket_32, SELECT_BY_TICKET, MODE_TRADES) == TRUE) li_28 = OrderCloseReliable(OrderTicket(), OrderLots(), OrderClosePrice(), gi_1936, Violet);
                     if (li_28 == 0) {
                        AlertIsError(GetLastError());
                        return;
                     }
                     gi_1284 = TRUE;
                     continue;
                  }
               }
               if (gi_1152 == TRUE && NormalizeDouble(Ask, 4) >= gd_1144) {
                  if (!IsTesting()) RefreshRates();
                  if (OrderSelect(l_ticket_32, SELECT_BY_TICKET, MODE_TRADES) == TRUE) li_28 = OrderCloseReliable(OrderTicket(), OrderLots(), OrderClosePrice(), gi_1936, Violet);
                  if (li_28 == 0) {
                     AlertIsError(GetLastError());
                     return;
                  }
                  InitExit(2, gd_1144, 1, l_magic_16);
                  FileWriteTradeOutcome(l_ord_open_price_20, OrderClosePrice(), l_magic_16, OrderType());
               } else {
                  li_0 = CheckWaveSignal(5, 2);
                  if (li_0 == 1) {
                     if (gi_828 == 0 || (gi_828 == 2 && gi_1280 == 2) || NormalizeDouble(Close[0], 4) < OrderOpenPrice()) {
                        if (!IsTesting()) RefreshRates();
                        if (OrderSelect(l_ticket_32, SELECT_BY_TICKET, MODE_TRADES) == TRUE) li_28 = OrderCloseReliable(OrderTicket(), OrderLots(), OrderClosePrice(), gi_1936, Violet);
                        if (li_28 == 0) {
                           AlertIsError(GetLastError());
                           return;
                        }
                        InitExit(2, gd_1144, 2, l_magic_16);
                        FileWriteTradeOutcome(l_ord_open_price_20, OrderClosePrice(), l_magic_16, OrderType());
                        continue;
                     }
                     if (gi_828 == 2 && gi_1280 == 0) {
                        gi_1132 = TRUE;
                        gd_1136 = l_ord_open_price_20 - gi_832 / 10000.0;
                        gi_1272 = FALSE;
                        gi_1280 = 1;
                        continue;
                     }
                  }
                  if (gi_1132 == TRUE && NormalizeDouble(Ask, 4) < gd_1136 && OrderTakeProfit() == 0.0 || NormalizeDouble(Ask, 4) > OrderTakeProfit()) {
                     if (!IsTesting()) RefreshRates();
                     if (OrderSelect(l_ticket_32, SELECT_BY_TICKET, MODE_TRADES) == TRUE) li_28 = OrderCloseReliable(OrderTicket(), OrderLots(), OrderClosePrice(), gi_1936, Violet);
                     if (li_28 == 0) {
                        AlertIsError(GetLastError());
                        return;
                     }
                     InitExit(2, gd_1144, 0, l_magic_16);
                     FileWriteTradeOutcome(l_ord_open_price_20, OrderClosePrice(), l_magic_16, OrderType());
                  }
               }
            } else {
               if (l_magic_16 == 395790115) {
                  if (gi_1212 == TRUE && NormalizeDouble(Ask, 4) >= gd_1204) {
                     if (!IsTesting()) RefreshRates();
                     if (OrderSelect(l_ticket_32, SELECT_BY_TICKET, MODE_TRADES) == TRUE) li_28 = OrderCloseReliable(OrderTicket(), OrderLots(), OrderClosePrice(), gi_1936, Violet);
                     if (li_28 == 0) {
                        AlertIsError(GetLastError());
                        return;
                     }
                     InitExit(2, gd_1204, 1, l_magic_16);
                     FileWriteTradeOutcome(l_ord_open_price_20, OrderClosePrice(), l_magic_16, OrderType());
                  } else {
                     if (gi_1180 == TRUE && gd_1184 > 0.0 && NormalizeDouble(Ask, 4) + gd_1184 < gd_1204 && gi_820 == 0 || NormalizeDouble(Ask, 4) + gd_1184 < OrderOpenPrice()) {
                        gd_1204 = NormalizeDouble(Ask, 4) + gd_1184;
                        gd_unused_1288 = gd_1204;
                     }
                     if (gi_1120 != TRUE) {
                        if (!IsTesting()) RefreshRates();
                        if (OrderSelect(l_ticket_32, SELECT_BY_TICKET, MODE_TRADES) == TRUE) li_28 = OrderCloseReliable(OrderTicket(), OrderLots(), OrderClosePrice(), gi_1936, Violet);
                        if (li_28 == 0) {
                           AlertIsError(GetLastError());
                           return;
                        }
                        InitExit(2, gd_1204, 4, l_magic_16);
                        FileWriteTradeOutcome(l_ord_open_price_20, OrderClosePrice(), l_magic_16, OrderType());
                     } else {
                        if (gi_1192 == TRUE && NormalizeDouble(Ask, 4) < gd_1196 && OrderTakeProfit() == 0.0 || NormalizeDouble(Ask, 4) > OrderTakeProfit()) {
                           if (!IsTesting()) RefreshRates();
                           if (OrderSelect(l_ticket_32, SELECT_BY_TICKET, MODE_TRADES) == TRUE) li_28 = OrderCloseReliable(OrderTicket(), OrderLots(), OrderClosePrice(), gi_1936, Violet);
                           if (li_28 == 0) {
                              AlertIsError(GetLastError());
                              return;
                           }
                           InitExit(2, gd_1204, 0, l_magic_16);
                           FileWriteTradeOutcome(l_ord_open_price_20, OrderClosePrice(), l_magic_16, OrderType());
                        } else {
                           if (gi_1224 == TRUE && NormalizeDouble(Ask, 4) > gd_1216) {
                              gi_1192 = TRUE;
                              gd_1196 = l_ord_open_price_20 - gd_144 / 10000.0;
                              gi_1276 = FALSE;
                           }
                        }
                     }
                  }
               } else {
                  if (CheckSwingMagigNumber(l_magic_16) == 1) {
                     li_12 = ReturnSwingMagigNumber(l_magic_16);
                     if (gba_1168[li_12] == 1 && NormalizeDouble(Ask, 4) >= gda_1164[li_12]) {
                        if (!IsTesting()) RefreshRates();
                        if (OrderSelect(l_ticket_32, SELECT_BY_TICKET, MODE_TRADES) == TRUE) li_28 = OrderCloseReliable(OrderTicket(), OrderLots(), OrderClosePrice(), gi_1936, Violet);
                        if (li_28 == 0) {
                           AlertIsError(GetLastError());
                           return;
                        }
                        InitExit(2, gda_1164[li_12], 1, l_magic_16);
                        FileWriteTradeOutcome(l_ord_open_price_20, OrderClosePrice(), l_magic_16, OrderType());
                     } else {
                        if (gba_1176[li_12] == 1 && NormalizeDouble(Ask, 4) >= gda_1172[li_12]) {
                           gba_1156[li_12] = 1;
                           gda_1160[li_12] = l_ord_open_price_20 - gi_280 / 10000.0;
                        } else {
                           if (gba_1156[li_12] == 1 && NormalizeDouble(Ask, 4) <= gda_1160[li_12] && OrderTakeProfit() == 0.0 || NormalizeDouble(Ask, 4) > OrderTakeProfit()) {
                              if (!IsTesting()) RefreshRates();
                              if (OrderSelect(l_ticket_32, SELECT_BY_TICKET, MODE_TRADES) == TRUE) li_28 = OrderCloseReliable(OrderTicket(), OrderLots(), OrderClosePrice(), gi_1936, Violet);
                              if (li_28 == 0) {
                                 AlertIsError(GetLastError());
                                 return;
                              }
                              InitExit(2, gda_1164[li_12], 0, l_magic_16);
                              FileWriteTradeOutcome(l_ord_open_price_20, OrderClosePrice(), l_magic_16, OrderType());
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

void InitExit(int ai_0, double ad_4, int ai_12, int ai_16) {
   int li_20;
   if (ai_16 == 395790116) {
      if (ai_12 == 0 && gi_1272 == TRUE && gi_476 > 0) {
         gi_1248 = TRUE;
         gi_1260 = ai_0;
      } else {
         if (ai_12 == 1 && gi_1244 == TRUE) {
            gi_1248 = TRUE;
            gi_1260 = ai_0;
            gd_1136 = ad_4;
            gd_1252 = gd_1264;
         }
      }
      gi_1244 = FALSE;
      gi_1152 = FALSE;
      gi_1132 = FALSE;
      return;
   }
   if (ai_16 == 395790115) {
      if (ai_12 == 0 && gi_1276 == TRUE) {
         gi_1308 = TRUE;
         gi_1320 = ai_0;
      }
      gi_unused_1304 = 0;
      gi_1212 = FALSE;
      gi_1192 = FALSE;
      gi_1180 = FALSE;
      return;
   }
   if (CheckSwingMagigNumber(ai_16) == 1) {
      li_20 = ReturnSwingMagigNumber(ai_16);
      gba_1168[li_20] = 0;
      gba_1156[li_20] = 0;
   }
}

int start() {
   int li_4;
   int li_8;
   int lia_12[];
   int li_16;
   double lda_28[];
   int l_arr_size_36;
   bool li_20 = TRUE;
   bool li_24 = TRUE;
   if (gi_1884 == TRUE) {
      if (!IsTesting()) PrintOnChart(1, gi_1884, gi_1880);
   } else {
      g_error_1892 = GetLastError();
      CheckErrorHandling();
      if (!IsTesting()) PrintOnChart(1, gi_1884, gi_1880);
      if (gi_1880 != TRUE) {
         if (g_year_1408 != TimeYear(TimeCurrent()) || (TimeCurrent() > gi_1924 && gi_1928 == FALSE) && 1) {
            if (TimeCurrent() > gi_1924) gi_1928 = TRUE;
            DefineParameters();
            g_year_1408 = TimeYear(TimeCurrent());
            InitPhase(0);
         }
         ArrayResize(lia_12, gi_1572);
         g_error_1892 = GetLastError();
         if (g_error_1892 != 0/* NO_ERROR */ && 0) {
            AlertIsError(g_error_1892);
            Print("Start, before OpenOrders");
         }
         li_4 = CalculateCurrentOrders(Symbol(), 395790115);
         li_8 = CalculateCurrentOrders(Symbol(), 395790116);
         for (int l_index_0 = 0; l_index_0 < gi_1572; l_index_0++) {
            lia_12[l_index_0] = CalculateCurrentOrders(Symbol(), gia_76[l_index_0]);
            li_16 += lia_12[l_index_0];
         }
         if (gi_1068 == TRUE && DayOfWeek() == 5 || DayOfWeek() == 6) {
            li_24 = FALSE;
            if (li_4 + li_8 + li_16 == 0) return;
         }
         if (g_datetime_1404 != iTime(NULL, PERIOD_W1, 0)) {
            ArrayResize(lda_28, gi_1348);
            l_arr_size_36 = ArraySize(lda_28);
            ArraySetAsSeries(lda_28, TRUE);
            for (int li_32 = 0; li_32 < l_arr_size_36; li_32++) lda_28[li_32] = iVolume(NULL, PERIOD_M1, li_32);
            g_ima_on_arr_1332 = iMAOnArray(lda_28, l_arr_size_36, 100, 0, MODE_SMA, 0);
            for (li_32 = 0; li_32 < l_arr_size_36; li_32++) lda_28[li_32] = iVolume(NULL, PERIOD_M5, li_32);
            g_ima_on_arr_1340 = iMAOnArray(lda_28, l_arr_size_36, 100, 0, MODE_SMA, 0);
            if (g_timeframe_592 == PERIOD_M1) g_ima_on_arr_1352 = g_ima_on_arr_1332;
            else
               if (g_timeframe_592 == PERIOD_M5) g_ima_on_arr_1352 = g_ima_on_arr_1340;
         }
         CheckStateSingleShot();
         RecognizeWaves();
         for (l_index_0 = 0; l_index_0 < gi_1572; l_index_0++) RecognizeSwing(l_index_0);
         if ((li_20 == TRUE && 0) || 1 && li_24 == TRUE && li_4 == 0 && gi_1944 == FALSE) CheckForOpenSingleShot();
         if ((li_20 == TRUE && 0) || 1 && li_24 == TRUE && li_8 == 0 && gi_1944 == FALSE) CheckForOpenICWR();
         for (l_index_0 = 0; l_index_0 < gi_1572; l_index_0++) {
            if ((li_20 == TRUE && 0) || 1)
               if (lia_12[l_index_0] == 0 && li_24 == TRUE && gi_1944 == FALSE) CheckForOpenSwing(l_index_0);
         }
         if (li_4 + li_8 + li_16 > 0) CheckForClose();
         if (gi_1940 == TRUE) {
            g_datetime_1400 = iTime(NULL, PERIOD_D1, 0);
            gi_1940 = FALSE;
         }
         if (gi_1944 == TRUE) {
            if (g_datetime_1392 != iTime(NULL, PERIOD_M1, 0)) gi_1948--;
            if (gi_1948 <= 0) gi_1944 = FALSE;
         }
         if (!IsTesting() && g_datetime_1400 != iTime(NULL, PERIOD_D1, 0)) {
            if (gi_468 == 1 && 1) FindLevels(395790116);
            if (gi_184 >= 2 && 1) FindLevels(395790115);
         }
         g_datetime_1392 = iTime(NULL, PERIOD_M1, 0);
         g_datetime_1396 = iTime(NULL, PERIOD_M5, 0);
         g_datetime_1400 = iTime(NULL, PERIOD_D1, 0);
         g_datetime_1404 = iTime(NULL, PERIOD_W1, 0);
         gi_1124 = gi_1120;
      }
   }
   return (0);
}

int deinit() {
   if (gi_1884 != TRUE) {
      if (gi_1932 == TRUE) {
         FileClose(g_file_1856);
         FileClose(g_file_1868);
      }
      return (0);
   }
}

int init() {
   int l_digits_0;
   HideTestIndicators(TRUE);
   g_count_1920 = 0;
   gi_1884 = FALSE;
   CheckErrorHandlingInit();
   if (!IsTesting()) PrintOnChart(0, gi_1884, gi_1880);
   if (!IsTesting()) Sleep(1000);
   if (gi_1884 != TRUE) {
      if (Hedging == FALSE) gi_88 = TRUE;
      else gi_88 = FALSE;
      DefineParameters();
      g_year_1408 = TimeYear(TimeCurrent());
      if (TimeCurrent() > gi_1924) gi_1928 = TRUE;
      gda_1060[0] = gd_880;
      gda_1060[1] = gd_888;
      gda_1060[2] = gd_896;
      g_bool_996 = ProfitProtect;
      g_file_1856 = -1;
      g_file_1860 = -1;
      g_file_1864 = -1;
      g_file_1868 = -1;
      gi_1932 = FALSE;
      if (gi_1932 == TRUE) {
         g_file_1856 = FileOpen("test.txt", FILE_WRITE|FILE_READ, ';');
         Print("handlerss: ", g_file_1856);
         g_file_1868 = FileOpen("singleshot.txt", FILE_CSV|FILE_WRITE, ';');
         Print("handlerss4: ", g_file_1868);
      }
      gi_unused_1888 = 0;
      g_minlot_1872 = MarketInfo(Symbol(), MODE_MINLOT);
      l_digits_0 = MarketInfo("EURUSD", MODE_DIGITS);
      gi_1936 = 3;
      if (l_digits_0 > 4) gi_1936 = 10 * (gi_1936 * (l_digits_0 - 4));
      gia_1056[0] = 30;
      gia_1056[1] = 120;
      gia_1056[2] = 60;
      gsa_1064[0] = "ForexDerivative_File1.txt";
      gsa_1064[1] = "ForexDerivative_File2.txt";
      gsa_1064[2] = "ForexDerivative_File3.txt";
      gd_unused_1912 = 0;
      InitPhase(1);
      if (!IsTesting()) InitPhaseCheckOpenPositions();
      CheckMinLotForMoneyManagement();
      if (!IsTesting()) PrintOnChart(0, gi_1884, gi_1880);
      if (!IsTesting()) Sleep(1000);
      if (gi_1884 != TRUE) {
      }
   }
   return (0);
}

void InitPhase(int ai_0) {
   double ld_8;
   int li_20;
   int li_24;
   int lia_28[];
   int li_32;
   double lda_36[];
   if (ai_0 == 0) {
      li_20 = CalculateCurrentOrders(Symbol(), 395790115);
      li_24 = CalculateCurrentOrders(Symbol(), 395790116);
      for (int l_index_4 = 0; l_index_4 < gi_1572; l_index_4++) {
         lia_28[l_index_4] = CalculateCurrentOrders(Symbol(), gia_76[l_index_4]);
         li_32 += lia_28[l_index_4];
      }
      if (li_20 + li_24 + li_32 > 0) ClosePositions();
   }
   gi_1124 = FALSE;
   gsa_1128[0] = "FSM_UNDEFINED";
   gsa_1128[1] = "FSM_SINGLE_SHOT";
   ArrayResize(lda_36, gi_1348);
   int l_arr_size_44 = ArraySize(lda_36);
   ArraySetAsSeries(lda_36, TRUE);
   for (int li_40 = 0; li_40 < l_arr_size_44; li_40++) lda_36[li_40] = iVolume(NULL, PERIOD_M1, li_40);
   g_ima_on_arr_1332 = iMAOnArray(lda_36, l_arr_size_44, 100, 0, MODE_SMA, 0);
   for (li_40 = 0; li_40 < l_arr_size_44; li_40++) lda_36[li_40] = iVolume(NULL, PERIOD_M5, li_40);
   g_ima_on_arr_1340 = iMAOnArray(lda_36, l_arr_size_44, 100, 0, MODE_SMA, 0);
   if (g_timeframe_592 == PERIOD_M1) g_ima_on_arr_1352 = g_ima_on_arr_1332;
   else
      if (g_timeframe_592 == PERIOD_M5) g_ima_on_arr_1352 = g_ima_on_arr_1340;
   gi_unused_1420 = 0;
   gi_1424 = FALSE;
   gd_1428 = 0;
   gi_1436 = FALSE;
   gd_1440 = 0;
   gd_unused_1448 = 0;
   gi_1464 = 0;
   gi_1472 = FALSE;
   gi_1476 = 0;
   gi_1480 = 0;
   g_count_1484 = 0;
   g_count_1488 = 0;
   gd_1492 = 0;
   gd_1500 = 0;
   gi_1508 = 0;
   gd_1512 = 0;
   g_count_1520 = 0;
   gd_1524 = 0;
   gd_1676 = 0;
   gd_1684 = 0;
   gd_1692 = 0;
   gd_1700 = 0;
   gi_1708 = FALSE;
   gi_1712 = FALSE;
   gi_1716 = FALSE;
   gi_1720 = FALSE;
   g_count_1724 = 0;
   g_count_1728 = 0;
   g_count_1732 = 0;
   g_count_1736 = 0;
   g_count_1744 = 0;
   g_count_1748 = 0;
   g_count_1752 = 0;
   g_count_1756 = 0;
   gd_1760 = 0;
   gd_1768 = 0;
   gd_1776 = 0;
   gd_1784 = 0;
   gd_1800 = 0;
   gd_1808 = 0;
   gi_1816 = FALSE;
   gi_unused_1820 = 0;
   gd_1824 = 0;
   gd_1832 = 0;
   gd_1840 = 0;
   gd_1848 = 0;
   if (g_timeframe_592 == PERIOD_M1) gi_1740 = gi_780;
   else
      if (g_timeframe_592 == PERIOD_M5) gi_1740 = MathRound(gi_780 / 5);
   gd_1612 = 0.5 - gd_608;
   gd_1620 = gd_608 + 0.5;
   gd_1628 = 0.5 - gd_616;
   gd_1636 = gd_616 + 0.5;
   gd_1792 = 500000.0;
   if (gd_688 == 1.0) gd_696 = 60;
   else {
      if (gd_688 == 2.0) gd_696 = 240;
      else
         if (gd_688 == 3.0) gd_696 = 1440;
   }
   if (gd_688 == 1.0) gd_680 = gd_672;
   else {
      if (gd_688 == 2.0) gd_680 = 50.0 * gd_672 / 75.0;
      else
         if (gd_688 == 3.0) gd_680 = 50.0 * gd_672 / 100.0;
   }
   RecognizeWavesInit();
   if (gi_196 != 0) gi_1572 = (gi_192 - gi_188) / gi_196 + 1;
   else gi_1572 = 1;
   if (gi_1572 > 6) {
      Print("ERROR");
      gi_1880 = TRUE;
      return;
   }
   ArrayResize(gia_76, gi_1572);
   for (l_index_4 = 0; l_index_4 < gi_1572; l_index_4++) gia_76[l_index_4] = l_index_4 + 395790117;
   ArrayResize(gba_1576, gi_1572);
   ArrayResize(gia_1584, gi_1572);
   ArrayResize(gia_1580, gi_1572);
   ArrayResize(gia_1588, gi_1572);
   ArrayResize(gia_1592, gi_1572);
   ArrayResize(gda_1596, gi_1572);
   ArrayResize(gda_1600, gi_1572);
   ArrayResize(gda_1604, gi_1572);
   ArrayResize(gia_1608, gi_1572);
   ArrayResize(gba_1156, gi_1572);
   ArrayResize(gda_1160, gi_1572);
   ArrayResize(gda_1164, gi_1572);
   ArrayResize(gba_1168, gi_1572);
   ArrayResize(gda_1172, gi_1572);
   ArrayResize(gba_1176, gi_1572);
   ArrayResize(gia_1564, gi_1572);
   ArrayResize(gia_1568, gi_1572);
   ArrayResize(gba_1536, gi_1572);
   ArrayResize(gda_228, gi_1572);
   for (l_index_4 = 0; l_index_4 < gi_1572; l_index_4++) {
      ld_8 = gi_188 + gi_196 * l_index_4;
      if (g_timeframe_216 == PERIOD_M1) gia_1608[l_index_4] = ld_8;
      else
         if (g_timeframe_216 == PERIOD_M5) gia_1608[l_index_4] = MathRound(ld_8 / 5.0);
   }
   for (l_index_4 = 0; l_index_4 < gi_1572; l_index_4++) RecognizeSwingInit(l_index_4);
   if (gi_344 == 1) g_timeframe_348 = 5;
   else {
      if (gi_344 == 2) g_timeframe_348 = 60;
      else {
         if (gi_344 == 3) g_timeframe_348 = 240;
         else
            if (gi_344 == 4) g_timeframe_348 = 1440;
      }
   }
   if (gi_312 == 1) g_timeframe_316 = 5;
   else {
      if (gi_312 == 2) g_timeframe_316 = 60;
      else {
         if (gi_312 == 3) g_timeframe_316 = 240;
         else
            if (gi_312 == 4) g_timeframe_316 = 1440;
      }
   }
   gia_1360[0] = 1;
   gia_1360[1] = 5;
   gia_1360[2] = 60;
   gia_1360[3] = 1440;
   gia_1380[0] = 0;
   gia_1380[1] = 0;
   gia_1380[2] = 0;
   gia_1380[3] = 0;
   gia_1384[0] = 0;
   gia_1384[1] = 0;
   gia_1384[2] = 0;
   gia_1384[3] = 0;
   if (gi_516 == 1) g_timeframe_520 = 5;
   else {
      if (gi_516 == 2) g_timeframe_520 = 60;
      else {
         if (gi_516 == 3) g_timeframe_520 = 240;
         else
            if (gi_516 == 4) g_timeframe_520 = 1440;
      }
   }
   g_period_492 = gd_484;
   g_period_508 = gd_500 * g_period_492;
   if (gi_552 == 1) g_timeframe_556 = 5;
   else {
      if (gi_552 == 2) g_timeframe_556 = 60;
      else {
         if (gi_552 == 3) g_timeframe_556 = 240;
         else
            if (gi_552 == 4) g_timeframe_556 = 1440;
      }
   }
   if (gi_568 == 1) {
      g_timeframe_572 = 5;
      return;
   }
   if (gi_568 == 2) {
      g_timeframe_572 = 60;
      return;
   }
   if (gi_568 == 3) {
      g_timeframe_572 = 240;
      return;
   }
   if (gi_568 == 4) g_timeframe_572 = 1440;
}