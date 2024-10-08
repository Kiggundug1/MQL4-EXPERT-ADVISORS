//+------------------------------------------------------------------+
//|                                                       Spread.mq4 |
//|                                  Copyright � 2009, Andriy Moraru |
//+------------------------------------------------------------------+
#property copyright "Copyright � 2009, Andriy Moraru"
#property link      "http://www.earnforex.com"

#property indicator_chart_window

extern color font_color = Black;
extern int font_size = 8;
extern string font_face = "Arial Bold";
extern int corner = 2; //0 - for top-left corner, 1 - top-right, 2 - bottom-left, 3 - bottom-right
extern int spread_distance_x = 4;
extern int spread_distance_y = 2;
extern bool normalize = false; //If true then the spread is normalized to traditional pips

double Poin;
int n_digits = 0;
double divider = 1;

//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int init()
{
   //Checking for unconvetional Point digits number
   if (Point == 0.00001) Poin = 0.0001; //5 digits
   else if (Point == 0.001) Poin = 0.01; //3 digits
   else Poin = Point; //Normal
   
   ObjectCreate("Spread", OBJ_LABEL, 0, 0, 0);
   ObjectSet("Spread", OBJPROP_CORNER, corner);
   ObjectSet("Spread", OBJPROP_XDISTANCE, spread_distance_x);
   ObjectSet("Spread", OBJPROP_YDISTANCE, spread_distance_y);
   double spread = MarketInfo(Symbol(), MODE_SPREAD);
   
   if ((Poin > Point) && (normalize))
   {
      divider = 10.0;
      n_digits = 1;
   }
   
   ObjectSetText("Spread", "Spread: " + DoubleToStr(NormalizeDouble(spread / divider, 1), n_digits) + " points.", font_size, font_face, font_color);

   return(0);
}

//+------------------------------------------------------------------+
//| Custom indicator deinitialization function                       |
//+------------------------------------------------------------------+
int deinit()
{
   ObjectDelete("Spread");
   return(0);
}

//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int start()
{
   RefreshRates();
   
   double spread = (Ask - Bid) / Point;
   ObjectSetText("Spread", "Spread: " + DoubleToStr(NormalizeDouble(spread / divider, 1), n_digits) + " points.", font_size, font_face, font_color);
    
   return(0);
}
//+------------------------------------------------------------------+