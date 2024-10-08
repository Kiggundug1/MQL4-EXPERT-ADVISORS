//+------------------------------------------------------------------+ 
//|  MegaTrend   HMA.mq4 
//| Copyright © 2006 WizardSerg <wizardserg@mail.ru>, ?? ??????? ForexMagazine #104 
//| wizardserg@mail.ru 
//| Revised by IgorAD,igorad2003@yahoo.co.uk |   
//|                                         
//| Personalized by iGoR for the Trend Slope Trading method (T_S_T) 
//| Link: http://www.strategybuilderfx.com/forums/showthread.php?t=16507
//| contact: igor@igor.cc                                 
//+------------------------------------------------------------------+
#property copyright "MT4 release WizardSerg <wizardserg@mail.ru>, ?? ??????? ForexMagazine #104" 
#property link      "wizardserg@mail.ru" 

#property indicator_chart_window 
#property indicator_buffers 5 

//#property indicator_color1 Lime
//#property indicator_color2 Red
//#property indicator_width1 3
//#property indicator_width2 3

//+++======================================================================+++
//+++                 Custom indicator input parameters                    +++
//+++======================================================================+++

extern int               HMAPeriod  =  44; 
extern ENUM_MA_METHOD    HMAMethod  =  MODE_LWMA;                         // MODE_SMA 
extern ENUM_APPLIED_PRICE HMAPrice  =  PRICE_CLOSE;                          // PRICE_CLOSE 
extern int                HMAshift  =  0;

extern bool                ShowHMA  =  true;
extern color               TrendUP  =  SeaGreen,   //LightSkyBlue,   //Lavender,    //FireBrick,       //Red,
                           TrendDN  =  Crimson;    //Red;            //Magenta;     //DarkGreen;       //Lime
extern ENUM_LINE_STYLE       Style  =  STYLE_SOLID;
extern int                    Size  =  2;

extern bool             ShowArrows  =  true;
extern color               ColorUP  =  Lavender,    //FireBrick,       //Red,
                           ColorDN  =  Magenta;     //DarkGreen;       //Lime
               
extern int               ArrowsGap  =  5,
                            CodeUP  =  233, 
                            CodeDN  =  234,
                           ArrSize  =  1;

//+++======================================================================+++
//+++                     Custom indicator buffers                         +++
//+++======================================================================+++
double bufUP[], bufDN[];
double HMA[]; 
double ArrUP[], ArrDN[];
//+++======================================================================+++
//+++              Custom indicator initialization function                +++
//+++======================================================================+++

int init() 
{ 
    IndicatorBuffers(5);   IndicatorDigits(Digits);   if (Digits==3 || Digits==5) IndicatorDigits(Digits-1);

    SetIndexBuffer(0, bufUP);   //ArraySetAsSeries(bufUP, true); 
    SetIndexBuffer(1, bufDN);   //ArraySetAsSeries(bufDN, true); 
    SetIndexBuffer(2, HMA);       ArraySetAsSeries(HMA, true); 
    SetIndexBuffer(3, ArrUP); 
    SetIndexBuffer(4, ArrDN); 
    
    int LNT=DRAW_NONE;    if (ShowHMA) LNT=DRAW_LINE;
    SetIndexStyle(0,LNT,Style,Size,TrendUP);
    SetIndexStyle(1,LNT,Style,Size,TrendDN);
    
    SetIndexStyle(2,DRAW_NONE);
    
    SetIndexStyle(3,DRAW_ARROW,STYLE_SOLID,ArrSize,ColorUP);   SetIndexArrow(3,CodeUP);
    SetIndexStyle(4,DRAW_ARROW,STYLE_SOLID,ArrSize,ColorDN);   SetIndexArrow(4,CodeDN);
    
    SetIndexLabel(0,"Trend UP ["+IntegerToString(HMAPeriod)+"]");
    SetIndexLabel(1,"Trend DN ["+IntegerToString(HMAPeriod)+"]");
    SetIndexLabel(2,NULL);
    if (ShowArrows) SetIndexLabel(3,"Arrow UP");   else SetIndexLabel(3,NULL);
    if (ShowArrows) SetIndexLabel(4,"Arrow DN");   else SetIndexLabel(4,NULL);
    
    SetIndexShift(0,HMAshift);
    SetIndexShift(1,HMAshift);
    SetIndexShift(2,HMAshift);
    SetIndexShift(3,HMAshift);
    SetIndexShift(4,HMAshift);
    
    IndicatorShortName("HMA Trend TT ["+HMAPeriod+"]"); 
    
//-------     
    return(0); 
} 
//+++======================================================================+++
//+++              Custom indicator deinitialization function              +++
//+++======================================================================+++

int deinit()   { return(0); } 
//+++======================================================================+++
//+++                 Custom indicator iteration function                  +++
//+++======================================================================+++

double WMA(int x, int p)   { return(iMA(NULL, 0, p, 0, HMAMethod, HMAPrice, x)); } 
//+++======================================================================+++
//+++======================================================================+++

int start() 
{ 
    int counted_bars = IndicatorCounted(); 
    if(counted_bars < 0) 
       return(-1); 
                  
    int x = 0; 
    int p = MathSqrt(HMAPeriod);              
    int e = Bars - counted_bars + HMAPeriod + 1; 
    
    double vect[], trend[]; 
    
    if(e > Bars) e = Bars;    

    ArrayResize(vect, e); 
    ArraySetAsSeries(vect, true);
    ArrayResize(trend, e); 
    ArraySetAsSeries(trend, true); 
//+++======================================================================+++

    for(x = 0; x < e; x++)   { vect[x] = 2*WMA(x, HMAPeriod/2) - WMA(x, HMAPeriod); } 
//+++======================================================================+++

    for(x = 0; x < e-HMAPeriod; x++)
     
        HMA[x] = iMAOnArray(vect, 0, p, 0, HMAMethod, x);        
//+++======================================================================+++

    for(x = e-HMAPeriod; x >= 0; x--) 
      {     
       trend[x]=trend[x+1];    
       if (HMA[x] > HMA[x+1]) trend[x] = 1;  
       if (HMA[x] < HMA[x+1]) trend[x] = -1; 
        
       if (Digits==3 || Digits==5) int Gap=ArrowsGap*10;
       if (ShowArrows) { if  (trend[x+1] < 0 && trend[x] > 0)   ArrUP[x+1] = HMA[x+1] - Gap*Point; }   else ArrUP[x+1]=EMPTY_VALUE; 
       if (ShowArrows) { if  (trend[x+1] > 0 && trend[x] < 0)   ArrDN[x+1] = HMA[x+1] + Gap*Point; }   else ArrDN[x+1]=EMPTY_VALUE; 

       if (trend[x] > 0)
        { 
         bufUP[x] = HMA[x]; 
         if (trend[x+1]<0) bufUP[x+1]=HMA[x+1];   bufDN[x]=EMPTY_VALUE;
        }
    
       else if (trend[x] < 0)
        { 
         bufDN[x] = HMA[x]; 
         if (trend[x+1]>0) bufDN[x+1]=HMA[x+1];   bufUP[x]=EMPTY_VALUE;
        }    
      }
//+++======================================================================+++
//-------     
    return(0); 
} 
//+++======================================================================+++
//+++======================================================================+++
//+++======================================================================+++
