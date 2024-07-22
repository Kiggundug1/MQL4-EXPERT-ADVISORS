
#property copyright "Copyright © 2009, TradeWays"
#property link      "http://www.tradeways.org"

#property indicator_chart_window
#property indicator_buffers 8
#property indicator_color1 Blue
#property indicator_color2 Red
#property indicator_color3 DodgerBlue
#property indicator_color4 Tomato
#property indicator_color5 Blue
#property indicator_color6 Red
#property indicator_color7 DodgerBlue
#property indicator_color8 Tomato

double g_period_76 = 50.0;
double g_period_84 = 30.0;
double g_period_92 = 38.0;
double g_ibuf_100[];
double g_ibuf_104[];
double g_ibuf_108[];
double g_ibuf_112[];
double g_ibuf_116[];
double g_ibuf_120[];
double g_ibuf_124[];
double g_ibuf_128[];

int init() {
   SetIndexStyle(0, DRAW_HISTOGRAM);
   SetIndexBuffer(0, g_ibuf_100);
   SetIndexStyle(1, DRAW_HISTOGRAM);
   SetIndexBuffer(1, g_ibuf_104);
   SetIndexStyle(2, DRAW_HISTOGRAM);
   SetIndexBuffer(2, g_ibuf_108);
   SetIndexStyle(3, DRAW_HISTOGRAM);
   SetIndexBuffer(3, g_ibuf_112);
   SetIndexStyle(4, DRAW_HISTOGRAM);
   SetIndexBuffer(4, g_ibuf_116);
   SetIndexStyle(5, DRAW_HISTOGRAM);
   SetIndexBuffer(5, g_ibuf_120);
   SetIndexStyle(6, DRAW_HISTOGRAM);
   SetIndexBuffer(6, g_ibuf_124);
   SetIndexStyle(7, DRAW_HISTOGRAM);
   SetIndexBuffer(7, g_ibuf_128);
   string ls_0 = "#PalladaSE_Bars©2009 TradeWays";
   IndicatorShortName(ls_0);
   return (0);
}

int start() {
   double l_icci_8;
   double l_iwpr_16;
   double l_iforce_24;
   int li_32;
   //if (TimeCurrent() > StrToTime("2050.04.20")) {
   //   Alert("New version available! Download it using re-activated link from Plimus");
   //   return;
   //}
   //if (AccountNumber() != 0 && 0) {
   //   Alert("This expert is not licensed to your account number!");
   //   return;
   //}
   int l_ind_counted_4 = IndicatorCounted();
   if (Bars <= 15) return (0);
   if (l_ind_counted_4 < 1) {
      for (int li_0 = 1; li_0 <= 15; li_0++) {
         g_ibuf_100[Bars - li_0] = 0.0;
         g_ibuf_108[Bars - li_0] = 0.0;
         g_ibuf_104[Bars - li_0] = 0.0;
         g_ibuf_112[Bars - li_0] = 0.0;
         g_ibuf_116[Bars - li_0] = 0.0;
         g_ibuf_124[Bars - li_0] = 0.0;
         g_ibuf_120[Bars - li_0] = 0.0;
         g_ibuf_128[Bars - li_0] = 0.0;
      }
   }
   if (l_ind_counted_4 > 0) li_32 = Bars - l_ind_counted_4;
   if (l_ind_counted_4 == 0) li_32 = Bars - 15 - 1;
   for (li_0 = li_32; li_0 >= 0; li_0--) {
      l_icci_8 = iCCI(NULL, 0, g_period_84, PRICE_TYPICAL, li_0);
      l_iwpr_16 = iWPR(NULL, 0, g_period_92, li_0);
      l_iforce_24 = iForce(NULL, 0, g_period_76, MODE_EMA, PRICE_CLOSE, li_0);
      g_ibuf_100[li_0] = EMPTY_VALUE;
      g_ibuf_108[li_0] = EMPTY_VALUE;
      g_ibuf_104[li_0] = EMPTY_VALUE;
      g_ibuf_112[li_0] = EMPTY_VALUE;
      g_ibuf_116[li_0] = EMPTY_VALUE;
      g_ibuf_124[li_0] = EMPTY_VALUE;
      g_ibuf_120[li_0] = EMPTY_VALUE;
      g_ibuf_128[li_0] = EMPTY_VALUE;
      if (l_icci_8 > 0.0 && l_iwpr_16 > -50.0 && l_iforce_24 > 0.0) {
         g_ibuf_100[li_0] = MathMax(Open[li_0], Close[li_0]);
         g_ibuf_104[li_0] = MathMin(Open[li_0], Close[li_0]);
         g_ibuf_116[li_0] = High[li_0];
         g_ibuf_120[li_0] = Low[li_0];
      } else {
         if (l_icci_8 > 0.0 && l_iwpr_16 < -50.0) {
            g_ibuf_108[li_0] = MathMax(Open[li_0], Close[li_0]);
            g_ibuf_112[li_0] = MathMin(Open[li_0], Close[li_0]);
            g_ibuf_124[li_0] = High[li_0];
            g_ibuf_128[li_0] = Low[li_0];
         } else {
            if (l_icci_8 < 0.0 && l_iwpr_16 < -50.0 && l_iforce_24 < 0.0) {
               g_ibuf_104[li_0] = MathMax(Open[li_0], Close[li_0]);
               g_ibuf_100[li_0] = MathMin(Open[li_0], Close[li_0]);
               g_ibuf_120[li_0] = High[li_0];
               g_ibuf_116[li_0] = Low[li_0];
            } else {
               if (l_icci_8 < 0.0 && l_iwpr_16 > -50.0) {
                  g_ibuf_112[li_0] = MathMax(Open[li_0], Close[li_0]);
                  g_ibuf_108[li_0] = MathMin(Open[li_0], Close[li_0]);
                  g_ibuf_128[li_0] = High[li_0];
                  g_ibuf_124[li_0] = Low[li_0];
               }
            }
         }
      }
   }
   return (0);
}