//+------------------------------------------------------------------+
//|                                                       rsimabands |
//|                                                                  | 
//+------------------------------------------------------------------+

#property copyright "www.forex-station.com"
#property link      "www.forex-station.com"

#property indicator_separate_window
#property indicator_buffers    7
#property indicator_color1     clrNONE
#property indicator_color2     clrBlack
#property indicator_color3     clrNONE
#property indicator_color4     clrBlue
#property indicator_color5     clrRed
#property indicator_color6     clrMagenta
#property indicator_color7     clrNONE
#property indicator_width2     2
#property indicator_width4     2
#property indicator_width5     2
#property indicator_width6     9
#property indicator_width7     2
#property indicator_levelcolor clrWhite

//
//
//
//
//

enum enPrices
{
   pr_close,      // Close
   pr_open,       // Open
   pr_high,       // High
   pr_low,        // Low
   pr_median,     // Median
   pr_typical,    // Typical
   pr_weighted,   // Weighted
   pr_average,    // Average (high+low+open+close)/4
   pr_medianb,    // Average median body (open+close)/2
   pr_tbiased,    // Trend biased price
   pr_haclose,    // Heiken ashi close
   pr_haopen ,    // Heiken ashi open
   pr_hahigh,     // Heiken ashi high
   pr_halow,      // Heiken ashi low
   pr_hamedian,   // Heiken ashi median
   pr_hatypical,  // Heiken ashi typical
   pr_haweighted, // Heiken ashi weighted
   pr_haaverage,  // Heiken ashi average
   pr_hamedianb,  // Heiken ashi median body
   pr_hatbiased   // Heiken ashi trend biased price
};
enum enRsiTypes
{
   rsi_rsi,  // Regular RSI
   rsi_wil,  // Wilders RSI
   rsi_rsx,  // RSX2
   rsi_cut   // Cuttlers RSI
};

extern double          RsiPeriod                = 21;
extern enRsiTypes      RsiType                  = 2;
extern enPrices        RsiPrice                 = 8;
extern int             Depth                    = 2; 
extern double          Speed                    = 0.5;   
extern int             RsiPriceLinePeriod       = 2;
extern ENUM_MA_METHOD  RsiPriceLineMAMode       = MODE_LWMA;
extern int             RsiSignalLinePeriod      = 7;
extern ENUM_MA_METHOD  RsiSignalLineMAMode      = MODE_LWMA;
extern int             VolatilityBandPeriod     = 34;
extern ENUM_MA_METHOD  VolatilityBandMAMode     = MODE_LWMA;
extern double          VolatilityBandMultiplier = 2.00;
extern double          LevelDn                  = 15;
extern double          LevelDn1                 = -11;
extern double          LevelMid                 = 35;
extern double          LevelMid1                = 65;
extern double          LevelUp                  = 85;
extern double          LevelUp1                 = 115;
extern bool            ColorOnSlope             = true;
extern bool            verticalLinesVisible     = false;            // Show vertical lines
extern bool            linesOnNewest            = true;             // Lines on newest bar?
extern string          verticalLinesID          = "TDI Lines";      // Lines ID
extern color           verticalLinesUpColor     = clrDeepSkyBlue;   // Lines up color 
extern color           verticalLinesDnColor     = clrPaleVioletRed; // Lines down color
extern ENUM_LINE_STYLE verticalLinesStyle       = STYLE_DOT;        // Lines style
extern int             verticalLinesWidth       = 0;                // lines width

//
//
//
//
//

double rsi[];
double rsiPriceLine[];
double buffer1[];
double buffer2[];
double rsiSignalLine[];
double bandUp[];
double bandMiddle[];
double bandDown[];
double slope[];
double trend[];

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
//
//
//
//
//

int init()
{
    IndicatorBuffers(10);
    SetIndexBuffer(0,bandUp);
    SetIndexBuffer(1,bandMiddle);
    SetIndexBuffer(2,bandDown);
    SetIndexBuffer(3,rsiPriceLine);
    SetIndexBuffer(4,buffer1);
    SetIndexBuffer(5,buffer2);
    SetIndexBuffer(6,rsiSignalLine);
    SetIndexBuffer(7,rsi);
    SetIndexBuffer(8,slope);
    SetIndexBuffer(9,trend);
    SetLevelValue(0,LevelUp);
    SetLevelValue(1,LevelUp1);
    SetLevelValue(2,LevelMid);
    SetLevelValue(3,LevelMid1);
    SetLevelValue(4,LevelDn);
    SetLevelValue(5,LevelDn1);
    
       Speed = MathMax(MathMin(1.5,Speed),0.1);
       Depth = MathMax(MathMin(10 ,Depth),1);

    IndicatorShortName(getRsiName((int)RsiType)+ " Ma ("+DoubleToStr(RsiPeriod,2)+")");
 
return(0);
}
int deinit() 
{ 
   string tlookFor       = verticalLinesID+":";
   int    tlookForLength = StringLen(tlookFor);
   for (int i=ObjectsTotal()-1; i>=0; i--)
   {
      string objectName = ObjectName(i);
         if (StringSubstr(objectName,0,tlookForLength) == tlookFor) ObjectDelete(objectName);
   }  
return(0); 
}
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
//
//
//
//
//

int start()
{
   int counted_bars=IndicatorCounted();
   int i,limit;

   if(counted_bars<0) return(-1);
   if(counted_bars>0) counted_bars--;
         limit = MathMin(Bars-counted_bars,Bars-1);

   //
   //
   //
   //
   //
   
   if (slope[limit]==-1) CleanPoint(limit,buffer1,buffer2);  
   for (i=limit; i >= 0; i--) rsi[i] = iRsi(getPrice(RsiPrice,Open,Close,High,Low,i),RsiPeriod,RsiType,i); 
   for (i=limit; i >= 0; i--)
   {
         rsiPriceLine[i]   = iMAOnArray(rsi,0,RsiPriceLinePeriod,0,RsiPriceLineMAMode,i);
         rsiSignalLine[i]  = iMAOnArray(rsi,0,RsiSignalLinePeriod,0,RsiSignalLineMAMode,i);
         double deviation  = iStdDevOnArray(rsi,0,VolatilityBandPeriod,0,VolatilityBandMAMode,i);
          double average   = iMAOnArray(rsi,0,VolatilityBandPeriod,0,VolatilityBandMAMode,i);
             bandUp[i]     = average+VolatilityBandMultiplier*deviation;
             bandDown[i]   = average-VolatilityBandMultiplier*deviation;
             bandMiddle[i] = average;
             buffer1[i] = EMPTY_VALUE;
             buffer2[i] = EMPTY_VALUE;
             trend[i] = (i<Bars-1) ? (rsiPriceLine[i]>50) ? 1 : (rsiPriceLine[i]<50) ? -1 : trend[i+1] : 0;
             slope[i]    = slope[i+1];
             if (ColorOnSlope)
             {
               if (rsiPriceLine[i]>rsiPriceLine[i+1]) slope[i] =  1;
               if (rsiPriceLine[i]<rsiPriceLine[i+1]) slope[i] = -1;
             }
             else
             {
               if (rsiPriceLine[i]>rsiSignalLine[i]) slope[i] =  1;
               if (rsiPriceLine[i]<rsiSignalLine[i]) slope[i] = -1;
             }
               if (slope[i]==-1) PlotPoint(i,buffer1,buffer2,rsiPriceLine);
               
               
               if (verticalLinesVisible)
                     {
                       string tlookFor = verticalLinesID+":"+(string)Time[i]; ObjectDelete(tlookFor);  
                       if (i<Bars-1 && trend[i]!=trend[i+1])
                       {
                          if (trend[i] == 1) drawLine(i,verticalLinesUpColor);
                          if (trend[i] ==-1) drawLine(i,verticalLinesDnColor);
                       }
                     }   
    }
return (0);
}      
                                                        
//+------------------------------------------------------------------
//|                                                                  
//+------------------------------------------------------------------
//
//
//
//
//
//

double workHa[][4];
double getPrice(int price, const double& open[], const double& close[], const double& high[], const double& low[], int i, int instanceNo=0)
{
  if (price>=pr_haclose && price<=pr_hatbiased)
   {
      if (ArrayRange(workHa,0)!= Bars) ArrayResize(workHa,Bars);
         int r = Bars-i-1;
         
         //
         //
         //
         //
         //
         
         double haOpen;
         if (r>0)
                haOpen  = (workHa[r-1][instanceNo+2] + workHa[r-1][instanceNo+3])/2.0;
         else   haOpen  = (open[i]+close[i])/2;
         double haClose = (open[i] + high[i] + low[i] + close[i]) / 4.0;
         double haHigh  = MathMax(high[i], MathMax(haOpen,haClose));
         double haLow   = MathMin(low[i] , MathMin(haOpen,haClose));

         if(haOpen  <haClose) { workHa[r][instanceNo+0] = haLow;  workHa[r][instanceNo+1] = haHigh; } 
         else                 { workHa[r][instanceNo+0] = haHigh; workHa[r][instanceNo+1] = haLow;  } 
                                workHa[r][instanceNo+2] = haOpen;
                                workHa[r][instanceNo+3] = haClose;
         //
         //
         //
         //
         //
         
         switch (price)
         {
            case pr_haclose:     return(haClose);
            case pr_haopen:      return(haOpen);
            case pr_hahigh:      return(haHigh);
            case pr_halow:       return(haLow);
            case pr_hamedian:    return((haHigh+haLow)/2.0);
            case pr_hamedianb:   return((haOpen+haClose)/2.0);
            case pr_hatypical:   return((haHigh+haLow+haClose)/3.0);
            case pr_haweighted:  return((haHigh+haLow+haClose+haClose)/4.0);
            case pr_haaverage:   return((haHigh+haLow+haClose+haOpen)/4.0);
            case pr_hatbiased:
               if (haClose>haOpen)
                     return((haHigh+haClose)/2.0);
               else  return((haLow+haClose)/2.0);        
         }
   }
   
   //
   //
   //
   //
   //
   
   switch (price)
   {
      case pr_close:     return(close[i]);
      case pr_open:      return(open[i]);
      case pr_high:      return(high[i]);
      case pr_low:       return(low[i]);
      case pr_median:    return((high[i]+low[i])/2.0);
      case pr_medianb:   return((open[i]+close[i])/2.0);
      case pr_typical:   return((high[i]+low[i]+close[i])/3.0);
      case pr_weighted:  return((high[i]+low[i]+close[i]+close[i])/4.0);
      case pr_average:   return((high[i]+low[i]+close[i]+open[i])/4.0);
      case pr_tbiased:   
               if (close[i]>open[i])
                     return((high[i]+close[i])/2.0);
               else  return((low[i]+close[i])/2.0);        
   }
   return(0);
}

//------------------------------------------------------------------
//                                                                  
//------------------------------------------------------------------
//
//
//
//
//
//

string rsiMethodNames[] = {"rsi","Wilders rsi","rsx2","Cuttler RSI"};
string getRsiName(int method)
{
   int max = ArraySize(rsiMethodNames)-1;
      method=MathMax(MathMin(method,max),0); return(rsiMethodNames[method]);
}


//
//
//
//
//

double workRsi[][13];
#define _price  0
#define _change 1
#define _changa 2

double iRsi(double price, double period, int rsiMode, int i, int instanceNo=0)
{
   if (ArrayRange(workRsi,0)!=Bars) ArrayResize(workRsi,Bars);
      int z = instanceNo*13; 
      int r = Bars-i-1;
   
   //
   //
   //
   //
   //
   
   workRsi[r][z+_price] = price;
   switch (rsiMode)
   {
      case 0:
         double alpha = 1.0/period; 
         if (r<period)
            {
               int k; double sum = 0; for (k=0; k<period && (r-k-1)>=0; k++) sum += MathAbs(workRsi[r-k][z+_price]-workRsi[r-k-1][z+_price]);
                  workRsi[r][z+_change] = (workRsi[r][z+_price]-workRsi[0][z+_price])/MathMax(k,1);
                  workRsi[r][z+_changa] =                                         sum/MathMax(k,1);
            }
         else
            {
               double change = workRsi[r][z+_price]-workRsi[r-1][z+_price];
                               workRsi[r][z+_change] = workRsi[r-1][z+_change] + alpha*(        change  - workRsi[r-1][z+_change]);
                               workRsi[r][z+_changa] = workRsi[r-1][z+_changa] + alpha*(MathAbs(change) - workRsi[r-1][z+_changa]);
            }
         if (workRsi[r][z+_changa] != 0)
               return(50.0*(workRsi[r][z+_change]/workRsi[r][z+_changa]+1));
         else  return(50.0);
         
      //
      //
      //
      //
      //
      
      case 1 :
         workRsi[r][z+1] = iSmma(0.5*(MathAbs(workRsi[r][z+_price]-workRsi[r-1][z+_price])+(workRsi[r][z+_price]-workRsi[r-1][z+_price])),0.5*(period-1),Bars-i-1,instanceNo*2+0);
         workRsi[r][z+2] = iSmma(0.5*(MathAbs(workRsi[r][z+_price]-workRsi[r-1][z+_price])-(workRsi[r][z+_price]-workRsi[r-1][z+_price])),0.5*(period-1),Bars-i-1,instanceNo*2+1);
         if((workRsi[r][z+1] + workRsi[r][z+2]) != 0) 
               return(100.0 * workRsi[r][z+1]/(workRsi[r][z+1] + workRsi[r][z+2]));
         else  return(50);

      //
      //
      //
      //
      //
     
      case 2 :     
      double Kg = (3.0)/(2.0+period), Hg = 1.0-Kg;
      if (r<period) { for (k=1; k<13; k++) workRsi[r][k+z] = 0; return(50); }  

         //
         //
         //
         //
         //
      
         double mom = workRsi[r][_price+z]-workRsi[r-1][_price+z];
         double moa = MathAbs(mom);
         for (k=0; k<Depth; k++)
      {
         int kk = k*4;
            workRsi[r][kk+1] = Kg*mom                + Hg*workRsi[r-1][kk+1];
            workRsi[r][kk+2] = Kg*workRsi[r][kk+1] + Hg*workRsi[r-1][kk+2]; mom =         1.5*workRsi[r][kk+1] - Speed * workRsi[r][kk+2];
            workRsi[r][kk+3] = Kg*moa                + Hg*workRsi[r-1][kk+3];
            workRsi[r][kk+4] = Kg*workRsi[r][kk+3] + Hg*workRsi[r-1][kk+4]; moa = MathAbs(1.5*workRsi[r][kk+3] - Speed * workRsi[r][kk+4]);
      }
      if (moa != 0)
              return(MathMax(MathMin((mom/moa+1.0)*50.0,100.00),0.00)); 
         else return(50);
            
      //
      //
      //
      //
      //
      
      case 3 :
         double sump = 0;
         double sumn = 0;
         for (k=0; k<period; k++)
         {
            double diff = workRsi[r-k][z+_price]-workRsi[r-k-1][z+_price];
               if (diff > 0) sump += diff;
               if (diff < 0) sumn -= diff;
         }
         if (sumn > 0)
               return(100.0-100.0/(1.0+sump/sumn));
         else  return(50);
      }
      return(50);
}

//
//
//
//
//

double workSmma[][2];
double iSmma(double price, double period, int r, int instanceNo=0)
{
   if (ArrayRange(workSmma,0)!= Bars) ArrayResize(workSmma,Bars);

   //
   //
   //
   //
   //

   if (r<period)
         workSmma[r][instanceNo] = price;
   else  workSmma[r][instanceNo] = workSmma[r-1][instanceNo]+(price-workSmma[r-1][instanceNo])/period;
   return(workSmma[r][instanceNo]);
}

//------------------------------------------------------------------
//
//------------------------------------------------------------------
//
//
//
//
//

void CleanPoint(int i,double& first[],double& second[])
{
   if ((second[i]  != EMPTY_VALUE) && (second[i+1] != EMPTY_VALUE))
        second[i+1] = EMPTY_VALUE;
   else
      if ((first[i] != EMPTY_VALUE) && (first[i+1] != EMPTY_VALUE) && (first[i+2] == EMPTY_VALUE))
          first[i+1] = EMPTY_VALUE;
}

//
//
//
//
//

void PlotPoint(int i,double& first[],double& second[],double& from[])
{
   if (first[i+1] == EMPTY_VALUE)
         if (first[i+2] == EMPTY_VALUE) 
              { first[i]  = from[i]; first[i+1]  = from[i+1]; second[i] = EMPTY_VALUE; }
         else { second[i] = from[i]; second[i+1] = from[i+1]; first[i]  = EMPTY_VALUE; }
   else       { first[i]  = from[i];                          second[i] = EMPTY_VALUE; }
}

//
//
//
//
//

void drawLine(int i,color theColor)
{
      string name = verticalLinesID+":"+(string)Time[i];
   
      //
      //
      //
      //
      //
         
      datetime time = Time[i]; //if (linesOnNewest) time += _Period*60-1;    
      ObjectCreate(name,OBJ_VLINE,0,time,0);
         ObjectSet(name,OBJPROP_COLOR,theColor);
         ObjectSet(name,OBJPROP_STYLE,verticalLinesStyle);
         ObjectSet(name,OBJPROP_WIDTH,verticalLinesWidth);
         ObjectSet(name,OBJPROP_BACK,true);
}




   


