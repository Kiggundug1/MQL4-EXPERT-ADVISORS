
#property indicator_chart_window
#property indicator_buffers 2
#property indicator_color1 Gray
#property indicator_color2 Green

extern int Contract_Step = 1000;
extern int Precision = 20;
extern int Shift_Bars = 1;
extern int Bars_Count = 1000;
double g_ibuf_92[];
double g_ibuf_96[];

int init() {

   IndicatorBuffers(2);
   SetIndexArrow(0, 159);
   SetIndexStyle(0, DRAW_ARROW, STYLE_SOLID, 1);
   SetIndexDrawBegin(0, -1);
   SetIndexBuffer(0, g_ibuf_92);
   SetIndexLabel(0, "Resistance");
   SetIndexArrow(1, 159);
   SetIndexStyle(1, DRAW_ARROW, STYLE_SOLID, 1);
   SetIndexDrawBegin(1, -1);
   SetIndexBuffer(1, g_ibuf_96);
   SetIndexLabel(1, "Support");
   return (0);
}

int start() {
   double ld_4;
   int li_24;
   bool l_bool_28;
   double ld_32;
   double ld_12 = (Contract_Step + Precision) * Point;
   for (int li_20 = Bars_Count; li_20 >= 0; li_20--) {
      li_24 = li_20 + Shift_Bars;
      ld_32 = High[li_24 + 2];
      l_bool_28 = ld_32 >= High[li_24 + 4] && ld_32 >= High[li_24 + 3] && ld_32 > High[li_24 + 1] && ld_32 > High[li_24];
      ld_4 = g_ibuf_92[li_20 + 1] - ld_32;
      if (l_bool_28 && ld_4 >= ld_12 || ld_4 < 0.0) g_ibuf_92[li_20] = ld_32 + Precision * Point;
      else g_ibuf_92[li_20] = g_ibuf_92[li_20 + 1];
      ld_32 = Low[li_24 + 2];
      l_bool_28 = ld_32 <= Low[li_24 + 4] && ld_32 <= Low[li_24 + 3] && ld_32 < Low[li_24 + 1] && ld_32 < Low[li_24];
      ld_4 = ld_32 - (g_ibuf_96[li_20 + 1]);
      if (l_bool_28 && ld_4 >= ld_12 || ld_4 < 0.0) g_ibuf_96[li_20] = ld_32 - Precision * Point;
      else g_ibuf_96[li_20] = g_ibuf_96[li_20 + 1];
   }
   return (0);
}

int deinit() {
   return (0);
}