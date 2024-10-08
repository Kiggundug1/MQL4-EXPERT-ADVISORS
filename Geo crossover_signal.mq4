//+------------------------------------------------------------------+
//|                               AllAveragesCrossover_v1.5 600+.mq4 |
//|                                Copyright © 2015, TrendLaboratory |
//|            http://finance.groups.yahoo.com/group/TrendLaboratory |
//|                                   E-mail: igorad2003@yahoo.co.uk |
//+------------------------------------------------------------------+
// List of MAs:
// MA_Method= 0: SMA        - Simple Moving Average
// MA_Method= 1: EMA        - Exponential Moving Average
// MA_Method= 2: Wilder     - Wilder Exponential Moving Average
// MA_Method= 3: LWMA       - Linear Weighted Moving Average 
// MA_Method= 4: SineWMA    - Sine Weighted Moving Average
// MA_Method= 5: TriMA      - Triangular Moving Average
// MA_Method= 6: LSMA       - Least Square Moving Average (or EPMA, Linear Regression Line)
// MA_Method= 7: SMMA       - Smoothed Moving Average
// MA_Method= 8: HMA        - Hull Moving Average by Alan Hull
// MA_Method= 9: ZeroLagEMA - Zero-Lag Exponential Moving Average
// MA_Method=10: DEMA       - Double Exponential Moving Average by Patrick Mulloy
// MA_Method=11: T3_basic   - T3 by T.Tillson (original version)
// MA_Method=12: ITrend     - Instantaneous Trendline by J.Ehlers
// MA_Method=13: Median     - Moving Median
// MA_Method=14: GeoMean    - Geometric Mean
// MA_Method=15: REMA       - Regularized EMA by Chris Satchwell
// MA_Method=16: ILRS       - Integral of Linear Regression Slope 
// MA_Method=17: IE/2       - Combination of LSMA and ILRS 
// MA_Method=18: TriMAgen   - Triangular Moving Average generalized by J.Ehlers
// MA_Method=19: VWMA       - Volume Weighted Moving Average 
// MA_Method=20: JSmooth    - Smoothing by Mark Jurik
// MA_Method=21: SMA_eq     - Simplified SMA
// MA_Method=22: ALMA       - Arnaud Legoux Moving Average
// MA_Method=23: TEMA       - Triple Exponential Moving Average by Patrick Mulloy
// MA_Method=24: T3         - T3 by T.Tillson (correct version)
// MA_Method=25: Laguerre   - Laguerre filter by J.Ehlers
// MA_Method=26: MD         - McGinley Dynamic

// List of Prices:
// Price    = 0 - Close  
// Price    = 1 - Open  
// Price    = 2 - High  
// Price    = 3 - Low  
// Price    = 4 - Median Price   = (High+Low)/2  
// Price    = 5 - Typical Price  = (High+Low+Close)/3  
// Price    = 6 - Weighted Close = (High+Low+Close*2)/4

 
#property copyright "Copyright © 2015, TrendLaboratory"
#property link      "http://finance.groups.yahoo.com/group/TrendLaboratory"

#property indicator_chart_window
#property indicator_buffers 6

#property indicator_color1  clrRed
#property indicator_color2  clrWhite
#property indicator_color3  clrDeepSkyBlue
#property indicator_color4  clrRed
#property indicator_color5  clrBlue
#property indicator_color6  clrRed

#property indicator_width1  12
#property indicator_width2  12
#property indicator_width3  1
#property indicator_width4  1
#property indicator_width5  15 
#property indicator_width6  15

//---- 

extern int     TimeFrame             =    0;   //TimeFrame in min
extern string  FastMA                = "--- Fast MA ---";
extern int     FastPrice             =    0;   //Price Mode (0...10)
extern int     FastLength            =    21;   //Period of smoothing
extern int     FastMode              =    10;   //See list above
extern int     FastShift             =    0;   //Fast MA Displace

extern string  SlowMA                = "--- Slow MA ---";
extern int     SlowPrice             =    0;   //Price Mode (0...10)
extern int     SlowLength            =   34;   //Period of smoothing
extern int     SlowMode              =    10;   //See list above
extern int     SlowShift             =    0;   //Slow MA Displace

extern bool    ShowFilled            = true;
extern int     CountBars             =    0;   //Number of bars counted: 0-all bars   
   
extern string  Alerts                = "--- Alerts & E-Mails ---";
extern int     AlertMode             =    0;
extern int     AlertShift            =    1;   //Alert Shift:0-current bar,1-previous bar
extern int     SoundsNumber          =    5;   //Number of sounds after Signal
extern int     SoundsPause           =    5;   //Pause in sec between sounds 
extern string  UpSound               = "alert.wav";
extern string  DnSound               = "alert2.wav";
extern int     EmailMode             =    0;   //0-on,1-off   
extern int     EmailsNumber          =    1;   //0-on,1-off


double uptrend[];
double dntrend[];
double fast[];
double slow[];
double buy[];
double sell[];
double trend[];
double fastshift[];
double slowshift[];
double fastprice[];
double slowprice[];

double   tmp[][2][2], ma[2][3];
int      cBars, draw_begin, fastsize, slowsize;
datetime prevtime[2], preTime, ptime;
string   IndicatorName, TF, fast_name, slow_name;
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int init()
{
   if(TimeFrame <= Period()) TimeFrame = Period();
   TF = tf(TimeFrame);
   if(TF  == "N/A") TimeFrame = Period();
   
   IndicatorDigits(Digits);
//----    
   IndicatorBuffers(11);
   SetIndexBuffer( 0,  uptrend); SetIndexStyle(0,DRAW_HISTOGRAM); 
   SetIndexBuffer( 1,  dntrend); SetIndexStyle(1,DRAW_HISTOGRAM); 
   SetIndexBuffer( 2,     fast); SetIndexStyle(2,     DRAW_LINE); 
   SetIndexBuffer( 3,     slow); SetIndexStyle(3,     DRAW_LINE); 
   SetIndexBuffer( 4,      buy); SetIndexStyle(4,    DRAW_ARROW); SetIndexArrow(4,233);    
   SetIndexBuffer( 5,     sell); SetIndexStyle(5,    DRAW_ARROW); SetIndexArrow(5,234);    
   SetIndexBuffer( 6,    trend);
   SetIndexBuffer( 7,fastshift); 
   SetIndexBuffer( 8,slowshift);
   SetIndexBuffer( 9,fastprice);
   SetIndexBuffer(10,slowprice);
//----   
     
   fast_name   = averageName(FastMode,fastsize);
   slow_name   = averageName(SlowMode,slowsize);
      
   IndicatorName = WindowExpertName();
   
   IndicatorShortName(IndicatorName+"["+TF+"]("+FastPrice+","+FastLength+","+fast_name+","+SlowPrice+","+SlowLength+","+slow_name+")");
   
   SetIndexLabel(0,fast_name+"("+FastLength+")");
   SetIndexLabel(1,slow_name+"("+SlowLength+")");
   SetIndexLabel(2,"buySignal");
   SetIndexLabel(3,"sellSignal");
//----         
   if(CountBars == 0) cBars = iBars(NULL,TimeFrame)*TimeFrame/Period() - MathMax(FastLength,SlowLength); else cBars = CountBars*TimeFrame/Period();
  
   draw_begin = Bars - cBars;
     
   SetIndexDrawBegin(0,draw_begin);
   SetIndexDrawBegin(1,draw_begin);
   SetIndexDrawBegin(2,draw_begin);
   SetIndexDrawBegin(3,draw_begin);
   SetIndexDrawBegin(4,draw_begin);
   SetIndexDrawBegin(5,draw_begin);   
//----   
   ArrayResize(tmp,MathMax(fastsize,slowsize));
    
   
   return(0);
}
//-----
int deinit()
{
   Comment("");
   return(0);
}


//+------------------------------------------------------------------+
//|  Geo Crossover_signal                              |
//+------------------------------------------------------------------+

int start()
{
   int shift,limit, counted_bars=IndicatorCounted();
      
   if(counted_bars > 0) limit = Bars - counted_bars - 1;
   if(counted_bars < 0) return(0);
   if(counted_bars < 1)
   { 
   limit = Bars - 1;   
      for(int i=limit;i>=0;i--) 
      {
      fast[i] = EMPTY_VALUE;   
      slow[i] = EMPTY_VALUE;
      buy [i] = EMPTY_VALUE;   
      sell[i] = EMPTY_VALUE;
      }
   }   
  
   if(FastShift < 0) int fastlimit = MathAbs(FastShift); else fastlimit = limit;
   if(SlowShift < 0) int slowlimit = MathAbs(SlowShift); else slowlimit = limit; 
      
   int limit1 = MathMax(limit,MathMax(fastlimit,slowlimit));  
   
   
   if(TimeFrame != Period())
   {
   limit = TimeFrame/Period()*(limit1+1);   
   
      for(shift = 0;shift < limit;shift++) 
      {	
      int y = iBarShift(NULL,TimeFrame,Time[shift]);
	   
	   fast[shift] = iCustom(NULL,TimeFrame,IndicatorName,0,"",FastPrice,FastLength,FastMode,FastShift,"",SlowPrice,SlowLength,SlowMode,SlowShift,ShowFilled,CountBars,
	                         "",AlertMode,AlertShift,SoundsNumber,SoundsPause,UpSound,DnSound,EmailMode,EmailsNumber,2,y);
      slow[shift] = iCustom(NULL,TimeFrame,IndicatorName,0,"",FastPrice,FastLength,FastMode,FastShift,"",SlowPrice,SlowLength,SlowMode,SlowShift,ShowFilled,CountBars,
                            "",AlertMode,AlertShift,SoundsNumber,SoundsPause,UpSound,DnSound,EmailMode,EmailsNumber,3,y);
	   buy [shift] = iCustom(NULL,TimeFrame,IndicatorName,0,"",FastPrice,FastLength,FastMode,FastShift,"",SlowPrice,SlowLength,SlowMode,SlowShift,ShowFilled,CountBars,
	                         "",AlertMode,AlertShift,SoundsNumber,SoundsPause,UpSound,DnSound,EmailMode,EmailsNumber,4,y);
      sell[shift] = iCustom(NULL,TimeFrame,IndicatorName,0,"",FastPrice,FastLength,FastMode,FastShift,"",SlowPrice,SlowLength,SlowMode,SlowShift,ShowFilled,CountBars,
                            "",AlertMode,AlertShift,SoundsNumber,SoundsPause,UpSound,DnSound,EmailMode,EmailsNumber,5,y);
      
         if(ShowFilled)
         {
         uptrend[shift] = iCustom(NULL,TimeFrame,IndicatorName,0,"",FastPrice,FastLength,FastMode,FastShift,"",SlowPrice,SlowLength,SlowMode,SlowShift,ShowFilled,CountBars,
	                            "",AlertMode,AlertShift,SoundsNumber,SoundsPause,UpSound,DnSound,EmailMode,EmailsNumber,0,y);
         dntrend[shift] = iCustom(NULL,TimeFrame,IndicatorName,0,"",FastPrice,FastLength,FastMode,FastShift,"",SlowPrice,SlowLength,SlowMode,SlowShift,ShowFilled,CountBars,
                               "",AlertMode,AlertShift,SoundsNumber,SoundsPause,UpSound,DnSound,EmailMode,EmailsNumber,1,y);
	      }
      }
      
      if(CountBars > 0)
      {
      SetIndexDrawBegin(0,Bars - cBars);   
      SetIndexDrawBegin(1,Bars - cBars);
      SetIndexDrawBegin(2,Bars - cBars);
      SetIndexDrawBegin(3,Bars - cBars);   
      SetIndexDrawBegin(4,Bars - cBars);
      SetIndexDrawBegin(5,Bars - cBars);
      }   
	
	return(0);
	}
   else
   { 
      for(shift=limit;shift>=0;shift--) 
      {
         if(FastPrice <= 6) fastprice[shift] = iMA(NULL,0,1,0,0,FastPrice,shift);   
         else
         if(FastPrice > 6 && FastPrice <= 10) fastprice[shift] = HeikenAshi(FastPrice-7,cBars + FastLength,shift);
         
         if(SlowPrice <= 6) slowprice[shift] = iMA(NULL,0,1,0,0,SlowPrice,shift);   
         else
         if(SlowPrice > 6 && SlowPrice <= 10) slowprice[shift] = HeikenAshi(SlowPrice-7,cBars + SlowLength,shift);
      
      fastshift[shift] = allAveragesOnArray(0,fastprice,FastLength,FastMode,fastsize,cBars + FastLength,shift); 
      slowshift[shift] = allAveragesOnArray(1,slowprice,SlowLength,SlowMode,slowsize,cBars + SlowLength,shift); 
      }
       
      
      for(shift=limit1;shift>=0;shift--) 
      {
      if(FastShift >=0 ||(FastShift < 0 && shift >= MathAbs(FastShift))) fast[shift] = fastshift[shift+FastShift]; 
      if(SlowShift >=0 ||(SlowShift < 0 && shift >= MathAbs(SlowShift))) slow[shift] = slowshift[shift+SlowShift]; 
      
      trend[shift] = trend[shift+1];
      
      buy [shift]  = EMPTY_VALUE;
      sell[shift]  = EMPTY_VALUE;
   
      
      if(fast[shift] > slow[shift] && fast[shift] != EMPTY_VALUE && trend[shift+1] != 1) trend[shift] = 1;
      if(fast[shift] < slow[shift] && slow[shift] != EMPTY_VALUE && trend[shift+1] !=-1) trend[shift] =-1;
      
      double gap = 0.5*MathCeil(iATR(NULL,0,14,shift)/Point);
         
         if(trend[shift] != trend[shift+1])
         {
         if(trend[shift] > 0) buy [shift] = MathMin(fast[shift],slow[shift]) -   gap*Point;  
         if(trend[shift] < 0) sell[shift] = MathMax(fast[shift],slow[shift]) + 2*gap*Point; 
         }
         
         if(ShowFilled)
         {
         uptrend[shift] = slow[shift];
         dntrend[shift] = fast[shift];
         }
      }
         
      if(CountBars > 0)
      {
      SetIndexDrawBegin(0,Bars - cBars);   
      SetIndexDrawBegin(1,Bars - cBars);
      SetIndexDrawBegin(2,Bars - cBars);
      SetIndexDrawBegin(3,Bars - cBars);   
      SetIndexDrawBegin(4,Bars - cBars);
      SetIndexDrawBegin(5,Bars - cBars);
      }   
      
   
      if(AlertMode > 0)
      {
      bool upTrend = trend[limit1+AlertShift] > 0 && trend[limit1+AlertShift+1] <= 0;                  
      bool dnTrend = trend[limit1+AlertShift] < 0 && trend[limit1+AlertShift+1] >= 0;
        
         if(upTrend || dnTrend)
         {
            if(isNewBar(TimeFrame))
            {
            BoxAlert(upTrend," : BUY Signal @ " +DoubleToStr(Close[limit1+AlertShift],Digits)+", StopLoss @ "+DoubleToStr(buy [limit1+AlertShift],Digits));   
            BoxAlert(dnTrend," : SELL Signal @ "+DoubleToStr(Close[limit1+AlertShift],Digits)+", StopLoss @ "+DoubleToStr(sell[limit1+AlertShift],Digits)); 
            }
      
         WarningSound(upTrend,SoundsNumber,SoundsPause,UpSound,Time[AlertShift]);
         WarningSound(dnTrend,SoundsNumber,SoundsPause,DnSound,Time[AlertShift]);
         
            if(EmailMode > 0)
            {
            EmailAlert(upTrend,"BUY" ," : BUY Signal @ " +DoubleToStr(Close[limit1+AlertShift],Digits)+", StopLoss @ "+DoubleToStr(buy [limit1+AlertShift],Digits),EmailsNumber); 
            EmailAlert(dnTrend,"SELL"," : SELL Signal @ "+DoubleToStr(Close[limit1+AlertShift],Digits)+", StopLoss @ "+DoubleToStr(sell[limit1+AlertShift],Digits),EmailsNumber); 
            }
         }
      }
   }
     
   return(0);
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
//-----
string averageName(int mode,int& arraysize)
{   
   string ma_name = "";
   
   switch(mode)
   {
   case 1 : ma_name = "EMA"       ; break;
   case 2 : ma_name = "Wilder"    ; break;
   case 3 : ma_name = "LWMA"      ; break;
   case 4 : ma_name = "SineWMA"   ; break;
   case 5 : ma_name = "TriMA"     ; break;
   case 6 : ma_name = "LSMA"      ; break;
   case 7 : ma_name = "SMMA"      ; break;
   case 8 : ma_name = "HMA"       ; break;
   case 9 : ma_name = "ZeroLagEMA"; break;
   case 10: ma_name = "DEMA"      ; arraysize = 2; break;
   case 11: ma_name = "T3 basic"  ; arraysize = 6; break;
   case 12: ma_name = "InstTrend" ; break;
   case 13: ma_name = "Median"    ; break;
   case 14: ma_name = "GeoMean"   ; break;
   case 15: ma_name = "REMA"      ; break;
   case 16: ma_name = "ILRS"      ; break;
   case 17: ma_name = "IE/2"      ; break;
   case 18: ma_name = "TriMA_gen" ; break;
   case 19: ma_name = "VWMA"      ; break;
   case 20: ma_name = "JSmooth"   ; arraysize = 5; break;
   case 21: ma_name = "SMA_eq"    ; break;
   case 22: ma_name = "ALMA"      ; break;
   case 23: ma_name = "TEMA"      ; arraysize = 4; break;
   case 24: ma_name = "T3"        ; arraysize = 6; break;
   case 25: ma_name = "Laguerre"  ; arraysize = 4; break;
   case 26: ma_name = "MD"        ; break;
   default: ma_name = "SMA"       ; break;
   }
   
   return(ma_name);
}


double allAveragesOnArray(int index,double& price[],int period,int mode,int arraysize,int cbars,int bar)
{
   double MA[3];  
        
   if(prevtime[index] != Time[bar])
   {
   ma[index][2] = ma[index][1]; 
   ma[index][1] = ma[index][0]; 
   for(int i=0;i<arraysize;i++) tmp[i][index][1] = tmp[i][index][0];
    
   prevtime[index] = Time[bar]; 
   }
   
   for(i=0;i<3;i++) MA[i] = ma[index][i];   
   
   switch(mode)
   {
   case 1 : ma[index][0] = EMAOnArray(price[bar],ma[index][1],period,cbars,bar); break;
   case 2 : ma[index][0] = WilderOnArray(price[bar],ma[index][1],period,cbars,bar); break;  
   case 3 : ma[index][0] = LWMAOnArray(price,period,bar); break;
   case 4 : ma[index][0] = SineWMAOnArray(price,period,bar); break;
   case 5 : ma[index][0] = TriMAOnArray(price,period,bar); break;
   case 6 : ma[index][0] = LSMAOnArray(price,period,bar); break;
   case 7 : ma[index][0] = SMMAOnArray(price,ma[index][1],period,cbars,bar); break;
   case 8 : ma[index][0] = HMAOnArray(price,period,cbars,bar); break;
   case 9 : ma[index][0] = ZeroLagEMAOnArray(price,ma[index][1],period,cbars,bar); break;
   case 10: ma[index][0] = DEMAOnArray(index,0,price[bar],period,1,cbars,bar); break;
   case 11: ma[index][0] = T3_basicOnArray(index,0,price[bar],period,0.7,cbars,bar); break;
   case 12: ma[index][0] = ITrendOnArray(price,MA,period,cbars,bar); break;
   case 13: ma[index][0] = MedianOnArray(price,period,bar); break;
   case 14: ma[index][0] = GeoMeanOnArray(price,period,cbars,bar); break;
   case 15: ma[index][0] = REMAOnArray(price[bar],MA,period,0.5,cbars,bar); break;
   case 16: ma[index][0] = ILRSOnArray(price,period,bar); break;
   case 17: ma[index][0] = IE2OnArray(price,period,bar); break;
   case 18: ma[index][0] = TriMA_genOnArray(price,period,bar); break;
   case 19: ma[index][0] = VWMAOnArray(price,period,bar); break;
   case 20: ma[index][0] = JSmoothOnArray(index,0,price[bar],period,1,cbars,bar); break;
   case 21: ma[index][0] = SMA_eqOnArray(price,MA,period,cbars,bar); break;
   case 22: ma[index][0] = ALMAOnArray(price,period,0.85,8,bar); break;
   case 23: ma[index][0] = TEMAOnArray(index,price[bar],period,1,cbars,bar); break;
   case 24: ma[index][0] = T3OnArray(index,0,price[bar],period,0.7,cbars,bar); break;
   case 25: ma[index][0] = LaguerreOnArray(index,price[bar],period,4,cbars,bar); break;
   case 26: ma[index][0] = McGinleyOnArray(price[bar],ma[index][1],period,cbars,bar); break;
   default: ma[index][0] = SMAOnArray(price,period,bar); break;
   }
   
   return(ma[index][0]);
}

// MA_Method=0: SMA - Simple Moving Average
double SMAOnArray(double& array[],int per,int bar)
{
   double sum = 0;
   for(int i=0;i<per;i++) sum += array[bar+i];
   
   return(sum/per);
}                
// MA_Method=1: EMA - Exponential Moving Average
double EMAOnArray(double price,double prev,int per,int cbars,int bar)
{
   if(bar >= cbars - 2) double ema = price;
   else 
   ema = prev + 2.0/(1 + per)*(price - prev); 
   
   return(ema);
}
// MA_Method=2: Wilder - Wilder Exponential Moving Average
double WilderOnArray(double price,double prev,int per,int cbars,int bar)
{
   if(bar >= cbars - 2) double wilder = price; 
   else 
   wilder = prev + (price - prev)/per; 
   
   return(wilder);
}

// MA_Method=3: LWMA - Linear Weighted Moving Average 
double LWMAOnArray(double& array[],int per,int bar)
{
   double sum = 0, weight = 0;
   
      for(int i=0;i<per;i++)
      { 
      weight += (per - i);
      sum    += array[bar+i]*(per - i);
      }
   
   if(weight > 0) return(sum/weight); else return(0); 
} 

// MA_Method=4: SineWMA - Sine Weighted Moving Average
double SineWMAOnArray(double& array[],int per,int bar)
{
   double pi = 3.1415926535, sum = 0, weight = 0;
  
      for(int i=0;i<per;i++)
      { 
      weight += MathSin(pi*(i + 1)/(per + 1));
      sum    += array[bar+i]*MathSin(pi*(i + 1)/(per + 1)); 
      }
   
   if(weight > 0) return(sum/weight); else return(0); 
}

// MA_Method=5: TriMA - Triangular Moving Average
double TriMAOnArray(double& array[],int per,int bar)
{
   int len = MathCeil((per + 1)*0.5);
   double sum = 0;
   
   for(int i=0;i<len;i++) sum += SMAOnArray(array,len,bar+i);
         
   return(sum/len);
}

// MA_Method=6: LSMA - Least Square Moving Average (or EPMA, Linear Regression Line)
double LSMAOnArray(double& array[],int per,int bar)
{   
   double sum = 0;
   
   for(int i=per;i>=1;i--) sum += (i - (per + 1)/3.0)*array[bar+per-i];
   
   return(sum*6/(per*(per + 1)));
}

// MA_Method=7: SMMA - Smoothed Moving Average
double SMMAOnArray(double& array[],double prev,int per,int cbars,int bar)
{
   if(bar == cbars - per) double smma = SMAOnArray(array,per,bar);
   else 
   if(bar  < cbars - per)
   {
   double sum = 0;
   for(int i=0;i<per;i++) sum += array[bar+i+1];
   smma = (sum - prev + array[bar])/per;
   }
   
   return(smma);
}                

// MA_Method=8: HMA - Hull Moving Average by Alan Hull
double HMAOnArray(double& array[],int per,int cbars,int bar)
{
   double _tmp[];
   int len = MathSqrt(per);
   
   ArrayResize(_tmp,len);
   
   if(bar == cbars - per) double hma = array[bar]; 
   else
   if(bar < cbars - per)
   {
   for(int i=0;i<len;i++) _tmp[i] = 2*LWMAOnArray(array,per/2,bar+i) - LWMAOnArray(array,per,bar+i);  
   hma = LWMAOnArray(_tmp,len,0); 
   }  

   return(hma);
}

// MA_Method=9: ZeroLagEMA - Zero-Lag Exponential Moving Average
double ZeroLagEMAOnArray(double& price[],double prev,int per,int cbars,int bar)
{
   int lag = 0.5*(per - 1); 
   double alpha = 2.0/(1 + per); 
      
   if(bar >= cbars - lag) double zema = price[bar];
   else 
   zema = alpha*(2*price[bar] - price[bar+lag]) + (1 - alpha)*prev;
   
   return(zema);
}

// MA_Method=10: DEMA - Double Exponential Moving Average by Patrick Mulloy
double DEMAOnArray(int index,int num,double price,double per,double v,int cbars,int bar)
{
   double alpha = 2.0/(1 + per);
   
   if(bar == cbars - 2) {double dema = price; tmp[num][index][0] = dema; tmp[num+1][index][0] = dema;}
   else 
   if(bar <  cbars - 2) 
   {
   tmp[num  ][index][0] = tmp[num  ][index][1] + alpha*(price              - tmp[num  ][index][1]); 
   tmp[num+1][index][0] = tmp[num+1][index][1] + alpha*(tmp[num][index][0] - tmp[num+1][index][1]); 
   dema                 = tmp[num  ][index][0]*(1+v) - tmp[num+1][index][0]*v;
   }
   
   return(dema);
}

// MA_Method=11: T3 by T.Tillson
double T3_basicOnArray(int index,int num,double price,int per,double v,int cbars,int bar)
{
   double dema1, dema2;
   
   if(bar == cbars - 2) 
   {
   double T3 = price; 
   for(int k=0;k<6;k++) tmp[num+k][index][0] = price;
   }
   else 
   if(bar < cbars - 2) 
   {
   dema1 = DEMAOnArray(index,num  ,price,per,v,cbars,bar); 
   dema2 = DEMAOnArray(index,num+2,dema1,per,v,cbars,bar); 
   T3    = DEMAOnArray(index,num+4,dema2,per,v,cbars,bar);
   }
   
   return(T3);
}

// MA_Method=12: ITrend - Instantaneous Trendline by J.Ehlers
double ITrendOnArray(double& price[],double& array[],int per,int cbars,int bar)
{
   double alpha = 2.0/(per + 1);
   if(bar > cbars - 7) double it = (alpha - 0.25*alpha*alpha)*price[bar] + 0.5*alpha*alpha*price[bar+1] 
                                 - (alpha - 0.75*alpha*alpha)*price[bar+2] + 2*(1 - alpha)*array[bar+1] 
                                 - (1 - alpha)*(1 - alpha)*array[bar+2];
   else it = (price[bar] + 2*price[bar+1] + price[bar+2])/4;
   
   return(it);
}
// MA_Method=13: Median - Moving Median
double MedianOnArray(double& price[],int per,int bar)
{
   double array[];
   ArrayResize(array,per);
   
   for(int i=0;i<per;i++) array[i] = price[bar+i];
   ArraySort(array,WHOLE_ARRAY,0,MODE_DESCEND);
   
   int num = MathRound((per - 1)*0.5); 
   if(MathMod(per,2) > 0) double median = array[num]; else median = 0.5*(array[num] + array[num+1]);
    
   return(median); 
}

// MA_Method=14: GeoMean - Geometric Mean
double GeoMeanOnArray(double& price[],int per,int cbars,int bar)
{
   if(bar < cbars - per)
   { 
   double gmean = MathPow(price[bar],1.0/per); 
   for(int i=1;i<per;i++) gmean *= MathPow(price[bar+i],1.0/per); 
   }
   else gmean = SMAOnArray(price,per,bar);
   
   return(gmean);
}

// MA_Method=15: REMA - Regularized EMA by Chris Satchwell 
double REMAOnArray(double price,double& array[],int per,double lambda,int cbars,int bar)
{
   double alpha =  2.0/(per + 1);
   
   if(bar >= cbars - 3) double rema = price;
   else 
   rema = (array[1]*(1 + 2*lambda) + alpha*(price - array[1]) - lambda*array[2])/(1 + lambda); 
   
   return(rema);
}
// MA_Method=16: ILRS - Integral of Linear Regression Slope 
double ILRSOnArray(double& price[],int per,int bar)
{
   double sum  = per*(per - 1)*0.5;
   double sum2 = (per - 1)*per*(2*per - 1)/6.0;
     
   double sum1 = 0;
   double sumy = 0;
      for(int i=0;i<per;i++)
      { 
      sum1 += i*price[bar+i];
      sumy += price[bar+i];
      }
   double num1 = per*sum1 - sum*sumy;
   double num2 = sum*sum - per*sum2;
   
   if(num2 != 0) double slope = num1/num2; else slope = 0; 
   double ilrs = slope + SMAOnArray(price,per,bar);
   
   return(ilrs);
}
// MA_Method=17: IE/2 - Combination of LSMA and ILRS 
double IE2OnArray(double& price[],int per,int bar)
{
   double ie = 0.5*(ILRSOnArray(price,per,bar) + LSMAOnArray(price,per,bar));
      
   return(ie); 
}
 
// MA_Method=18: TriMAgen - Triangular Moving Average Generalized by J.Ehlers
double TriMA_genOnArray(double& array[],int per,int bar)
{
   int len1 = MathFloor((per + 1)*0.5);
   int len2 = MathCeil ((per + 1)*0.5);
   double sum = 0;
   
   for(int i = 0;i < len2;i++) sum += SMAOnArray(array,len1,bar+i);
   
   return(sum/len2);
}

// MA_Method=19: VWMA - Volume Weighted Moving Average 
double VWMAOnArray(double& array[],int per,int bar)
{
   double sum = 0, weight = 0;
   
      for(int i=0;i<per;i++)
      { 
      weight += Volume[bar+i];
      sum    += array[bar+i]*Volume[bar+i];
      }
   
   if(weight > 0) return(sum/weight); else return(0); 
} 

// MA_Method=20: JSmooth - Smoothing by Mark Jurik
double JSmoothOnArray(int index,int num,double price,int per,double power,int cbars,int bar)
{
   double beta  = 0.45*(per - 1)/(0.45*(per - 1) + 2);
	double alpha = MathPow(beta,power);
	
	if(bar == cbars - 2) {tmp[num+4][index][0] = price; tmp[num+0][index][0] = price; tmp[num+2][index][0] = price;}
	else 
   if(bar <  cbars - 2) 
   {
	tmp[num+0][index][0] = (1 - alpha)*price + alpha*tmp[num+0][index][1];
	tmp[num+1][index][0] = (price - tmp[num+0][index][0])*(1-beta) + beta*tmp[num+1][index][1];
	tmp[num+2][index][0] = tmp[num+0][index][0] + tmp[num+1][index][0];
	tmp[num+3][index][0] = (tmp[num+2][index][0] - tmp[num+4][index][1])*MathPow((1-alpha),2) + MathPow(alpha,2)*tmp[num+3][index][1];
	tmp[num+4][index][0] = tmp[num+4][index][1] + tmp[num+3][index][0]; 
   }
   return(tmp[num+4][index][0]);
}

// MA_Method=21: SMA_eq     - Simplified SMA
double SMA_eqOnArray(double& price[],double& array[],int per,int cbars,int bar)
{
   if(bar == cbars - per) double sma = SMAOnArray(price,per,bar);
   else 
   if(bar <  cbars - per) sma = (price[bar] - price[bar+per])/per + array[1]; 
   
   return(sma);
}                        		

// MA_Method=22: ALMA by Arnaud Legoux / Dimitris Kouzis-Loukas / Anthony Cascino
double ALMAOnArray(double& price[],int per,double offset,double sigma,int bar)
{
   double m = MathFloor(offset*(per - 1)), s = per/sigma, w, sum = 0, wsum = 0;		
	
	for (int i=0;i<per;i++) 
	{
	w     = MathExp(-((i - m)*(i - m))/(2*s*s));
   wsum += w;
   sum  += price[bar+(per-1-i)]*w; 
   }
   
   if(wsum != 0) return(sum/wsum); else return(0);
}   

// MA_Method=23: TEMA - Triple Exponential Moving Average by Patrick Mulloy
double TEMAOnArray(int index,double price,int per,double v,int cbars,int bar)
{
   double alpha = 2.0/(per+1);
	
	if(bar == cbars - 2) {tmp[0][index][0] = price; tmp[1][index][0] = price; tmp[2][index][0] = price;}
	else 
   if(bar <  cbars - 2) 
   {
	tmp[0][index][0] = tmp[0][index][1] + alpha *(price            - tmp[0][index][1]);
	tmp[1][index][0] = tmp[1][index][1] + alpha *(tmp[0][index][0] - tmp[1][index][1]);
	tmp[2][index][0] = tmp[2][index][1] + alpha *(tmp[1][index][0] - tmp[2][index][1]);
	tmp[3][index][0] = tmp[0][index][0] + v*(tmp[0][index][0] + v*(tmp[0][index][0]-tmp[1][index][0]) - tmp[1][index][0] - v*(tmp[1][index][0] - tmp[2][index][0])); 
	}
   
   return(tmp[3][index][0]);
}

// MA_Method=24: T3 by T.Tillson (correct version) 
double T3OnArray(int index,int num,double price,int per,double v,int cbars,int bar)
{
   double len = MathMax((per + 5.0)/3.0 - 1,1), dema1, dema2;
   
   if(bar == cbars - 2) 
   {
   double T3 = price; 
   for(int k=0;k<6;k++) tmp[num+k][index][0] = T3;
   }
   else 
   if(bar < cbars - 2) 
   {
   dema1 = DEMAOnArray(index,num  ,price,len,v,cbars,bar); 
   dema2 = DEMAOnArray(index,num+2,dema1,len,v,cbars,bar); 
   T3    = DEMAOnArray(index,num+4,dema2,len,v,cbars,bar);
   }
      
   return(T3);
}

// MA_Method=25: Laguerre filter by J.Ehlers
double LaguerreOnArray(int index,double price,int per,int order,int cbars,int bar)
{
   double gamma = 1 - 10.0/(per + 9);
   double aPrice[];
   
   ArrayResize(aPrice,order);
   
   for(int i=0;i<order;i++)
   {
      if(bar >= cbars - order) tmp[i][index][0] = price;
      else
      {
         if(i == 0) tmp[i][index][0] = (1 - gamma)*price + gamma*tmp[i][index][1];
         else
         tmp[i][index][0] = -gamma * tmp[i-1][index][0] + tmp[i-1][index][1] + gamma * tmp[i][index][1];
      
      aPrice[i] = tmp[i][index][0];
      }
   }
   double laguerre = TriMA_genOnArray(aPrice,order,0);  

   return(laguerre);
}

// MA_Method=26:  MD - McGinley Dynamic
double McGinleyOnArray(double price,double prev,int per,int cbars,int bar)
{
   if(bar == cbars - 2) double md = price;
   else 
   if(bar <  cbars - 2) 
      if(prev != 0) md = prev + (price - prev)/(per*MathPow(price/prev,4)/2); 
      else md = price;

   return(md);
}


datetime prevnbtime;

bool isNewBar(int tf)
{
   bool res = false;
   
   if(tf >= 0)
   {
      if(iTime(NULL,tf,0) != prevnbtime)
      {
      res   = true;
      prevnbtime = iTime(NULL,tf,0);
      }   
   }
   else res = true;
   
   return(res);
}

string prevmess;
 
bool BoxAlert(bool cond,string text)   
{      
   string mess = IndicatorName + "("+Symbol()+","+TF + ")" + text;
   
   if (cond && mess != prevmess)
	{
	Alert (mess);
	prevmess = mess; 
	return(true);
	} 
  
   return(false);  
}

datetime pausetime;

bool Pause(int sec)
{
   if(TimeCurrent() >= pausetime + sec) {pausetime = TimeCurrent(); return(true);}
   
   return(false);
}

datetime warningtime;

void WarningSound(bool cond,int num,int sec,string sound,datetime curtime)
{
   static int i;
   
   if(cond)
   {
   if(curtime != warningtime) i = 0; 
   if(i < num && Pause(sec)) {PlaySound(sound); warningtime = curtime; i++;}       	
   }
}

string prevemail;

bool EmailAlert(bool cond,string text1,string text2,int num)   
{      
   string subj = "New " + text1 +" Signal from " + IndicatorName + "!!!";    
   string mess = IndicatorName + "("+Symbol()+","+TF + ")" + text2;
   
   if (cond && mess != prevemail)
	{
	if(subj != "" && mess != "") for(int i=0;i<num;i++) SendMail(subj, mess);  
	prevemail = mess; 
	return(true);
	} 
  
   return(false);  
}

bool deleteObj(string name)
{
   bool result = false;
   
   int length = StringLen(name);
   for(int i=ObjectsTotal()-1; i>=0; i--)
   {
   string objName = ObjectName(i); 
   if(StringSubstr(objName,0,length) == name) {ObjectDelete(objName); result = true;}
   }
   
   return(result);
}
 
string tf(int timeframe)
{
   switch(timeframe)
   {
   case PERIOD_M1:   return("M1");
   case PERIOD_M5:   return("M5");
   case PERIOD_M15:  return("M15");
   case PERIOD_M30:  return("M30");
   case PERIOD_H1:   return("H1");
   case PERIOD_H4:   return("H4");
   case PERIOD_D1:   return("D1");
   case PERIOD_W1:   return("W1");
   case PERIOD_MN1:  return("MN1");
   default:          return("N/A");
   }
}

// HeikenAshi Price:  7 - Close,8 - Open,9 - High,10 - Low 
double   haClose[2], haOpen[2], haHigh[2], haLow[2];
datetime prevhatime;

double HeikenAshi(int price,int cbars,int bar)
{ 
   if(prevhatime != Time[bar])
   {
   haClose[1] = haClose[0];
   haOpen [1] = haOpen [0];
   haHigh [1] = haHigh [0];
   haLow  [1] = haLow  [0];
   prevhatime = Time[bar];
   }
   
   if(bar == cbars - 1) 
   {
   haClose[0] = Close[bar];
   haOpen [0] = Open [bar];
   haHigh [0] = High [bar];
   haLow  [0] = Low  [bar];
   }
   else
   {
   haClose[0] = (Open[bar] + High[bar] + Low[bar] + Close[bar])/4;
   haOpen [0] = (haOpen[1] + haClose[1])/2;
   haHigh [0] = MathMax(High[bar],MathMax(haOpen[0],haClose[0]));
   haLow  [0] = MathMin(Low [bar],MathMin(haOpen[0],haClose[0]));
   }
   
   switch(price)
   {
   case  0: return(haClose[0]); break;
   case  1: return(haOpen [0]); break;
   case  2: return(haHigh [0]); break;
   case  3: return(haLow  [0]); break;
   default: return(haClose[0]); break;
   }
}	                		                  


