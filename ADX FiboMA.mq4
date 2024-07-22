//+------------------------------------------------------------------+
//|                                                 ADX FiboMA 2.mq4 |
//|                      Copyright © 2005, MetaQuotes Software Corp. |
//|                                        http://www.metaquotes.net |
//+------------------------------------------------------------------+
#property copyright "Copyright © 2005"
#property link      ""

//#property indicator_separate_window
#property indicator_chart_window

#property indicator_buffers 7
#property indicator_color1 Magenta
#property indicator_color2 Green
#property indicator_color3 Yellow
#property indicator_color4 Gray
#property indicator_color5 Red
#property indicator_color6 Gray
#property indicator_color7 Gray
#property indicator_color8 Gray
//---- input parameters
extern int       MAPeriod;
extern int       Lots;
extern int       TakeProfit;extern int       StopLoss;
extern int       TrailingStop;
extern int   FiboMA;//0=>9.0170,1=>14.5898,2=>23.6068,3=>38.1966,4=>50.0000,5=>61.8034,Null
extern int   GoldenRatioPwr;//default=8
extern int   ADXPr;//default = 50 (1-100)
extern int   ADXtype;//0=ADX, 1=ADXR
//---- buffers
double FIMA[];
double FIMA_Osc[];
double StdFIMA[];
double AdjFIMA[];
double B1[];
double B2[];
double B3[];
double B4[];
double ADX[];
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int init()
  {
//---- indicators
   IndicatorBuffers(8);
   SetIndexStyle(0,DRAW_LINE, STYLE_DOT);
   SetIndexBuffer(0,FIMA);
   SetIndexLabel(0,"FIMA");
 
   SetIndexStyle(1,DRAW_LINE);
   SetIndexBuffer(1,FIMA_Osc);
   SetIndexLabel(1,"FIMA_Osc");
 
   SetIndexStyle(2,DRAW_LINE);
   SetIndexBuffer(2,StdFIMA);
   SetIndexLabel(2,"StdFIMA");
 
   SetIndexStyle(3,DRAW_LINE);
   SetIndexBuffer(3,B1);
   SetIndexLabel(3,"B1");
 
   SetIndexStyle(4,DRAW_LINE);
   SetIndexBuffer(4,B2);
   SetIndexLabel(4,"B2");
 
   SetIndexStyle(5,DRAW_LINE);
   SetIndexBuffer(5,B3);
   SetIndexLabel(5,"B3");
 
   SetIndexStyle(6,DRAW_LINE);
   SetIndexBuffer(6,B4);
   SetIndexLabel(6,"B4");
   SetIndexStyle(7,DRAW_LINE);
   SetIndexBuffer(7,ADX);
//----
   return(0);
  }
//+------------------------------------------------------------------+
//| Custor indicator deinitialization function                       |
//+------------------------------------------------------------------+
int deinit()
  {
//---- 
   
//----
   return(0);
  }
//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int start()
  {
   int      i,p;
   int      counted_bars = IndicatorCounted();
//---- 
   
   /*
   double   TR;
   double   TH;
   double   TL;
   double   PlusDM, PlusDI, MinusDM, MinusDI, DIDif, DISum;
   */
   double   FMA;
   double   ADXFinal;
   double   ADXRCustom;
   double   EmaIndex, Diff, MyConst;
   double   Hhv, Llv;

   double   GoldenRatio, GoldVal,FBase,F0,F1,F2,F3,F4,F5,F6,F7,F8,F9,F10,F11,F12,F13;
   

   //test default vals
   FiboMA = 2;
   GoldenRatio = 1;//=8;
   ADXPr = 23;//50;
   ADXtype = 0;
//
   
  if ( ADXPr<1 || ADXPr >100) {ADXPr =50;} //default = 50 (1-100)
  
  //calc FMA to use
  switch (FiboMA)
  {
      case 0:  FMA = 9.0170; break;
      case 1:  FMA = 14.5898; break;
      case 2:  FMA = 23.6068; break;
      case 3:  FMA = 38.1966; break;
      case 4:  FMA = 50.0000; break;
      case 5:  FMA = 61.8034; break;
      default: FMA = 23.6068; break;
  }

  //Calculate & Plot Tushar Chande style Fibonacci Based Moving Average Using Wilders ADX}
   i=Bars;
   //if (counted_bars>=i) {i=Bars-counted_bars-1;}
   while (i>=0)
   {
      
      ADXFinal = iADX(NULL,0,ADXPr,PRICE_CLOSE,MODE_MAIN,i);
      ADXRCustom = ( ADXFinal + iADX(NULL,0,ADXPr,PRICE_CLOSE,MODE_MAIN,(i+ADXPr-1)) )/2;
      if ( ADXtype == 0 )  { ADX[i] = ADXFinal; }  else { ADX[i] = ADXRCustom;}
      if ( FMA>0) { EmaIndex = (2/(1+FMA)); } else {EmaIndex = 0.20;}

      //get  Hhv(_ADX, ADXPr) and Llv(_ADX, ADXPr) - substituted for VT Hhv and Llv functions
      Hhv = ADX[i];
      Llv = ADX[i];
      for(p=i; p < (i+ADXPr) ; p++)
      {
         if (ADX[p]>Hhv) {Hhv = ADX[p];}
         if (ADX[p]<Llv) {Llv = ADX[p];}
      }
      Diff = Hhv - Llv;      // Diff = Hhv(_ADX, ADXPr) - Llv(_ADX, ADXPr);
      if (Diff > 0) {MyConst = (ADX[i] - Llv)/Diff;} else {MyConst = EmaIndex;}
      if ( MyConst > EmaIndex) {MyConst = EmaIndex;}
      //if (IndicatorCounted() < ADXPr+(ADXPr*1.5))
      if (Bars < ADXPr+(ADXPr*1.5))
      { 
          FIMA[i] = Close[i];
      }
      else
      {
          //sub for VT expression, subst simple average for 2 period MA
          //FIMA[i]  = MOV( (((1 - MyConst) * Ref(FIMA,-1)) + (MyConst * Close)),2,s));
          FIMA[i] = ( (1-MyConst)*FIMA[i+1]+MyConst*Close[i] + (1-MyConst)*FIMA[i+2]+MyConst*Close[i+1] )/2;     
      }
      FIMA_Osc[i] = iMAOnArray(FIMA, 0, FMA*0.236068 , 0,MODE_LWMA,i);
      StdFIMA[i] = iMA(NULL,0,FMA,0,MODE_EMA,PRICE_CLOSE,i);
      
      //{Control the distance from Price to F Lines}
      if (GoldenRatioPwr <=0) {GoldenRatioPwr=8;}//default=8 
      GoldenRatio = MathPow(1.618034 ,GoldenRatioPwr );
      GoldVal = 1.618034;
      FBase = 0.1919/2;
      F0 = FBase * GoldenRatio;

      F1 = F0*GoldVal;F2 = F1*GoldVal;F3 = F2*GoldVal;F4 = F3*GoldVal;
      F5 = F4*GoldVal;F6 = F5*GoldVal;F7 = F6*GoldVal;F8 = F7*GoldVal;
      F9 = F8*GoldVal;F10 = F9*GoldVal;F11 = F10*GoldVal;F12 = F11*GoldVal;
      F13 = F12*GoldVal;

      if (Close[i]>=FIMA[i])
      {
         B1[i] = FIMA[i]+(FIMA[i]*(FMA*(F1/100000)));
         B2[i] = FIMA[i]+(FIMA[i]*(FMA*(F2/100000)));
         B3[i] = FIMA[i]+(FIMA[i]*(FMA*(F3/100000)));
         B4[i] = FIMA[i]+(FIMA[i]*(FMA*(F4/100000)));
      }
      else
      {
         B1[i] = FIMA[i]-(FIMA[i]*(FMA*(F1/100000)));
         B2[i] = FIMA[i]-(FIMA[i]*(FMA*(F2/100000)));
         B3[i] = FIMA[i]-(FIMA[i]*(FMA*(F3/100000)));
         B4[i] = FIMA[i]-(FIMA[i]*(FMA*(F4/100000)));
      }
      i--;
   }
   
//----
   return(0);
  }

//+------------------------------------------------------------------+