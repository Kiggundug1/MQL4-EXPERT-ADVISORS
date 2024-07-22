//+------------------------------------------------------------------+
//| ADX Filter SideBar                     based on SAR Color Bar.mq4|
//+------------------------------------------------------------------+
//2008fxtsd ki
//mod adx & +-di separate sett

#property copyright "Kalenzo Code adapted by cja"
#property link      "http://www.foreksik.prv.pl"

#property indicator_color1 Green
#property indicator_color2 Red
#property indicator_color3 Yellow
#property indicator_color4 Lime
#property indicator_color5 Orchid

#property indicator_width1 3
#property indicator_width2 3
#property indicator_width3 3
#property indicator_width4 4
#property indicator_width5 4

#property indicator_separate_window
#property indicator_buffers 5
#property indicator_maximum 77
#property indicator_minimum 1

double ADX_buff[],ADX_Up[],ADX_Dn[],PADX_buff[],NADX_buff[];//buffers

extern int TimeFrame = 0;

extern int ADX_Period = 14;
extern int ADX_Level  = 20;
extern int DI_Period  = 21;
extern int applied_price = 0;

extern int sBarLevel  = 5;

extern bool _ADXstyleLine = false;
extern bool pADXstyleLine = false;
extern bool nADXstyleLine = true;

extern int MaxBarsToCount = 1500;

extern string note_sBarLevel = "sBarLevel:1-77(bar position)";
extern string note_ADXstyle =  " ADXstyle: Line/Dot";
extern string note_TimeFrames = "M1;5,15,30,60H1;240H4;1440D1;10080W1;43200MN";


//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int init()
  {
//---- indicators
     SetIndexBuffer(0,PADX_buff); 
     SetIndexStyle (0,DRAW_ARROW);
     SetIndexArrow (0,167);//110
     SetIndexEmptyValue (0,EMPTY_VALUE);

     SetIndexBuffer(1,NADX_buff);
     SetIndexStyle (1,DRAW_ARROW);
     SetIndexArrow (1,167);
     SetIndexEmptyValue (1,EMPTY_VALUE);
  

 if    (_ADXstyleLine)   SetIndexStyle(2,DRAW_LINE);
 else  {SetIndexStyle (2,DRAW_ARROW);
        SetIndexArrow (2,158);
        SetIndexEmptyValue (2,EMPTY_VALUE);}
        SetIndexBuffer(2,ADX_buff);

 if     (pADXstyleLine)   SetIndexStyle(3,DRAW_LINE);
 else   { SetIndexStyle (3,DRAW_ARROW);
          SetIndexArrow (3,158);
          SetIndexEmptyValue (3,EMPTY_VALUE);}
          SetIndexBuffer(3,ADX_Up);

 if     (nADXstyleLine)  SetIndexStyle(4,DRAW_LINE);
 else   {SetIndexStyle (4,DRAW_ARROW); 
         SetIndexArrow (4,158);
         SetIndexEmptyValue (4,EMPTY_VALUE);}
         SetIndexBuffer(4,ADX_Dn);



   switch(TimeFrame)
   {
      case 1 : string TimeFrameStr="M1"; break;
      case 5 : TimeFrameStr="M5";    break;
      case 15 : TimeFrameStr="M15"; break;
      case 30 : TimeFrameStr="M30"; break;
      case 60 : TimeFrameStr="H1";  break;
      case 240 : TimeFrameStr="H4"; break;
      case 1440 : TimeFrameStr="D1";  break;
      case 10080 : TimeFrameStr="W1"; break;
      case 43200 : TimeFrameStr="MN"; break;
      default : TimeFrameStr="TF0";
   } 
   TimeFrame = MathMax(TimeFrame, Period()); 
   
   IndicatorShortName("ADX("+ADX_Period+")+-DI("+DI_Period+") Filter sBar["+TimeFrameStr+"]");
   
   SetIndexLabel(0,"posDI ["+TimeFrame+"]Up");
   SetIndexLabel(1,"negDI ["+TimeFrame+"]Down");
   SetIndexLabel(2,"ADX ["+TimeFrame+"] Level < "+ADX_Level+"");
   SetIndexLabel(3,"ADX ["+TimeFrame+"] Up");
   SetIndexLabel(4,"ADX ["+TimeFrame+"] Down");
   
   SetIndexDrawBegin(0,2);
   SetIndexDrawBegin(1,2);
   SetIndexDrawBegin(2,2);
   SetIndexDrawBegin(3,2);      
   SetIndexDrawBegin(4,2);
      
   return(0);
  }

//+---
int deinit()
  {
   return(0);
  }
//+-------


int start()
  {
  
   int i,y,limit;
   datetime TimeArray[];
   ArrayCopySeries(TimeArray,MODE_TIME,Symbol(),TimeFrame); 
   
   int counted_bars=IndicatorCounted();
   if(counted_bars<0) return(-1);
   if(counted_bars>0) counted_bars--;
   
   limit=Bars-counted_bars;
   limit = MathMax (limit,TimeFrame/Period());
   limit = MathMin (limit,MaxBarsToCount);



   for(i =0, y=0; i<limit; i++)
   {
  
     if (Time[i]<TimeArray[y]) y++;  

 
  double      ADX =iADX(NULL,TimeFrame,ADX_Period,applied_price,0,y);
  double      ADX1=iADX(NULL,TimeFrame,ADX_Period,applied_price,0,y+1);

  double      PADX=iADX(NULL,TimeFrame,DI_Period,applied_price,1,y);
  double      NADX=iADX(NULL,TimeFrame,DI_Period,applied_price,2,y);


      if(ADX >ADX1) 
         {
         ADX_Up[i] = sBarLevel;  
         ADX_Dn[i] = EMPTY_VALUE;
         }
      else
         {
         ADX_Up[i] = EMPTY_VALUE;
         ADX_Dn[i] = sBarLevel; 
         }
         
        if(ADX  < ADX_Level)  ADX_buff[i]= sBarLevel+5;
        if(PADX > NADX)       PADX_buff[i]=sBarLevel+2;
        if(PADX < NADX)       NADX_buff[i]=sBarLevel+2;
      
   }

   return(0);
  }
  
//+-------------------------------------------------------------