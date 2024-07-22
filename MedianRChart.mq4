
#property copyright "Copyright © 2010-2012, NiX"
#property link      "http://www.az-invest.eu"

#property indicator_chart_window
#property indicator_buffers 1
#property indicator_color1 Black

#import "MedianRenkoEngine.dll"
   int initDLL(int a0, int a1);
   string getDLLVer(int a0);
   int updateDW(int a0);
   int updateT1(int a0, int a1);
   int processHistoryBar4RenkoMedian(double a0, double& a1[], double& a2[], double& a3[], double& a4[], int a5);
#import

extern double RenkoBoxSizeInPips = 10.0;
extern int OfflineTimeFrame = 3;
extern bool resetOpenOnNewSession = TRUE;
extern int session_start_MM = 0;
extern int session_start_HH = 0;
extern int RenderUsing1MhistoryBars = 0;
extern bool RefreshChartOnAskPriceChange = FALSE;
extern bool RefreshOnHistoryUpdates = FALSE;
extern bool UseSoundSignalOnNewBar = FALSE;
extern bool DisableComment = FALSE;
extern string SoundFile = "clock_tick.wav";
int g_file_128 = -1;
int gi_unused_132 = 0;
int gi_unused_136 = 0;
double g_iclose_140 = 0.0;
double g_iclose_148 = 0.0;
double g_iclose_156 = 0.0;
double g_iclose_164 = 0.0;
double gd_172 = 0.0;
double gda_180[5] = {0, 0, 0, 0, 0};
string g_dbl2str_184 = "1.0";
int gi_192;
int gi_196 = 0;
int gi_200 = 400;
string gs_204;
string gs_212;
int gi_220;
int g_digits_224;
int gia_228[13];
double gd_232 = 0.0;
double g_iclose_240;
double gd_248 = 0.0;
bool gi_256 = FALSE;
bool gi_260 = FALSE;
bool gi_264 = FALSE;
bool gi_unused_268 = FALSE;
int gi_272 = 0;
int gi_276 = 0;
string g_name_280 = "RB_title";
string g_name_288 = "RB_underline";
int gi_296 = 20;
string gsa_300[20] = {"RB_aux1", "RB_aux2", "RB_aux3", "RB_aux4", "RB_aux5", "RB_aux6", "RB_aux7", "RB_aux8", "RB_aux9", "RB_aux10", "RB_aux11", "RB_aux12", "RB_aux13", "RB_aux14", "RB_aux15",
      "RB_aux16", "RB_aux17", "RB_aux18", "RB_aux19", "RB_aux20"};
bool gi_unused_304 = FALSE;
double g_iclose_308;
bool gi_316 = FALSE;
int gi_320;

double f0_4() {
   double lda_0[6] = {1, 10, 100, 1000, 10000, 100000};
   if (Digits > 0) return (0.1 / (lda_0[Digits - 1]));
   if (Digits == 0) return (1);
   return (0.0);
}

int init() {
   string ls_4;
   int li_ret_0 = initDLL(0, WindowHandle(Symbol(), Period()));
   if (li_ret_0 == 0) {
      Alert("Plug-in not activated or trial period over...");
      gi_264 = TRUE;
      return (li_ret_0);
   }
   if (li_ret_0 == 1) {
      ls_4 = getDLLVer(3);
      if (ls_4 == "20120818.1") {
         Print("MedianRenko Plug-in " + "1.04  " + " [" + getDLLVer(3) + "] initialized (OK)");
         gi_264 = FALSE;
      } else {
         Alert("Error - Incorrect DLL Version!");
         gi_264 = TRUE;
         return (0);
      }
   }
   return (0);
}

int f0_5(string as_unused_0 = "", int ai_unused_8 = 0) {
   g_dbl2str_184 = DoubleToStr(RenkoBoxSizeInPips, 1);
   if (Digits % 2 > 0) RenkoBoxSizeInPips = 10.0 * RenkoBoxSizeInPips;
   if (f0_4() != MarketInfo(Symbol(), MODE_TICKSIZE)) RenkoBoxSizeInPips /= MarketInfo(Symbol(), MODE_TICKSIZE);
   if (!DisableComment) {
      if (ObjectFind(g_name_280) == -1) ObjectCreate(g_name_280, OBJ_LABEL, 0, 0, 0);
      if (ObjectFind(g_name_288) == -1) ObjectCreate(g_name_288, OBJ_LABEL, 0, 0, 0);
      ObjectSetText(g_name_280, "MedianRenko Plugin v" + "1.04  " + " for MT4 (c)2012 NiX", 11, "Terminal", RoyalBlue);
      ObjectSet(g_name_280, OBJPROP_CORNER, 0);
      ObjectSet(g_name_280, OBJPROP_XDISTANCE, 5);
      ObjectSet(g_name_280, OBJPROP_YDISTANCE, 20);
      ObjectSetText(g_name_288, "______________________________________________", 11, "Terminal", Blue);
      ObjectSet(g_name_288, OBJPROP_CORNER, 0);
      ObjectSet(g_name_288, OBJPROP_XDISTANCE, 5);
      ObjectSet(g_name_288, OBJPROP_YDISTANCE, 25);
   }
   gs_212 = Symbol();
   gi_220 = OfflineTimeFrame;
   g_digits_224 = Digits;
   switch (OfflineTimeFrame) {
   case 0:
   case 1:
   case 5:
   case 15:
   case 30:
   case 60:
   case 240:
   case 1440:
   case 10080:
   case 43200:
      Alert(OfflineTimeFrame + " is a Metatrader4 reserver time frame. Please choose a different value (i.e. 2,3,4,6,7,8,9,10.... Exiting...");
      gi_260 = TRUE;
      return (0);
   }
   if (!IsDllsAllowed()) Alert("The live renko feed will not work if DLL calls are disabled!");
   if (!DisableComment) {
      while (ObjectFind(gsa_300[gi_276]) == 0) gi_276++;
      if (gi_276 >= gi_296) {
         Alert("Plug-in limit reached. Exiting...");
         gi_260 = TRUE;
         return (0);
      }
      ObjectCreate(gsa_300[gi_276], OBJ_LABEL, 0, 0, 0);
      ObjectSetText(gsa_300[gi_276], g_dbl2str_184 + " pip renko bars @ offline " + Symbol() + ",M" + OfflineTimeFrame, 11, "Terminal", Gray);
      ObjectSet(gsa_300[gi_276], OBJPROP_CORNER, 0);
      ObjectSet(gsa_300[gi_276], OBJPROP_XDISTANCE, 5);
      ObjectSet(gsa_300[gi_276], OBJPROP_YDISTANCE, 13 * gi_276 + 40);
   }
   DisableComment = TRUE;
   gd_232 = NormalizeDouble(RenkoBoxSizeInPips * Point, Digits);
   if (RenkoBoxSizeInPips <= 0.0) return (0);
   gi_256 = FALSE;
   return (f0_7());
}

int deinit() {
   if (g_file_128 >= 0) {
      FileClose(g_file_128);
      g_file_128 = -1;
   }
   int count_0 = 0;
   for (int index_4 = 0; index_4 < gi_296; index_4++)
      if (ObjectFind(gsa_300[index_4]) == 0) count_0++;
   ObjectDelete(gsa_300[gi_276]);
   if (count_0 == 1) {
      ObjectDelete(g_name_280);
      ObjectDelete(g_name_288);
   }
   if (gi_264 == TRUE) Comment("");
   return (0);
}

int f0_7() {
   int datetime_8;
   if (g_file_128 >= 0) {
      FileFlush(g_file_128);
      FileClose(g_file_128);
      g_file_128 = -1;
      gi_unused_132 = 0;
   }
   g_file_128 = FileOpenHistory(gs_212 + gi_220 + ".hst", FILE_BIN|FILE_WRITE);
   if (g_file_128 < 0) return (-1);
   gs_204 = "(C)opyright 2011, NiX";
   FileWriteInteger(g_file_128, gi_200, LONG_VALUE);
   FileWriteString(g_file_128, gs_204, 64);
   FileWriteString(g_file_128, gs_212, 12);
   FileWriteInteger(g_file_128, gi_220, LONG_VALUE);
   FileWriteInteger(g_file_128, g_digits_224, LONG_VALUE);
   FileWriteInteger(g_file_128, 0, LONG_VALUE);
   FileWriteInteger(g_file_128, 0, LONG_VALUE);
   FileWriteArray(g_file_128, gia_228, 0, 13);
   FileFlush(g_file_128);
   gda_180[0] = 0;
   gda_180[1] = 0;
   gda_180[2] = 0;
   gda_180[3] = 0;
   gda_180[4] = 0;
   gi_196 = FALSE;
   f0_3();
   int li_0 = 0;
   int li_4 = iBars(Symbol(), PERIOD_M1);
   if (li_4 > RenderUsing1MhistoryBars) {
      if (RenderUsing1MhistoryBars == 0) li_0 = li_4;
      else li_0 = RenderUsing1MhistoryBars;
   } else li_0 = li_4;
   li_0--;
   for (gi_192 = li_0; gi_192 > 0; gi_192--) {
      gd_248 += iVolume(Symbol(), PERIOD_M1, gi_192);
      datetime_8 = iTime(Symbol(), Period(), gi_192);
      if (resetOpenOnNewSession) {
         if (f0_2(datetime_8)) {
            f0_0(datetime_8, g_iclose_140, g_iclose_148, g_iclose_156, g_iclose_164, gd_172, 1);
            f0_3();
         }
      }
      f0_1(datetime_8, iOpen(Symbol(), PERIOD_M1, gi_192), iLow(Symbol(), PERIOD_M1, gi_192), iHigh(Symbol(), PERIOD_M1, gi_192), iClose(Symbol(), PERIOD_M1, gi_192), gd_248,
         1);
   }
   RefreshRates();
   gi_256 = TRUE;
   gi_260 = FALSE;
   gd_248 += iVolume(Symbol(), PERIOD_M1, 0);
   f0_1(iTime(Symbol(), PERIOD_M1, 0), iOpen(Symbol(), PERIOD_M1, 0), iLow(Symbol(), PERIOD_M1, 0), iHigh(Symbol(), PERIOD_M1, 0), iClose(Symbol(), PERIOD_M1, 0), gd_248,
      1);
   updateDW(WindowHandle(gs_212, OfflineTimeFrame));
   return (100);
}

int start() {
   int datetime_4;
   if (gi_272 != 100 || gi_260 || gi_264) {
      if (gi_264) return (-4);
      gi_272 = f0_5();
      if (gi_272 != 100) return (-2);
      if (gi_260) return (-3);
   }
   int ind_counted_0 = IndicatorCounted();
   if (ind_counted_0 < 0) return (-1);
   if (ind_counted_0 == 0) {
      if (RefreshOnHistoryUpdates == TRUE) {
         Print("More history downloaded - resynchronizing with market");
         gi_256 = FALSE;
         gi_196 = FALSE;
         gi_316 = TRUE;
      }
   }
   if (gi_316 == TRUE) {
      f0_7();
      gi_316 = FALSE;
      return (-1);
   }
   g_iclose_308 = iClose(Symbol(), PERIOD_M1, 0);
   if (g_iclose_240 != g_iclose_308) {
      g_iclose_240 = g_iclose_308;
      if (g_iclose_140 != 0.0) {
         if (g_iclose_156 < g_iclose_308) g_iclose_156 = g_iclose_308;
         if (g_iclose_148 > g_iclose_308) g_iclose_148 = g_iclose_308;
         g_iclose_164 = g_iclose_308;
         gd_172 += 1.0;
      } else {
         g_iclose_156 = g_iclose_308;
         g_iclose_148 = g_iclose_308;
         g_iclose_140 = g_iclose_308;
         g_iclose_164 = g_iclose_308;
         gd_172 = 1;
      }
      datetime_4 = iTime(Symbol(), Period(), 0);
      if (resetOpenOnNewSession) {
         if (f0_2(datetime_4)) {
            f0_0(datetime_4, g_iclose_140, g_iclose_148, g_iclose_156, g_iclose_164, gd_172, 1);
            f0_3();
         }
      }
      f0_1(datetime_4, g_iclose_140, g_iclose_148, g_iclose_156, g_iclose_164, gd_172, 1);
      updateDW(WindowHandle(gs_212, OfflineTimeFrame));
   } else
      if (RefreshChartOnAskPriceChange) updateDW(WindowHandle(gs_212, OfflineTimeFrame));
   return (0);
}

void f0_0(int ai_0, double ad_4, double ad_12, double ad_20, double ad_28, double ad_36, int ai_44) {
   int li_48;
   if (g_file_128 >= 0) {
      if (ai_44 == 1) {
         li_48 = updateT1(ai_0, gi_196);
         FileSeek(g_file_128, 0, SEEK_END);
         FileWriteInteger(g_file_128, li_48, LONG_VALUE);
         gi_196 = li_48;
      } else FileSeek(g_file_128, -40, SEEK_END);
      FileWriteDouble(g_file_128, ad_4, DOUBLE_VALUE);
      FileWriteDouble(g_file_128, ad_12, DOUBLE_VALUE);
      FileWriteDouble(g_file_128, ad_20, DOUBLE_VALUE);
      FileWriteDouble(g_file_128, ad_28, DOUBLE_VALUE);
      FileWriteDouble(g_file_128, ad_36, DOUBLE_VALUE);
      FileFlush(g_file_128);
      if (ai_44 == 1 && gi_256 && UseSoundSignalOnNewBar == TRUE) {
         if (SoundFile == "alert_box") Alert("New bar on " + g_dbl2str_184 + "pip chart for " + Symbol());
         else PlaySound(SoundFile);
      }
   }
}

void f0_6(double a_iclose_0, double a_iclose_8, double a_iclose_16, double a_iclose_24, double ad_32) {
   g_iclose_140 = a_iclose_0;
   g_iclose_148 = a_iclose_8;
   g_iclose_156 = a_iclose_16;
   g_iclose_164 = a_iclose_24;
   gd_172 = ad_32;
}

void f0_3() {
   g_iclose_140 = 0;
   g_iclose_148 = 0;
   g_iclose_156 = 0;
   g_iclose_164 = 0;
   gd_172 = 0;
}

int f0_1(int ai_0, double ad_4, double ad_12, double ad_20, double ad_28, double ad_36, int ai_44) {
   double lda_48[5] = {0, 0, 0, 0, 0};
   lda_48[0] = ad_4;
   lda_48[1] = ad_12;
   lda_48[2] = ad_20;
   lda_48[3] = ad_28;
   lda_48[4] = ad_36;
   double lda_52[5] = {0, 0, 0, 0, 0};
   lda_52[0] = g_iclose_140;
   lda_52[1] = g_iclose_148;
   lda_52[2] = g_iclose_156;
   lda_52[3] = g_iclose_164;
   lda_52[4] = gd_172;
   double lda_56[5] = {0, 0, 0, 0, 0};
   int li_60 = processHistoryBar4RenkoMedian(gd_232, lda_48, gda_180, lda_52, lda_56, ai_44);
   while (true) {
      if (li_60 >= 1 && li_60 <= 4) {
         f0_0(ai_0, lda_56[0], lda_56[1], lda_56[2], lda_56[3], lda_56[4], 0);
         f0_6(lda_52[0], lda_52[1], lda_52[2], lda_52[3], lda_52[4]);
         f0_0(ai_0, lda_52[0], lda_52[1], lda_52[2], lda_52[3], lda_52[4], 1);
         lda_48[0] = g_iclose_140;
         lda_48[1] = g_iclose_148;
         lda_48[2] = g_iclose_156;
         lda_48[3] = g_iclose_164;
         lda_48[4] = 1;
         li_60 = processHistoryBar4RenkoMedian(gd_232, lda_48, gda_180, lda_52, lda_56, 0);
         continue;
      }
      if (li_60 == 10) {
         f0_6(lda_52[0], lda_52[1], lda_52[2], lda_52[3], lda_52[4]);
         f0_0(ai_0, lda_56[0], lda_56[1], lda_56[2], lda_56[3], lda_56[4], 0);
         gd_248 = lda_52[4];
         return (1);
      }
      if (li_60 == 11) {
         Alert("debug = return 11");
         continue;
      }
      if (li_60 != -1) break;
      Alert("debug = return -1");
   }
   return (1);
}

int f0_2(int ai_0) {
   RefreshRates();
   if (TimeHour(ai_0) != session_start_HH || TimeMinute(ai_0) != session_start_MM) return (0);
   if (gi_320 != ai_0) {
      gi_320 = ai_0;
      return (1);
   }
   return (0);
}