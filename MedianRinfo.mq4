
#property copyright "Copyright 2012, AZ-iNVEST"
#property link      "http://www.az-invest.eu"

#property indicator_chart_window

#import "MedianRenkoEngine.dll"
   string getDLLVer(int a0);
#import

int gi_76 = 4;
double gd_80 = -1.0;

int init() {
   double ld_12;
   if (getDLLVer(3) != "20120818.1") return (0);
   switch (Period()) {
   case 0:
   case PERIOD_M1:
   case PERIOD_M5:
   case PERIOD_M15:
   case PERIOD_M30:
   case PERIOD_H1:
   case PERIOD_H4:
   case PERIOD_D1:
   case PERIOD_W1:
   case PERIOD_MN1:
      return (0);
   }
   double point_4 = MarketInfo(Symbol(), MODE_POINT);
   if (gi_76 == 4) gd_80 = MathAbs(iOpen(Symbol(), Period(), 1) - iClose(Symbol(), Period(), 1));
   else gd_80 = -1;
   if (gd_80 != -1.0) {
      ld_12 = gd_80 / Point;
      if (Digits % 2 > 0) ld_12 /= 10.0;
      ObjectCreate("hThreshold", OBJ_ARROW, 0, iTime(Symbol(), Period(), 0), 0);
      ObjectCreate("lThreshold", OBJ_ARROW, 0, iTime(Symbol(), Period(), 0), 0);
      ObjectSet("hThreshold", OBJPROP_ARROWCODE, SYMBOL_RIGHTPRICE);
      ObjectSet("lThreshold", OBJPROP_ARROWCODE, SYMBOL_RIGHTPRICE);
      ObjectSet("hThreshold", OBJPROP_COLOR, Lime);
      ObjectSet("lThreshold", OBJPROP_COLOR, Red);
      ObjectCreate("hThresholdOpen", OBJ_TREND, 0, iTime(Symbol(), Period(), 0), 0, iTime(Symbol(), Period(), 1), 0);
      ObjectCreate("lThresholdOpen", OBJ_TREND, 0, iTime(Symbol(), Period(), 0), 0, iTime(Symbol(), Period(), 1), 0);
      ObjectSet("hThresholdOpen", OBJPROP_COLOR, Lime);
      ObjectSet("lThresholdOpen", OBJPROP_COLOR, Red);
      ObjectSet("hThresholdOpen", OBJPROP_RAY, FALSE);
      ObjectSet("lThresholdOpen", OBJPROP_RAY, FALSE);
      ObjectCreate("QuantumBarValue", OBJ_LABEL, 0, 0, 0);
      ObjectSetText("QuantumBarValue", "Median Renko " + DoubleToStr(ld_12, 1) + " pip(s)", 8, "Segoe UI", Gray);
      ObjectSet("QuantumBarValue", OBJPROP_CORNER, 3);
      ObjectSet("QuantumBarValue", OBJPROP_XDISTANCE, 5);
      ObjectSet("QuantumBarValue", OBJPROP_YDISTANCE, 5);
   }
   return (0);
}

int deinit() {
   ObjectDelete("hThreshold");
   ObjectDelete("lThreshold");
   ObjectDelete("hThresholdOpen");
   ObjectDelete("lThresholdOpen");
   ObjectDelete("QuantumBarValue");
   return (0);
}

int start() {
   double ld_0;
   double ld_8;
   double ld_16;
   double ld_24;
   f0_0(ld_0, ld_8, ld_16, ld_24);
   ObjectMove("hThreshold", 0, iTime(Symbol(), Period(), 0), ld_0);
   ObjectMove("lThreshold", 0, iTime(Symbol(), Period(), 0), ld_8);
   ObjectMove("hThresholdOpen", 0, iTime(Symbol(), Period(), 0), ld_16);
   ObjectMove("hThresholdOpen", 1, iTime(Symbol(), Period(), 1), ld_16);
   ObjectMove("lThresholdOpen", 0, iTime(Symbol(), Period(), 0), ld_24);
   ObjectMove("lThresholdOpen", 1, iTime(Symbol(), Period(), 1), ld_24);
   return (0);
}

double f0_0(double &ad_0, double &ad_8, double &ad_unused_16, double &ad_unused_24) {
   if (gi_76 == 4) {
      if (iOpen(Symbol(), Period(), 1) - iClose(Symbol(), Period(), 1) > 0.0) {
         ad_0 = iOpen(Symbol(), Period(), 0) + gd_80;
         ad_8 = iOpen(Symbol(), Period(), 0) - gd_80;
      } else {
         ad_0 = iOpen(Symbol(), Period(), 0) + gd_80;
         ad_8 = iOpen(Symbol(), Period(), 0) - gd_80;
      }
   }
   return (0.0);
}