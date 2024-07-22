//+-------------------------------------------------------------------+
//|                                                     T3 2Color.mq4 |
//|                                                 2012 04 14 Cody_r |
//|                                         Derived from T3 clean.mq4 |
//|                                                            mladen |
//|   Modified to use one buffer for T3, and 2 more for color change  |
//| 2012 05 02 Corrected the sign of the histo assignment
//|            Corrected a limit in the histo assignment -3 to -1
//+-------------------------------------------------------------------+

#property indicator_separate_window
#property indicator_buffers 3
#property indicator_color1 C'0,90,255'
#property indicator_color2 Red
#property indicator_width1 2
#property indicator_width2 2
#property indicator_minimum 0
#property indicator_maximum 1

extern int    T3Period  = 8;
extern int    T3Price   = PRICE_CLOSE;
 double b         = 0.618;
 string TimeFrame = "current time frame";
extern int    BarCount  = 1500;

double Uptrend[];
double Dntrend[];
double t3Array[];

double e1,e2,e3,e4,e5,e6;
double c1,c2,c3,c4;
double w1,w2,b2,b3;
int    t3.period;
double ae1[];
double ae2[];
double ae3[];
double ae4[];
double ae5[];
double ae6[];
double trend[];
datetime       OldTime             = -999999;
int            OldBars             = -999999;                                                                                                                                          //

int    timeFrame;
string IndicatorFileName;


//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+

int init()
{
  SetIndexBuffer(0, Uptrend);
  SetIndexBuffer(1, Dntrend);
  SetIndexBuffer(2, t3Array);
  SetIndexStyle(0,DRAW_HISTOGRAM,STYLE_SOLID,2);
  SetIndexStyle(1,DRAW_HISTOGRAM,STYLE_SOLID,2);
  SetIndexStyle(2,DRAW_NONE);

   ArrayResize(ae1, BarCount); ArraySetAsSeries(ae1, true);
   ArrayResize(ae2, BarCount); ArraySetAsSeries(ae2, true);
   ArrayResize(ae3, BarCount); ArraySetAsSeries(ae3, true);
   ArrayResize(ae4, BarCount); ArraySetAsSeries(ae4, true);
   ArrayResize(ae5, BarCount); ArraySetAsSeries(ae5, true);
   ArrayResize(ae6, BarCount); ArraySetAsSeries(ae6, true);
   ArrayResize(trend, BarCount); ArraySetAsSeries(trend, true);

   OldTime = Time[0];

  SetIndexLabel(0,NULL);
  SetIndexLabel(1,NULL);
  SetIndexLabel(2,("T3 Price "+TimeFrameToString(timeFrame)+"("+T3Period+")"));

   timeFrame = stringToTimeFrame(TimeFrame);
   IndicatorShortName("T3 Price "+TimeFrameToString(timeFrame)+"("+T3Period+")");
   IndicatorFileName = WindowExpertName();
   if (t3.period != T3Period)
   {
      t3.period = T3Period;
         b2 = b*b;
         b3 = b2*b;

         c1 = -b3;
         c2 = (3*(b2+b3));
         c3 = -3*(2*b2+b+b3);
         c4 = (1+3*b+b3+3*b2);

         w1 = 2 / (2 + 0.5*(MathMax(1,T3Period)-1));
         w2 = 1 - w1;
   }
   return(0);
}


//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+

int start()
{
   int counted_bars=IndicatorCounted();
   int i,limit;

  if (Time[0] != OldTime) SyncExtraBuffers();

   if(counted_bars<0) return(-1);
   if(counted_bars>0) counted_bars--;
   limit = MathMin(BarCount, Bars - 1 - counted_bars);

   for(i=limit; i>=0; i--)
   {
      double price = iMA(NULL,0,1,0,MODE_SMA, T3Price, i);
      e1 = w1*price + w2*ae1[i+1];
      e2 = w1*e1    + w2*ae2[i+1];
      e3 = w1*e2    + w2*ae3[i+1];
      e4 = w1*e3    + w2*ae4[i+1];
      e5 = w1*e4    + w2*ae5[i+1];
      e6 = w1*e5    + w2*ae6[i+1];
         t3Array[i]=c1*e6 + c2*e5 + c3*e4 + c4*e3;
         ae1[i] = e1;
         ae2[i] = e2;
         ae3[i] = e3;
         ae4[i] = e4;
         ae5[i] = e5;
         ae6[i] = e6;
   }

  for (int x = limit-1; x >= 0; x--)
  {
    trend[x] = trend[x+1];
    if (t3Array[x]> t3Array[x+1]) trend[x] = 1;
    if (t3Array[x]< t3Array[x+1]) trend[x] =-1;

    if (trend[x]>0)
    {
      Uptrend[x] = trend[x];
      //if (trend[x+1]<0) Uptrend[x+1]=trend[x+1];
      Dntrend[x] = EMPTY_VALUE;
    }
    else
      if (trend[x]<0)
    {
      Dntrend[x] = -trend[x];
      //if (trend[x+1]>0) Dntrend[x+1]=-trend[x+1];
      Uptrend[x] = EMPTY_VALUE;
    }

    //Print( " trend=",trend[x]);
  }

   return(0);
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//|
//+------------------------------------------------------------------+

int stringToTimeFrame(string tfs)
{
   int tf=0;
       tfs = StringTrimLeft(StringTrimRight(StringUpperCase(tfs)));
         if (tfs=="M1" || tfs=="1")     tf=PERIOD_M1;
         if (tfs=="M5" || tfs=="5")     tf=PERIOD_M5;
         if (tfs=="M15"|| tfs=="15")    tf=PERIOD_M15;
         if (tfs=="M30"|| tfs=="30")    tf=PERIOD_M30;
         if (tfs=="H1" || tfs=="60")    tf=PERIOD_H1;
         if (tfs=="H4" || tfs=="240")   tf=PERIOD_H4;
         if (tfs=="D1" || tfs=="1440")  tf=PERIOD_D1;
         if (tfs=="W1" || tfs=="10080") tf=PERIOD_W1;
         if (tfs=="MN" || tfs=="43200") tf=PERIOD_MN1;
         if (tf<Period()) tf=Period();
  return(tf);
}

string TimeFrameToString(int tf)
{
   string tfs="";

   if (tf!=Period())
      switch(tf) {
         case PERIOD_M1:  tfs="M1"  ; break;
         case PERIOD_M5:  tfs="M5"  ; break;
         case PERIOD_M15: tfs="M15" ; break;
         case PERIOD_M30: tfs="M30" ; break;
         case PERIOD_H1:  tfs="H1"  ; break;
         case PERIOD_H4:  tfs="H4"  ; break;
         case PERIOD_D1:  tfs="D1"  ; break;
         case PERIOD_W1:  tfs="W1"  ; break;
         case PERIOD_MN1: tfs="MN1";
      }
   return(tfs);
}

string StringUpperCase(string str)
{
   string   s = str;
   int      lenght = StringLen(str) - 1;
   int      char;

   while(lenght >= 0)
      {
         char = StringGetChar(s, lenght);

         if((char > 96 && char < 123) || (char > 223 && char < 256))
                  s = StringSetChar(s, lenght, char - 32);
         else
              if(char > -33 && char < 0)
                  s = StringSetChar(s, lenght, char + 224);
         lenght--;
   }

   return(s);
}

//+------------------------------------------------------------------+
//| Shift array elements on new bar                                  |
//+------------------------------------------------------------------+
void SyncExtraBuffers()
   {
   for (int i = BarCount - 1; i >= 0; i--)
      {
      ae1[i + 1] = ae1[i];
      ae2[i + 1] = ae2[i];
      ae3[i + 1] = ae3[i];
      ae4[i + 1] = ae4[i];
      ae5[i + 1] = ae5[i];
      ae6[i + 1] = ae6[i];
      trend[i + 1] = trend[i];
      }
//---- reset counter
   OldTime = Time[0];
   }

