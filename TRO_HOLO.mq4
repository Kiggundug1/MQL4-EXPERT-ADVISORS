//+------------------------------------------------------------------+ 
//|   TRO_HOLO                                                       | 
//|                                                                  | 
//|   Copyright © 2009, Avery T. Horton, Jr. aka TheRumpledOne       |
//|                                                                  |
//|   PO BOX 43575, TUCSON, AZ 85733                                 |
//|                                                                  |
//|   GIFTS AND DONATIONS ACCEPTED                                   | 
//|   ALO my indicators should be considered donationware. That is   |
//|   you are free to use them for your personal use, and are        |
//|   under no obligation to pay for them. However, if you do find   |
//|   this or any of my other indicators help you with your trading  |
//|   then any Gift or Donation as a show of appreciation is         |
//|   gratefuLOy accepted.                                           |
//|                                                                  |
//|   Gifts or Donations also keep me motivated in producing more    |
//|   great free indicators. :-)                                     |
//|                                                                  |
//|   PayPal - THERUMPLEDONE@GMAIL.COM                               |  
//+------------------------------------------------------------------+ 
//| Use http://therumpledone.mbtrading.com/fx/ as your forex broker  |  
//| ...teLO them therumpledone sent you!                             |  
//+------------------------------------------------------------------+ 


#property  copyright "Copyright © 2009, Avery T. Horton, Jr. aka TRO" 
#property  link      "http://www.therumpledone.com/" 

#property indicator_chart_window



extern int myChartX   = 10 ;
extern int myChartY   = 300 ;  
  
extern int myCorner   = 1 ;
extern string myFont  = "Courier New" ;
extern int myFontSize = 12 ;

extern bool   Show_Gauge  = false ; 
extern bool   Show_Lines  = true ;
extern bool   Show_Labels = true ;
extern bool   ShowBackground = True;

extern int  ShiftLabel =  5 ;
extern int  LineStyle  =  0 ; 
extern int  Line_Width    = 1 ;

extern int myPeriod = 0 ;

extern int myBars   = 34 ;
extern int myShift  = 1 ;
extern double myThreshold = 10 ;

extern color colorHigh  = Red ;
extern color colorLow  = Blue ;

extern color UpColor   = Lime;
extern color DownColor = Red;
extern color Line_Color_Open      = Orange ;

extern color BackgroundColor      = C'30,33,36';

//+------------------------------------------------------------------+

double Hi, Li, C;

double prev_high, prev_low, prev_close, D, p, value ;
int h  ;
string lbl[15], lbl2[15], name;
int n, j,   i ;

color pColor = Blue, VolColor = Magenta ;

string symbol, tChartPeriod, ShortName, TAG ;  
int    digits, period, win ; 
double point,  open, high, low, close, mid, range, pClose, pOpen, pHigh, pLow, pMid, pRange, cRange, PipDiff  ;  
 

int FiLOAmt = 11 , x001, x002, x003, x004, x005, x006, x007 ;   

int plotbars = 0 ;


double HO, LH, HL, LO, OH, OL, CH, CL;  
 
int    limit,nHO, nLO, nHL, nLH;


double D1_Open, W1_Open, HO1, LH1, HL1, LO1, OH1, OL1, CH1, CL1;  
 
int     BarShift, nHO1, nLO1, nHL1, nLH1;

datetime DateTime ; 

//+------------------------------------------------------------------+

int init()
  {
   if(myPeriod == 0) { period = Period() ; } else { period = myPeriod ; }    
   tChartPeriod =  TimeFrameToString(period) ;
   symbol       =  Symbol() ;
   digits       =  Digits ;
   point        =  Point ;
   TAG          = "HoLo" ; 
   ShortName    = TAG+symbol+period ;
   win          = 0 ;

   if(digits == 5 || digits == 3) { digits = digits - 1 ; point = point * 10 ; }   
 
   
if( myCorner == 0 || myCorner == 2 )
{ 
   x001 = 0 ;
   x002 = 0 ;
   x003 = 90 ; 
   x004 = 150;
   x005 = 100 ;
   x006 = 90 ;  
   x007 = 90 ;
   FiLOAmt = 20 ;     
}
else
{
   x001 = 0 ;
   x002 = 130 ; //  
   x003 = 50 ;  //  
   x004 = 0 ; //  
   x005 = 10 ;
   x006 = 10 ;  
   x007 = 10 ;   
   FiLOAmt = 20 ; 
}
        
  
  deinit();   
   
   return(0);
  }
  
  
//+------------------------------------------------------------------+

void ObDeleteObjectsByPrefix(string Prefix)
  {
   int L = StringLen(Prefix);
   int i = 0; 
   while(i < ObjectsTotal())
     {
       string ObjName = ObjectName(i);
       if(StringSubstr(ObjName, 0, L) != Prefix) 
         { 
           i++; 
           continue;
         }
       ObjectDelete(ObjName);
     }
  }
    
//+------------------------------------------------------------------+
int deinit()
  {
    
   ObDeleteObjectsByPrefix(TAG);          
   TRO() ;
   
   return(0);
  }
  
//+------------------------------------------------------------------+
int start()
{



   if(myBars == 0) { limit = WindowBarsPerChart() ;  } else { limit = myBars ; }

n       = 10;
j       = 0 ;

if(Show_Gauge) 
{
lbl[j]  = ShortName+j;
lbl2[j] = fFILL(tChartPeriod + " HIGHs LOWs +/-", 19) ;
DoShowHead(j, SteelBlue);
}

close    = iClose( symbol, 0, 0) ;


      nHO    =  Highest(symbol,period,MODE_OPEN,limit,myShift); 
      nLO    =  Lowest(symbol,period,MODE_OPEN,limit,myShift);     
 
      HO     = iHigh(symbol,period,nHO);  
      LO     = iLow(symbol,period,nLO);      
 
      OH     = iOpen(symbol,period,nHO);          
      CH     = iClose(symbol,period,nHO);          
      OL     = iOpen(symbol,period,nLO);  
      CL     = iClose(symbol,period,nLO);   



j       = j + 1 ;
lbl[j]  = ShortName+j;
lbl2[j] = "High(" + nHO + ")" ;
PipDiff = ( OH - close ) / point ; 
DoColor( close, OH  ) ; 
if(Show_Gauge) { DoShow(j, colorHigh,OH ); }
if(Show_Lines) { drawLine(OH,TAG+"High(" ,   colorHigh, 2, Time[nHO], tChartPeriod+"["+nHO+"] Open High "+DoubleToStr(OH,digits) ) ; }


j       = j + 1 ;
lbl[j]  = ShortName+j;
lbl2[j] = "Low(" + nLO  + ") " ;
PipDiff = ( close - OL ) / point ; 
DoColor( close, OL  ) ; 
if(Show_Gauge) { DoShow(j, colorLow, OL); }
if(Show_Lines) { drawLine(OL,TAG+"Low(" ,  colorLow, 2, Time[nLO], tChartPeriod+"["+nLO+"] Open Low "+DoubleToStr(OL,digits) ) ; }
 




      nHO1    =  Highest(symbol,period,MODE_OPEN,limit,nHO+1); 
      nLO1    =  Lowest(symbol,period,MODE_OPEN,limit,nLO+1);     
 
      HO1     = iHigh(symbol,period,nHO1);  
      LO1     = iLow(symbol,period,nLO1);      
 
      OH1     = iOpen(symbol,period,nHO1);          
      CH1     = iClose(symbol,period,nHO1);          
      OL1     = iOpen(symbol,period,nLO1);  
      CL1     = iClose(symbol,period,nLO1);   



j       = j + 1 ;
lbl[j]  = ShortName+j;
lbl2[j] = "High(" + nHO1 + ")" ;
PipDiff = ( OH1 - close ) / point ; 
DoColor( close, OH1  ) ; 
if(Show_Gauge) { DoShow(j, colorHigh,OH1 ); }
if(Show_Lines && OH1 != OH) { drawLine(OH1,TAG+"High1(" ,  colorHigh, 2, Time[nHO1], tChartPeriod+"["+nHO1+"] Open High "+DoubleToStr(OH1,digits) ) ; }


j       = j + 1 ;
lbl[j]  = ShortName+j;
lbl2[j] = "Low(" + nLO1  + ") " ;
PipDiff = ( close - OL1 ) / point ; 
DoColor( close, OL1  ) ; 
if(Show_Gauge) { DoShow(j, colorLow, OL1); }
if(Show_Lines && OL1 != OL) { drawLine(OL1,TAG+"Low1(" ,  colorLow, 2, Time[nLO1], tChartPeriod+"["+nLO1+"] Open Low "+DoubleToStr(OL1,digits) ) ; }
 
 
DateTime  = iTime(symbol,PERIOD_D1,0) ;  
D1_Open = iOpen(symbol,PERIOD_D1,0);  

j       = j + 1 ;
lbl[j]  = ShortName+j;
lbl2[j] = "D1 Open" ;
PipDiff = ( close - D1_Open ) / point ; 
DoColor( close, D1_Open  ) ; 
if(Show_Gauge) { DoShow(j, Line_Color_Open, D1_Open); }
if(Show_Lines) { drawLine(D1_Open,TAG+"D1 OPEN" , Line_Color_Open, 2, DateTime , "D1 Open "+DoubleToStr(D1_Open,digits) ) ; }
 


DateTime  = iTime(symbol,PERIOD_W1,0) ;  
BarShift  = iBarShift(symbol,PERIOD_W1,Time[0],true); 
W1_Open   = iOpen(symbol,PERIOD_W1,BarShift);  
 

j       = j + 1 ;
lbl[j]  = ShortName+j;
lbl2[j] = "W1 Open" ;
PipDiff = ( close - W1_Open ) / point ; 
DoColor( close, W1_Open  ) ; 
if(Show_Gauge) { DoShow(j, Line_Color_Open, W1_Open); }
if(Show_Lines && W1_Open != D1_Open ) { drawLine(W1_Open,TAG+"W1 OPEN" , Line_Color_Open, 2, DateTime , "W1 Open "+DoubleToStr(W1_Open,digits) ) ; } 
 
/*

j       = j + 1 ;
lbl[j]  = ShortName+j;
lbl2[j] = "CH(" + nHO + ")" ;
PipDiff = ( CH - close ) / point ; 
DoColor( close, CH  ) ; 
if(Show_Gauge) { DoShow(j, colorHigh,CH ); }
if(Show_Lines) { drawLine(CH,TAG+"CHigh(" + nHO, nHO, colorHigh, 2,tChartPeriod+"["+nHO+"] Close High "+DoubleToStr(CH,digits) ) ; }



j       = j + 1 ;
lbl[j]  = ShortName+j;
lbl2[j] = "CL(" + nLO  + ") " ;
PipDiff = ( close - CL ) / point ; 
DoColor( close, CL  ) ; 
if(Show_Gauge) { DoShow(j, colorLow, CL); }
if(Show_Lines) { drawLine(CL,TAG+"CLow(" + nLO, nLO, colorLow, 2,tChartPeriod+"["+nLO+"] Close Low "+DoubleToStr(CL,digits) ) ; }
  
*/  


j       = j + 1 ;
name = ShortName+j;
   if (ShowBackground)
      {                         
         if (ObjectFind(name) == -1)
             ObjectCreate(name,OBJ_RECTANGLE,0,0,0);
             ObjectSet(name,OBJPROP_TIME1,Time[nHO]) ;   //iTime(NULL,DataPeriod,DataBar));
             ObjectSet(name,OBJPROP_TIME2,Time[nLO]) ;          //iTime(NULL,         0,0));
             ObjectSet(name,OBJPROP_PRICE1,OH);
             ObjectSet(name,OBJPROP_PRICE2,OL);
             ObjectSet(name,OBJPROP_COLOR,BackgroundColor);
      }  


   return(0);
  }
//+------------------------------------------------------------------+
  
void DoShowHead( int u, color dsColor )
{
string rlabelH = lbl[u] + "Head" ;
ObjectCreate(rlabelH,23,0,Time[0],PRICE_CLOSE);
ObjectSet(rlabelH, OBJPROP_CORNER, myCorner );
ObjectSet(rlabelH,OBJPROP_XDISTANCE, x001+myChartX);
ObjectSet(rlabelH,OBJPROP_YDISTANCE,n+myChartY);
ObjectSetText(rlabelH,lbl2[u],myFontSize,myFont,dsColor);

n = n+20;


}
//+------------------------------------------------------------------+
  
void DoShow( int u, color dsColor, double dsPrice )
{
ObjectCreate(lbl[u],23,0,Time[0],PRICE_CLOSE);
ObjectSet(lbl[u], OBJPROP_CORNER, myCorner );
ObjectSet(lbl[u],OBJPROP_XDISTANCE,x002+myChartX);
ObjectSet(lbl[u],OBJPROP_YDISTANCE,n+myChartY);
ObjectSetText(lbl[u],lbl2[u],myFontSize,myFont,dsColor);

string Obj001 = lbl[u] + "price" ;
string sVal = fFILL(DoubleToStr(dsPrice,digits), 7)    ;
ObjectCreate(Obj001,23,0,Time[0],PRICE_CLOSE);
ObjectSet(Obj001, OBJPROP_CORNER, myCorner );
ObjectSet(Obj001,OBJPROP_XDISTANCE, x003+myChartX);
ObjectSet(Obj001,OBJPROP_YDISTANCE,n+myChartY);
ObjectSetText(Obj001,sVal,myFontSize,myFont,dsColor);


string Obj002 = lbl[u] + "avg" ;
string sDif =  rtadjust( DoubleToStr(PipDiff,0) ) ;
ObjectCreate(Obj002,23,0,Time[0],PRICE_CLOSE);
ObjectSet(Obj002, OBJPROP_CORNER, myCorner );
ObjectSet(Obj002,OBJPROP_XDISTANCE, x004+myChartX);
ObjectSet(Obj002,OBJPROP_YDISTANCE,n+myChartY);
ObjectSetText(Obj002,sDif,myFontSize,myFont,pColor);

n = n+20;

  }



//+------------------------------------------------------------------+
  
void DoColor( double c1, double c2 )
{

if(c1 > c2 ) { pColor = Lime ; } else {
if(c1 < c2 ) { pColor = Red ; } else { pColor = Yellow ; } } 

}  

//+------------------------------------------------------------------+
void drawLine(double lvl,string name, color Col,int type, datetime StartTime, string text)
{
  
   
        
         if(ObjectFind(name) != 0)
         {
            ObjectCreate(name, OBJ_TREND, 0, StartTime, lvl,Time[0],lvl);
            
  
            ObjectSet(name, OBJPROP_STYLE, LineStyle);
            
            ObjectSet(name, OBJPROP_COLOR, Col);
            ObjectSet(name,OBJPROP_WIDTH,1);
            ObjectSet(name,OBJPROP_RAY,false);
            
         }
         else
         {
            ObjectDelete(name);
            ObjectCreate(name, OBJ_TREND, 0, StartTime, lvl,Time[0],lvl);
 
            ObjectSet(name, OBJPROP_STYLE, LineStyle);
            
            ObjectSet(name, OBJPROP_COLOR, Col);        
            ObjectSet(name,OBJPROP_WIDTH,1);
            ObjectSet(name,OBJPROP_RAY,false);
          
         }
 
   if(Show_Labels)
   {         
      string Obj0002 = name+"linelbl" ;

      datetime LabelTime = Time[0]+Period()*60*ShiftLabel   ;   
      
      ObjectDelete(Obj0002);
      
      if(ObjectFind(Obj0002) != 0)
      {
         ObjectCreate(Obj0002, OBJ_TEXT, 0, LabelTime, lvl);
         ObjectSetText(Obj0002,text , 8, "Arial", Col);
      }
      else
      {
         ObjectMove(Obj0002, 0, LabelTime, lvl);
      } // if 
                 
   } // if     
         
}
//+------------------------------------------------------------------+
string TimeFrameToString(int tf)
{
   string tfs;
   switch(tf) {
      case PERIOD_M1:  tfs="M1"  ; break;
      case PERIOD_M5:  tfs="M5"  ; break;
      case PERIOD_M15: tfs="M15" ; break;
      case PERIOD_M30: tfs="M30" ; break;
      case PERIOD_H1:  tfs="H1"  ; break;
      case PERIOD_H4:  tfs="H4"  ; break;
      case PERIOD_D1:  tfs="D1"  ; break;
      case PERIOD_W1:  tfs="W1"  ; break;
      case PERIOD_MN1: tfs="MN";
   }
   return(tfs);
}

//+------------------------------------------------------------------+

string fFILL(string fiLOed, int f ) 
{
   string FILOED ;
   
   FILOED = StringSubstr(fiLOed + "                                         ",0,f) ;
   
return(FILOED);
}



//+------------------------------------------------------------------+
string rtadjust( string rString )
{
 
 int sl = StringLen(rString) ;
 
 while(true)
 {
 
   if( sl == 5) { break ; } 
   if( sl == 4) { rString = " " + rString ; break ; }    
   if( sl == 3) { rString = "  " + rString ; break ; } 
   if( sl == 2) { rString = "   " + rString ; break ; } 
   if( sl == 1) { rString = "    " + rString ; break ; } 
    
   break ;
 }

return(rString) ;
}       

//+------------------------------------------------------------------+  
 
void TRO()
{   
   
   string tObjName03    = "TROTAG"  ;  
   ObjectCreate(tObjName03, OBJ_LABEL, 0, 0, 0);//HiLow LABEL
   ObjectSetText(tObjName03, CharToStr(78) , 12 ,  "Wingdings",  DimGray );
   ObjectSet(tObjName03, OBJPROP_CORNER, 3);
   ObjectSet(tObjName03, OBJPROP_XDISTANCE, 5 );
   ObjectSet(tObjName03, OBJPROP_YDISTANCE, 5 );  
}


//+------------------------------------------------------------------+

/*

      high   = MathMax(iOpen(symbol,period,nHO),iClose(symbol,period,nHO));         
      low    = MathMax(iOpen(symbol,period,nLO),iClose(symbol,period,nLO));

  
//+------------------------------------------------------------------+
void drawLabel(string name,double lvl,color Color)
{
    if(ObjectFind(name) != 0)
    {
        ObjectCreate(name, OBJ_TEXT, 0, Time[10], lvl);
        ObjectSetText(name, name, 14, "Arial", EMPTY);
        ObjectSet(name, OBJPROP_COLOR, Color);
    }
    else
    {
        ObjectMove(name, 0, Time[10], lvl);
    }
}


Comment(
 
"MathAbs((close - high) / point " , DoubleToStr(MathAbs((close - high) / point),Digits)  , "\n" , 
"MathAbs((close - low) / point " , DoubleToStr(MathAbs((close - low) / point),Digits)  , "\n" ,  

"myThreshold " , DoubleToStr(myThreshold,Digits) , "\n" ,
"TestVol " , TestVol , "\n" , 
"") ;  
 
*/