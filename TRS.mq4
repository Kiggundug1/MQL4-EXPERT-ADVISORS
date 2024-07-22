//+------------------------------------------------------------------+
//|                                                 Infocator_v4.mq4 |
//|                                                      Tudor Ceban |
//|                                 http://www.forexmastermethod.com |
//+------------------------------------------------------------------+
#property copyright "Tudor Ceban"
#property link      "http://www.forexmastermethod.com"

#property indicator_chart_window

extern color TextColor = Red;
extern int Corner = 0;
extern int YPosition = 50;
string sText = "";
string sName;
double MyPoint;
int iDivider = 1;


//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int init()
  {
   if (Point == 0.00001) MyPoint = 0.0001;
    else if (Point == 0.001) MyPoint = 0.01;
      else MyPoint = Point;
   
   iDivider = MyPoint / Point;
   
   for (int i = 0; i < 2; i++) 
   {
      sName = "TRS" + i;
      if (ObjectFind(sName) < 0) 
      {
         ObjectCreate(sName, OBJ_LABEL, 0, 0, 0);
         ObjectSet(sName, OBJPROP_XDISTANCE, 10);
         ObjectSet(sName, OBJPROP_YDISTANCE, YPosition + 17 * i);
         ObjectSet(sName, OBJPROP_CORNER, Corner);
      }
   }         
   
   return(0);
  }
//+------------------------------------------------------------------+
//| Custom indicator deinitialization function                       |
//+------------------------------------------------------------------+
int deinit()
  {
   for (int i = 0; i < 4; i++) 
   {
      sName = "TRS" + i;
      ObjectDelete(sName);
   }
   return(0);
  }
//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int start()
  {
   
   sText = "";
   int iSecconds = Time[0] + 60 * Period() - TimeCurrent();
   int iMinutes = (iSecconds - iSecconds % 60) / 60;
   if (iMinutes > 0) sText = iMinutes + " MIN " + (iSecconds % 60) + " Sec left to candle close";
   else sText = (iSecconds % 60) + " Sec left to candle close";
   ObjectSetText("TRS0", sText, 9, "Lucida Console", TextColor);
   sText = "Spread: " + DoubleToStr(MarketInfo(Symbol(), MODE_SPREAD) / iDivider, 1) + " pips";
   ObjectSetText("TRS1", sText, 9, "Lucida Console", TextColor);
   
   return(0);
  }
//+------------------------------------------------------------------+