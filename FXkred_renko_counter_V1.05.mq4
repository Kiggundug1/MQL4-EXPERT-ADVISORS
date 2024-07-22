/****************************************,
  Written by Fxkred 2012.04.13
  v1.03
  * New: Swintch on/off displaing the pips until close
         -corner of the Renko length
         - adjust line size and style
  * v05 Switchable text on Closinglines
  
  
******************************************/
#property copyright "Copyright © 2012 FXkred"

#property indicator_chart_window

//************************** Inputs


extern bool DisplayRenkoSize = true;
extern int  DisplaySizeWhichCorner_0_1_2_3 = 1;
extern color RenkoSizeColor = Red;
extern bool RenkoClosingLine = true;
extern color LongCloseLineColor = Aqua;
extern int LongCloseLineStyle_0_7 = 3;
extern int LongCloseLineWidth_1_5 = 1;
extern color ShortCloseLineColor = Red;
extern int ShortCloseLineStyle_0_7 = 3;
extern int ShortCloseLineWidth_1_5 = 1;
extern bool ShowPriceOnCloseLines =true;
extern color CloseLinePriceColor = White;

extern bool DisplayCounter = false;
extern color CounterTextColor = Aqua;
extern bool DisplayCandleLenghtByPoint = true;
extern bool LongSetAlert = true;
extern bool ShortSetAlert = true;
int szorzo; // Multiplier, depents on digits
double LongAlertLevel;
double ShortAlertLevel;

//*******************
int deinit() {
   ObjectDelete("RenkoCounter");
   ObjectDelete("RenkoSize");
   ObjectDelete("RenkoLongClose");
   ObjectDelete("RenkoShortClose");
   ObjectDelete("RenkoCloseLine_L");
   ObjectDelete("RenkoCloseLine_S");
   Comment (" ");
   return (0);
}

int init() {



if ( Digits ==1)  szorzo = 10;
if ( Digits ==2)  szorzo = 100;
if ( Digits ==3)  szorzo = 1000;
if ( Digits ==4)  szorzo = 10000;
if ( Digits ==5)  szorzo = 100000;

 LongAlertLevel=0;
 ShortAlertLevel=0;

   return (0);
}

int start() {

   // renko Gyertyahossz meghatározása -- CAlculate  Renko candle length
 double CandleLength = MathAbs(Open[1]-Close[1])*szorzo;
 
 bool longos, shortos;
 if (Open[1]>Close[1] )
      { longos = false; shortos= true;
      }
 else {shortos = false; longos = true; }
 
 if (longos == true)
   {
   
   double longvissza = MathAbs(  (Close[1] -Bid) *szorzo + CandleLength );
    double LongCloseLine = Close[1]  + CandleLength*Point  ;  
    double shortvissza = MathAbs(  (Close[1]-  Bid)*szorzo -2*CandleLength);
    double ShortCloseLine = Close[1]- 2*CandleLength*Point;      
   } 
   else
   { 
   shortvissza= MathAbs(  (Close[1]-Bid) * szorzo -CandleLength);
    ShortCloseLine = Close[1]- CandleLength*Point;
   longvissza  = MathAbs( ( Close[1]-Bid)* szorzo + 2*CandleLength); 
   LongCloseLine = Close[1]+ 2*CandleLength*Point;
   }
  // Megjelenités --Display the pips until the Long and Short Renko candle 
 
 if(Bid<LongCloseLine || Bid > ShortCloseLine)
   {
       LongAlertLevel = LongCloseLine;
     ShortAlertLevel = ShortCloseLine;
  }
  if (DisplayCounter ==true )
 
   {
  
  
  
   ObjectDelete("RenkoCounter");
   if (ObjectFind("RenkoCounter") != 0) {
      ObjectCreate("RenkoCounter", OBJ_TEXT, 0, Time[0], Close[0] );
      ObjectSetText("RenkoCounter", "                       < L " + DoubleToStr( longvissza,0)
       + " / S " + DoubleToStr( shortvissza,0) , 10, "ArialBold", CounterTextColor);
   } else ObjectMove("RenkoCounter", 0, Time[0], Close[0]);
   } else ObjectDelete("RenkoCounter");
   



 if (DisplayRenkoSize ==true )
 {
   if (DisplayCandleLenghtByPoint ==false ) CandleLength = CandleLength/10;
   if(ObjectType("RenkoSize") != OBJ_LABEL) ObjectDelete("RenkoSize");
   if(ObjectFind("RenkoSize") == -1) ObjectCreate("RenkoSize", OBJ_LABEL, 0, Time[5], Close[5]);
 
   ObjectSetText("RenkoSize" ,"Renko: "+ DoubleToStr(CandleLength, 0) 
   );
 
 
   ObjectSet("RenkoSize", OBJPROP_CORNER, DisplaySizeWhichCorner_0_1_2_3 );
   ObjectSet("RenkoSize", OBJPROP_COLOR, RenkoSizeColor);
   ObjectSet("RenkoSize", OBJPROP_FONTSIZE, 15);
   ObjectSet("RenkoSize", OBJPROP_XDISTANCE, 5);
   ObjectSet("RenkoSize", OBJPROP_YDISTANCE, 20);
   
 }
 
 	   
	 	if(RenkoClosingLine)
	{
   // Long Close Line	
  	
  	ObjectDelete("RenkoLongClose");
	   ObjectDelete("RenkoShortClose");
   	ObjectCreate("RenkoLongClose", OBJ_TREND, 0, Time[1], LongCloseLine, Time[0],LongCloseLine);
      ObjectSet("RenkoLongClose", OBJPROP_STYLE, LongCloseLineStyle_0_7);
      ObjectSet("RenkoLongClose", OBJPROP_COLOR, LongCloseLineColor);
      ObjectSet("RenkoLongClose", OBJPROP_WIDTH, LongCloseLineWidth_1_5);
      ObjectSet("RenkoLongClose", OBJPROP_BACK, TRUE);
         if (ShowPriceOnCloseLines)
    {
     string LongCloseLinePrice = " " + DoubleToStr( LongCloseLine,Digits);
     ObjectDelete("RenkoCloseLine_L");
     ObjectCreate("RenkoCloseLine_L", OBJ_TEXT, 0, Time[0], LongCloseLine,Time[0],  LongCloseLine+3*Point );
     ObjectSetText("RenkoCloseLine_L","                                 "+ LongCloseLinePrice, 10, "Curier", CloseLinePriceColor);
//     ObjectMove("RenkoCloseLine_S", 0, Time[0],  ShortCloseLine);
    }
      
       //Short close line
    	ObjectCreate("RenkoShortClose", OBJ_TREND, 0, Time[1], ShortCloseLine, Time[0],ShortCloseLine);
      ObjectSet("RenkoShortClose", OBJPROP_STYLE, ShortCloseLineStyle_0_7);
      ObjectSet("RenkoShortClose", OBJPROP_COLOR, ShortCloseLineColor);
      ObjectSet("RenkoShortClose", OBJPROP_WIDTH, ShortCloseLineWidth_1_5);
      ObjectSet("RenkoShortClose", OBJPROP_BACK, TRUE);
    
      if (ShowPriceOnCloseLines)
    {
     string ShortCloseLinePrice = " " + DoubleToStr( ShortCloseLine,Digits);
     ObjectDelete("RenkoCloseLine_S");
     ObjectCreate("RenkoCloseLine_S", OBJ_TEXT, 0, Time[0],  ShortCloseLine,Time[0],  ShortCloseLine );
     ObjectSetText("RenkoCloseLine_S","                                 "+ ShortCloseLinePrice, 10, "Curier",CloseLinePriceColor);
//     ObjectMove("RenkoCloseLine_S", 0, Time[0],  ShortCloseLine);
    }
      
	}
   else
	 {  ObjectDelete("RenkoLongClose");
	   ObjectDelete("RenkoShortClose"); }
if (ShowPriceOnCloseLines)
    {
   
   
    }

 if (LongSetAlert && Close[0]== LongAlertLevel)
    {
     
     // Alert("Renko closed up.");
      PlaySound("ClosedUp.wav");
    }
  if (ShortSetAlert && Close[0]== ShortAlertLevel)
    {
     
    //  Alert("Renko closed down.");
      PlaySound("ClosedDown.wav");
    }  
   return (0);
}