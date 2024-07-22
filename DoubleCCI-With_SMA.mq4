//+------------------------------------------------------------------+
//|                                           DoubleCCI-With_EMA.mq4 |
//|                   Copyright © 2005, Jason Robinson (jnrtrading). |
//|                                      http://www.jnrtrading.co.uk |
//+------------------------------------------------------------------+
#property copyright "Copyright © 2005, Jason Robinson (jnrtrading)."
#property link      "http://www.jnrtrading.co.uk"

#property indicator_separate_window
#property indicator_buffers 6
#property indicator_color1 Lime
#property indicator_color2 OrangeRed
#property indicator_color3 DarkKhaki
#property indicator_color4 Yellow
#property indicator_color5 Black
//#property indicator_color6 Black
#property indicator_width1 3
#property indicator_width2 3
#property indicator_width3 2
#property indicator_width4 1
#property indicator_width5 2
//#property indicator_width6 1
#property indicator_level1 100
#property indicator_level2 100
#property indicator_level3 250
#property indicator_level4 350
#property indicator_level5 -350
#property indicator_level6 -250
#property indicator_level7 -100
#property indicator_level8 -100

//---- input parameters
extern int TrendCCI_period = 89;
extern int EntryCCI_period = 21;
extern bool Zero_cross_alert = false;
extern int Alert_level__Includes_negative = 0;
extern bool Show_SMA = true;
extern int SMA_period=30;
extern string SMA_of_TrendCCI_or_EntryCCI = "EntryCCI";
extern bool Automatic_timeframe_setting;
extern int M1_TrendCCI_period = 89;
extern int M1_EntryCCI_period = 21;
extern int M5_TrendCCI_period = 89;
extern int M5_EntryCCI_period = 21;
extern int M15_TrendCCI_period = 14;
extern int M15_EntryCCI_period = 6;
extern int M30_TrendCCI_period = 14;
extern int M30_EntryCCI_period = 6;
extern int H1_TrendCCI_period = 14;
extern int H1_EntryCCI_period = 6;
extern int H4_TrendCCI_period = 14;
extern int H4_EntryCCI_period = 6;
extern int D1_TrendCCI_period = 14;
extern int D1_EntryCCI_period = 6;
extern int W1_TrendCCI_period = 14;
extern int W1_EntryCCI_period = 6;
extern int MN_TrendCCI_period = 14;
extern int MN_EntryCCI_period = 6;


double TrendCCIBuffer[];
double CCIHistogramUpBuffer[];
double CCIHistogramDownBuffer[];
double EntryCCIBuffer[];
double SMA[];
//double ZeroLine[];
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int init()
  {
//---- indicators
   SetIndexStyle(2, DRAW_LINE, STYLE_SOLID, 2);
   SetIndexBuffer(2, TrendCCIBuffer);
   SetIndexStyle(3, DRAW_LINE, STYLE_SOLID, 2);
   SetIndexBuffer(3, EntryCCIBuffer);
   SetIndexStyle(0, DRAW_HISTOGRAM, 0, 4);
   SetIndexBuffer(0, CCIHistogramUpBuffer);
   SetIndexStyle(1, DRAW_HISTOGRAM, 0, 4);
   SetIndexBuffer(1, CCIHistogramDownBuffer);
   SetIndexBuffer(4, SMA);
   SetIndexStyle(4, DRAW_LINE, STYLE_SOLID, 2);
   /*SetIndexBuffer(5, ZeroLine);
   SetIndexStyle(5, DRAW_LINE, STYLE_SOLID, 1);*/
   
   
//----
   return(0);
  }
//+------------------------------------------------------------------+
//| Custor indicator deinitialization function                       |
//+------------------------------------------------------------------+
int deinit()
  {
//---- 
   
//----
   return(0);
  }
//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int start() {

   int limit, trendCCI, entryCCI;
   static datetime prevtime = 0;
   int counted_bars = IndicatorCounted();
//---- check for possible errors
   if(counted_bars < 0) return(-1);
//---- last counted bar will be recounted
   if(counted_bars > 0) counted_bars--;

   limit=Bars-counted_bars;
   
   if (Automatic_timeframe_setting == true) {
      switch(Period()) {
         case 1: trendCCI = M1_TrendCCI_period; entryCCI = M1_EntryCCI_period; break;
         case 5: trendCCI = M5_TrendCCI_period; entryCCI = M5_EntryCCI_period; break;
         case 15: trendCCI = M15_TrendCCI_period; entryCCI = M15_EntryCCI_period; break;
         case 30: trendCCI = M30_TrendCCI_period; entryCCI = M30_EntryCCI_period; break;
         case 60: trendCCI = H1_TrendCCI_period; entryCCI = H1_EntryCCI_period; break;
         case 240: trendCCI = H4_TrendCCI_period; entryCCI = H4_EntryCCI_period; break;
         case 1440: trendCCI = D1_TrendCCI_period; entryCCI = D1_EntryCCI_period; break;
         case 10080: trendCCI = W1_TrendCCI_period; entryCCI = W1_EntryCCI_period; break;
         case 43200: trendCCI = MN_TrendCCI_period; entryCCI = MN_EntryCCI_period; break;
      }
   }
   else {
      trendCCI = TrendCCI_period;
      entryCCI = EntryCCI_period;
   }
      IndicatorShortName("(TrendCCI: " + trendCCI + ", EntryCCI: " + entryCCI + ") ");   
      for( int i = 0; i <= limit; i++) { //int i = limit; i >= 0; i--) { //int i = 0; i <= limit; i++) {
        TrendCCIBuffer[i] = iCCI(NULL, 0, trendCCI, PRICE_TYPICAL, i);
      
      if (TrendCCIBuffer[i] >= 0 )
         CCIHistogramUpBuffer[i] = TrendCCIBuffer[i];
      else
         CCIHistogramUpBuffer[i] = 0;
    
      if (TrendCCIBuffer[i] < 0 )
         CCIHistogramDownBuffer[i] = TrendCCIBuffer[i];
      else
         CCIHistogramDownBuffer[i]=0;
      
      EntryCCIBuffer[i] = iCCI(NULL, 0, entryCCI, PRICE_CLOSE, i);
      //ZeroLine[i] = 0;      
      
   }
   if (Show_SMA == true) {
      if (SMA_of_TrendCCI_or_EntryCCI == "TrendCCI")
         for(i=0; i<limit; i++)
            SMA[i] = iMAOnArray(TrendCCIBuffer, 0, SMA_period, 0, MODE_SMA, i);
      else if (SMA_of_TrendCCI_or_EntryCCI == "EntryCCI")
         for(i=0; i<limit; i++)
            SMA[i] = iMAOnArray(EntryCCIBuffer, 0, SMA_period, 0, MODE_SMA, i);
   }
   if (Zero_cross_alert == true) {
      if (prevtime == Time[0]) {
         return(0);
      }
      else {
         if(EntryCCIBuffer[0] < -Alert_level__Includes_negative) {
            if((TrendCCIBuffer[0] < -Alert_level__Includes_negative) && (TrendCCIBuffer[1] >= -Alert_level__Includes_negative)) {
               Alert(Symbol(), " M", Period(), " Trend & Entry CCI Have both crossed below zero");
            }
         }
         else if(EntryCCIBuffer[0] > Alert_level__Includes_negative) {
            if((TrendCCIBuffer[0] > Alert_level__Includes_negative) && (TrendCCIBuffer[1] <= Alert_level__Includes_negative)) {
               Alert(Symbol(), " M", Period(), " Trend & Entry CCI Have both crossed above zero");
            }
         }
         prevtime = Time[0];
      }
   }   
//----
   return(0);
  }
//+------------------------------------------------------------------+