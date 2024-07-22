/*
   Generated by EX4-TO-MQ4 decompiler LITE V4.0.406.1f [-]
   Website: https://purebeam.biz
   E-mail : purebeam@gmail.com
*/
#property copyright "Copyright � 2011, ArtForexTrading"
#property link      "http://www.artforextrading.com"

#property indicator_separate_window
#property indicator_buffers 5
#property indicator_color1 Black
#property indicator_color2 DodgerBlue
#property indicator_color3 SandyBrown
#property indicator_color4 Green
#property indicator_color5 Red

#import

extern int A = 8;
extern int SR = 25;
extern bool AlertSoundOn = FALSE;
extern string SoundFile = "alert.wav";
double gda_96[];
double gda_100[];
double gda_104[];
double gda_108[];
double gd_112;
double gd_120;
double gd_128;
double gd_136;
double gd_144;
double gd_168;
double gd_176;
double gd_184;
double gd_192;
double gd_200;
double gd_208;
double gd_216;
double gd_224;
double gd_232;
double gd_240;
double gd_248;
double gd_256;
double gd_264;
double td_152;
double td_160;
double td_0;
int gi_272;
int gi_276;
datetime gt_280;
int gi_284;

int init() {
   IndicatorShortName("FR-Trend " + "(" + A + ")");
   SetIndexBuffer(1, gda_96);
   SetIndexBuffer(2, gda_100);
   SetIndexEmptyValue(2, 0.0);
   SetIndexBuffer(3, gda_104);
   SetIndexBuffer(4, gda_108);
   SetIndexStyle(0, DRAW_LINE, STYLE_SOLID, 1);
   SetIndexStyle(4, DRAW_LINE, STYLE_DOT, 1);
   SetIndexStyle(3, DRAW_LINE, STYLE_DOT, 1);
   SetIndexStyle(2, DRAW_LINE, STYLE_SOLID, 3);
   SetIndexStyle(1, DRAW_LINE, STYLE_SOLID, 3);
   return (0);
}

int start() {
   int li_0;
   int li_4 = Bars - IndicatorCounted() - 1;
   if (li_4 < 10) li_0 = li_4;
   else {
      li_0 = Bars - 2;
      gd_264 = 2.0 / (A + 1);
      gda_96[li_0 + 1] = 0.0;
      gda_100[li_0 + 1] = 0.0;
      gd_208 = 0.0;
      gd_200 = 0.0;
      gd_224 = 0.0;
      gd_216 = 0.0;
      gd_240 = 0.0;
      gd_232 = 0.0;
      gt_280 = Time[li_0];
      gi_272 = 0;
      gi_276 = 0;
   }
   for (int li_8 = li_0; li_8 >= 0; li_8--) {
      if (gt_280 != Time[li_8]) {
         gd_208 = gd_200;
         gd_224 = gd_216;
         gd_240 = gd_232;
         gt_280 = Time[li_8];
      }
      gd_136 = High[li_8];
      gd_144 = Low[li_8];
      gd_112 = gd_136 - (High[li_8 + 1]);
      gd_120 = Low[li_8 + 1] - gd_144;
      if (gd_112 < 0.0) gd_112 = 0;
      if (gd_120 < 0.0) gd_120 = 0;
      if (gd_112 == gd_120) {
         gd_112 = 0;
         gd_120 = 0;
      } else {
         if (gd_112 < gd_120) gd_112 = 0;
         else
            if (gd_120 < gd_112) gd_120 = 0;
      }
      td_152 = MathAbs(gd_136 - gd_144);
      td_160 = MathAbs(gd_136 - (Close[li_8 + 1]));
      gd_168 = MathAbs(gd_144 - (Close[li_8 + 1]));
      gd_128 = MathMax(MathMax(td_0, td_0), gd_168);
      if (gd_128 == 0.0) {
         gd_176 = 0;
         gd_184 = 0;
      } else {
         gd_176 = 100.0 * gd_112 / gd_128;
         gd_184 = 100.0 * gd_120 / gd_128;
      }
      gd_200 = gd_208 + (gd_176 - gd_208) * gd_264;
      gd_216 = gd_224 + (gd_184 - gd_224) * gd_264;
      gd_248 = gd_200 - gd_216;
      gd_192 = MathAbs(gd_200 + gd_216);
      if (gd_192 == 0.0) gd_256 = 0;
      else gd_256 = 100.0 * (MathAbs(gd_248) / gd_192);
      if (gd_200 > gd_216) gi_272 = 1;
      if (gd_200 < gd_216) gi_272 = 2;
      if (gi_272 == 2) gd_256 = -gd_256;
      gd_232 = gd_240 + (gd_256 - gd_240) * gd_264;
      gda_96[li_8] = gd_232;
      if (gda_96[li_8] > gda_96[li_8 + 1]) gi_276 = 1;
      if (gda_96[li_8] < gda_96[li_8 + 1]) {
         if (gi_276 == 1) gda_100[li_8 + 1] = gda_96[li_8 + 1];
         gi_276 = 2;
      }
      if (gi_276 == 2) gda_100[li_8] = gda_96[li_8];
      else gda_100[li_8] = 0.0;
      gda_104[li_8] = SR;
      gda_108[li_8] = -SR;
   }
   if (gi_284 == Time[0]) return (0);
   gi_284 = Time[0];
   Comment(gda_96[1] + ", " + gda_100[1]);
   if (AlertSoundOn == TRUE) {
      if ((gda_100[1] == 0.0 && gda_100[2] != 0.0) || (gda_100[2] == 0.0 && gda_100[1] != 0.0)) Alert(WindowExpertName(), " ", Symbol() + "=-" + Period(), " Possible Trend Reverse !");
      Print("HELLO");
      PlaySound(SoundFile);
   }
   return (0);
}