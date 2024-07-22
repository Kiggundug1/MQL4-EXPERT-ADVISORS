#property link "http://www.forex-instruments.info"
#property copyright "Wtf11"

#property indicator_separate_window
#property indicator_minimum 0
#property indicator_maximum 5
#property indicator_buffers 8
#property indicator_color1 Green
#property indicator_color2 Green
#property indicator_color3 Green
#property indicator_color4 Green
#property indicator_color5 FireBrick
#property indicator_color6 FireBrick
#property indicator_color7 FireBrick
#property indicator_color8 FireBrick


//---- input parameters
extern int Period1=5;
extern int Period2=10;
extern int Period3=20;
extern int Period4=40;
extern int tf1=PERIOD_W1;
extern int tf2=PERIOD_D1;
extern int tf3=PERIOD_H4;
extern int tf4=PERIOD_H1;
extern double GapStop=1; //size of gap relative to previous bar size.  Will display black if there is a gap on relevant TF.

//---- buffers
double Buffer1[];
double Buffer2[];
double Buffer3[];
double Buffer4[];
double Buffer5[];
double Buffer6[];
double Buffer7[];
double Buffer8[];


//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int init()
  {
   string short_name;
//---- 2 additional buffers are used for counting.
   IndicatorBuffers(8);

//---- indicator line
   SetIndexStyle(0,DRAW_ARROW);
   SetIndexBuffer(0,Buffer1);
   SetIndexArrow(0, 174);
//---- indicator line
   SetIndexStyle(1,DRAW_ARROW);
   SetIndexBuffer(1,Buffer2);
   SetIndexArrow(1, 174);
//---- indicator line
   SetIndexStyle(2,DRAW_ARROW);
   SetIndexBuffer(2,Buffer3);
   SetIndexArrow(2, 174);
//---- indicator line
   SetIndexStyle(3,DRAW_ARROW);
   SetIndexBuffer(3,Buffer4);
   SetIndexArrow(3, 174);
//---- indicator line
   SetIndexStyle(4,DRAW_ARROW);
   SetIndexBuffer(4,Buffer5);
   SetIndexArrow(4, 174);
//---- indicator line
   SetIndexStyle(5,DRAW_ARROW);
   SetIndexBuffer(5,Buffer6);
   SetIndexArrow(5, 174);
//---- indicator line
   SetIndexStyle(6,DRAW_ARROW);
   SetIndexBuffer(6,Buffer7);
   SetIndexArrow(6, 174);
//---- indicator line
   SetIndexStyle(7,DRAW_ARROW);
   SetIndexBuffer(7,Buffer8);
   SetIndexArrow(7, 174);

//---- name for DataWindow and indicator subwindow label
   short_name="Traffic Light";
   IndicatorShortName(short_name);
   SetIndexLabel(0,short_name);
//----
   SetIndexDrawBegin(0,Period4);
//----
   return(0);
  }
//+------------------------------------------------------------------+
//| Relative Strength Index                                          |
//+------------------------------------------------------------------+
int start()
  {
   int    i,counted_bars=IndicatorCounted();
//----
   if(Bars<=Period4) return(0);
//---- initial zero
   if(counted_bars<1)
      for(i=1;i<=Period4;i++) 
         {
         Buffer1[Bars-i]=-10.0;
         Buffer2[Bars-i]=-10.0;
         Buffer3[Bars-i]=-10.0;
         Buffer4[Bars-i]=-10.0;
         Buffer5[Bars-i]=-10.0;
         Buffer6[Bars-i]=-10.0;
         Buffer7[Bars-i]=-10.0;
         Buffer8[Bars-i]=-10.0;
         }
//----
   i=Bars-Period4-1;
   if(counted_bars>=Period4) i=Bars-counted_bars-1;
   while(i>=0)
     {
      double MA, MA1, MA2, MA3, MA4;
      int RYG;
      

 //   traffic light code.  Must set RYG to -1 for red, 0 for black, 1 for green
 
      int bb=HighBar(Symbol(), 0, i, tf1);
      if (bb==-1) continue;
      MA1=iMA(NULL,tf1,Period1,0,MODE_EMA,PRICE_CLOSE,bb);
      MA3=iMA(NULL,tf1,Period3,0,MODE_EMA,PRICE_CLOSE,bb);
      double bbCL=iClose(Symbol(), tf1, bb);
      
      RYG=0;
      if ((bbCL>MA1)&&(bbCL>MA3)) RYG=1;
      if ((bbCL<MA1)&&(bbCL<MA3)) RYG=-1;
      
 //   display lowest traffic light
      switch(RYG) 
         {
         case 1:
            Buffer1[i]=1.0;
            Buffer5[i]=-10.0;
            break;
         case -1:   
            Buffer1[i]=-10.0;
            Buffer5[i]=1.0;
            break;
         case 0:
            Buffer1[i]=-10.0;
            Buffer5[i]=-10.0;
            break;   
         }
      
  //   traffic light code.  Must set RYG to -1 for red, 0 for black, 1 for green
 
      bb=HighBar(Symbol(), 0, i, tf2);
      if (bb==-1) continue;
      MA1=iMA(NULL,tf2,Period1,0,MODE_EMA,PRICE_CLOSE,bb);
      MA3=iMA(NULL,tf2,Period3,0,MODE_EMA,PRICE_CLOSE,bb);
      bbCL=iClose(Symbol(), tf2, bb);
      
      RYG=0;
      if ((bbCL>MA1)&&(bbCL>MA3)) RYG=1;
      if ((bbCL<MA1)&&(bbCL<MA3)) RYG=-1;
      
 //   display second lowest traffic light
      switch(RYG) 
         {
         case 1:
            Buffer2[i]=2.0;
            Buffer6[i]=-10.0;
            break;
         case -1:   
            Buffer2[i]=-10.0;
            Buffer6[i]=2.0;
            break;
         case 0:
            Buffer2[i]=-10.0;
            Buffer6[i]=-10.0;
            break;   
         }
      
   //   traffic light code.  Must set RYG to -1 for red, 0 for black, 1 for green
      bb=HighBar(Symbol(), 0, i, tf3);
      if (bb==-1) continue;
      MA1=iMA(NULL,tf3,Period1,0,MODE_EMA,PRICE_CLOSE,bb);
      MA3=iMA(NULL,tf3,Period3,0,MODE_EMA,PRICE_CLOSE,bb);
      bbCL=iClose(Symbol(), tf3, bb);
      
      RYG=0;
      if ((bbCL>MA1)&&(bbCL>MA3)) RYG=1;
      if ((bbCL<MA1)&&(bbCL<MA3)) RYG=-1;
      
 //   display second top traffic light
      switch(RYG) 
         {
         case 1:
            Buffer3[i]=3.0;
            Buffer7[i]=-10.0;
            break;
         case -1:   
            Buffer3[i]=-10.0;
            Buffer7[i]=3.0;
            break;
         case 0:
            Buffer3[i]=-10.0;
            Buffer7[i]=-10.0;
            break;   
         }
     
   //   traffic light code.  Must set RYG to -1 for red, 0 for black, 1 for green
      bb=HighBar(Symbol(), 0, i, tf4);
      if (bb==-1) continue;
      MA1=iMA(NULL,tf4,Period1,0,MODE_EMA,PRICE_CLOSE,bb);
      MA3=iMA(NULL,tf4,Period3,0,MODE_EMA,PRICE_CLOSE,bb);
      bbCL=iClose(Symbol(), tf4, bb);
      
      RYG=0;
      if ((bbCL>MA1)&&(bbCL>MA3)) RYG=1;
      if ((bbCL<MA1)&&(bbCL<MA3)) RYG=-1;
      
 //   display second lowest traffic light
      switch(RYG) 
         {
         case 1:
            Buffer4[i]=4.0;
            Buffer8[i]=-10.0;
            break;
         case -1:   
            Buffer4[i]=-10.0;
            Buffer8[i]=4.0;
            break;
         case 0:
            Buffer4[i]=-10.0;
            Buffer8[i]=-10.0;
            break;   
         }
     
 
 
   
      i--;
     }
//----      TempBuffer[i]=
   return(0);
  }
//+------------------------------------------------------------------+

int HighBar(string symbol, int TFLow, int BarLow, int TFHigh)
{
   datetime BarTimeLow=iTime(symbol, TFLow, BarLow);
   int error=GetLastError();
   if(error==4066) return (-1);
   
   int res=iBarShift(symbol, TFHigh, BarTimeLow, false);
   error=GetLastError();
   if(error==4066) return (-1);
   
   return (res);
   
   }


