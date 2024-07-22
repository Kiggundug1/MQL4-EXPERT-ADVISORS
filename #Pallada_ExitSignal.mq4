#property copyright "Copyright © 2008, TradeWays"
#property link      "http://www.tradeways.org"

#property indicator_chart_window
#property indicator_buffers 2
#property indicator_color1 DodgerBlue
#property indicator_color2 Red

extern int Fx = 34;
extern double Deviation = 5.0;
extern int FEMA = 5;
extern int SEMA = 13;
extern bool EmailON = TRUE;
extern bool SoundON = TRUE;
extern bool AlertON = TRUE;
extern int AlertRepeat = 3;
extern bool EndLessRepeat = FALSE;
extern string SoundFile = "Alert";
double g_ibuf_124[];
double g_ibuf_128[];
double g_ibuf_132[];
double g_ibuf_136[];
double g_ibuf_140[];
double g_ibuf_144[];
int gi_148;
int gi_152;
int g_datetime_156;
int g_datetime_160;
int g_time_164 = 0;
int g_time_168 = 0;

int init() {
   ObjectDelete("Exit_Signal_Bell");
   IndicatorBuffers(6);
   SetIndexStyle(0, DRAW_ARROW);
   SetIndexArrow(0, 233);
   SetIndexBuffer(0, g_ibuf_124);
   SetIndexStyle(1, DRAW_ARROW);
   SetIndexArrow(1, 234);
   SetIndexBuffer(1, g_ibuf_128);
   SetIndexBuffer(2, g_ibuf_136);
   SetIndexBuffer(3, g_ibuf_132);
   SetIndexBuffer(4, g_ibuf_140);
   SetIndexBuffer(5, g_ibuf_144);
   if (Fx < 2) Fx = 2;
   if (Deviation < 0.0) Deviation = 1;
   if (FEMA < 1) FEMA = 1;
   if (SEMA < 1) SEMA = 1;
   IndicatorShortName("Exit_Signal");
   SetIndexDrawBegin(0, Fx + SEMA);
   SetIndexDrawBegin(1, Fx + SEMA);
   SetIndexLabel(0, "Exit_Signal Up");
   SetIndexLabel(1, "Exit_Signal Down");
   SetIndexEmptyValue(0, 0);
   SetIndexEmptyValue(1, 0);
   IndicatorDigits(4);
   return (0);
}

int deinit() {
   ObjectDelete("Exit_Signal_Bell");
   return (0);
}

double NormalizedX(int a_period_0, int ai_4) {
   double ld_ret_8;
   double l_ima_16;
   double l_istddev_24;
   double l_close_32;
   if (ai_4 < Bars - a_period_0) {
      l_close_32 = Close[ai_4];
      l_ima_16 = iMA(NULL, 0, a_period_0, 0, MODE_SMA, PRICE_CLOSE, ai_4);
      l_istddev_24 = iStdDev(NULL, 0, a_period_0, 0, MODE_SMA, PRICE_CLOSE, ai_4);
      ld_ret_8 = (l_close_32 - l_ima_16) / l_istddev_24;
   } else ld_ret_8 = 0;
   return (ld_ret_8);
}

double FisherNormalizedX(int ai_0, double ad_4, int ai_12) {
   double ld_ret_16;
   double ld_24;
   if (ai_12 < Bars - ai_0 && ad_4 > 0.0) {
      ld_24 = NormalizedX(ai_0, ai_12) / ad_4;
      if (ld_24 > 0.99) ld_24 = 0.99;
      if (ld_24 < -0.99) ld_24 = -0.99;
      ld_ret_16 = MathLog((ld_24 + 1.0) / (1 - ld_24)) / 2.0;
   } else ld_ret_16 = 0;
   return (ld_ret_16);
}

int start() {
   int li_4 = IndicatorCounted();
   if (li_4 < 0) return (-1);
   if (li_4 > 0) li_4--;
   int li_0 = Bars - li_4;
   for (int li_8 = 0; li_8 < li_0; li_8++) g_ibuf_144[li_8] = FisherNormalizedX(Fx, Deviation, li_8);
   for (li_8 = 0; li_8 < li_0; li_8++) g_ibuf_140[li_8] = iMAOnArray(g_ibuf_144, Bars, SEMA, 0, MODE_EMA, li_8);
   for (li_8 = 0; li_8 < li_0; li_8++) {
      if (iMAOnArray(g_ibuf_144, Bars, FEMA, 0, MODE_EMA, li_8) > g_ibuf_140[li_8]) {
         g_ibuf_132[li_8] = iMAOnArray(g_ibuf_144, Bars, FEMA, 0, MODE_EMA, li_8);
         g_ibuf_136[li_8] = 0;
      } else {
         g_ibuf_132[li_8] = 0;
         g_ibuf_136[li_8] = iMAOnArray(g_ibuf_144, Bars, FEMA, 0, MODE_EMA, li_8);
      }
   }
   for (li_8 = 0; li_8 < li_0; li_8++) {
      g_ibuf_124[li_8] = EMPTY_VALUE;
      g_ibuf_128[li_8] = EMPTY_VALUE;
      if (g_ibuf_132[li_8] != 0.0 && g_ibuf_132[li_8 + 1] == 0.0) g_ibuf_124[li_8] = Low[li_8] - 5.0 * Point;
      if (g_ibuf_136[li_8] != 0.0 && g_ibuf_136[li_8 + 1] == 0.0) g_ibuf_128[li_8] = High[li_8] + 5.0 * Point;
   }
   int li_unused_12 = 1;
   if (g_ibuf_132[1] != 0.0 && g_ibuf_132[2] == 0.0) {
      if (Time[0] != g_time_164) {
         g_time_164 = Time[0];
         if (EmailON) SendMail("Exit_Signal(" + Symbol() + " " + fTimeFrameName(Period()) + ")", "BUY");
         if (SoundON || AlertON) {
            fObjLabel("Exit_Signal_Bell", 100, 100, StringSetChar("", 0, '%'), 3, Red, 16, 0, "Wingdings", FALSE);
            if (EndLessRepeat) gi_148 = 1;
            else gi_148 = AlertRepeat;
            g_datetime_156 = 0;
            gi_152 = 0;
         }
      }
   }
   if (g_ibuf_136[1] != 0.0 && g_ibuf_136[2] == 0.0) {
      if (Time[0] != g_time_168) {
         g_time_168 = Time[0];
         if (EmailON) SendMail("Exit_Signal(" + Symbol() + " " + fTimeFrameName(Period()) + ")", "SELL");
         if (SoundON || AlertON) {
            fObjLabel("Exit_Signal_Bell", 100, 100, StringSetChar("", 0, '%'), 3, Red, 16, 0, "Wingdings", FALSE);
            if (EndLessRepeat) gi_152 = 1;
            else gi_152 = AlertRepeat;
            g_datetime_160 = 0;
            gi_148 = 0;
         }
      }
   }
   if (ObjectFind("Exit_Signal_Bell") == 0) {
      if (gi_148 > 0) {
         if (TimeLocal() > g_datetime_156 + 1) {
            if (!EndLessRepeat) gi_148--;
            g_datetime_156 = TimeLocal();
            if (AlertON) Alert("Exit_Signal(" + Symbol() + " " + fTimeFrameName(Period()) + "): BUY");
            if (SoundON) {
               Print("Exit_Signal(" + Symbol() + " " + fTimeFrameName(Period()) + "): BUY");
               PlaySound(SoundFile);
            }
         }
      }
      if (gi_152 > 0) {
         if (TimeLocal() > g_datetime_160 + 1) {
            if (!EndLessRepeat) gi_152--;
            g_datetime_160 = TimeLocal();
            if (AlertON) Alert("Exit_Signal(" + Symbol() + " " + fTimeFrameName(Period()) + "): SELL");
            if (SoundON) {
               Print("Exit_Signal(" + Symbol() + " " + fTimeFrameName(Period()) + "): SELL");
               PlaySound(SoundFile);
            }
         }
      }
   }
   if (gi_152 <= 0 && gi_148 <= 0) ObjectDelete("Exit_Signal_Bell");
   return (0);
}

string fTimeFrameName(int ai_0) {
   int l_timeframe_4;
   if (ai_0 == 0) l_timeframe_4 = Period();
   else l_timeframe_4 = ai_0;
   switch (l_timeframe_4) {
   case 0:
      return ("0");
   case PERIOD_M1:
      return ("M1");
   case PERIOD_M5:
      return ("M5");
   case PERIOD_M15:
      return ("M15");
   case PERIOD_M30:
      return ("M30");
   case PERIOD_H1:
      return ("H1");
   case PERIOD_H4:
      return ("H4");
   case PERIOD_D1:
      return ("D1");
   case PERIOD_W1:
      return ("W1");
   case PERIOD_MN1:
      return ("MN1");
   }
   return ("Wrong TimeFrame");
}

void fObjLabel(string a_name_0, int a_x_8, int a_y_12, string a_text_16, int a_corner_24 = 0, color a_color_28 = 255, int a_fontsize_32 = 8, int a_window_36 = 0, string a_fontname_40 = "Arial", bool a_bool_48 = FALSE) {
   if (ObjectFind(a_name_0) != a_window_36) ObjectCreate(a_name_0, OBJ_LABEL, a_window_36, 0, 0);
   ObjectSet(a_name_0, OBJPROP_XDISTANCE, a_x_8);
   ObjectSet(a_name_0, OBJPROP_YDISTANCE, a_y_12);
   ObjectSetText(a_name_0, a_text_16, a_fontsize_32, a_fontname_40, a_color_28);
   ObjectSet(a_name_0, OBJPROP_BACK, a_bool_48);
   ObjectSet(a_name_0, OBJPROP_CORNER, a_corner_24);
}