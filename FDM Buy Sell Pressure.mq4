/*
   
*/
#property copyright "Copyright © 2008, Forex Day Monster"
#property link      "http://www.forexprofitmonster.com"

#property indicator_separate_window
#property indicator_buffers 4
#property indicator_color1 Red
#property indicator_color2 Lime
#property indicator_color3 Black
#property indicator_color4 Black

int g_period_76 = 13;
int gi_80 = 8;
int gi_84 = 5;
double g_ibuf_88[];
double g_ibuf_92[];
double g_ibuf_96[];
double g_ibuf_100[];

void init() {
   string ls_0 = "FDM Buy Sell Pressure #1";
   IndicatorShortName(ls_0);
   IndicatorDigits(2);
   SetIndexBuffer(0, g_ibuf_88);
   SetIndexLabel(0, "X higher than price");
   SetIndexStyle(0, DRAW_HISTOGRAM, STYLE_SOLID, 5);
   SetIndexBuffer(1, g_ibuf_92);
   SetIndexLabel(1, "X lower than price");
   SetIndexStyle(1, DRAW_HISTOGRAM, STYLE_SOLID, 5);
   SetIndexBuffer(2, g_ibuf_96);
   SetIndexLabel(2, "LSMA higher than price");
   SetIndexStyle(2, DRAW_LINE, STYLE_SOLID, 1);
   SetIndexBuffer(3, g_ibuf_100);
   SetIndexLabel(3, "LSMA lower than price");
   SetIndexStyle(3, DRAW_LINE, STYLE_SOLID, 1);
}

int start() {
   double ld_12;
   double ld_20;
   double ld_28;
   double ld_36;
   double l_ima_44;
   int li_60;
   int li_64;
   string ls_0 = "2015.11.01";
   int l_str2time_8 = StrToTime(ls_0);
   if (TimeCurrent() >= l_str2time_8) {
      Alert(" Trial version has expired! Email support@forexprofitmonster.com with broker account number for rights to full version!");
      return (0);
   }
   int li_52 = IndicatorCounted();
   if (li_52 >= 0) {
      if (li_52 > 0) li_52--;
      li_52 = Bars - li_52;
      for (int li_56 = 0; li_56 < li_52; li_56++) {
         g_ibuf_92[li_56] = -gi_84;
         g_ibuf_88[li_56] = -gi_84;
         l_ima_44 = iMA(NULL, 0, g_period_76, 0, MODE_EMA, PRICE_TYPICAL, li_56);
         if (Close[li_56] > l_ima_44) g_ibuf_88[li_56] = EMPTY_VALUE;
         if (Close[li_56] < l_ima_44) g_ibuf_92[li_56] = EMPTY_VALUE;
      }
      li_60 = Bars - gi_80 - 5;
      li_64 = li_60 - gi_80 - 1;
      for (li_56 = li_64; li_56 >= 0; li_56--) {
         ld_12 = 0;
         for (int li_68 = gi_80; li_68 >= 1; li_68--) {
            ld_20 = gi_80 + 1;
            ld_20 /= 3.0;
            ld_28 = 0;
            ld_28 = (li_68 - ld_20) * (Close[gi_80 - li_68 + li_56]);
            ld_12 += ld_28;
         }
         ld_36 = 6.0 * ld_12 / (gi_80 * (gi_80 + 1));
         g_ibuf_96[li_56] = gi_84;
         g_ibuf_100[li_56] = gi_84;
         if (ld_36 > Close[li_56]) g_ibuf_100[li_56] = EMPTY_VALUE;
         if (ld_36 < Close[li_56]) g_ibuf_96[li_56] = EMPTY_VALUE;
      }
   }
   return (0);
}