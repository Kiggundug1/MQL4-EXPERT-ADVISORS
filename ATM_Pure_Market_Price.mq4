//+------------------------------------------------------------------+
//| Magnified Market PriceV2.mq4        ver1.4             by Habeeb   |
//|  Modified David M. Edwards to shrink final digit
//|  Best used with font sizes near the default.      01/21/09
//+------------------------------------------------------------------+

#property indicator_chart_window

  extern string note1 = "Change font colors automatically? True = Yes";
  extern bool   Bid_Ask_Colors = False;
  extern string note2 = "Default Font Color";
  extern color  FontColor = Black;
  extern string note3 = "Font Size";
  extern int    FontSize=26;
  extern string note4 = "Font Type";
  extern string FontType="Arial Bold";
  extern string note5 = "Display the price in what corner?";
  extern string note6 = "Upper left=0; Upper right=1";
  extern string note7 = "Lower left=2; Lower right=3";
  extern int    WhatCorner=3;
  extern int LastDigitDiff = 10;
  

  double        Old_Price;

int init()
  {
   return(0);
  }

int deinit()
  {
  ObjectDelete("Market_Price_LabelA"); 
  ObjectDelete("Market_Price_LabelB"); 
  return(0);
  }

int start()
  {
   int DigitOffset = FontSize - 8;
   string BidA, BidB, Base_Price, Market_Price; 
   if (Bid_Ask_Colors == True)
   {
    if (Bid > Old_Price) FontColor = LawnGreen;
    if (Bid < Old_Price) FontColor = Red;
    Old_Price = Bid;
   }
   
   Base_Price = DoubleToStr(Bid, Digits);   // Full base as string
   int SLength = StringLen(Base_Price);
   
   
   BidA = StringSubstr(Base_Price, 0, SLength-1);
   BidB = StringSubstr(Base_Price, SLength-1, 1);
   
   ObjectCreate("Market_Price_LabelA", OBJ_LABEL, 0, 0, 0);
   ObjectSetText("Market_Price_LabelA", BidA, FontSize, FontType, FontColor);
   ObjectSet("Market_Price_LabelA", OBJPROP_CORNER, WhatCorner);
   ObjectSet("Market_Price_LabelA", OBJPROP_XDISTANCE, DigitOffset);
   ObjectSet("Market_Price_LabelA", OBJPROP_YDISTANCE, 1);
   
   ObjectCreate("Market_Price_LabelB", OBJ_LABEL, 0, 0, 0);
   ObjectSetText("Market_Price_LabelB", BidB, FontSize-LastDigitDiff, FontType, FontColor);
   ObjectSet("Market_Price_LabelB", OBJPROP_CORNER, WhatCorner);
   ObjectSet("Market_Price_LabelB", OBJPROP_XDISTANCE, 1);
   ObjectSet("Market_Price_LabelB", OBJPROP_YDISTANCE, 1);
   
  }