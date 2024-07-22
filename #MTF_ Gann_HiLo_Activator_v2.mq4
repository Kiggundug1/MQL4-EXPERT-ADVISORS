//+------------------------------------------------------------------+
//|                            MTF_###Gann_HiLo_Activator_v2###.mq4 
//| MTF by Zathar, mod c codobro
//+------------------------------------------------------------------+

#property indicator_chart_window
#property indicator_buffers 1
#property indicator_color1 Aqua
#property indicator_width1 2

extern int TimeFrame=0;
extern int Lookback=10;
double ExtMapBuffer1[];

int init()
  {
   //---- indicator line
   SetIndexBuffer(0,ExtMapBuffer1);
   SetIndexStyle(0,DRAW_LINE);
   IndicatorShortName("MTF_###Gann_HiLo_Activator_v2###");
   SetIndexLabel(0,"MTF_Gann_HiLo");
  }
//----
   return(0);
 

int start()
  {
   datetime TimeArray[];
   int    i,shift,limit,y=0,counted_bars=IndicatorCounted();
     
   ArrayCopySeries(TimeArray,MODE_TIME,Symbol(),TimeFrame); 
   
   limit=Bars-counted_bars+TimeFrame/Period();
   for(i=0,y=0;i<limit;i++) {
     if (Time[i]<TimeArray[y]) {y++;}   
     ExtMapBuffer1[i]=iCustom(NULL,TimeFrame,"###Gann_HiLo_Activator_v2###",Lookback,0,y); 
   }
   return(0);
  }
//---