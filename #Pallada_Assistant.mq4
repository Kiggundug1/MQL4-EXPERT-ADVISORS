
#property copyright "Copyright © 2009, TradeWays"
#property link      "http://www.tradeways.org"

#property indicator_chart_window
#property indicator_buffers 1
#property indicator_color1 Black

extern int StartHour = 0;
int gi_80 = 0;
extern int EndHour = 7;
int gi_88 = 0;
double gd_92 = 161.0;
double gd_100 = 200.0;
double gd_108 = 261.0;
int g_period_116 = 38;
int g_period_120 = 30;
int g_applied_price_124 = PRICE_TYPICAL;
int g_period_128 = 34;
int g_applied_price_132 = PRICE_CLOSE;
extern int PosX = 5;
extern int PosY = 15;
extern int Corner = 3;
extern color ColorCommon = Khaki;
extern color ColorUP = DodgerBlue;
extern color ColorDN = Red;
extern color ColorUNKN = Silver;
double g_ibuf_164[];
double g_ibuf_168[];
double g_ibuf_172[];
double g_ibuf_176[];
double g_ibuf_180[];
double g_ibuf_184[];
double g_ibuf_188[];
double g_high_192;
double g_low_200;
double gd_unused_208;
double gd_216;

int init() {
   gd_92 /= 100.0;
   gd_100 /= 100.0;
   gd_108 /= 100.0;
   init2();
   return (0);
}

int init2() {
   IndicatorBuffers(7);
   SetIndexBuffer(0, g_ibuf_164);
   SetIndexBuffer(1, g_ibuf_180);
   SetIndexBuffer(2, g_ibuf_184);
   SetIndexBuffer(3, g_ibuf_188);
   SetIndexBuffer(4, g_ibuf_168);
   SetIndexBuffer(5, g_ibuf_172);
   SetIndexBuffer(6, g_ibuf_176);
   return (0);
}

int deinit() {
   fObjDeleteByPrefix("MSFP2_");
   return (0);
}

void fObjDeleteByPrefix(string as_0) {
   for (int li_8 = ObjectsTotal() - 1; li_8 >= 0; li_8--)
      if (StringFind(ObjectName(li_8), as_0, 0) == 0) ObjectDelete(ObjectName(li_8));
}

int start() {
   bool li_8;
   bool li_12;
   //if (TimeCurrent() > StrToTime("2050.04.20")) {
   //   Alert("New version available! Download it using re-activated link from Plimus");
   //   return;
   //}
   int li_0 = Bars - IndicatorCounted();
   for (int li_4 = li_0 - 1; li_4 >= 0; li_4--) {
      g_ibuf_164[li_4] = g_ibuf_164[li_4 + 1];
      g_ibuf_168[li_4] = g_ibuf_168[li_4 + 1];
      g_ibuf_172[li_4] = g_ibuf_172[li_4 + 1];
      g_ibuf_176[li_4] = g_ibuf_176[li_4 + 1];
      g_ibuf_180[li_4] = g_ibuf_180[li_4 + 1];
      g_ibuf_184[li_4] = g_ibuf_184[li_4 + 1];
      g_ibuf_188[li_4] = g_ibuf_188[li_4 + 1];
      li_8 = fTimeInZone(StartHour, gi_80, EndHour, gi_88, Time[li_4]);
      li_12 = fTimeInZone(StartHour, gi_80, EndHour, gi_88, Time[li_4 + 1]);
      if (li_8) {
         if (!li_12) {
            g_high_192 = High[li_4];
            g_low_200 = Low[li_4];
            gd_unused_208 = Open[li_4];
         }
         g_high_192 = MathMax(g_high_192, High[li_4]);
         g_low_200 = MathMin(g_low_200, Low[li_4]);
      }
      if (!li_8) {
         if (li_12) {
            g_ibuf_164[li_4] = (g_high_192 + g_low_200) / 2.0;
            gd_216 = g_high_192 - g_low_200;
            g_ibuf_168[li_4] = g_high_192 - 1.61 * gd_216;
            g_ibuf_172[li_4] = g_high_192 - 2.0 * gd_216;
            g_ibuf_176[li_4] = g_high_192 - 2.61 * gd_216;
            g_ibuf_180[li_4] = g_low_200 + 1.61 * gd_216;
            g_ibuf_184[li_4] = g_low_200 + 2.0 * gd_216;
            g_ibuf_188[li_4] = g_low_200 + 2.61 * gd_216;
         }
      }
   }
   double l_iwpr_16 = iWPR(NULL, 0, g_period_116, 0);
   double l_icci_24 = iCCI(NULL, 0, g_period_120, g_applied_price_124, 0);
   double l_irsi_32 = iRSI(NULL, 0, g_period_128, g_applied_price_132, 0);
   string ls_40 = "Direction: UNKN";
   string ls_48 = "Direction: UNKN";
   string ls_56 = "Direction: UNKN";
   string ls_64 = "Direction: UNKN";
   int l_color_72 = ColorUNKN;
   if (l_iwpr_16 > -50.0 && l_icci_24 > 0.0 && l_irsi_32 > 50.0) {
      ls_40 = "Direction: UP";
      l_color_72 = ColorUP;
      ls_48 = "1. Target - " + DS(g_ibuf_180[0]);
      ls_56 = "2. Target - " + DS(g_ibuf_184[0]);
      ls_64 = "3. Target - " + DS(g_ibuf_188[0]);
   }
   if (l_iwpr_16 < -50.0 && l_icci_24 < 0.0 && l_irsi_32 < 50.0) {
      ls_40 = "Direction: DN";
      l_color_72 = ColorDN;
      ls_48 = "1. Target - " + DS(g_ibuf_168[0]);
      ls_56 = "2. Target - " + DS(g_ibuf_172[0]);
      ls_64 = "3. Target - " + DS(g_ibuf_176[0]);
   }
   if (Corner == 0 || Corner == 1) {
      fObjLabel("MSFP2_1", PosX, PosY, " " + "++PALLADA ASSISTANT++", Corner, ColorCommon, 8, 0, "Arial", FALSE);
      fObjLabel("MSFP2_2", PosX, PosY + 5, "_______________", Corner, ColorCommon, 8, 0, "Arial", FALSE);
      fObjLabel("MSFP2_3", PosX, PosY + 20, " " + ls_40, Corner, l_color_72, 8, 0, "Arial", FALSE);
      fObjLabel("MSFP2_4", PosX, PosY + 25, "_______________", Corner, ColorCommon, 8, 0, "Arial", FALSE);
      fObjLabel("MSFP2_5", PosX, PosY + 40, " " + ls_48, Corner, ColorCommon, 8, 0, "Arial", FALSE);
      fObjLabel("MSFP2_6", PosX, PosY + 50, " " + ls_56, Corner, ColorCommon, 8, 0, "Arial", FALSE);
      fObjLabel("MSFP2_7", PosX, PosY + 60, " " + ls_64, Corner, ColorCommon, 8, 0, "Arial", FALSE);
      fObjLabel("MSFP2_8", PosX, PosY + 65, "_______________", Corner, ColorCommon, 8, 0, "Arial", FALSE);
      fObjLabel("MSFP2_9", PosX, PosY + 80, " Range: " + DS0(gd_216 / Point), Corner, ColorCommon, 8, 0, "Arial", FALSE);
      fObjLabel("MSFP2_10", PosX, PosY + 85, "_______________", Corner, ColorCommon, 8, 0, "Arial", FALSE);
      fObjLabel("MSFP2_11", PosX, PosY + 100, " " + "PalladaSE.©2009 TradeWays", Corner, ColorCommon, 8, 0, "Arial", FALSE);
   } else {
      fObjLabel("MSFP2_1", PosX, PosY + 100, " " + "++PALLADA ASSISTANT++", Corner, ColorCommon, 8, 0, "Arial", FALSE);
      fObjLabel("MSFP2_2", PosX, PosY + 95, "_______________", Corner, ColorCommon, 8, 0, "Arial", FALSE);
      fObjLabel("MSFP2_3", PosX, PosY + 80, " " + ls_40, Corner, l_color_72, 8, 0, "Arial", FALSE);
      fObjLabel("MSFP2_4", PosX, PosY + 75, "_______________", Corner, ColorCommon, 8, 0, "Arial", FALSE);
      fObjLabel("MSFP2_5", PosX, PosY + 60, " " + ls_48, Corner, ColorCommon, 8, 0, "Arial", FALSE);
      fObjLabel("MSFP2_6", PosX, PosY + 50, " " + ls_56, Corner, ColorCommon, 8, 0, "Arial", FALSE);
      fObjLabel("MSFP2_7", PosX, PosY + 40, " " + ls_64, Corner, ColorCommon, 8, 0, "Arial", FALSE);
      fObjLabel("MSFP2_8", PosX, PosY + 35, "_______________", Corner, ColorCommon, 8, 0, "Arial", FALSE);
      fObjLabel("MSFP2_9", PosX, PosY + 20, " Range: " + DS0(gd_216 / Point), Corner, ColorCommon, 8, 0, "Arial", FALSE);
      fObjLabel("MSFP2_10", PosX, PosY + 15, "_______________", Corner, ColorCommon, 8, 0, "Arial", FALSE);
      fObjLabel("MSFP2_11", PosX, PosY, " " + "PalladaSE.©2009 TradeWays", Corner, ColorCommon, 8, 0, "Arial", FALSE);
   }
   return (0);
}

string DS0(double ad_0) {
   return (DoubleToStr(ad_0, 0));
}

string DS(double ad_0) {
   return (DoubleToStr(ad_0, Digits));
}

void fObjLabel(string a_name_0, int a_x_8, int a_y_12, string a_text_16, int a_corner_24 = 0, color a_color_28 = 255, int a_fontsize_32 = 8, int a_window_36 = 0, string a_fontname_40 = "Arial", bool a_bool_48 = FALSE) {
   if (ObjectFind(a_name_0) != a_window_36) ObjectCreate(a_name_0, OBJ_LABEL, a_window_36, 0, 0);
   ObjectSet(a_name_0, OBJPROP_XDISTANCE, a_x_8);
   ObjectSet(a_name_0, OBJPROP_YDISTANCE, a_y_12);
   ObjectSetText(a_name_0, a_text_16, a_fontsize_32, a_fontname_40, a_color_28);
   ObjectSet(a_name_0, OBJPROP_BACK, a_bool_48);
   ObjectSet(a_name_0, OBJPROP_CORNER, a_corner_24);
}

int fTimeInZone(int ai_0, int ai_4, int ai_8, int ai_12, int ai_16) {
   int li_20 = 3600 * ai_0 + 60 * ai_4;
   int li_24 = 3600 * ai_8 + 60 * ai_12;
   int li_28 = ai_16 - 86400 * (ai_16 / 86400);
   if (li_20 <= li_24) {
      if (li_28 >= li_20 && li_28 < li_24) return (1);
   } else
      if (li_28 >= li_20 || li_28 < li_24) return (1);
   return (0);
}