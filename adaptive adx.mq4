//+------------------------------------------------------------------+
//|                                         cfb adaptive wilders ADX |
//|                                                           mladen |
//+------------------------------------------------------------------+
#property copyright "mladen"
#property link      "mladenfx@gmail.com"

#property indicator_separate_window
#property indicator_buffers    3
#property indicator_color1     DeepSkyBlue
#property indicator_color2     LimeGreen
#property indicator_style2     STYLE_DOT
#property indicator_color3     Red
#property indicator_style3     STYLE_DOT
#property indicator_minimum    0
#property indicator_level1     20
#property indicator_levelcolor Gold

//
//
//
//
//

extern string TimeFrame             = "Current time frame";
extern int    ShortLimit            = 10;
extern int    LongLimit             = 20;
extern int    CfbNormLength         = 50;
extern int    CfbDepth              = 6;
extern int    CfbPrice              = PRICE_WEIGHTED;
extern int    CfbSmooth             = 8;
extern double CfbResultSmooth       = 1.5;
extern double CfbResultSmoothPhase  = 0.0;
extern bool   CfbResultSmoothDouble = true;
extern double AdxPhase              = 0;
extern bool   AdxSmoothDouble       = true;
extern double SmoothLength          = 5.0;
extern double SmoothPhase           = 0;
extern bool   SmoothDouble          = true;
extern int    AdxPrice              = PRICE_CLOSE;
extern int    triggerlevel          = 20;
extern bool   Interpolate           = true;

extern bool   alertsOn              = true;
extern bool   alertsOnCurrent       = false;
extern bool   alertsMessage         = true;
extern bool   alertsSound           = false;
extern bool   alertsEmail           = false;

//
//
//
//
//

double adx[];
double DIp[];
double DIm[];
double averageDIp[];
double averageDIm[];
double averageTR[];
double cfb[];
double trend[];

//
//
//
//

string indicatorFileName;
bool   calculateValue;
bool   returnBars;
int    timeFrame;

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
   IndicatorBuffers(8);
   SetIndexBuffer(0,adx); SetIndexLabel(0,"ADX");
   SetIndexBuffer(1,DIp);
   SetIndexBuffer(2,DIm);
   SetIndexBuffer(3,averageDIp);
   SetIndexBuffer(4,averageDIm);
   SetIndexBuffer(5,averageTR);
   SetIndexBuffer(6,cfb);
   SetIndexBuffer(7,trend);
   for (int i=0;i<8;i++) SetIndexEmptyValue(i,0.00);
   
   //
   //
   //
   //
   //
   
   string PriceType;
      switch(AdxPrice)
      {
         case PRICE_CLOSE:    PriceType = "Close";    break;  // 0
         case PRICE_OPEN:     PriceType = "Open";     break;  // 1
         case PRICE_HIGH:     PriceType = "High";     break;  // 2
         case PRICE_LOW:      PriceType = "Low";      break;  // 3
         case PRICE_MEDIAN:   PriceType = "Median";   break;  // 4
         case PRICE_TYPICAL:  PriceType = "Typical";  break;  // 5
         case PRICE_WEIGHTED: PriceType = "Weighted"; break;  // 6
      }      

   //
   //
   //
   //
   // 
   
   indicatorFileName = WindowExpertName();
   calculateValue    = (TimeFrame=="calculateValue"); if (calculateValue) return(0);
   returnBars        = (TimeFrame=="returnBars");     if (returnBars)     return(0);
   timeFrame         = stringToTimeFrame(TimeFrame);
   
   //
   //
   //
   //
   //
   
   IndicatorShortName(timeFrameToString(timeFrame)+ " Cfb adaptive Adx ("+ShortLimit+","+LongLimit+")");
   return(0);
}

//
//
//
//
//

int deinit() { return(0); }

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
   int i,r,n,j,limit;

   if(counted_bars<0) return(-1);
   if(counted_bars>0) counted_bars--;
         limit = MathMin(Bars-counted_bars,Bars-1);
         if (returnBars) { adx[0] = limit+1; return(0); }
           
   //
   //
   //
   //
   //
           
   if (calculateValue || timeFrame == Period())
   {

   //
   //
   //
   //
   //
   //
   
   for(i=limit, r=Bars-i-1; i>=0; i--, r++)
   {
    
         cfb[i] = iDSmooth(iCfb(Bars,iMA(NULL,0,1,0,MODE_SMA,CfbPrice,i),CfbDepth,CfbSmooth,r),CfbResultSmooth,CfbResultSmoothPhase,CfbResultSmoothDouble,i);
    
         //
         //
         //
         //
         //
         
         double cfbMax = cfb[i];
         double cfbMin = cfb[i];
         for (int k=1; k<CfbNormLength && (i+k)<Bars; k++ )
            {
               cfbMax = MathMax(cfb[i+k],cfbMax);
               cfbMin = MathMin(cfb[i+k],cfbMin);
            }
            double denominator = cfbMax-cfbMin;
               if (denominator> 0)
                  double ratio = (cfb[i]-cfbMin)/denominator;
               else      ratio = 0.5;  
                              
         //
         //
         //
         //
         //

         double AdxLength  = MathCeil(ShortLimit+ratio*(LongLimit-ShortLimit));
         double sf         = 1.0/AdxLength;
         double currTR     = MathMax(High[i],Close[i+1])-MathMin(Low[i],Close[i+1]);
         double DeltaHi    = High[i] - High[i+1];
	      double DeltaLo    = Low[i+1] - Low[i];
         double plusDM     = 0.00;
         double minusDM    = 0.00;
         
            if ((DeltaHi > DeltaLo) && (DeltaHi > 0)) plusDM  = DeltaHi;
            if ((DeltaLo > DeltaHi) && (DeltaLo > 0)) minusDM = DeltaLo;      
         
         //
         //
         //
         //
         //
         
            averageDIp[i] = averageDIp[i+1] + sf*(plusDM  - averageDIp[i+1]);
            averageDIm[i] = averageDIm[i+1] + sf*(minusDM - averageDIm[i+1]);
            averageTR[i]  = averageTR[i+1]  + sf*(currTR  - averageTR[i+1]);

         //
         //
         //
         //
         //
                  
            DIp[i] = 0.00;                   
            DIm[i] = 0.00;                   
            if (averageTR[i] > 0)
               {              
                  DIp[i] = 100.0*iDSmooth(averageDIp[i],AdxLength,AdxPhase,AdxSmoothDouble,i,20)/averageTR[i];
                  DIm[i] = 100.0*iDSmooth(averageDIm[i],AdxLength,AdxPhase,AdxSmoothDouble,i,40)/averageTR[i];
               }            

               double DX;
               if((DIp[i] + DIm[i])> 0) 
                    DX = 100.00*iDSmooth(MathAbs(DIp[i] - DIm[i])/(DIp[i] + DIm[i]),SmoothLength,SmoothPhase,SmoothDouble,i,60);
               else DX = 100.00*iDSmooth(0,                                         SmoothLength,SmoothPhase,SmoothDouble,i,60);
               
               adx[i]  = (adx[i+1])+ sf *(DX - adx[i+1]); 
              trend[i] = trend[i+1];
 
           if (adx[i]>adx[i+1] && adx[i] > triggerlevel && DIp[i] > DIm[i]) trend[i]= 1;
           if (adx[i]>adx[i+1] && adx[i] > triggerlevel && DIp[i] < DIm[i]) trend[i]=-1;   
               
           }
           
      //
      //
      //
      //
      //
   
        manageAlerts();
      return(0);
      }

      limit = MathMax(limit,MathMin(Bars,iCustom(NULL,timeFrame,indicatorFileName,"returnBars",0,0)*timeFrame/Period()));
      for (i=limit;i>=0; i--)
      {
      int y    = iBarShift(NULL,timeFrame,Time[i]);
      adx[i]   = iCustom(NULL,timeFrame,indicatorFileName,"calculateValue",ShortLimit,LongLimit,CfbNormLength,CfbDepth,CfbPrice,CfbSmooth,CfbResultSmooth,CfbResultSmoothPhase,CfbResultSmoothDouble,AdxPhase,AdxSmoothDouble,SmoothLength,SmoothPhase,SmoothDouble,AdxPrice,triggerlevel,0,y);
      DIp[i]   = iCustom(NULL,timeFrame,indicatorFileName,"calculateValue",ShortLimit,LongLimit,CfbNormLength,CfbDepth,CfbPrice,CfbSmooth,CfbResultSmooth,CfbResultSmoothPhase,CfbResultSmoothDouble,AdxPhase,AdxSmoothDouble,SmoothLength,SmoothPhase,SmoothDouble,AdxPrice,triggerlevel,1,y);
      DIm[i]   = iCustom(NULL,timeFrame,indicatorFileName,"calculateValue",ShortLimit,LongLimit,CfbNormLength,CfbDepth,CfbPrice,CfbSmooth,CfbResultSmooth,CfbResultSmoothPhase,CfbResultSmoothDouble,AdxPhase,AdxSmoothDouble,SmoothLength,SmoothPhase,SmoothDouble,AdxPrice,triggerlevel,2,y);
      trend[i] = iCustom(NULL,timeFrame,indicatorFileName,"calculateValue",ShortLimit,LongLimit,CfbNormLength,CfbDepth,CfbPrice,CfbSmooth,CfbResultSmooth,CfbResultSmoothPhase,CfbResultSmoothDouble,AdxPhase,AdxSmoothDouble,SmoothLength,SmoothPhase,SmoothDouble,AdxPrice,triggerlevel,7,y);
      
      //
      //
      //
      //
      //
      
      if (timeFrame <= Period() || y==iBarShift(NULL,timeFrame,Time[i-1])) continue;
         if (!Interpolate) continue;
         
         //
         //
         //
         //
         //
         
         datetime time = iTime(NULL,timeFrame,y);
         for(n = 1; i+n < Bars && Time[i+n] >= time; n++) continue;	
         double factor = 1.0 / n;
         for(j = 1; j < n; j++)
         {
  	      adx[i+j]= j*factor*adx[i+n] + (1.0-j*factor)*adx[i];
  	      DIp[i+j]= j*factor*DIp[i+n] + (1.0-j*factor)*DIp[i];
  	      DIm[i+j]= j*factor*DIm[i+n] + (1.0-j*factor)*DIm[i];
  	     
        }  	            
     }
 
     manageAlerts(); 
    
   return(0);
}
//+------------------------------------------------------------------
//|                                                                 
//+------------------------------------------------------------------
//
//

int    Depths[] = {2,3,4,6,8,12,16,24,32,48,64,96,128,192};
double workCfb[][28];

//
//
//
//
//

double iCfb(int totalBars, double price, int depth, int smooth, int i)
{
   if (ArrayRange(workCfb,0) != totalBars) ArrayResize(workCfb,totalBars);
         
   //
   //
   //
   //
   //

   double suma     = 0;
   double sumb     = 0;
   double cfb      = 0;
   double evenCoef = 1;
   double oddCoef  = 1;
   double avg      = 0;
         
      if (i>=smooth)
         for (int k=depth-1; k>=0; k--)
         {
            workCfb[i][k]    = iCfbFunc(totalBars,price,i,Depths[k],k);
            workCfb[i][k+14] = workCfb[i-1][k+14] + (workCfb[i][k]-workCfb[i-smooth][k])/smooth;

                  if ((k%2)==0)
                        { avg = oddCoef  * workCfb[i][k+14]; oddCoef  = oddCoef  * (1 - avg); }
                  else  { avg = evenCoef * workCfb[i][k+14]; evenCoef = evenCoef * (1 - avg); }
               
               suma += avg*avg*Depths[k];
               sumb += avg;
         }
      else for (k=depth-1; k>=0; k--) { workCfb[i][k] = 0; workCfb[i][k+14] = 0; }            

   //
   //
   //
   //
   //

   if (sumb != 0) cfb = suma/sumb;
   return(cfb);
}

//+------------------------------------------------------------------
//|                                                                  
//+------------------------------------------------------------------
//
//
//
//
//

double  workCfbFunc[][70];
#define _prices 0
#define _roc    1
#define _value1 2
#define _value2 3
#define _value3 4

//
//
//
//

double iCfbFunc(int totalBars, double price, int r, int depth, int k)
{
   k *= 5;
      if (ArrayRange(workCfbFunc,0) != totalBars) ArrayResize(workCfbFunc,totalBars);
      if (r<=(depth+1))
      {
         workCfbFunc[r][k+_prices] = 0;
         workCfbFunc[r][k+_roc]    = 0;
         workCfbFunc[r][k+_value1] = 0;
         workCfbFunc[r][k+_value2] = 0;
         workCfbFunc[r][k+_value3] = 0;
         return(0);
      }         
      workCfbFunc[r][k+_prices] = price; 

   //
   //
   //
   //
   //

      workCfbFunc[r][k+_roc]    = MathAbs(workCfbFunc[r][k+_prices] - workCfbFunc[r-1][k+_prices]);
      workCfbFunc[r][k+_value1] = workCfbFunc[r-1][k+_value1] - workCfbFunc[r-depth][k+_roc] + workCfbFunc[r][k+_roc];
      workCfbFunc[r][k+_value2] = workCfbFunc[r-1][k+_value2] - workCfbFunc[r-1][k+_value1] + workCfbFunc[r][k+_roc]*depth;
      workCfbFunc[r][k+_value3] = workCfbFunc[r-1][k+_value3] - workCfbFunc[r-1-depth][k+_prices] + workCfbFunc[r-1][k+_prices];
   
      double dividend = MathAbs(depth*workCfbFunc[r][k+_prices]-workCfbFunc[r][k+_value3]);

      //
      //
      //
      //
      //
         
   if (workCfbFunc[r][k+_value2] != 0)
         return( dividend / workCfbFunc[r][k+_value2]);
   else  return(0.00);            
}

//+------------------------------------------------------------------
//|                                                                  
//+------------------------------------------------------------------
//
//
//
//
//

double wrk[][80];

#define bsmax  5
#define bsmin  6
#define volty  7
#define vsum   8
#define avolty 9

//
//
//
//
//

double iDSmooth(double price, double length, double phase, bool isDouble, int i, int s=0)
{
   if (isDouble)
         return (iSmooth(iSmooth(price,MathSqrt(length),phase,i,s),MathSqrt(length),phase,i,s+10));
   else  return (iSmooth(price,length,phase,i,s));
}

//
//
//
//
//

double iSmooth(double price, double length, double phase, int i, int s=0)
{
   if (length <=1) return(price);
   if (ArrayRange(wrk,0) != Bars) ArrayResize(wrk,Bars);
   
   int r = Bars-i-1; 
      if (r==0) { for(int k=0; k<7; k++) wrk[r][k+s]=price; for(; k<10; k++) wrk[r][k+s]=0; return(price); }

   //
   //
   //
   //
   //
   
      double len1   = MathMax(MathLog(MathSqrt(0.5*(length-1)))/MathLog(2.0)+2.0,0);
      double pow1   = MathMax(len1-2.0,0.5);
      double del1   = price - wrk[r-1][bsmax+s];
      double del2   = price - wrk[r-1][bsmin+s];
      double div    = 1.0/(10.0+10.0*(MathMin(MathMax(length-10,0),100))/100);
      int    forBar = MathMin(r,10);
	
         wrk[r][volty+s] = 0;
               if(MathAbs(del1) > MathAbs(del2)) wrk[r][volty+s] = MathAbs(del1); 
               if(MathAbs(del1) < MathAbs(del2)) wrk[r][volty+s] = MathAbs(del2); 
         wrk[r][vsum+s] =	wrk[r-1][vsum+s] + (wrk[r][volty+s]-wrk[r-forBar][volty+s])*div;
         
         //
         //
         //
         //
         //
   
         wrk[r][avolty+s] = wrk[r-1][avolty+s]+(2.0/(MathMax(4.0*length,30)+1.0))*(wrk[r][vsum+s]-wrk[r-1][avolty+s]);
            if (wrk[r][avolty+s] > 0)
               double dVolty = wrk[r][volty+s]/wrk[r][avolty+s]; else dVolty = 0;   
	               if (dVolty > MathPow(len1,1.0/pow1)) dVolty = MathPow(len1,1.0/pow1);
                  if (dVolty < 1)                      dVolty = 1.0;

      //
      //
      //
      //
      //
	        
   	double pow2 = MathPow(dVolty, pow1);
      double len2 = MathSqrt(0.5*(length-1))*len1;
      double Kv   = MathPow(len2/(len2+1), MathSqrt(pow2));

         if (del1 > 0) wrk[r][bsmax+s] = price; else wrk[r][bsmax+s] = price - Kv*del1;
         if (del2 < 0) wrk[r][bsmin+s] = price; else wrk[r][bsmin+s] = price - Kv*del2;
	
   //
   //
   //
   //
   //
      
      double R     = MathMax(MathMin(phase,100),-100)/100.0 + 1.5;
      double beta  = 0.45*(length-1)/(0.45*(length-1)+2);
      double alpha = MathPow(beta,pow2);

         wrk[r][0+s] = price + alpha*(wrk[r-1][0+s]-price);
         wrk[r][1+s] = (price - wrk[r][0+s])*(1-beta) + beta*wrk[r-1][1+s];
         wrk[r][2+s] = (wrk[r][0+s] + R*wrk[r][1+s]);
         wrk[r][3+s] = (wrk[r][2+s] - wrk[r-1][4+s])*MathPow((1-alpha),2) + MathPow(alpha,2)*wrk[r-1][3+s];
         wrk[r][4+s] = (wrk[r-1][4+s] + wrk[r][3+s]); 

   //
   //
   //
   //
   //

   return(wrk[r][4+s]);
}

//
//
//
//
//

string sTfTable[] = {"M1","M5","M15","M30","H1","H4","D1","W1","MN"};
int    iTfTable[] = {1,5,15,30,60,240,1440,10080,43200};

//
//
//
//
//

int stringToTimeFrame(string tfs)
{
   tfs = stringUpperCase(tfs);
   for (int i=ArraySize(iTfTable)-1; i>=0; i--)
         if (tfs==sTfTable[i] || tfs==""+iTfTable[i]) return(MathMax(iTfTable[i],Period()));
                                                      return(Period());
}
string timeFrameToString(int tf)
{
   for (int i=ArraySize(iTfTable)-1; i>=0; i--) 
         if (tf==iTfTable[i]) return(sTfTable[i]);
                              return("");
}

//
//
//
//
//

string stringUpperCase(string str)
{
   string   s = str;

   for (int length=StringLen(str)-1; length>=0; length--)
   {
      int char = StringGetChar(s, length);
         if((char > 96 && char < 123) || (char > 223 && char < 256))
                     s = StringSetChar(s, length, char - 32);
         else if(char > -33 && char < 0)
                     s = StringSetChar(s, length, char + 224);
   }
   return(s);
}

//
//
//
//
//

void manageAlerts()
{
   if (!calculateValue && alertsOn)
   {
      if (alertsOnCurrent)
           int whichBar = 0;
      else     whichBar = 1; whichBar = iBarShift(NULL,0,iTime(NULL,timeFrame,whichBar));
      if (trend[whichBar] != trend[whichBar+1])
      {
         if (trend[whichBar] ==  1) doAlert(whichBar,"up");
         if (trend[whichBar] == -1) doAlert(whichBar,"down");
      }
   }
}

//
//
//
//
//

void doAlert(int forBar, string doWhat)
{
   static string   previousAlert="nothing";
   static datetime previousTime;
   string message;
   
   if (previousAlert != doWhat || previousTime != Time[forBar]) {
       previousAlert  = doWhat;
       previousTime   = Time[forBar];

       //
       //
       //
       //
       //

       message =  StringConcatenate(Symbol()," ",timeFrameToString(timeFrame)," at ",TimeToStr(TimeLocal(),TIME_SECONDS)," cfb adx changed direction to ",doWhat);
          if (alertsMessage) Alert(message);
          if (alertsEmail)   SendMail(StringConcatenate(Symbol()," cfb adx "),message);
          if (alertsSound)   PlaySound("alert2.wav");
   }
}

