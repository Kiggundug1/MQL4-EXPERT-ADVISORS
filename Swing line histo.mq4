//+------------------------------------------------------------------+
//|                                                   Swing line.mq4 |
//|                                                                  |
//| September 2010 issue                                             |
//| Technical Analysis of Stocks and Commodities                     |
//| Ron Black's article “Getting Clear With Short-Term Swings”       |
//+------------------------------------------------------------------+
#property copyright "mladen"
#property link      "mladenfx@gmail.com"

#property indicator_separate_window
#property indicator_buffers  2
#property indicator_color1   DeepSkyBlue
#property indicator_color2   Red
#property indicator_width1   2
#property indicator_width2   2
#property indicator_minimum  0

//
//
//
//
//

extern string TimeFrame       = "current time frame";
extern bool   alertsOn        = False;
extern bool   alertsOnCurrent = true;
extern bool   alertsMessage   = true;
extern bool   alertsSound     = false;
extern bool   alertsEmail     = false;

//
//
//
//
//

double buffer1[];
double buffer2[];
double trend[];

//
//
//
//
//

string indicatorFileName;
bool   returnBars;
bool   calculateValue;
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
   IndicatorBuffers(3);
   indicatorFileName = WindowExpertName();
   returnBars        = TimeFrame=="returnBars";     if (returnBars)     { SetIndexBuffer(0,trend); return(0); }
   calculateValue    = TimeFrame=="calculateValue"; if (calculateValue) { SetIndexBuffer(0,trend); return(0); }

       SetIndexBuffer(0,buffer1); SetIndexStyle(0,DRAW_HISTOGRAM);
       SetIndexBuffer(1,buffer2); SetIndexStyle(1,DRAW_HISTOGRAM);
       SetIndexBuffer(2,trend);
                  
   //
   //
   //
   //
   //

   timeFrame = stringToTimeFrame(TimeFrame);
   IndicatorShortName("Swing line "+timeFrameToString(timeFrame));
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

double  work[][4];
#define hHi 0
#define hLo 1
#define lHi 2
#define lLo 3

//
//
//
//
//

int start()
{
   int counted_bars=IndicatorCounted();
   int i,r,limit;

   if(counted_bars<0) return(-1);
   if(counted_bars>0) counted_bars--;
           limit=MathMin(Bars-counted_bars,Bars-1);
           if (returnBars) { trend[0] = limit+1; return(0); }

   //
   //
   //
   //
   //

   if (calculateValue || timeFrame==Period())
   {
      if (ArrayRange(work,0)!=Bars) ArrayResize(work,Bars);

      //
      //
      //
      //
      //
      
      for(i=limit,r=Bars-limit-1; i>=0; i--,r++)
      {
         if (i==Bars-1)
         {
            work[r][hHi] = High[i]; work[r][hLo] = Low[i];
            work[r][lHi] = High[i]; work[r][lLo] = Low[i];
            trend[i]     = -1;
            continue; 
         }
      
         //
         //
         //
         //
         //
      
         trend[i]     = trend[i+1];
         work[r][hHi] = work[r-1][hHi]; work[r][hLo] = work[r-1][hLo];
         work[r][lHi] = work[r-1][lHi]; work[r][lLo] = work[r-1][lLo];
 
               if (trend[i+1] == 1)
               {
                  work[r][hHi] = MathMax(work[r-1][hHi],High[i]);
                  work[r][hLo] = MathMax(work[r-1][hLo],Low[i]);
                     if (High[i]<work[r][hLo]) { trend[i] = -1; work[r][lHi] = High[i]; work[r][lLo] = Low[i]; }
               }
               if (trend[i+1] == -1)
               {
                  work[r][lHi] = MathMin(work[r-1][lHi],High[i]);
                  work[r][lLo] = MathMin(work[r-1][lLo],Low[i]);
                     if (Low[i]>work[r][lHi]) { trend[i] =  1; work[r][hHi] = High[i]; work[r][hLo] = Low[i]; }
               }

         if (!calculateValue) manageBar(i);
      }

      if (!calculateValue) manageAlerts();
      return(0);
   }            
   
   //
   //
   //
   //
   //
   
   limit = MathMax(limit,MathMin(Bars-1,iCustom(NULL,timeFrame,indicatorFileName,"returnBars",0,0)*timeFrame/Period()));
   for(i=limit; i>=0; i--)
   {
      int y = iBarShift(NULL,timeFrame,Time[i]);
      trend[i] = iCustom(NULL,timeFrame,indicatorFileName,"calculateValue",0,y); manageBar(i);
   }
   
   //
   //
   //
   //
   //
      
   manageAlerts();
   return(0);
}

//+-------------------------------------------------------------------
//|                                                                  
//+-------------------------------------------------------------------
//
//
//
//
//

void manageBar(int i )
{
   
   if (trend[i]==1)
            { buffer1[i] = 1; buffer2[i] = EMPTY_VALUE; }
   else     { buffer1[i] = EMPTY_VALUE; buffer2[i] = 1; }                 
}

//+-------------------------------------------------------------------
//|                                                                  
//+-------------------------------------------------------------------
//
//
//
//
//

void manageAlerts()
{
   if (alertsOn)
   {
      if (alertsOnCurrent)
           int whichBar = 0;
      else     whichBar = 1; whichBar = iBarShift(NULL,0,iTime(NULL,timeFrame,whichBar));
      if (trend[whichBar] != trend[whichBar+1])
      {
         if (trend[whichBar] == 1) doAlert(whichBar,"up");
         if (trend[whichBar] ==-1) doAlert(whichBar,"down");
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

       message =  StringConcatenate(Symbol()," at ",TimeToStr(TimeLocal(),TIME_SECONDS)," "+timeFrameToString(timeFrame)+" Swing line changed to ",doWhat);
          if (alertsMessage) Alert(message);
          if (alertsEmail)   SendMail(StringConcatenate(Symbol(),"Swing line "),message);
          if (alertsSound)   PlaySound("alert2.wav");
   }
}

//+-------------------------------------------------------------------
//|                                                                  
//+-------------------------------------------------------------------
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
   tfs = StringUpperCase(tfs);
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

string StringUpperCase(string str)
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