#property indicator_chart_window
#property indicator_buffers 1
#property indicator_color1 Silver

extern bool AlarmWithBox = FALSE;
extern string SoundWAV = "alert.wav";
extern int ExtDepth = 33;
extern int ExtDeviation = 5;
extern int ExtBackstep = 3;
extern int barn = 1500;
extern int from = 0;
double g_ibuf_108[];
double g_ibuf_112[];
int g_time_116 = 0;

int init() {
   IndicatorBuffers(2);
   SetIndexStyle(0, DRAW_ARROW, STYLE_SOLID, 0);
   SetIndexArrow(0, 108);
   SetIndexBuffer(0, g_ibuf_108);
   SetIndexBuffer(1, g_ibuf_112);
   SetIndexEmptyValue(0, 0.0);
   ArraySetAsSeries(g_ibuf_108, TRUE);
   ArraySetAsSeries(g_ibuf_112, TRUE);
   IndicatorShortName("ZigZag(" + ExtDepth + "," + ExtDeviation + "," + ExtBackstep + ")");
   return (0);
}

int start() {
   double ld_16;
   double ld_24;
   double ld_32;
   double ld_40;
   double ld_48;
   double ld_56;
   int lia_64[2];
   double ld_72;
   int li_0 = barn;
   for (li_0 = barn - ExtDepth; li_0 > from; li_0--) {
      ld_16 = Low[iLowest(NULL, 0, MODE_LOW, ExtDepth, li_0)];
      if (ld_16 == ld_56) ld_16 = 0.0;
      else {
         ld_56 = ld_16;
         if (Low[li_0] - ld_16 > ExtDeviation * Point) ld_16 = 0.0;
         else {
            for (int li_4 = 1; li_4 <= ExtBackstep; li_4++) {
               ld_24 = g_ibuf_108[li_0 + li_4];
               if (ld_24 != 0.0 && ld_24 > ld_16) g_ibuf_108[li_0 + li_4] = 0.0;
            }
         }
      }
      g_ibuf_108[li_0] = ld_16;
      ld_16 = High[iHighest(NULL, 0, MODE_HIGH, ExtDepth, li_0)];
      if (ld_16 == ld_48) ld_16 = 0.0;
      else {
         ld_48 = ld_16;
         if (ld_16 - High[li_0] > ExtDeviation * Point) ld_16 = 0.0;
         else {
            for (li_4 = 1; li_4 <= ExtBackstep; li_4++) {
               ld_24 = g_ibuf_112[li_0 + li_4];
               if (ld_24 != 0.0 && ld_24 < ld_16) g_ibuf_112[li_0 + li_4] = 0.0;
            }
         }
      }
      g_ibuf_112[li_0] = ld_16;
   }
   ld_48 = -1;
   int li_8 = -1;
   ld_56 = -1;
   int li_12 = -1;
   for (li_0 = barn - ExtDepth; li_0 > from; li_0--) {
      ld_32 = g_ibuf_108[li_0];
      ld_40 = g_ibuf_112[li_0];
      if (ld_32 == 0.0 && ld_40 == 0.0) continue;
      if (ld_40 != 0.0) {
         if (ld_48 > 0.0) {
            if (ld_48 < ld_40) g_ibuf_112[li_8] = 0;
            else g_ibuf_112[li_0] = 0;
         }
         if (ld_48 < ld_40 || ld_48 < 0.0) {
            ld_48 = ld_40;
            li_8 = li_0;
         }
         ld_56 = -1;
      }
      if (ld_32 != 0.0) {
         if (ld_56 > 0.0) {
            if (ld_56 > ld_32) g_ibuf_108[li_12] = 0;
            else g_ibuf_108[li_0] = 0;
         }
         if (ld_32 < ld_56 || ld_56 < 0.0) {
            ld_56 = ld_32;
            li_12 = li_0;
         }
         ld_48 = -1;
      }
   }
   for (li_0 = barn - 1; li_0 > from; li_0--) {
      if (li_0 >= barn - ExtDepth) g_ibuf_108[li_0] = 0.0;
      else {
         ld_24 = g_ibuf_112[li_0];
         if (ld_24 != 0.0) g_ibuf_108[li_0] = ld_24;
      }
   }
   int l_index_68 = 0;
   for (li_0 = from + 1; l_index_68 < 2 && li_0 < barn; li_0++) {
      if (g_ibuf_108[li_0] != 0.0) {
         lia_64[l_index_68] = li_0;
         l_index_68++;
      }
   }
   if (l_index_68 > 0) {
      if (g_time_116 != Time[lia_64[0]]) {
         g_time_116 = Time[lia_64[0]];
         ld_72 = g_ibuf_108[lia_64[0]] - g_ibuf_108[lia_64[1]];
         /*if (ld_72 > 0.0) {
            Alert("Tada! ", Symbol(), " ", Period(), " @ ", Bid);
            PlaySound(SoundWAV);
         } else {
            if (ld_72 < 0.0) {
               Alert("Tada! ", Symbol(), " ", Period(), " @ ", Bid);
               PlaySound(SoundWAV);
            } else {
               if (l_index_68 == 1) {
                  Alert("Tada! ", Symbol(), " ", Period(), " @ ", Bid);
                  PlaySound(SoundWAV);
               }
            }
         }*/
      }
   }
   return (0);
}