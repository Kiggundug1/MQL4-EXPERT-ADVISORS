//+------------------------------------------------------------------+
//|                                               HoLo Activator.mq4 |
//|                               Copyright © 2004, Poul_Trade_Forum |
//|                                                         Aborigen |
//|                                          http://forex.kbpauk.ru/ |
//+------------------------------------------------------------------+
// Modified Aug14,2007 Kenneth Hookham to provide solid line option

#property copyright "Poul Trade Forum"
#property link      "http://forex.kbpauk.ru/"
#property copyright "Gann + MA cross alert and email function added by Sadly at http://www.forex-tsd.com/"
#property copyright "Gann MA Mode input settings added by Sadly at http://www.forex-tsd.com/"
#property indicator_chart_window
#property indicator_buffers 3

#property indicator_color1 Navy
#property indicator_color2 Navy
#property indicator_color3 Navy

#property indicator_width1 1
#property indicator_width2 1
#property indicator_width3 1

//---- input parameters
extern int R=10; // default value for auslanco system
extern int Gann_MA_mode = MODE_SMA; // MODE_SMA 0 Simple moving average, MODE_EMA 1 Exponential moving average, MODE_SMMA 2 Smoothed moving average, MODE_LWMA 3 Linear weighted moving average. 
extern bool dots=true;
extern bool line=false;
extern bool Alert_On = false;
extern bool Email_on = false;
extern int  MA_Period = 1;
extern int  MA_method = MODE_SMA;



//---- buffers
double HighBuffer[];
double LowBuffer[];
double LineBuffer[];
double VALUE1,VALUE2,VALUE11,VALUE22;
double MA_Period_val;
int old_Swing;
string AlertMSG = "Gann HiLo Activator alert";
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int init()
  {
   string short_name;
//---- indicator line
   if(dots)
   {
   SetIndexStyle(0,DRAW_LINE,EMPTY,1,Navy);
   SetIndexStyle(1,DRAW_LINE,EMPTY,1,Navy);
   
   SetIndexArrow(0, 0x9F);
   SetIndexArrow(1, 0x9F);

   SetIndexBuffer(0,HighBuffer);
   SetIndexBuffer(1,LowBuffer);

   SetIndexEmptyValue(0,0);
   SetIndexEmptyValue(1,0);
   }
   if(line)
   {
   SetIndexStyle(2,DRAW_LINE,EMPTY,1,Navy);
   SetIndexBuffer(2,LineBuffer);
   SetIndexEmptyValue(2,0);
   }   
//---- name for DataWindow and indicator subwindow label
   short_name="HiLoV2";
   IndicatorShortName(short_name);
   SetIndexLabel(0,short_name);

//----
   SetIndexDrawBegin(0,10);
//----

   return(0);
  }
//+------------------------------------------------------------------+
//| Custor indicator deinitialization function                       |
//+------------------------------------------------------------------+
int deinit()
  {
//---- TODO: add your code here
    
//----
   return(0);
  }
//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int start()
  {
   int    counted_bars=IndicatorCounted(),i,shift,Swing;
   

//---- TODO: add your code here
i=(Bars-counted_bars)-1;

for (shift=i; shift>=0;shift--)
{


VALUE1=iMA(NULL,0,R,0,Gann_MA_mode,PRICE_HIGH,shift+1);
VALUE2=iMA(NULL,0,R,0,Gann_MA_mode,PRICE_LOW,shift+1);
MA_Period_val=iMA(NULL,0,MA_Period,0,MA_method,PRICE_CLOSE,shift+1);

if (Close[shift+1]<VALUE2 ) Swing=-1;
if (Close[shift+1]>VALUE1 ) Swing=1;
if(dots)
{
if (Swing==1) { 
   HighBuffer[shift]=VALUE2;
   LowBuffer[shift]=0;  
   if(VALUE1 > MA_Period_val){ 
      if(Alert_On && Swing != old_Swing){
         PlaySound("Alert.wav");
         Alert("HiLo dot below MA "+Symbol()+" "+Period()+", "+MA_Period+"");
         old_Swing = Swing;
         if (Email_on) SendMail(AlertMSG,"Dot below MA"+MA_Period);
      }
   }  
}
if (Swing==-1) {
   LowBuffer[shift]=VALUE1;
   HighBuffer[shift]=0; 
   if(VALUE2 < MA_Period_val){ 
      if(Alert_On && Swing != old_Swing){ 
         PlaySound("Alert.wav");
         Alert("HiLo dot below MA "+Symbol()+" "+Period()+", "+MA_Period+"");
         old_Swing = Swing;
         if (Email_on) SendMail(AlertMSG,"Dot above MA"+MA_Period);
      }
   }  
}

}

if(line)
{
if (Swing==1) { 
   LineBuffer[shift]=VALUE2;   
   if(VALUE1 > MA_Period_val){ 
      if(Alert_On && Swing != old_Swing){ 
         PlaySound("Alert.wav");
         Alert("HiLo line X below MA", MA_Period);
         old_Swing = Swing;
         if (Email_on) SendMail(AlertMSG,"Line below MA"+MA_Period);
         }
   }  
}


if (Swing==-1) { 
   LineBuffer[shift]=VALUE1;  
   if(VALUE2 < MA_Period_val){ 
      if(Alert_On && Swing != old_Swing){
         PlaySound("Alert.wav");
         Alert("HiLo line X above MA", MA_Period);
         old_Swing = Swing;
         if (Email_on) SendMail(AlertMSG,"Line above MA"+MA_Period);
         }
   }  
}
}


 //----
}
   return(0);
  }
//+------------------------------------------------------------------+

