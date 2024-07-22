#property copyright "Copyright © 2006, TrendLaboratory"
#property link      "http://finance.groups.yahoo.com/group/TrendLaboratory"

#property indicator_chart_window
#property indicator_buffers 3
#property indicator_color1 Yellow
#property indicator_color2 RoyalBlue
#property indicator_color3 Red

extern int Price = 0;
extern int Length = 10;
extern int Displace = 0;
extern int Filter = 0;
extern int Color = 1;
extern int ColorBarBack = 2;
extern double Deviation = 0.0;
double Gd_108 = 4.0;
double G_ibuf_116[];
double G_ibuf_120[];
double G_ibuf_124[];
double G_ibuf_128[];
double G_ibuf_132[];

// E37F0136AA3FFAF149B351F6A4C948E9
int init() {
   int Li_unused_0 = 0;
   IndicatorBuffers(5);
   SetIndexStyle(0, DRAW_ARROW);
   SetIndexBuffer(0, G_ibuf_116);
   SetIndexStyle(1, DRAW_ARROW);
   SetIndexBuffer(1, G_ibuf_120);
   SetIndexStyle(2, DRAW_ARROW);
   SetIndexBuffer(2, G_ibuf_124);
   SetIndexBuffer(3, G_ibuf_128);
   SetIndexBuffer(4, G_ibuf_132);
   IndicatorDigits(MarketInfo(Symbol(), MODE_DIGITS));
   SetIndexArrow(0, 159);
   SetIndexArrow(1, 159);
   SetIndexArrow(2, 159);
   SetIndexArrow(3, 159);
   string Ls_4 = "NonLagDot(" + Length + ")";
   IndicatorShortName(Ls_4);
   SetIndexLabel(0, "NLD");
   SetIndexLabel(1, "Up");
   SetIndexLabel(2, "Dn");
   SetIndexShift(0, Displace);
   SetIndexShift(1, Displace);
   SetIndexShift(2, Displace);
   SetIndexDrawBegin(0, Length * Gd_108 + Length);
   SetIndexDrawBegin(1, Length * Gd_108 + Length);
   SetIndexDrawBegin(2, Length * Gd_108 + Length);
   return (0);
}
	 				   	 	   	 	  						 		 			 				 	  	 		 		    		  						 	 	   	  	  	  	 	    	 		 	    			   		   					  	 	  		 	 	 	   					 	 	  	   
// EA2B2676C28C0DB26D39331A336C6B92
int start() {
   int Li_12;
   double Ld_16;
   double Ld_24;
   double Ld_32;
   double Ld_40;
   double Ld_48;
   double Ld_64;
   int ind_counted_8 = IndicatorCounted();
   double Ld_72 = 3.1415926535;
   double Ld_80 = 3.0 * Ld_72;
   int Li_88 = Length - 1;
   double Ld_92 = Length * Gd_108 + Li_88;
   if (ind_counted_8 > 0) Li_12 = Bars - ind_counted_8;
   if (ind_counted_8 < 0) return (0);
   if (ind_counted_8 == 0) Li_12 = Bars - Ld_92 - 1.0;
   if (ind_counted_8 < 1) {
      for (int index_0 = 1; index_0 < Length * Gd_108 + Length; index_0++) {
         G_ibuf_116[Bars - index_0] = 0;
         G_ibuf_120[Bars - index_0] = 0;
         G_ibuf_124[Bars - index_0] = 0;
      }
   }
   for (int Li_4 = Li_12; Li_4 >= 0; Li_4--) {
      Ld_48 = 0;
      Ld_40 = 0;
      Ld_32 = 0;
      for (index_0 = 0; index_0 <= Ld_92 - 1.0; index_0++) {
         Ld_64 = 1.0 / (Ld_80 * Ld_32 + 1.0);
         if (Ld_32 <= 0.5) Ld_64 = 1;
         Ld_24 = MathCos(Ld_72 * Ld_32);
         Ld_16 = Ld_64 * Ld_24;
         G_ibuf_128[index_0] = iMA(NULL, 0, 1, 0, MODE_SMA, Price, Li_4 + index_0);
         Ld_40 += Ld_16 * G_ibuf_128[index_0];
         Ld_48 += Ld_16;
         if (Ld_32 < 1.0) Ld_32 += 1.0 / (Li_88 - 1);
         else
            if (Ld_32 < Ld_92 - 1.0) Ld_32 += (2.0 * Gd_108 - 1.0) / (Gd_108 * Length - 1.0);
      }
      if (Ld_48 > 0.0) G_ibuf_116[Li_4] = (Deviation / 100.0 + 1.0) * Ld_40 / Ld_48;
      if (Filter > 0)
         if (MathAbs(G_ibuf_116[Li_4] - (G_ibuf_116[Li_4 + 1])) < Filter * Point) G_ibuf_116[Li_4] = G_ibuf_116[Li_4 + 1];
      if (Color > 0) {
         G_ibuf_132[Li_4] = G_ibuf_132[Li_4 + 1];
         if (G_ibuf_116[Li_4] - (G_ibuf_116[Li_4 + 1]) > Filter * Point) G_ibuf_132[Li_4] = 1;
         if (G_ibuf_116[Li_4 + 1] - G_ibuf_116[Li_4] > Filter * Point) G_ibuf_132[Li_4] = -1;
         if (G_ibuf_132[Li_4] > 0.0) {
            G_ibuf_120[Li_4] = G_ibuf_116[Li_4];
            if (G_ibuf_132[Li_4 + ColorBarBack] < 0.0) G_ibuf_120[Li_4 + ColorBarBack] = G_ibuf_116[Li_4 + ColorBarBack];
            G_ibuf_124[Li_4] = EMPTY_VALUE;
         }
         if (G_ibuf_132[Li_4] < 0.0) {
            G_ibuf_124[Li_4] = G_ibuf_116[Li_4];
            if (G_ibuf_132[Li_4 + ColorBarBack] > 0.0) G_ibuf_124[Li_4 + ColorBarBack] = G_ibuf_116[Li_4 + ColorBarBack];
            G_ibuf_120[Li_4] = EMPTY_VALUE;
         }
      }
   }
   return (0);
}