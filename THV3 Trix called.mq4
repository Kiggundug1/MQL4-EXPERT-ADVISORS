//+------------------------------------------------------------------+
//|                Shared by www.cobraforex.com                         |
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
//|                                                    THV3 trix.mq4 |
//|                                          orginal by Luis Damiani |
//|Modified by Cobraforex and team for THV System, www.cobraforex.com|
//+------------------------------------------------------------------+

/*--------------------------------------------------------------------
THV T3 Trix_v2:

On the Inputs tab of the Indicator Window, only one number representing 
the absolute value for the High and Low lines, needs to be entered for
these two lines to be created.  A Zero line has been added also.  In the
Colors tab these three lines can be separately colored and styled.  The
lines truncate at the current candle instead of continuing to the right
margin of the chart.  Default values for the High and Low lines are in
the code for each chart timeframe.  The user only needs to enter input
a value in the indicator window if the default does not produce the 
desired span between these two lines.  Any value other than zero that
exists in the indicator window overrides the default for that timeframe.

                                      - Traderathome  December 8, 2008
THV T3 Trix_v3:
Revised to add Alert when the trix signal line crosses the zero line
and to add text in the indicator window.
                                       
                                      - Traderathome, December 15, 2008 
THV T3 Trix_v4:
Revised so that the Trix line will now change colour depending on slope
Also added in alert code for when Trix crosses its signal line
                                      - Hiachiever, January 22, 2009 
                                      
THV T3 Trix_v4_Divergence:
Divergence lines were added to show divergences between Trixes and Prices.
Modified based on FX5_MACD_Divergence v.1.1

Trix Divergence:
This indicator will plot divergence lines on the Fast Trix indicator and 
will give buy and sell signal by displaying green and red arrows.
It also has a built-in alert function. As the original indicator, 
bullish divergence is plotted in blue lines while bearish divergence is 
plotted in red. If the divergence is classic the line will be solid and 
if the type is reversed the line will be drawn in dots.
                                      - PeterD, February 02, 2009 

this indicator we will use for the THV EA and the MTF indicators of MissPips.
It has no external variants.
Cobra

Added  time variable to shortname and line name so that each windowname line namewill be unique because
it will include the time it was initialized. This way the o/b and o/s lines 
won't get overwritten

----------------------------------------------------------------------*/ 


#property copyright "basic version by Luis Damiani"
#property link      "www.cobraforex.com"

#property indicator_separate_window

#property indicator_buffers     6

#property indicator_color1      Green          //TRIX Up line
#property indicator_color2      Crimson          //TRIX Dn line
#property indicator_color3      Lime          //Signal Up line
#property indicator_color4      Red       //Signal Dn line
#property indicator_color5      Lime          //Signal Up line
#property indicator_color6      Red       //Signal Dn line

#property indicator_width1 2
#property indicator_width2 2

#define iName  "THVTrix V"
#define vers   "17.March.2009"
#define major  "5"
#define minor  "00"
#define Prefix "Trix_called"

//---- input parameters
 extern int   A_t3_period     = 20;
 extern int   B_t3_period_ac  = 35;
 extern bool  EA_mode         = false;

 string note1="Trix level colors";
 color HighLine_Color = FireBrick;
 color ZeroLine_Color = DimGray;
 color LowLine_Color = DarkGreen;
 int   Line_Style = STYLE_DOT; 
 string note2="Cobra Label colors";
 color text1Color = C'119,119,0';
 color text2Color = C'119,119,0';
 color text3Color = Green;

string  Alerts = "===== Alert Settings =====";
 bool   MsgAlerts = false;
 bool   SoundAlerts = false;
 bool   eMailAlerts= false;
 bool   AlertOnTrixCross  = false;
 bool   AlertOnTrixSigCross  = false;
 bool   AlertOnSlopeChange  = false;
 string TrixCrossSound = "trixcross.wav";
 int    AnalyzeLabelWindow = 1;
 bool   AnalyzeLabelonoff = false;
int Shift_UP_DN = 0;
int Shift_Left_Right = 0;

double HighLow_Levels_Override_Value   = 0;

int    Trixnum_bars             = 750;
int    is_A_open_price                 = 0;
int    diferential                     = 0;
double hot                             = 0.7;

//---- buffers
double TrixBuffer[];
double TrixUpBuffer[];
double TrixDnBuffer[];

double TrixSigBuffer[];
double TrixSigUpBuffer[];
double TrixSigDnBuffer[];

double AL1, AL2;
int    LastAlert;
string ShortName;

//==========================================================================================//
// Added Monday, February 02, 2009 - by PeterD based on FX5_MACD Divergence//
// Divergence variables //
#define arrowsDisplacement 0.0001
static string   indicatorName;
static datetime lastAlertTime;
static datetime lastSoundAlertTime;

 string separator2 = "*** Divergence Settings ***";
 int    NumberOfDivergenceBars = 500;
 bool   drawPriceTrendLines = false;
 bool   drawIndicatorTrendLines = false;
 bool   ShowIn1MChart = true;

 string _ = "--- Divergence Alert Settings ---";
 bool   EnableAlerts = false;
 string _Info1 = "";
 string _Info2 = "------------------------------------";
 string _Info3 = "SoundAlertOnDivergence only works";
 string _Info4 = "when EnableAlerts is true.";
 string _Info5 = "";
 string _Info6 = "If SoundAlertOnDivergence is true,";
 string _Info7 = "then sound alert will be generated,";
 string _Info8 = "otherwise a pop-up alert will be";
 string _Info9 = "generated.";
 string _Info10 = "------------------------------------";
 string _Info11 = "";
 bool   SoundAlertOnDivergence = false;
 bool   EmailDivergenceAlerts = false;

 string __ = "--- Divergence Color Settings ---";
 color  BullishDivergenceColor = DodgerBlue;
 color  BearishDivergenceColor = FireBrick;

 string ___ = "--- Divergence Sound Files ---";
 string ClassicBullDivSound = "CBullishDiv.wav";
 string ReverseBullDivSound = "RBullishDiv.wav";
 string ClassicBearDivSound = "CBearishDiv.wav";
 string ReverseBearDivSound = "RBearishDiv.wav";

double bullishDivergence[];
double bearishDivergence[];
datetime t;
string t1;
// Divergence variables //
//==========================================================================================//


//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int init()
  {
//---- indicators
   t=TimeLocal( ) ;
   t1=TimeToStr(t,TIME_SECONDS);
   IndicatorBuffers(8);
   
   SetIndexStyle(0,DRAW_LINE);        //draw Trix Up line
   SetIndexBuffer(0,TrixUpBuffer);  
   SetIndexStyle(1,DRAW_LINE);        //draw Trix Down line
   SetIndexBuffer(1,TrixDnBuffer);   

   SetIndexStyle(2,DRAW_LINE);        //draw Trix Sig Up line
   SetIndexBuffer(2,TrixSigUpBuffer);  
   SetIndexStyle(3,DRAW_LINE);        //draw Trix Sig Down line
   SetIndexBuffer(3,TrixSigDnBuffer);   

// Modified for Convergence / Divergence //
//   SetIndexBuffer(4,TrixSigBuffer);
//   SetIndexBuffer(5,TrixBuffer);   


//==========================================================================================//
// Added Monday, February 02, 2009 - by PeterD based on FX5_MACD Divergence//
// Convergence / Divergence buffers //
   SetIndexBuffer(4, bullishDivergence);
   SetIndexBuffer(5, bearishDivergence);
//----   
   SetIndexStyle(4, DRAW_ARROW);
   SetIndexStyle(5, DRAW_ARROW);
//----   
   SetIndexArrow(4, 233);
   SetIndexArrow(5, 234);
   SetIndexDrawBegin(5, 9);
   IndicatorDigits(Digits + 2);

   SetIndexBuffer(6,TrixSigBuffer);
   SetIndexBuffer(7,TrixBuffer);   
//==========================================================================================//


   //---- name for DataWindow and indicator subwindow label
   ShortName = t1+iName + major + "." + minor;
   
   indicatorName = ShortName;
   IndicatorShortName(ShortName);

   return(0);
   }

//+------------------------------------------------------------------+
//| Custor indicator deinitialization function                       |
//+------------------------------------------------------------------+
int deinit()
{
   DeleteObjects(Prefix);
   Comment ("");
   return(0);
}

void drawLine(string name, double price, color Col, int LvlStyle)
{     
   if (WindowFind(ShortName) != -1 && !EA_mode)
      {
         ObjectDelete(name);        
         ObjectCreate(name, OBJ_HLINE,WindowFind(ShortName),Time[0],price);
         ObjectSet(name, OBJPROP_STYLE, LvlStyle);
         ObjectSet(name, OBJPROP_COLOR, Col);        
         ObjectSet(name, OBJPROP_WIDTH,1);
      }
}

//+------------------------------------------------------------------+
//| Delete Objects that match ObjName                                |
//+------------------------------------------------------------------+
void DeleteObjects(string ObjName)
{
   for (int i=ObjectsTotal()-1; i >= 0; i--) 
   {
     string name = ObjectName(i);
     if (StringFind(name, ObjName) > -1) ObjectDelete(name);
   }
}

//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int start()
{  
if (!EA_mode)
{
//----
   ObjectCreate("text1", OBJ_LABEL,AnalyzeLabelWindow, 0, 0);
   ObjectSetText("text1","THV V 3",14, "Arial Black", text1Color);
   ObjectSet("text1", OBJPROP_CORNER, 1);
   ObjectSet("text1", OBJPROP_XDISTANCE,Shift_Left_Right +13);
   ObjectSet("text1", OBJPROP_YDISTANCE,Shift_UP_DN +1);  
//----
//----
   ObjectCreate("text2", OBJ_LABEL,AnalyzeLabelWindow, 0, 0);
   ObjectSetText("text2","System",9, "Batang", text2Color);
   ObjectSet("text2", OBJPROP_CORNER, 1);
   ObjectSet("text2", OBJPROP_XDISTANCE,Shift_Left_Right +32);
   ObjectSet("text2", OBJPROP_YDISTANCE,Shift_UP_DN +26);  
//----
//----
   ObjectCreate("text3", OBJ_LABEL,AnalyzeLabelWindow, 0, 0);
   ObjectSetText("text3","© By Cobraforex",8, "Arial", text3Color);
   ObjectSet("text3", OBJPROP_CORNER, 1);
   ObjectSet("text3", OBJPROP_XDISTANCE,Shift_Left_Right +18);
   ObjectSet("text3", OBJPROP_YDISTANCE,Shift_UP_DN +41);  
//----
}   
   double ZHL;
   if (Period()==1)ZHL = 0.00011; 
   if (Period()==5)ZHL = 0.00022;
   if (Period()==15)ZHL = 0.00045; 
   if (Period()==30)ZHL = 0.0007;
   if (Period()==60)ZHL = 0.0009; 
   if (Period()==240)ZHL = 0.002;
   if (Period()==1440)ZHL = 0.005; 
   if (Period()==10080)ZHL = 0.0075;
   if (Period()==43200)ZHL = 0.015;
   if(HighLow_Levels_Override_Value > 0) {ZHL = HighLow_Levels_Override_Value;}
   double ZH = ZHL; double ZL = -1* ZHL;
if (!EA_mode)
{
   drawLine(Prefix + t1+"line_HL", ZH, HighLine_Color, Line_Style);
   drawLine(Prefix + t1+ "line_ZL", 0,  ZeroLine_Color, Line_Style);
   drawLine(Prefix + t1+ "line_LL", ZL, LowLine_Color, Line_Style);
}
   int  shift=0;
   double A_t3=0,A_t3_1=0,max_per=0;
   double  B_t3=0,B_t3_1=0;
   double e1=0,e2=0,e3=0,e4=0,e5=0,e6=0,c1=0,c2=0,c3=0,c4=0;
   double e1x=0,e2x=0,e3x=0,e4x=0,e5x=0,e6x=0;
   double d1=0,d2=0,d3=0,d4=0,d5=0,d6=0;
   double d1x=0,d2x=0,d3x=0,d4x=0,d5x=0,d6x=0;
   double n=0,A_w1=0,A_w2=0,B_w1=0,B_w2=0,b2=0,b3=0;
   double init=true;
   double bar=0, prevbars=0, start=0, cs=0, prevcs=0,frame=0;  
   string AlertTxt, commodt="nonono";
   int counted_bars=IndicatorCounted();
   bool blnShowDiv = true;
   cs = Trixnum_bars+A_t3_period+is_A_open_price+B_t3_period_ac+diferential+hot; 
   if (cs==prevcs && commodt==Symbol() && frame==Time[4]-Time[5] && Bars-prevbars<2)
   start=Bars-prevbars;
   else start=-1;   
   commodt=Symbol();
   frame=Time[4]-Time[5];
   prevbars = Bars;
   prevcs = cs;      
   if (start==1 || start==0)  bar=start; else init=true;
   
   // Modified for Divergence/convergence //
   if (!ShowIn1MChart && Period() == 1) blnShowDiv=false;
   // Modified for Divergence/convergence //

   if (init==true)
   {
      b2=hot*hot;
      b3=b2*hot;
      c1=-b3;
      c2=(3*(b2+b3)); 
      c3=-3*(2*b2+hot+b3);
      c4=(1+3*hot+b3+3*b2);  
      n=A_t3_period; 
      if (n<1) n=1; 
      n = 1 + 0.5*(n-1);
      A_w1 = 2 / (n + 1);
      A_w2 = 1 - A_w1; 
      n=B_t3_period_ac;
      if (n<1) n=1;
      n = 1 + 0.5*(n-1);
      B_w1 = 2 / (n + 1); 
      B_w2 = 1 - B_w1; 
     
      TrixBuffer[Trixnum_bars-1]=0; 
      d1x=0;d2x=0;d3x=0;d4x=0;d5x=0;d6x=0;
      TrixSigBuffer[Trixnum_bars-1]=0;
      e1x=0;e2x=0;e3x=0;e4x=0;e5x=0;e6x=0;
      
      // max_per=max(A_t3_period,B_t3_period_ac);
      bar=Trixnum_bars-2;

      init=false;
   }
 
   //SetLoopCount(0);
   shift=bar;

   while(shift>=0)
   {
      if ( is_A_open_price==1 ) d1 = A_w1*Open[shift] + A_w2*d1x;
      else d1 = A_w1*Close[shift] + A_w2*d1x;
      d2 = A_w1*d1 + A_w2*d2x; 
      d3 = A_w1*d2 + A_w2*d3x; 
      d4 = A_w1*d3 + A_w2*d4x;
      d5 = A_w1*d4 + A_w2*d5x; 
      d6 = A_w1*d5 + A_w2*d6x;  
      A_t3 = c1*d6 + c2*d5 + c3*d4 + c4*d3; 
      
      if ((start==1 && shift==1) || start==-1  )
      {   
         d1x=d1;
         d2x=d2;
         d3x=d3;
         d4x=d4;
         d5x=d5;
         d6x=d6;
      }

      e1 = B_w1*Close[shift] + B_w2*e1x;
      e2 = B_w1*e1 + B_w2*e2x; 
      e3 = B_w1*e2 + B_w2*e3x; 
      e4 = B_w1*e3 + B_w2*e4x; 
      e5 = B_w1*e4 + B_w2*e5x; 
      e6 = B_w1*e5 + B_w2*e6x; 
      B_t3 = c1*e6 + c2*e5 + c3*e4 + c4*e3;
      
      if(diferential==1)
      {                
         TrixBuffer[shift]=(A_t3-A_t3_1)/A_t3_1+(B_t3-B_t3_1)/B_t3_1;   
         TrixSigBuffer[shift]=(A_t3-A_t3_1)/A_t3_1; 
         AL2= TrixSigBuffer[shift];         
      }
      else
      {
         if ( B_t3_1 >0 && A_t3_1>0) 
         {            
            TrixBuffer[shift]=(B_t3-B_t3_1)/B_t3_1;
            TrixSigBuffer[shift]=(A_t3-A_t3_1)/A_t3_1; 
            AL2= TrixSigBuffer[shift]; 
         }
      }  
      
      TrixUpBuffer[shift] = EMPTY_VALUE;
      TrixDnBuffer[shift] = EMPTY_VALUE;

      //Colour Coding Trix line
      if(TrixBuffer[shift+1]<TrixBuffer[shift])
      {
         if(TrixUpBuffer[shift+1] == EMPTY_VALUE) TrixUpBuffer[shift+1] = TrixBuffer[shift+1];
         TrixUpBuffer[shift] = TrixBuffer[shift];
      }   
      else if (TrixBuffer[shift+1]>TrixBuffer[shift])
      {
         if(TrixDnBuffer[shift+1] == EMPTY_VALUE) TrixDnBuffer[shift+1] = TrixBuffer[shift+1];
         TrixDnBuffer[shift] = TrixBuffer[shift];
      }   

      TrixSigUpBuffer[shift] = EMPTY_VALUE;
      TrixSigDnBuffer[shift] = EMPTY_VALUE;

      if(TrixSigBuffer[shift+1]<TrixSigBuffer[shift])
      {
         if(TrixSigUpBuffer[shift+1] == EMPTY_VALUE) TrixSigUpBuffer[shift+1] = TrixSigBuffer[shift+1];
         TrixSigUpBuffer[shift] = TrixSigBuffer[shift];
      }   
      else if (TrixSigBuffer[shift+1]>TrixSigBuffer[shift])
      {
         if(TrixSigDnBuffer[shift+1] == EMPTY_VALUE) TrixSigDnBuffer[shift+1] = TrixSigBuffer[shift+1];
         TrixSigDnBuffer[shift] = TrixSigBuffer[shift];
      }   
            
      //  Comment("  start: ",start,"  bar: ",bar,"\n",
      // "frame: ",frame,"  Trixnum_bars:" ,Trixnum_bars," commodity: ",commodt ,"\n",(B_t3-B_t3_1)/B_t3_1); 
      if ((start==1 && shift==1) || start==-1) 
      {  
         //Comment("Bar=ghfghfgh");  
         A_t3_1=A_t3;
         B_t3_1=B_t3; 
         e1x=e1;
         e2x=e2;
         e3x=e3;
         e4x=e4;
         e5x=e5;
         e6x=e6;           
      }      

      // Modified for Divergence/convergence //
      if (shift <= NumberOfDivergenceBars && blnShowDiv)
      {
         CatchBullishDivergence(shift+2);
         CatchBearishDivergence(shift+2);
      }
      // Modified for Divergence/convergence //

      shift--;
   }     
   //----Alert code start---- 
     
     string text;
     if (!EA_mode)
     {if (AL2>0) //Signal line is above axis
     
     
     {if (AnalyzeLabelonoff)
        text = "Bull cross";
        ObjectDelete("Trix_Crossing_Label");
        ObjectCreate("Trix_Crossing_Label", OBJ_LABEL, AnalyzeLabelWindow, 0, 0);
        ObjectSet("Trix_Crossing_Label", OBJPROP_CORNER, 3);
        ObjectSet("Trix_Crossing_Label", OBJPROP_XDISTANCE, 7);
        ObjectSet("Trix_Crossing_Label", OBJPROP_YDISTANCE, 95);
        ObjectSet("Trix_Crossing_Label", OBJPROP_COLOR, LimeGreen);
        ObjectSetText("Trix_Crossing_Label", text, 14, "Arial Black", LimeGreen);
       
     }
     
     if (AL2<0) //Signal line is below axis      
     {if (AnalyzeLabelonoff)
        text = "Bear cross";
        ObjectDelete("Trix_Crossing_Label");
        ObjectCreate("Trix_Crossing_Label", OBJ_LABEL, AnalyzeLabelWindow, 0, 0);
        ObjectSet("Trix_Crossing_Label", OBJPROP_CORNER, 3);
        ObjectSet("Trix_Crossing_Label", OBJPROP_XDISTANCE, 2);
        ObjectSet("Trix_Crossing_Label", OBJPROP_YDISTANCE, 95);
        ObjectSet("Trix_Crossing_Label", OBJPROP_COLOR, Red);
        ObjectSetText("Trix_Crossing_Label", text, 14, "Arial Black", Red);
     }
     if(AL1<0 && AL2>0)if (AlertOnTrixCross)if (SoundAlerts) PlaySound(TrixCrossSound); 
     
     AL1 = AL2; 
 
   if( AlertOnTrixSigCross )
   {
      if ( TrixSigBuffer[2]<TrixBuffer[2] && TrixSigBuffer[1]>TrixBuffer[1] && LastAlert<Bars) 
      {if (AnalyzeLabelonoff)
        text = "Analyze Buy";
        ObjectDelete("Order_Crossing_Label");
        ObjectCreate("Order_Crossing_Label", OBJ_LABEL, AnalyzeLabelWindow, 0, 0);
        ObjectSet("Order_Crossing_Label", OBJPROP_CORNER, 3);
        ObjectSet("Order_Crossing_Label", OBJPROP_XDISTANCE, 2);
        ObjectSet("Order_Crossing_Label", OBJPROP_YDISTANCE, 25);
        ObjectSet("Order_Crossing_Label", OBJPROP_COLOR, Red);
        ObjectSetText("Order_Crossing_Label", text, 12, "Arial Black", Lime);

        AlertTxt = ShortName + " " + Symbol() + " " + TF2Str(Period()) + " BUY ALARM @ " + TimeToStr(TimeCurrent(),TIME_DATE|TIME_MINUTES);
        DoAlerts(AlertTxt,AlertTxt);
        LastAlert = Bars;
        if (SoundAlerts) PlaySound ("analyze buy.wav");
      }
      else if ( TrixSigBuffer[2]>TrixBuffer[2] && TrixSigBuffer[1]<TrixBuffer[1] && LastAlert<Bars) 
      {if (AnalyzeLabelonoff)
        text = "Analyze Sell";
        ObjectDelete("Order_Crossing_Label");
        ObjectCreate("Order_Crossing_Label", OBJ_LABEL, AnalyzeLabelWindow, 0, 0);
        ObjectSet("Order_Crossing_Label", OBJPROP_CORNER, 3);
        ObjectSet("Order_Crossing_Label", OBJPROP_XDISTANCE, 2);
        ObjectSet("Order_Crossing_Label", OBJPROP_YDISTANCE, 25);
        ObjectSet("Order_Crossing_Label", OBJPROP_COLOR, Red);
        ObjectSetText("Order_Crossing_Label", text, 12, "Arial Black", Red);

         AlertTxt = ShortName + " " + Symbol() + " " + TF2Str(Period()) + " SELL ALARM @ " + TimeToStr(TimeCurrent(),TIME_DATE|TIME_MINUTES);
         DoAlerts(AlertTxt,AlertTxt);
         LastAlert = Bars;
         if (SoundAlerts) PlaySound ("analyze sell.wav");
      }
   }

   if( AlertOnSlopeChange )
   {
      if ( TrixSigBuffer[1]>TrixBuffer[1] && TrixSigUpBuffer[2]!=EMPTY_VALUE && TrixSigUpBuffer[1]==EMPTY_VALUE && LastAlert<Bars) //Was up now swtiched to down
      {if (AnalyzeLabelonoff)
        text = "Analyze Exit"; // note that I don't place the Time value here. =)
 
        if (ObjectFind("Alarm_Crossing_Label"+Time[0]) == -1) // Not created yet, please create it now. do it good, do it once.
        {
           ObjectDelete("Alarm_Crossing_Label");
           ObjectCreate("Alarm_Crossing_Label"+Time[0], OBJ_LABEL, AnalyzeLabelWindow, 0, 0);
           ObjectSet("Alarm_Crossing_Label"+Time[0], OBJPROP_CORNER, 3);
           ObjectSet("Alarm_Crossing_Label"+Time[0], OBJPROP_XDISTANCE, 1);
           ObjectSet("Alarm_Crossing_Label"+Time[0], OBJPROP_YDISTANCE, 43);
           ObjectSet("Alarm_Crossing_Label"+Time[0], OBJPROP_COLOR, Gold); 

           ObjectSetText("Alarm_Crossing_Label"+Time[0], text, 12, "Arial Black", Gold);

        }
      
         AlertTxt = ShortName + " " + Symbol() + " " + TF2Str(Period()) + " TRIX EXIT ALARM @ " + TimeToStr(TimeCurrent(),TIME_DATE|TIME_MINUTES);
         DoAlerts(AlertTxt, AlertTxt);
         LastAlert = Bars;
         if (SoundAlerts) PlaySound ("analyze exit.wav");
         
      }
      else if ( TrixSigBuffer[1]<TrixBuffer[1] && TrixSigDnBuffer[2]!=EMPTY_VALUE && TrixSigDnBuffer[1]==EMPTY_VALUE && LastAlert<Bars) //Was down now swtiched to up
       {if (AnalyzeLabelonoff)
        text = "Analyze Exit"; // note that I don't place the Time value here. =)
 
        if (ObjectFind("Alarm_Crossing_Label"+Time[0]) == -1)if (AnalyzeLabelonoff) // Not created yet, please create it now. do it good, do it once.
        {
           ObjectDelete("Alarm_Crossing_Label");
           ObjectCreate("Alarm_Crossing_Label"+Time[0], OBJ_LABEL, AnalyzeLabelWindow, 0, 0);
           ObjectSet("Alarm_Crossing_Label"+Time[0], OBJPROP_CORNER, 3);
           ObjectSet("Alarm_Crossing_Label"+Time[0], OBJPROP_XDISTANCE, 1);
           ObjectSet("Alarm_Crossing_Label"+Time[0], OBJPROP_YDISTANCE, 43);
           ObjectSet("Alarm_Crossing_Label"+Time[0], OBJPROP_COLOR, Gold); 

           ObjectSetText("Alarm_Crossing_Label"+Time[0], text, 12, "Arial Black", Gold);

        }

         AlertTxt = ShortName + " " + Symbol() + " " + TF2Str(Period()) + " TRIX EXIT ALARM @ " + TimeToStr(TimeCurrent(),TIME_DATE|TIME_MINUTES);
         DoAlerts(AlertTxt,AlertTxt);
         LastAlert = Bars;
         if (SoundAlerts) PlaySound ("analyze exit.wav");
      }
     if (ObjectFind("Alarm_Crossing_Label"+Time[1]) != -1)
{
   ObjectDelete("Alarm_Crossing_Label"+Time[1]);
}
      
   }}
         
   //----Alert code end----   
}
   
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void DoAlerts(string eMailSub , string msgText)
{
   if (MsgAlerts)    Alert(msgText);
   
   if (eMailAlerts)  SendMail(eMailSub, msgText);
}

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
string TF2Str(int period) 
{
  switch (period) 
  {
    case PERIOD_M1: return("M1"); break;
    case PERIOD_M5: return("M5"); break;
    case PERIOD_M15: return("M15"); break;
    case PERIOD_M30: return("M30"); break;
    case PERIOD_H1: return("H1"); break;
    case PERIOD_H4: return("H4"); break;
    case PERIOD_D1: return("D1"); break;
    case PERIOD_W1: return("W1"); break;
    case PERIOD_MN1: return("MN"); break;
  }
  return (Period());
} 

//+----------------------End Program--------------------------------------------+



//==========================================================================================//
// Added Monday, February 02, 2009 - by PeterD based on FX5_MACD Divergence//
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void CatchBullishDivergence(int shift)
{
   if(IsIndicatorTrough(shift) == false)
       return;  
   int currentTrough = shift;
   int lastTrough = GetIndicatorLastTrough(shift);
//----   
   if(TrixSigBuffer[currentTrough] > TrixSigBuffer[lastTrough] && 
      Low[currentTrough] < Low[lastTrough])
   {
       bullishDivergence[currentTrough] = TrixSigBuffer[currentTrough] - 
                                          arrowsDisplacement;
       //----
       if(drawPriceTrendLines == true)
           DrawPriceTrendLine(Time[currentTrough], Time[lastTrough], 
                              Low[currentTrough], 
                             Low[lastTrough], BullishDivergenceColor, STYLE_SOLID);
       //----
       if(drawIndicatorTrendLines == true)
          DrawIndicatorTrendLine(Time[currentTrough], 
                                 Time[lastTrough], 
                                 TrixSigBuffer[currentTrough],
                                 TrixSigBuffer[lastTrough], 
                                 BullishDivergenceColor, STYLE_SOLID);
       //----
      if(EnableAlerts == true)
      {
         if (SoundAlertOnDivergence == true)
         {
            SoundAlert(ClassicBullDivSound, currentTrough);
         }
         else
         {
            DisplayAlert("Classical bullish divergence on: ", currentTrough);  
         }
      }
      //----
   }
//----   
   if(TrixSigBuffer[currentTrough] < TrixSigBuffer[lastTrough] && 
      Low[currentTrough] > Low[lastTrough])
     {
       bullishDivergence[currentTrough] = TrixSigBuffer[currentTrough] - 
                                          arrowsDisplacement;
       //----
       if(drawPriceTrendLines == true)
           DrawPriceTrendLine(Time[currentTrough], Time[lastTrough], 
                              Low[currentTrough], 
                              Low[lastTrough], BullishDivergenceColor, STYLE_DOT);
       //----
       if(drawIndicatorTrendLines == true)                            
           DrawIndicatorTrendLine(Time[currentTrough], 
                                  Time[lastTrough], 
                                  TrixSigBuffer[currentTrough],
                                  TrixSigBuffer[lastTrough], 
                                  BullishDivergenceColor, STYLE_DOT);
       //----
      if(EnableAlerts == true)
      {
         if (SoundAlertOnDivergence == true)
         {
            SoundAlert(ReverseBullDivSound, currentTrough);
         }
         else
         {
            DisplayAlert("Reverse bullish divergence on: ", currentTrough);            
         }
      }
   }      
}
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void CatchBearishDivergence(int shift)
  {
   if(IsIndicatorPeak(shift) == false)
       return;
   int currentPeak = shift;
   int lastPeak = GetIndicatorLastPeak(shift);
//----   
   if(TrixSigBuffer[currentPeak] < TrixSigBuffer[lastPeak] && 
      High[currentPeak] > High[lastPeak])
     {
       bearishDivergence[currentPeak] = TrixSigBuffer[currentPeak] + 
                                        arrowsDisplacement;
      
       if(drawPriceTrendLines == true)
           DrawPriceTrendLine(Time[currentPeak], Time[lastPeak], 
                              High[currentPeak], 
                              High[lastPeak], BearishDivergenceColor, STYLE_SOLID);
                            
       if(drawIndicatorTrendLines == true)
           DrawIndicatorTrendLine(Time[currentPeak], Time[lastPeak], 
                                  TrixSigBuffer[currentPeak],
                                  TrixSigBuffer[lastPeak], BearishDivergenceColor, STYLE_SOLID);
      if(EnableAlerts == true)
      {
         if (SoundAlertOnDivergence == true)
         {
            SoundAlert(ClassicBearDivSound, currentPeak);
         }
         else
         {
            DisplayAlert("Classical bearish divergence on: ", currentPeak);
         }
      }
   }
   if(TrixSigBuffer[currentPeak] > TrixSigBuffer[lastPeak] && 
      High[currentPeak] < High[lastPeak])
     {
       bearishDivergence[currentPeak] = TrixSigBuffer[currentPeak] + 
                                        arrowsDisplacement;
       //----
       if(drawPriceTrendLines == true)
           DrawPriceTrendLine(Time[currentPeak], Time[lastPeak], 
                              High[currentPeak], 
                              High[lastPeak], BearishDivergenceColor, STYLE_DOT);
       //----
       if(drawIndicatorTrendLines == true)
           DrawIndicatorTrendLine(Time[currentPeak], Time[lastPeak], 
                                  TrixSigBuffer[currentPeak],
                                  TrixSigBuffer[lastPeak], BearishDivergenceColor, STYLE_DOT);
       //----
      if(EnableAlerts == true)
      {
         if (SoundAlertOnDivergence == true)
         {
            SoundAlert(ReverseBearDivSound, currentPeak);
         }
         else
         {
            DisplayAlert("Reverse bearish divergence on: ", currentPeak);
         }
      }
     }   
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool IsIndicatorTrough(int shift)
  {
   if(TrixSigBuffer[shift] <= TrixSigBuffer[shift+1] && TrixSigBuffer[shift] < TrixSigBuffer[shift+2] && 
      TrixSigBuffer[shift] < TrixSigBuffer[shift-1])
       return(true);
   else 
       return(false);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int GetIndicatorLastTrough(int shift)
  {
    for(int i = shift + 5; i < Bars; i++)
      {
        if(TrixBuffer[i] <= TrixBuffer[i+1] && TrixBuffer[i] <= TrixBuffer[i+2] &&
           TrixBuffer[i] <= TrixBuffer[i-1] && TrixBuffer[i] <= TrixBuffer[i-2])
          {
            for (int j = i; j < Bars; j++)
              {
                if(TrixSigBuffer[j] <= TrixSigBuffer[j+1] && TrixSigBuffer[j] < TrixSigBuffer[j+2] &&
                   TrixSigBuffer[j] <= TrixSigBuffer[j-1] && TrixSigBuffer[j] < TrixSigBuffer[j-2])
                    return(j);
              }
          }
      }
    return(-1);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void DrawPriceTrendLine(datetime x1, datetime x2, double y1, 
                        double y2, color lineColor, double style)
  {if (!EA_mode)
   {string label = iName + major + "_Trix_DivergenceLine_# " + DoubleToStr(x1, 0);
   ObjectDelete(label);
   ObjectCreate(label, OBJ_TREND, 0, x1, y1, x2, y2, 0, 0);
   ObjectSet(label, OBJPROP_RAY, 0);
   ObjectSet(label, OBJPROP_COLOR, lineColor);
   ObjectSet(label, OBJPROP_STYLE, style);
  }}
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void DrawIndicatorTrendLine(datetime x1, datetime x2, double y1, 
                            double y2, color lineColor, double style)
  {if (!EA_mode)
   {int indicatorWindow = WindowFind(indicatorName);
   if(indicatorWindow < 0)
       return;
   string label = iName + major + "_Trix_DivergenceLine_$# " + DoubleToStr(x1, 0);
   ObjectDelete(label);
   ObjectCreate(label, OBJ_TREND, indicatorWindow, x1, y1, x2, y2, 
                0, 0);
   ObjectSet(label, OBJPROP_RAY, 0);
   ObjectSet(label, OBJPROP_COLOR, lineColor);
   ObjectSet(label, OBJPROP_STYLE, style);
  }}
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void DisplayAlert(string message, int shift)
  {
   string strMsg;
   if(shift <= 2 && Time[shift] != lastAlertTime)
     {
       lastAlertTime = Time[shift];
       Alert(message, Symbol(), " , ", TF2Str(Period()), " minutes chart");
       
       string strSubject = "Divergence on " + TF2Str(Period());
       if (EmailDivergenceAlerts) SendMail(strSubject, message);
     }
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
void SoundAlert(string strSoundFile, int shift)
{
   if(shift <= 2 && Time[shift] != lastSoundAlertTime)
   {
      lastSoundAlertTime = Time[shift];
      PlaySound(strSoundFile);
   }
}
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool IsIndicatorPeak(int shift)
  {
   if(TrixSigBuffer[shift] >= TrixSigBuffer[shift+1] && TrixSigBuffer[shift] > TrixSigBuffer[shift+2] && 
      TrixSigBuffer[shift] > TrixSigBuffer[shift-1])
       return(true);
   else 
       return(false);
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int GetIndicatorLastPeak(int shift)
  {
   for(int i = shift + 5; i < Bars; i++)
     {
       if(TrixBuffer[i] >= TrixBuffer[i+1] && TrixBuffer[i] >= TrixBuffer[i+2] &&
          TrixBuffer[i] >= TrixBuffer[i-1] && TrixBuffer[i] >= TrixBuffer[i-2])
         {
           for(int j = i; j < Bars; j++)
             {
               if(TrixSigBuffer[j] >= TrixSigBuffer[j+1] && TrixSigBuffer[j] > TrixSigBuffer[j+2] &&
                  TrixSigBuffer[j] >= TrixSigBuffer[j-1] && TrixSigBuffer[j] > TrixSigBuffer[j-2])
                   return(j);
             }
         }
     }
   return(-1);
  }
//==========================================================================================//

