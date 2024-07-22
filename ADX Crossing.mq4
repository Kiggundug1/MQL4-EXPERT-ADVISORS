//+------------------------------------------------------------------+
//| ADX Crossing.mq4 
//| Amir
//+------------------------------------------------------------------+
#property  copyright "Author - Amir"

#property indicator_chart_window
#property indicator_buffers 2
#property indicator_color1 Lime
#property indicator_color2 Red

//---- input parameters
extern int ADXbars=14;
extern int CountBars=350;

//---- buffers
double val1[];
double val2[];
double b4plusdi,nowplusdi,b4minusdi,nowminusdi;

//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int init()
  {
   string short_name;
//---- indicator line
   IndicatorBuffers(2);
   SetIndexStyle(0,DRAW_ARROW);
   SetIndexArrow(0,108);
   SetIndexStyle(1,DRAW_ARROW);
   SetIndexArrow(1,108);
   SetIndexBuffer(0,val1);
   SetIndexBuffer(1,val2);
//----
   return(0);
  }
//+------------------------------------------------------------------+
//| AltrTrend_Signal_v2_2                                            |
//+------------------------------------------------------------------+
int start()
  {   
   if (CountBars>=Bars) CountBars=Bars;
   SetIndexDrawBegin(0,Bars-CountBars);
   SetIndexDrawBegin(1,Bars-CountBars);
   int i,shift,counted_bars=IndicatorCounted();


   //---- check for possible errors
   if(counted_bars<0) return(-1);

   //---- initial zero
   if(counted_bars<1)
     {
      for(i=1;i<=CountBars;i++) val1[CountBars-i]=0.0;
      for(i=1;i<=CountBars;i++) val2[CountBars-i]=0.0;
     } 

for (shift = CountBars; shift>=0; shift--) 
{ 

	b4plusdi=iADX(NULL,0,ADXbars,PRICE_CLOSE,MODE_PLUSDI,shift-1);
	nowplusdi=iADX(NULL,0,ADXbars,PRICE_CLOSE,MODE_PLUSDI,shift);
	b4minusdi=iADX(NULL,0,ADXbars,PRICE_CLOSE,MODE_MINUSDI,shift-1);
	nowminusdi=iADX(NULL,0,ADXbars,PRICE_CLOSE,MODE_MINUSDI,shift); 
if (b4plusdi>b4minusdi && nowplusdi<nowminusdi)
{
	val1[shift]=Low[shift]-5*Point;
}
if (b4plusdi<b4minusdi && nowplusdi>nowminusdi) 
{
	val2[shift]=High[shift]+5*Point;
}


}
   return(0);
  }
//+------------------------------------------------------------------+