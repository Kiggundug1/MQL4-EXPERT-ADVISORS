//+------------------------------------------------------------------+
//|                                                     EMAAngle.mq4 |
//|                                                           jpkfox |
//|                                                                  |
//| You can use this indicator to measure when the EMA angle is      |
//| "near zero". AngleTreshold determines when the angle for the     |
//| EMA is "about zero": This is when the value is between           |
//| [-AngleTreshold, AngleTreshold] (or when the histogram is red).  |
//|   EMAPeriod: EMA period                                          |
//|   AngleTreshold: The angle value is "about zero" when it is      |
//|     between the values [-AngleTreshold, AngleTreshold].          |      
//|   StartEMAShift: The starting point to calculate the             |   
//|     angle. This is a shift value to the left from the            |
//|     observation point. Should be StartEMAShift > EndEMAShift.    | 
//|   EndEMAShift: The ending point to calculate the               |
//|     angle. This is a shift value to the left from the            | 
//|     observation point. Should be StartEMAShift > EndEMAShift.    |
//|                                                                  |
//|   Modified by MrPip                                              |
//|       Red for down                                               |
//|       Yellow for near zero                                       |
//|       Green for up                                               |
//|  10/15/05  MrPip                                                 |
//|            Corrected problem with USDJPY and optimized code      |   
//|                                                                  |
//+------------------------------------------------------------------+
//mod2008fxtsd ki
#property  copyright "jpkfox"
#property  link      "http://www.strategybuilderfx.com/forums/showthread.php?t=15274&page=1&pp=8"
//---- indicator settings
#property  indicator_separate_window
#property  indicator_buffers 4
#property  indicator_color1   Green
#property  indicator_color2   Red
#property  indicator_color3   Gold
#property  indicator_color4   DeepSkyBlue

#property indicator_width1 2
#property indicator_width2 2
#property indicator_width3 2
#property indicator_width4 1

#property indicator_level1  0.2
#property indicator_level2 -0.2
#property indicator_level3  0.5
#property indicator_level4 -0.5
//#property indicator_level3  0
#property indicator_levelcolor RoyalBlue

//---- indicator parameters
extern int MAPeriod=34;
extern int MA_MODE=1;//0 sma; 1 ema; 2 smma; 3 lwma
extern int MA_PRICE=0;
extern double AngleTreshold=0.2;
extern int StartMAShift=6;
extern int EndMAShift=0;
extern int SigMA_Period  =  9;
extern int SigMA_mode    =  1;//0 sma; 1 ema; 2 smma; 3 lwma

extern string MA_Mode__= "0-sma; 1 ema; 2 smma; 3 lwma";
extern string MA_Price_= "0C 1O 2H 3L 4Md 5Tp 6WghC: Md(HL/2)4,Tp(HLC/3)5,Wgh(HLCC/4)6";

//---- indicator buffers
double UpBuffer[];
double DownBuffer[];
double ZeroBuffer[];
double SigMABuffer[];
double fAngle1[];
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int init()
{
//---- 2 additional buffers are used for counting.
   IndicatorBuffers(5);
//---- drawing settings
   SetIndexStyle(0,DRAW_HISTOGRAM);
   SetIndexStyle(1,DRAW_HISTOGRAM);
   SetIndexStyle(2,DRAW_HISTOGRAM);
   SetIndexStyle(3,DRAW_LINE);


//---- 3 indicator buffers mapping
   if(!SetIndexBuffer(0,UpBuffer) &&
      !SetIndexBuffer(1,DownBuffer) &&
      !SetIndexBuffer(3,SigMABuffer) &&
      !SetIndexBuffer(4,fAngle1) &&
      !SetIndexBuffer(2,ZeroBuffer))
      Print("cannot set indicator buffers!");
//---- name for DataWindow and indicator subwindow label
   IndicatorShortName("MA_AngleZero ("+MAPeriod+", "+DoubleToStr(AngleTreshold,2)+", "+SigMA_Period+")");
   
   SetIndexLabel(0,"");
   SetIndexLabel(1,"");
   SetIndexLabel(2,"");
   SetIndexLabel(3,"SigL");
   IndicatorDigits(MarketInfo(Symbol(),MODE_DIGITS)+2);
//---- initialization done
   return(0);
}
//+------------------------------------------------------------------+
//| The angle for EMA                                                |
//+------------------------------------------------------------------+
int start()
{
   double fEndMA, fStartMA;
   double fAngle, mFactor, dFactor;
   int nLimit, i;
   int nCountedBars;
   double angle;
   int ShiftDif;
 
   if(EndMAShift >= StartMAShift)
   {
      Print("Error: EndEMAShift >= StartEMAShift");
      StartMAShift = 6;
      EndMAShift = 0;      
   }  
         
   nCountedBars = IndicatorCounted();
//---- check for possible errors
   if(nCountedBars<0) 
      return(-1);
//---- last counted bar will be recounted
   if(nCountedBars>0) 
      nCountedBars--;
   nLimit = Bars-nCountedBars;
   dFactor = 3.14159/180.0;
   mFactor = 10000.0;
   if (Symbol() == "USDJPY") mFactor = 100.0;
   ShiftDif = StartMAShift-EndMAShift;
   mFactor /= ShiftDif; 
//---- main loop
   for(i=0; i<nLimit; i++)
   {
      fEndMA=iMA(NULL,0,MAPeriod,0,MA_MODE,MA_PRICE,i+EndMAShift);
      fStartMA=iMA(NULL,0,MAPeriod,0,MA_MODE,MA_PRICE,i+StartMAShift);
      // 10000.0 : Multiply by 10000 so that the fAngle is not too small
      // for the indicator Window.
      fAngle = mFactor * (fEndMA - fStartMA);
//      fAngle = MathArctan(fAngle)/dFactor;
      fAngle1[i]=fAngle;

      DownBuffer[i] = 0.0;
      UpBuffer[i] = 0.0;
      ZeroBuffer[i] = 0.0;
      
      if(fAngle > AngleTreshold)
         UpBuffer[i] = fAngle;
      else if (fAngle < -AngleTreshold)
         DownBuffer[i] = fAngle;
      else ZeroBuffer[i] = fAngle;
   }
//    limit= MathMax(limit,TimeFrame/Period());
//   nLimit = Bars-nCountedBars+SigMA_Period;
   for(i=0; i<nLimit; i++)

     {
     SigMABuffer[i]=iMAOnArray(fAngle1,0,SigMA_Period,0,SigMA_mode,i);

    }

       

  

   return(0);
  }
//+------------------------------------------------------------------+

