//+------------------------------------------------------------------+
//|                                                        Pivot.mq4 |
//|                      Copyright © 2004, MetaQuotes Software Corp. |
//|                                        http://www.metaquotes.net |
//+------------------------------------------------------------------+
#property copyright "Copyright © 2004, MetaQuotes Software Corp."
#property link      "http://www.metaquotes.net"

#property indicator_chart_window

// ---- user input ---------------
/* 
   LocalTimeZone: TimeZone for which MT4 shows your local time, 
                  e.g. 1 or 2 for Europe (GMT+1 or GMT+2 (daylight 
                  savings time).  Use zero for no adjustment.
                  
   DestTimeZone:  TimeZone for the session from which to calculate
                  the levels (e.g. 1 or 2 for the European session
                  (without or with daylight savings time).  
                  Use zero for GMT
                  
  Example: If your MT server is living in the EST (Eastern Standard Time, 
           GMT-5) zone and want to calculate the levels for the London trading
           session (European time in summer GMT+1), then enter -5 for 
           LocalTimeZone, 1 for Dest TimeZone. 
            
           Please understand that the LocalTimeZone setting depends on the
           time on your MetaTrader charts (for example the demo server 
           from MetaQuotes always lives in CDT (+2) or CET (+1), no matter
           what the clock on your wall says.
           
           If in doubt, leave everything to zero.
*/


extern int LocalTimeZone= 0;
extern int DestTimeZone= 0;


extern bool ShowPivots = false;
extern bool ShowFibos= true;
extern bool ShowYesterdayHighLow = false;
extern bool ShowMidPitvot = false;
extern bool ShowCamarilla = false;

extern int BarForLabels= 10;     // number of bars from right, where lines labels will be shown

extern bool DebugLogger = false;



/*
   The following doesn't work yet, please leave it to 0/24:
                  
   TradingHoursFrom: First hour of the trading session in the destination
                     time zone.
                     
   TradingHoursTo: Last hour of the trading session in the destination
                   time zone (the hour starting with this value is excluded,
                   i.e. 18 means up to 17:59 o'clock)
                   
   Example: If you are lving in the EST (Eastern Standard Time, GMT-5) 
            zone and want to calculate the levels for the London trading
            session (European time GMT+1, 08:00 - 17:00), then enter
            -5 for LocalTimeZone, 1 for Dest TimeZone, 8 for HourFrom
            and 17 for hour to.
*/

int TradingHoursFrom= 0;
int TradingHoursTo= 24;
       



//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int init()
{
   return(0);
}

int deinit()
{
   int obj_total= ObjectsTotal();
   
   for (int i= obj_total; i>=0; i--) {
      string name= ObjectName(i);
    
      if (StringSubstr(name,0,7)=="[PIVOT]") 
         ObjectDelete(name);
   }
   
   
   // delete objects from older version
   ObjectDelete("YesterdayStart"); 
   ObjectDelete("YesterdayEnd"); 

   ObjectDelete("YesterdayStart Label"); 
   ObjectDelete("YesterdayEnd Label"); 
   
   ObjectDelete("Pivot Label");
   ObjectDelete("Pivot Line");

   string types= "RSHLM"; // beginning letters of objects
   
   for ( i= 0; i<StringLen(types); i++) {
      for (int j= 0; j<6; j++) {   
         ObjectDelete(StringSubstr(types, i, 1) + j +" Line");
         ObjectDelete(StringSubstr(types, i, 1) + j +" Label");
      }
   }
   

   return(0);
}
  
//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int start()
{
   static datetime timelastupdate= 0;
   
   if (CurTime()-timelastupdate < 600)
      return (0);
      
   timelastupdate= CurTime();
   
   //---- exit if period is greater than daily charts
   if(Period() > 1440)
   {
      Print("Error - Chart period is greater than 1 day.");
      return(-1); // then exit
   }

   datetime startofday= 0;

   double day_high= 0;
   double day_low= 0;
   double yesterday_high= 0;
   double yesterday_open= 0;
   double yesterday_low= 0;
   double yesterday_close= 0;
   double today_open= 0;
   double today_high= 0;
   double today_low= 0;

   double rates_d1[2][6];
   double rates_h1[2][6];


   //---- Get new daily prices
   /* flat time 
   ArrayCopyRates(rates_d1, Symbol(), PERIOD_D1);
   yesterday_close= rates_d1[1][4];
   yesterday_open= rates_d1[1][1];
   today_open= rates_d1[0][1];
   yesterday_high= rates_d1[1][3];
   yesterday_low= rates_d1[1][2];
   day_high= rates_d1[0][3];
   day_low= rates_d1[0][2];

   Print("unzoned1: yc =", yesterday_close, ", yo= ", yesterday_open, ", to= ", today_open, ", yhigh= ", yesterday_high, ", ylow= ", yesterday_low);
   */
   

   if (DebugLogger) {
      Print("Local time current bar:", TimeToStr(iTime(NULL, PERIOD_H1, 0)));
      Print("Dest  time current bar: ", TimeToStr(iTime(NULL, PERIOD_H1, 0)- (LocalTimeZone - DestTimeZone)*3600), ", tzdiff= ", LocalTimeZone - DestTimeZone);
   }
      
   int tzdiff= LocalTimeZone - DestTimeZone,
       tzdiffsec= tzdiff*3600;
   
   int dayofweektoday= TimeDayOfWeek(iTime(NULL, PERIOD_H1, 0) - tzdiffsec),  // what day is today in the dest timezone?
       dayofweektofind= -1; 

   int idxfirstbaroftoday= 0,
       idxfirstbarofyesterday= 0,
       idxlastbarofyesterday= 0;
       
   switch (dayofweektoday) {
      case 6: // sat
      case 0: // sun
      case 1: // mon
            dayofweektofind= 5; // prev friday
            break;
            
      default:
            dayofweektofind= dayofweektoday -1; 
            break;
   }
   
   if (DebugLogger) {
      Print("Dayofweektoday= ", dayofweektoday);
      Print("Dayofweekyesterday= ", dayofweektofind);
   }
       
   for (int i=1; i<=25; i++) {
      datetime timet= iTime(NULL, PERIOD_H1, i) - tzdiffsec;
      if (TimeDayOfWeek(timet)!=dayofweektoday) {
         idxfirstbaroftoday= i-1;
         break;
      }
   }
   

   if (DebugLogger) 
      Print("Dest time zone\'s current day starts:", TimeToStr(iTime(NULL, PERIOD_H1, idxfirstbaroftoday)), " (local time), idxbar= ", idxfirstbaroftoday);
   
   // search  backwards for the first day of the weekday we are looking for (yesterday's last bar)
   for (int j= 0; j<=48; j++) {
      datetime timey= iTime(NULL, PERIOD_H1, i+j) - tzdiffsec;
      if (TimeDayOfWeek(timey)==dayofweektofind) {  // ignore saturdays (a Sa may happen due to TZ conversion)
         idxlastbarofyesterday= i+j;
         break;
      }
   }

   if (DebugLogger) 
      Print("Dest time zone\'s previous day ends:", TimeToStr(iTime(NULL, PERIOD_H1, idxlastbarofyesterday)), " (local time), idxbar= ", idxlastbarofyesterday);


   for (j= 1; j<=24; j++) {
      datetime timey2= iTime(NULL, PERIOD_H1, idxlastbarofyesterday+j) - tzdiffsec;
      if (TimeDayOfWeek(timey2)!=dayofweektofind) {  // ignore saturdays (a Sa may happen due to TZ conversion)
         idxfirstbarofyesterday= idxlastbarofyesterday+j-1;
         break;
      }
   }
   
   datetime timeyesterdayopen= iTime(NULL, PERIOD_H1, idxfirstbarofyesterday);
   
   if (DebugLogger) 
      Print("Dest time zone\'s previous day starts:", TimeToStr(timeyesterdayopen), " (local time), idxbar= ", idxfirstbarofyesterday);


   // 
   // walk forward from yestday's start and collect hours within the same day and within trading hours
   //
   yesterday_high= -99999;  // not high enough to remain alltime high
   yesterday_low=  +99999;  // not low enough to remain alltime low
   
   for (j= idxfirstbarofyesterday; j>=idxlastbarofyesterday; j--) {
      int idxbar= j;
      datetime bartime= iTime(NULL, PERIOD_H1, idxbar) - tzdiffsec;
  
      if (yesterday_open==0)  // grab first value for open
         yesterday_open= iOpen(NULL, PERIOD_H1, idxbar);                      
      
      yesterday_high= MathMax(iHigh(NULL, PERIOD_H1, idxbar), yesterday_high);
      yesterday_low= MathMin(iLow(NULL, PERIOD_H1, idxbar), yesterday_low);
      
      // overwrite close in loop until we leave with the last bar's value
      yesterday_close= iClose(NULL, PERIOD_H1, idxbar);
   }


   if (tzdiff!=0 || TradingHoursFrom!=0 || TradingHoursTo!=24|| true) {
      double level= (yesterday_high + yesterday_low + yesterday_close) / 3;
      SetTimeLine("YesterdayStart", "start", idxfirstbarofyesterday, CadetBlue, level - 4*Point);
      SetTimeLine("YesterdayEnd", "end", idxlastbarofyesterday-1, CadetBlue, level - 4*Point);
   }
   
   today_open= iOpen(NULL, PERIOD_H1, idxfirstbaroftoday); // should be open of today start trading hour
   startofday= iTime(NULL, PERIOD_H1, idxfirstbaroftoday);

   // Print("Ybar= ", idxlastbarofyesterday, " tbar= ", idxfirstbaroftoday, "/", TimeToStr(startofday));
   
   day_high= -99999; // not high enough to remain alltime high
   day_low=  +99999; // not low enough to remain alltime low
   for (j= idxfirstbaroftoday; j>=0; j--) {
      day_high= MathMax(day_high, iHigh(NULL, PERIOD_H1, j));
      day_low= MathMin(day_low, iLow(NULL, PERIOD_H1, j));
   }
      
   if (DebugLogger) 
      Print("Timezoned values: yo= ", yesterday_open, ", yc =", yesterday_close, ", yhigh= ", yesterday_high, ", ylow= ", yesterday_low, ", to= ", today_open);

   
   //---- Calculate Levels
   
   double P, Q, D, R1,R2,R3, S1,S2,S3;
   
   D = (day_high - day_low);
   Q = (yesterday_high - yesterday_low);
   P = (yesterday_high + yesterday_low + yesterday_close) / 3;
   
   R1 = (2*P)-yesterday_low;
   R2 = P+(yesterday_high - yesterday_low);
	R3 = (2*P)+(yesterday_high-(2*yesterday_low));
   S1 = (2*P)-yesterday_high;
   S2 = P-(yesterday_high - yesterday_low);
	S3 = (2*P)-((2* yesterday_high)-yesterday_low);

   //	R2 = P-S1+R1;
   //	R1 = (2*P)-yesterday_low;
   //	P = (yesterday_high + yesterday_low + yesterday_close)/3;
   //	S1 = (2*P)-yesterday_high;
   //	S2 = P-R1+S1;


   string comment= 
           "-- Good Luck Trading FX-50 System! ---\n" +
           "Range: Yesterday "+DoubleToStr(MathRound(Q/Point),0)+" pips, Today "+DoubleToStr(MathRound(D/Point),0)+" pips" + "\n"+
           "Highs: Yesterday "+DoubleToStr(yesterday_high,Digits)  +", Today "+DoubleToStr(day_high,Digits) +"\n" +
           "Lows:  Yesterday "+DoubleToStr(yesterday_low,Digits)   +", Today "+DoubleToStr(day_low,Digits)  +"\n" +
           "Close: Yesterday "+DoubleToStr(yesterday_close,Digits);

   //---- Set line labels on chart window
   
   if (ShowYesterdayHighLow) {
      SetLevel("Y\'s High", yesterday_high, Orange, startofday);
      SetLevel("Y\'s Low", yesterday_low, Orange, startofday);
   }

   //---- Pivot Lines
   if (ShowPivots==true) {
      SetLevel("R1", R1, Blue, startofday);
      SetLevel("R2", R2, Blue, startofday);
      SetLevel("R3", R3, Blue, startofday);
      
      SetLevel("Pivot", P, Magenta, startofday);

      SetLevel("S1", S1, Red, startofday);
      SetLevel("S2", S2, Red, startofday);
      SetLevel("S3", S3, Red, startofday);
   }
   
   if (ShowFibos) {
      // .618, .5 and .382
      SetLevel("Low - 61.8%", yesterday_low - Q*0.618, Yellow, startofday);
      SetLevel("Low - 38.2%", yesterday_low - Q*0.382, Yellow, startofday);
      SetLevel("Low + 38.2%", yesterday_low + Q*0.382, Yellow, startofday);
      SetLevel("LowHigh 50%", yesterday_low + Q*0.5, Yellow, startofday);
      SetLevel("High - 38.2%", yesterday_high - Q*0.382, Yellow, startofday);
      SetLevel("High + 38.2%", yesterday_high + Q*0.382, Yellow, startofday);
      SetLevel("High + 61.8%", yesterday_high +  Q*0.618, Yellow, startofday);
      
      
   
   }


   //----- Camarilla Lines
   if (ShowCamarilla==true) {

      // Camarilla (http://www.moneytec.com/forums/showthread.php?t=14179&page=5)
      // H4= (high-low)*1.1/2+close;  H3= (high-low)*1.1/4+close;
      // H2= (high-low)*1.1/6+close;  H1= (high-low)*1.1/12+close
      // L1= close-(high-low)*1.1/12; L2= close-(high-low)*1.1/6;
      // L3= close-(high-low)*1.1/4;  L4= close-(high-low)*1.1/2;
      
      double H4,H3,L4,L3;
	   H4 = (Q*0.55)+yesterday_close;
	   H3 = (Q*0.27)+yesterday_close;
	   L3 = yesterday_close-(Q*0.27);	
	   L4 = yesterday_close-(Q*0.55);	
	   
      SetLevel("H3", H3, Yellow, startofday);
      SetLevel("H4", H4, Yellow, startofday);
      SetLevel("L3", L3, Yellow, startofday);
      SetLevel("L4", L4, Yellow, startofday);
   }


   //------ Midpoints Pivots 
   if (ShowMidPitvot==true) {
      // mid levels between pivots
      double M0,M1,M2,M3,M4,M5;
	   M5 = (R2+R3)/2;
	   M4 = (R1+R2)/2;
	   M3 = (P+R1)/2;
	   M2 = (P+S1)/2;
	   M1 = (S1+S2)/2;
	   M0 = (S2+S3)/2;
      SetLevel("MR3", M5, Green, startofday);
      SetLevel("MR2", M4, Green, startofday);
      SetLevel("MR1", M3, Green, startofday);
      SetLevel("MS1", M2, Green, startofday);
      SetLevel("MS2", M1, Green, startofday);
      SetLevel("MS3", M0, Green, startofday);
   }

   Comment(comment); 

   return(0);
}


//+------------------------------------------------------------------+
//| Helper                                                           |
//+------------------------------------------------------------------+
void SetLevel(string text, double level, color col1, datetime startofday)
{
   string labelname= "[PIVOT] " + text + " Label";
   string linename= "[PIVOT] " + text + " Line";
   int digits= MarketInfo(Symbol(), MODE_DIGITS);

   if (ObjectFind(labelname) != 0) {
      ObjectCreate(labelname, OBJ_TEXT, 0, MathMin(Time[BarForLabels], startofday), level);
   }
   else {
      ObjectMove(labelname, 0, MathMin(Time[BarForLabels], startofday), level);
   }
   ObjectSetText(labelname, " " + text + ": "+DoubleToStr(level, Digits), 8, "Arial", White);
   
   if (ObjectFind(linename) != 0) {
      ObjectCreate(linename, OBJ_TREND, 0, startofday, level, Time[0],level);
      ObjectSet(linename, OBJPROP_STYLE, STYLE_DASHDOTDOT);
      ObjectSet(linename, OBJPROP_COLOR, col1);
   }
   else {
      ObjectMove(linename, 1, Time[0],level);
      ObjectMove(linename, 0, startofday, level);
   }
}
      

//+------------------------------------------------------------------+
//| Helper                                                           |
//+------------------------------------------------------------------+
void SetTimeLine(string objname, string text, int idx, color col1, double vleveltext) 
{
   string name= "[PIVOT] " + objname;
   int x= iTime(NULL, PERIOD_H1, idx);

   if (ObjectFind(name) != 0) 
      ObjectCreate(name, OBJ_TREND, 0, x, 0, x, 100);
   else {
      ObjectMove(name, 0, x, 0);
      ObjectMove(name, 1, x, 100);
   }
   
   ObjectSet(name, OBJPROP_STYLE, STYLE_DOT);
   ObjectSet(name, OBJPROP_COLOR, DarkGray);
   
   if (ObjectFind(name + " Label") != 0) 
      ObjectCreate(name + " Label", OBJ_TEXT, 0, x, vleveltext);
   else
      ObjectMove(name + " Label", 0, x, vleveltext);
            
   ObjectSetText(name + " Label", text, 8, "Arial", col1);
}