#property indicator_separate_window
#property indicator_buffers 5
#property indicator_color1 DodgerBlue
#property indicator_color2 Lime
#property indicator_color3 Red
#property indicator_color4 Yellow
#property indicator_color5 Magenta


#property indicator_maximum 100
#property indicator_minimum   0

//---- input parameters ADX
extern bool al=true;
extern bool iBuy=true;
extern bool iSell=true;
extern bool pDi_Uv=false;
extern bool pDi_Um=false;
extern bool mDi_Uv=false;
extern bool mDi_Um=false;
extern bool mcb=false;
extern double mb=20;
extern bool mcm=false;
extern double mm=20;
extern bool pDI_c_b=false;
extern bool pDI_c_m=false;
extern double pDI=20;
extern bool crs_up=false;
extern bool crs_dwn=false;
extern bool adx=false;
extern bool adxUm=false;
extern bool adxBol=false;
extern double ADX_u=20;
extern int ADXPeriod=14;
//_________________
extern bool    lrt=false;
extern bool    drebezg=false;
extern bool    LevelMainMore=false;
extern double  levelTop=0;
extern bool    LevelMainLess=false;
extern double  levelLower=0;
extern bool    crossA=false;
extern bool    crossB=false;
extern double  level_high_A=70;
extern double  level_low_B=30;

//_______________________________________
extern int     Kperiod     = 5;
extern int     Dperiod     = 3;
extern int     slowing     = 3;
extern int     method      = 0; // 0 - SMA, 1- EMA, 2 - 
extern int     price_field = 0; // 0 - High/Low; 1 - Close/Close
//---- buffers
double ADXBuffer[];
double PlusDiBuffer[];
double MinusDiBuffer[];
double PlusSdiBuffer[];
double MinusSdiBuffer[];
double TempBuffer[];
int LB;

//---- buffers

double Stoch[];
double Signal[];

//int i;
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int init() {
      //---- 3 additional buffers are used for counting.
   IndicatorBuffers(8);
//---- indicator buffers
   SetIndexBuffer(0,ADXBuffer);
   SetIndexBuffer(1,PlusDiBuffer);
   SetIndexBuffer(2,MinusDiBuffer);
   SetIndexBuffer(5,PlusSdiBuffer);
   SetIndexBuffer(6,MinusSdiBuffer);
   SetIndexBuffer(7,TempBuffer);
//---- name for DataWindow and indicator subwindow label
   IndicatorShortName("sA("+ADXPeriod+")");
   SetIndexLabel(0,"ADX");
   SetIndexLabel(1,"+DI");
   SetIndexLabel(2,"-DI");
//----
   SetIndexDrawBegin(0,ADXPeriod);
   SetIndexDrawBegin(1,ADXPeriod);
   SetIndexDrawBegin(2,ADXPeriod);
//----
//---- drawing settings
   SetIndexStyle(3,DRAW_LINE);
   SetIndexDrawBegin(3,0);

   SetIndexStyle(4,DRAW_LINE,STYLE_DOT); 
   SetIndexDrawBegin(4,0);
   

   SetIndexBuffer(3,Stoch);
   SetIndexBuffer(4,Signal);
 

   return(0); }//int init() 
//+------------------------------------------------------------------+
int start() {
   double a, b, c,d; 
 //-----adx  
   double po,p1,mo,m1,a0,a1;
   double pdm,mdm,tr;
   double price_high,price_low;
   int    starti,i,counted_bars=IndicatorCounted();            
//---------
   
   int limi;
   //int counted_bars=IndicatorCounted();
   int q,j,k;
   if(counted_bars<0) return(-1);
   if(counted_bars>0) counted_bars--;
   limi=Bars-counted_bars;
   for (q = limi;q>=0;q--)
      {
      Stoch[q]=iStochastic(NULL,0,Kperiod,Dperiod,slowing,method,price_field,MODE_MAIN,q);
      Signal[q]=iStochastic(NULL,0,Kperiod,Dperiod,slowing,method,price_field,MODE_SIGNAL,q);
    
       }
    //--------------------------------------------------------------------$$$$$$$$$$$$$$$$$$$
 
   a=iStochastic(NULL,0,Kperiod,Dperiod,slowing,method,price_field,MODE_MAIN,0);// 0 бар
   b=iStochastic(NULL,0,Kperiod,Dperiod,slowing,method,price_field,MODE_MAIN,  1);// 1 бар
   c=iStochastic(NULL,0,Kperiod,Dperiod,slowing,method,price_field,MODE_SIGNAL,0);// 0 бар
   d=iStochastic(NULL,0,Kperiod,Dperiod,slowing,method,price_field,MODE_SIGNAL,1);// 1 бар
//--------------------------------------------------------------------  
            //----
   i=Bars-2;
   PlusSdiBuffer[i+1]=0;
   MinusSdiBuffer[i+1]=0;
   if(counted_bars>=i) i=Bars-counted_bars-1;
   starti=i;
//----
   while(i>=0)
     {
      price_low=Low[i];
      price_high=High[i];
      //----
      pdm=price_high-High[i+1];
      mdm=Low[i+1]-price_low;
      if(pdm<0) pdm=0;  // +DM
      if(mdm<0) mdm=0;  // -DM
      if(pdm==mdm) { pdm=0; mdm=0; }
      else if(pdm<mdm) pdm=0;
           else if(mdm<pdm) mdm=0;
      //---- ????????? ???????? ????????
      double num1=MathAbs(price_high-price_low);
      double num2=MathAbs(price_high-Close[i+1]);
      double num3=MathAbs(price_low-Close[i+1]);
      tr=MathMax(num1,num2);
      tr=MathMax(tr,num3);
      //---- counting plus/minus direction
      if(tr==0) { PlusSdiBuffer[i]=0; MinusSdiBuffer[i]=0; }
      else      { PlusSdiBuffer[i]=100.0*pdm/tr; MinusSdiBuffer[i]=100.0*mdm/tr; }
      //----
      i--;
     }
//---- last counted bar will be recounted
   if(counted_bars>0) counted_bars--;
   int limit=Bars-counted_bars;
//---- apply EMA to +DI
   for(i=0; i<=limit; i++)
      PlusDiBuffer[i]=iMAOnArray(PlusSdiBuffer,Bars,ADXPeriod,0,MODE_EMA,i);
//---- apply EMA to -DI
   for(i=0; i<=limit; i++)
      MinusDiBuffer[i]=iMAOnArray(MinusSdiBuffer,Bars,ADXPeriod,0,MODE_EMA,i);
//---- Directional Movement (DX)
   i=Bars-2;
   TempBuffer[i+1]=0;
   i=starti;
   while(i>=0)
     {
      double div=MathAbs(PlusDiBuffer[i]+MinusDiBuffer[i]);
      if(div==0.00) TempBuffer[i]=0;
      else TempBuffer[i]=100*(MathAbs(PlusDiBuffer[i]-MinusDiBuffer[i])/div);
      i--;
     }
//---- ADX is exponential moving average on DX
   for(i=0; i<limit; i++)
      ADXBuffer[i]=iMAOnArray(TempBuffer,Bars,ADXPeriod,0,MODE_EMA,i);
//----/&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&
         po=iADX(NULL, 0,14, PRICE_CLOSE, MODE_PLUSDI, 0);
         p1=iADX(NULL, 0,14, PRICE_CLOSE, MODE_PLUSDI, 1);
         mo=iADX(NULL, 0,14, PRICE_CLOSE, MODE_MINUSDI, 0);
         m1=iADX(NULL, 0,14, PRICE_CLOSE, MODE_MINUSDI,1);
         a0=iADX(NULL, 0,14, PRICE_CLOSE, MODE_MAIN,0);
         a1=iADX(NULL, 0,14, PRICE_CLOSE, MODE_MAIN,1);
         
         if(al){  
                  if(iBuy){
                     if(a>b && a<80 && po>p1 && po>mo)Alert("Moro:Buy ",Symbol(),Period());
                  }
                  if(iSell){
                  if(a<b && a>20 && mo>m1 && po<mo)Alert("Moro:Sell ",Symbol(),Period());
                  }
                  if(mcb){
                     if(mo>mb)Alert("sa4:","-DI>",mb,"--",Symbol(),Period());
                     }
                  if(mcm)
                  {if(mo<mm)Alert("sa4:","-DI<",mm,"--",Symbol(),Period());
                   }
               
                   if(pDI_c_b)
                     {
                     if(po>pDI)Alert("sa4:","+DI>",pDI,"--",Symbol(),Period());
                     }
                  if(pDI_c_m)
                  {if(po<pDI)Alert("sa4:","-DI<",pDI,"--",Symbol(),Period());
                   }
                   if(crs_up)
                        {
                           if(po>mo)Alert("sa4:","+di cross -di","--",Symbol(),Period());
                         }
                           
                   if(crs_dwn)
                        {
                           if(po<mo)Alert("sa4:","-di cross +di","--",Symbol(),Period());
                         }        
                    if(pDi_Uv)
                        {
                        if(po>p1)Alert("sa4:","+di растет","--",Symbol(),Period());
                         }
                      if(pDi_Um)
                           {
                            if(po<p1)Alert("sa4:","+di падает","--",Symbol(),Period());
                            }
                            
                     if(mDi_Uv)
                        {
                        if(mo>m1)Alert("sa4:","-di растет","--",Symbol(),Period());
                         }
                     if(mDi_Um)
                        {
                        if(mo<m1)Alert("sa4:","-di падает","--",Symbol(),Period()); 
                        }
                      if(adx){
                                 if(a0>a1)Alert("sa4:","ADX растет","--",Symbol(),Period());  
                                 }
                      if(adxUm){
                                 if(a1>a0)Alert("sa4:","ADX падает","--",Symbol(),Period());  
                                 }
                      if(adxBol){
                                 if(a0>ADX_u)Alert("sa4:","ADX больше 20","--",Symbol(),Period());  
                                 }
                           
          }
          //*/
            
if(lrt)
{
   if(a < c && b>=d)
   {
      Alert("SS:","ѕересечение¬низ",Symbol(),Period()); 
      lrt=false;
      //PlaySound("alert2.wav");                            
   }   
   if(a > c && b<=d) {
      Alert("SS:","ѕересечение¬верх",Symbol(),Period()); 
      lrt=false;
      //PlaySound("alert2.wav");                             
   } 
} 
if(LevelMainMore)
  {
      if(a>levelTop)Alert("SS:",a,"--",Symbol(),Period());
      LevelMainMore=false;
  } 
if(LevelMainLess)
  {
      if(a<levelLower)Alert("SS:",a,"--",Symbol(),Period());
      LevelMainLess=false;
  }

if(crossA)
   {
      if(a < c && b>=d && a>level_high_A) Alert("SS:","crossA",Symbol(),Period());                                        
      if(a > c && b<=d && a>level_high_A) Alert("SS:","crossA",Symbol(),Period());
      crossA=false;
   }
if(crossB)
   {
      if(a < c && b>=d && a<level_low_B) Alert("SS:","crossB",Symbol(),Period());                                        
      if(a > c && b<=d && a<level_low_B) Alert("SS:","crossB",Symbol(),Period());
      crossB=false;
   }

if(drebezg)
{
   if(a < c && b>=d)
   {
      Alert("SS:","ѕересечение¬низ",Symbol(),Period()); 
      //drebezg=false;
      //PlaySound("alert2.wav");                            
   }   
   if(a > c && b<=d) {
      Alert("SS:","ѕересечение¬верх",Symbol(),Period()); 
      //lrt=false;
      //PlaySound("alert2.wav");                             
   } 
} 
  //$$$$$$$$$$$$$$$$$$$$$$$3### 
   return(0); 
}



