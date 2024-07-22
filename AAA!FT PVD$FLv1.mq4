
// +----------------------------------------------------------------------------------------+ //
// |                                         !FT PVD$FLv1  \¦/                              | //
// |                            Knowledge of the ancients (ò ó)                             | //
// |_________________________________________________o0o___(_)___o0o________________________| //
// |_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|____|_____| //
// |                                                                                   2011 | //
// |----------------------------------------------------------------------------------------| //
// | Programming language:     MQL4                                                         | //
// | Development platform:     MetaTrader 4                                                 | //
// |          End product:     Indicator for MetaTrader 4 designed                          | //
// |                           for Build 229 (current version)                              | //
// +----------------------------------------------------------------------------------------+ //

#property indicator_chart_window
#property indicator_buffers 2
#property indicator_color1 C'200,50,50'
#property indicator_width1 1      
#property indicator_color2 C'50,50,200'
#property indicator_width2 1

extern int GmtShift;
extern int MA_Period = 2;
extern int MA_Method = MODE_SMMA;
extern int PriceMode = PRICE_WEIGHTED;
double EXBUFFER[];
double EXBUFFER1[];

double OPening,Buf;
int init()
 { SetIndexStyle(0,DRAW_ARROW,STYLE_SOLID,3);
   SetIndexArrow(0,168);
   SetIndexStyle(1,DRAW_ARROW,STYLE_SOLID,3);
   SetIndexArrow(1,168);
   
   SetIndexBuffer(0, EXBUFFER);
   SetIndexBuffer(1, EXBUFFER1);
   
return(0);}
int start()
 {
int counted_bars = IndicatorCounted();
int limit, i;
if(counted_bars == 0)
 { if(Period() > PERIOD_H4) return(-1);}
   if(counted_bars < 0) return(-1);
   limit = (Bars - counted_bars) - 1;
   for(i = limit; i >= 0; i--)
 { if (TimeDayOfWeek(Time[i+1])!=0)
 { if(TimeDay(Time[i]) != TimeDay(Time[i+1]))
 { OPening = Open[i-GmtShift];}}
   Buf = iMA(Symbol(),0,MA_Period,0,MA_Method,PriceMode,i);
   EXBUFFER[i-GmtShift] = OPening;
   EXBUFFER1[i-GmtShift] = OPening;
  
  
   if ((OPening>Buf)){EXBUFFER1[i]=EMPTY_VALUE;}}
return(0);
 }