//+------------------------------------------------------------------+
//|                                                    sFractals.mq4 |
//|                      Copyright © 2005, MetaQuotes Software Corp. |
//|                                        http://www.metaquotes.net |
//+------------------------------------------------------------------+
#property copyright "Copyright © 2005, MetaQuotes Software Corp."
#property link      "http://www.metaquotes.net"
//----
#property indicator_chart_window
#property indicator_buffers 2
#property indicator_color1 Red
#property indicator_color2 Blue
//---- buffers
double ExtUpFractalsBuffer[];
double ExtDownFractalsBuffer[];
// Номер бара, по которому будет искаться сигнал
#define SIGNAL_BAR 2
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int init()
  {
//---- indicator buffers mapping  
    SetIndexBuffer(0, ExtUpFractalsBuffer);
    SetIndexBuffer(1, ExtDownFractalsBuffer);   
//---- drawing settings
    SetIndexStyle(0, DRAW_ARROW);
    SetIndexArrow(0, 119);
    SetIndexStyle(1, DRAW_ARROW);
    SetIndexArrow(1, 119);
//----
    SetIndexEmptyValue(0, 0.0);
    SetIndexEmptyValue(1, 0.0);
//---- name for DataWindow
    SetIndexLabel(0, "sFractal Up");
    SetIndexLabel(1, "sFractal Down");
//---- initialization done   
   return(0);
  }
//+------------------------------------------------------------------+
//| Custor indicator deinitialization function                       |
//+------------------------------------------------------------------+
int deinit()
  {
//----
   return(0);
  }
//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int start()
  {
   int    i, nCountedBars;
   bool   bFound;
   double dCurrent;
   nCountedBars = IndicatorCounted();
//---- last counted bar will be recounted    
   if(nCountedBars <= 2)
       i = Bars - nCountedBars - 3;
   if(nCountedBars > 2)
     {
       nCountedBars--;
       i = Bars - nCountedBars - 1;
     }
//----Up and Down Fractals
   while(i >= 2)
     {
       //----Fractals up
       bFound = false;
       dCurrent = High[i];
       if(dCurrent > High[i+1] && dCurrent > High[i+2] && dCurrent > High[i-1] && 
          dCurrent > High[i-2])
         {
           bFound = true;
           ExtUpFractalsBuffer[i] = dCurrent;
         }
       //----6 bars Fractal
       if(!bFound && (Bars - i - 1) >= 3)
         {
           if(dCurrent == High[i+1] && dCurrent > High[i+2] && dCurrent > High[i+3] &&
              dCurrent > High[i-1] && dCurrent > High[i-2])
             {
               bFound = true;
               ExtUpFractalsBuffer[i] = dCurrent;
             }
         }         
       //----7 bars Fractal
       if(!bFound && (Bars - i - 1) >= 4)
         {   
           if(dCurrent >= High[i+1] && dCurrent == High[i+2] && dCurrent > High[i+3] && 
              dCurrent > High[i+4] && dCurrent > High[i-1] && dCurrent > High[i-2])
             {
               bFound = true;
               ExtUpFractalsBuffer[i] = dCurrent;
             }
         }  
       //----8 bars Fractal                          
       if(!bFound && (Bars - i - 1) >= 5)
         {   
           if(dCurrent >= High[i+1] && dCurrent == High[i+2] && dCurrent == High[i+3] && 
              dCurrent > High[i+4] && dCurrent > High[i+5] && dCurrent > High[i-1] && 
              dCurrent > High[i-2])
             {
               bFound = true;
               ExtUpFractalsBuffer[i] = dCurrent;
             }
         } 
       //----9 bars Fractal                                        
       if(!bFound && (Bars - i - 1) >= 6)
         {   
           if(dCurrent >= High[i+1] && dCurrent == High[i+2] && dCurrent >= High[i+3] && 
              dCurrent == High[i+4] && dCurrent > High[i+5] && dCurrent > High[i+6] && 
              dCurrent > High[i-1] && dCurrent > High[i-2])
             {
               bFound = true;
               ExtUpFractalsBuffer[i] = dCurrent;
             }
         }                                    
       //----Fractals down
       bFound = false;
       dCurrent = Low[i];
       if(dCurrent < Low[i+1] && dCurrent < Low[i+2] && dCurrent < Low[i-1] && 
          dCurrent < Low[i-2])
         {
           bFound = true;
           ExtDownFractalsBuffer[i] = dCurrent;
         }
       //----6 bars Fractal
       if(!bFound && (Bars - i - 1) >= 3)
         {
           if(dCurrent == Low[i+1] && dCurrent < Low[i+2] && dCurrent < Low[i+3] &&
              dCurrent < Low[i-1] && dCurrent < Low[i-2])
             {
               bFound = true;
               ExtDownFractalsBuffer[i] = dCurrent;
             }                      
         }         
       //----7 bars Fractal
       if(!bFound && (Bars - i - 1) >= 4)
         {   
           if(dCurrent <= Low[i+1] && dCurrent == Low[i+2] && dCurrent < Low[i+3] && 
              dCurrent < Low[i+4] &&
              dCurrent < Low[i-1] && dCurrent < Low[i-2])
             {
               bFound = true;
               ExtDownFractalsBuffer[i] = dCurrent;
             }                      
         }  
       //----8 bars Fractal                          
       if(!bFound && (Bars - i - 1) >= 5)
         {   
           if(dCurrent <= Low[i+1] && dCurrent == Low[i+2] && dCurrent==Low[i+3] && 
              dCurrent < Low[i+4] && dCurrent < Low[i+5] && dCurrent < Low[i-1] && 
              dCurrent < Low[i-2])
             {
               bFound = true;
               ExtDownFractalsBuffer[i] = dCurrent;
             }                      
         } 
       //----9 bars Fractal                                        
       if(!bFound && (Bars - i- 1) >= 6)
         {   
           if(dCurrent <= Low[i+1] && dCurrent == Low[i+2] && dCurrent <= Low[i+3] && 
              dCurrent == Low[i+4] && dCurrent < Low[i+5] && dCurrent < Low[i+6] && 
              dCurrent < Low[i-1] && dCurrent < Low[i-2])
             {
               bFound = true;
               ExtDownFractalsBuffer[i] = dCurrent;
             }                      
         }                                    
       i--;
     }
// Статические переменные, в которых хранятся время последнего бара и направление 
// последнего сигнала
	  static int PrevSignal = 0, PrevTime = 0;
// Если баром для анализа выбран не 0-й, нам нет смысла проверять сигнал несколько раз. 
// Если не начался новый бар, выходим.
	  if(SIGNAL_BAR > 0 && Time[0] <= PrevTime) 
	      return(0);
// Отмечаем, что этот бар проверен
	  PrevTime = Time[0];
// Если предыдущий сигнал был СЕЛЛ или это первый запуск (PrevSignal=0)
	  if(PrevSignal <= 0)
	    {
		     if(ExtDownFractalsBuffer[SIGNAL_BAR] > 0)
		       {
			        PrevSignal = 1;
			        Alert("sFractals (", Symbol(), ", ", Period(), ")  -  BUY!!!");
		       }
	    }
	  if(PrevSignal >= 0)
	    {
		     if(ExtUpFractalsBuffer[SIGNAL_BAR] > 0)
		       {
			        PrevSignal = -1;
			        Alert("sFractals (", Symbol(), ", ", Period(), ")  -  SELL!!!");
		       }
	    }
//----
   return(0);
  }
//+------------------------------------------------------------------+