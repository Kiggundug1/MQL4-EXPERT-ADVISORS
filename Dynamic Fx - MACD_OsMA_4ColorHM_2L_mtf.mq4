//+------------------------------------------------------------------+
//|                                            MACD_OsMA_ColorLH.mq4 |
//|                      Copyright © 2004, MetaQuotes Software Corp. |
//|                                       http://www.metaquotes.net/ |
//+------------------------------------------------------------------+
#property  copyright "Copyright © 2004, MetaQuotes Software Corp."
#property  link      "http://www.metaquotes.net/"
//---- indicator settings
#property  indicator_separate_window
#property  indicator_buffers 6
#property  indicator_color1  Black
#property  indicator_color2  Black
#property  indicator_color3  White
#property  indicator_color4  White
#property  indicator_color5  CLR_NONE
#property  indicator_color6  CLR_NONE 



//---- indicator buffers
extern int FastEMA =12;
extern int SlowEMA =26;
extern int SignalSMA =9;
extern int AppliedPrice =PRICE_CLOSE;
extern   double    OsmaMultiplier  = 3;
extern int TimeFrame = 0;
extern string  note_TimeFrames = "M1;5,15,30,60H1;240H4;1440D1;10080W1;43200MN|0-CurrentTF";
extern string note_AppliedPrice = "0O,1C 2H3L,4Md 5Tp 6WghC: Md(HL/2)4,Tp(HLC/3)5,Wgh(HLCC/4)6";
string IndicatorFileName;


double     ind_buffer1[], ind_buffer1s[];
double     ind_buffer2[], ind_buffer2s[];
double     ind_buffer3[];
double     ind_buffer4[];
double     ind_buffer5[];

//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int init()
  {
//---- 1 additional buffer used for counting.
   IndicatorBuffers(7);
   //---- drawing settings
   SetIndexStyle(0,DRAW_HISTOGRAM);
   SetIndexStyle(1,DRAW_HISTOGRAM);
   SetIndexStyle(2,DRAW_HISTOGRAM);
   SetIndexStyle(3,DRAW_HISTOGRAM);   
  
   SetIndexStyle(4,DRAW_LINE);
   SetIndexStyle(5,DRAW_LINE);   
   
   IndicatorDigits(Digits+2);
   
   SetIndexDrawBegin(0,34);
   SetIndexDrawBegin(1,34);
   SetIndexDrawBegin(2,34);
   SetIndexDrawBegin(3,34);

   SetIndexDrawBegin(4,34);
   SetIndexDrawBegin(5,34);

//---- 3 indicator buffers mapping
  SetIndexBuffer(0,ind_buffer1)  ;

//---- 3 indicator buffers mapping
   if(!SetIndexBuffer(0,ind_buffer1) &&
      !SetIndexBuffer(1,ind_buffer1s) &&
      !SetIndexBuffer(2,ind_buffer2) &&
      !SetIndexBuffer(3,ind_buffer2s) &&
      !SetIndexBuffer(4,ind_buffer4) &&
      !SetIndexBuffer(5,ind_buffer5) &&
      !SetIndexBuffer(6,ind_buffer3))
      Print("cannot set indicator buffers!");

   SetIndexLabel(0,"");
   SetIndexLabel(1,"");
   SetIndexLabel(2,"");
   SetIndexLabel(3,"");


//---- name for DataWindow and indicator subwindow label

   IndicatorFileName = WindowExpertName(); 
   IndicatorShortName("MACD_OsMA["+TimeFrame+"]("+FastEMA+","+SlowEMA+","+SignalSMA+")");
   if (TimeFrame < Period()) TimeFrame = Period();


//---- initialization done
   return(0);
  }
//+------------------------------------------------------------------+
//| Awesome Oscillator                                               |
//+------------------------------------------------------------------+
int start()
  {
    int counted_bars1=IndicatorCounted();
   int      limit1,i1;
   if(counted_bars1 < 0) return(-1);
   limit1 = Bars-counted_bars1;
   if (TimeFrame != Period())
      {
         limit1 = MathMax(limit1,TimeFrame/Period());
         datetime TimeArray[];
        ArrayCopySeries(TimeArray ,MODE_TIME ,NULL,TimeFrame);
            for(i1=0,int y=0; i1<limit1; i1++)
           {
              if(Time[i1]<TimeArray[y]) y++;
              ind_buffer1   [i1]   = iCustom(NULL,TimeFrame,IndicatorFileName,0,y);
              ind_buffer1s  [i1]   = iCustom(NULL,TimeFrame,IndicatorFileName,1,y);
              ind_buffer2   [i1]   = iCustom(NULL,TimeFrame,IndicatorFileName,2,y);
              ind_buffer2s  [i1]   = iCustom(NULL,TimeFrame,IndicatorFileName,3,y);
              ind_buffer4   [i1]   = iCustom(NULL,TimeFrame,IndicatorFileName,4,y);
              ind_buffer5   [i1]   = iCustom(NULL,TimeFrame,IndicatorFileName,5,y);
              ind_buffer3   [i1]   = iCustom(NULL,TimeFrame,IndicatorFileName,6,y);
 
 
            }
         return(0);         
      }
 
   int    limit;
   int    counted_bars=IndicatorCounted();
   double prev,current;
//---- check for possible errors
   if(counted_bars<0) return(-1);
   //---- last counted bar will be recounted
   if(counted_bars>0) counted_bars--;
   limit=Bars-counted_bars;
//---- macd counted in the 1-st additional buffer
   for(int i=0; i<limit; i++)

      ind_buffer4[i]=iMACD(NULL,0,FastEMA,SlowEMA,SignalSMA,AppliedPrice,MODE_MAIN,i);
   for(i=0; i<limit; i++)

      ind_buffer5[i]=iMACD(NULL,0,FastEMA,SlowEMA,SignalSMA,AppliedPrice,MODE_SIGNAL,i);

   for(i=0; i<limit; i++)
 
      ind_buffer3[i]=(iOsMA(NULL,0,FastEMA,SlowEMA,SignalSMA,AppliedPrice,i)*OsmaMultiplier);

//---- dispatch values between 2 buffers
   bool up=true;
   for(i=limit-1; i>=0; i--)
     {
      current=ind_buffer3[i];
      prev=ind_buffer3[i+1];
      if (((current<0)&&(prev>0))||(current<0))   up= false;    
      if (((current>0)&&(prev<0))||(current>0))   up= true;      
      
      if(!up)
        {
         if(current > prev)
            {
            ind_buffer1[i]=0.0;
            ind_buffer1s[i]=0.0;             
            ind_buffer2[i]=0.0;
            ind_buffer2s[i]=current;
            }        
            else
            {
            ind_buffer1[i]=0.0;
            ind_buffer1s[i]=0.0;            
            ind_buffer2[i]=current;
            ind_buffer2s[i]=0.0;
            }             
        }
        else
        {
         if(current < prev)
           {
            ind_buffer1[i]=0.0;
            ind_buffer1s[i]=current;
            ind_buffer2[i]=0.0;
            ind_buffer2s[i]=0.0;
           }
        else
           {
            ind_buffer1[i]=current;
            ind_buffer1s[i]=0.0;
            ind_buffer2[i]=0.0;
            ind_buffer2s[i]=0.0;
            }           
         }       
     }
//---- done
   return(0);
  }

