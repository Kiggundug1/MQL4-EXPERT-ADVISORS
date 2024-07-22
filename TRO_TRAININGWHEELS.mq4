//+------------------------------------------------------------------+ 
//|   TRO_TRAININGWHEELS                                             | 
//|                                                                  | 
//|   Copyright © 2008, Avery T. Horton, Jr. aka TheRumpledOne       |
//|                                                                  |
//|   PO BOX 43575, TUCSON, AZ 85733                                 |
//|                                                                  |
//|   GIFTS AND DONATIONS ACCEPTED                                   | 
//|                                                                  |
//|   therumpledone@gmail.com                                        |  
//+------------------------------------------------------------------+ 


#property  copyright "Copyright © 2008, Avery T. Horton, Jr. aka TRO" 
#property  link      "http://www.therumpledone.com/" 

//---- indicator settings 
#property indicator_chart_window
#property indicator_buffers 0
#property indicator_minimum 0
#property indicator_maximum 1

//---- indicator parameters  
extern bool TURN_OFF    = false ;

extern int win            = 0;
extern int corner         = 3;
extern int price_x_offset = 0 ; 
extern int price_y_offset = 30 ; 

extern string myFont          = "Arial Bold" ;
extern int   myFontSize       = 16;


extern string noteTimeNY   = " 14:00 server time = 05:00 mst" ; 
extern string noteTimeTY   = " 23:00 server time = 14:00 mst" ; 
extern string noteTimeAU   = " 01:00 server time = 16:00 mst" ; 
extern string noteTimeLD   = " 09:00 server time = 00:00 mst" ; 


extern string myHHMM       = "00:00"; // 05:00 am pst = 14:00 server time 
extern string myMessage    = "NY" ; 


extern string Buy_Message  = "ONLY TRADE LONG " ;
extern string Wait_Message = "*** WAIT ***    " ;
extern string Sell_Message = "ONLY TRADE SHORT" ;
extern string Rdy_Message  = "*** GET READY *** " ;

extern color Buy_color  = Lime;
extern color Wait_color = Yellow;
extern color Sell_color = Red;
extern color Rdy_color  = Orange;

string tMessage , oldmsg = "" ; 

string symbol, tChartPeriod,  tShortName ;  
int    digits, period  ; 

datetime Trigger ;

int OldBars = -1 ;

color tColor = Yellow ;
 
color ClOpColor;

double H1_open, H1_close, open, close, diff, spread, DailyOpen ;

string tObjName03 = "TROTW"  ; 
  
//+------------------------------------------------------------------+ 
int init() 
  { 
   period       = Period() ;     
//   tChartPeriod =  TimeFrameToString(period) ;
   symbol       =  Symbol() ;
   digits       =  Digits ;   

   tShortName = "tw"+ symbol + tChartPeriod  ;
   deinit() ;
   
   return(0); 
  } 
//+------------------------------------------------------------------+ 

int deinit() 
{ 

   ObjectDelete("TRAIN30");
   ObjectDelete("TRAIN29");
   ObjectDelete("TRAIN29B");
   ObjectDelete("TRAIN31");
   ObjectDelete("TRAIN32");
   ObjectDelete("TRAIN34");   
   ObjectDelete(tObjName03);     
   TRO() ;
    
   return(0);   
}  
 
//+------------------------------------------------------------------+ 
int start() 
{ 
   if( TURN_OFF ) { deinit(); return(0) ; }
      
   DoDailyOpen() ;   
   
   open     = iOpen(symbol,0,0);
   close    = iClose(symbol,0,0);     
   
   H1_open  = iOpen(symbol,PERIOD_H1,0);


while(true)
{

if( close > open && close > DailyOpen && close > H1_open ) { tMessage = Buy_Message  ; ClOpColor = Buy_color  ; break ; }

if(                 close > DailyOpen && close > H1_open ) { tMessage = Rdy_Message  ; ClOpColor = Buy_color  ; break ; }

if( close < open && close < DailyOpen && close < H1_open ) { tMessage = Sell_Message ; ClOpColor = Sell_color ; break ; } 

if(                 close < DailyOpen && close < H1_open ) { tMessage = Rdy_Message ; ClOpColor = Sell_color ; break ; } 

 
tMessage = Wait_Message ; ClOpColor = Wait_color ; 

break;

} // while

tMessage = fFill(tMessage,20) ;

oldmsg =  tMessage ;



//+------------------------------------------------------------------+  
                    
   ObjectCreate("TRAIN31", OBJ_LABEL, win, 0, 0);//HiLow LABEL
   ObjectSetText("TRAIN31",tMessage, myFontSize , myFont, ClOpColor );
   ObjectSet("TRAIN31", OBJPROP_CORNER, corner);
   ObjectSet("TRAIN31", OBJPROP_XDISTANCE, price_x_offset); 
   ObjectSet("TRAIN31", OBJPROP_YDISTANCE, price_y_offset); 


 string note2 = "Default Font Color";
 color  twFontColor              = DimGray;
 string note3                  = "Font Size";
 int twFontSize                  = 8;
 string note4                  = "Font Type";
 string twFontType               = "Verdana"; // Tahoma Courier
 string RAN953 =  "*** TRO TRAINING WHEELS ***"  ;   

    
   ObjectCreate(tObjName03, OBJ_LABEL, 0, 0, 0);//HiLow LABEL
   ObjectSetText(tObjName03, RAN953 , twFontSize ,  twFontType,  twFontColor );
   ObjectSet(tObjName03, OBJPROP_CORNER, 3);
   ObjectSet(tObjName03, OBJPROP_XDISTANCE, 15 );
   ObjectSet(tObjName03, OBJPROP_YDISTANCE, 10 ); 
//+------------------------------------------------------------------+        

   WindowRedraw();   
    
   return(0);
}

//+------------------------------------------------------------------+

void DoDailyOpen() 
{

int   yy = TimeYear(Time[0]);
int   mm = TimeMonth(Time[0]);
int   dd = TimeDay(Time[0]);  
   
string yymmddms = yy+"."+mm+"."+dd+" " + myHHMM ;
         
datetime var1 = StrToTime(yymmddms);  
   
datetime day=24*60*60;
datetime r= var1 ;

int      cd=iBarShift(NULL,0,r,FALSE);
datetime r2=r-day;

if(TimeDayOfWeek(r2)==0) r2=r2-day-day;
int cd2=iBarShift(NULL,0,r2,FALSE);

if( var1 > Time[0] ) { r = r2 ;cd = cd2 ;} // if date/time is greater than current date/time go back 1 day

DailyOpen = iOpen(symbol,0,cd);    
 

}
//+------------------------------------------------------------------+

string fFill(string filled, int f ) 
{
   string FILLED ;
   
   FILLED = StringSubstr(filled + "                                         ",0,f) ;
   
return(FILLED);
}

//+------------------------------------------------------------------+  
void TRO()
{   
   
   string TRO_OBJ    = "TROTAG"  ;  
   ObjectCreate(TRO_OBJ, OBJ_LABEL, 0, 0, 0);//HiLow LABEL
   ObjectSetText(TRO_OBJ, CharToStr(78) , 12 ,  "Wingdings",  DimGray );
   ObjectSet(TRO_OBJ, OBJPROP_CORNER, 3);
   ObjectSet(TRO_OBJ, OBJPROP_XDISTANCE, 5 );
   ObjectSet(TRO_OBJ, OBJPROP_YDISTANCE, 5 );  
}
//+------------------------------------------------------------------+


/*
 

Comment(

 
"DailyOpen " , DoubleToStr(DailyOpen,Digits) , "\n" ,
 

"") ; 

 
*/