//+------------------------------------------------------------------+
//|                                         TREND_alexcud v_2MEn.mq4 |
//|                             Copyright © 2007, Aleksander Kudimov |
//|                                           alexcud@rambler.ru  ki |
//+------------------------------------------------------------------+
#property copyright "Copyright © 2007, Aleksander Kudimov"
#property link      "alexcud@rambler.ru"

#property indicator_separate_window

#property indicator_minimum 0
#property indicator_maximum 1

#property indicator_buffers 2
#property indicator_color1 Lime
#property indicator_color2 Red

//---- buffers
double UPBuffer[];
double DOWNBuffer[];
extern int TF1 = 15;
extern int TF2 = 60;
extern int TF3 = 240;
extern int maTrendPeriodv_1 = 5;
extern int maTrendPeriodv_2 = 8;
extern int maTrendPeriodv_3 = 13;
extern int maTrendPeriodv_4 = 21;
extern int maTrendPeriodv_5 = 34;
extern string  note__TimeFrames = "M1;5,15,30,60H1;240H4;1440D1;10080W1;43200MN|0-CurrentTF";



//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
double MaH11v,  MaH41v, MaD11v, MaH1pr1v, MaH4pr1v, MaD1pr1v;
double MaH12v,  MaH42v, MaD12v, MaH1pr2v, MaH4pr2v, MaD1pr2v;
double MaH13v,  MaH43v, MaD13v, MaH1pr3v, MaH4pr3v, MaD1pr3v;
double MaH14v,  MaH44v, MaD14v, MaH1pr4v, MaH4pr4v, MaD1pr4v;
double MaH15v,  MaH45v, MaD15v, MaH1pr5v, MaH4pr5v, MaD1pr5v;


 string H11v, H41v, D11v;
 string H12v, H42v, D12v;
 string H13v, H43v, D13v;
 string H14v, H44v, D14v;
 string H15v, H45v, D15v;
 color co11v , co41v , co61v;
 color co12v , co42v , co62v;
 color co13v , co43v , co63v;
 color co14v , co44v , co64v;
 color co15v , co45v , co65v;
 
double u1x5v, u1x8v, u1x13v, u1x21v, u1x34v;
double u2x5v, u2x8v, u2x13v, u2x21v, u2x34v;
double u3x5v, u3x8v, u3x13v, u3x21v, u3x34v;
double u1acv, u2acv, u3acv;

double d1x5v, d1x8v, d1x13v, d1x21v, d1x34v;
double d2x5v, d2x8v, d2x13v, d2x21v, d2x34v;
double d3x5v, d3x8v, d3x13v, d3x21v, d3x34v;
double d1acv, d2acv, d3acv;

 string short_name="TREND_alex";   
int init()
  {

//---- name for indicator window

   string short_name="TREND_alex";
   IndicatorShortName(short_name);

   SetIndexBuffer(0,UPBuffer);
   SetIndexBuffer(1,DOWNBuffer);

   

//----
   return(0);
  }
  
//+------------------------------------------------------------------+
//| Custom indicator deinitialization function                       |
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
   ObjectCreate("MAv", OBJ_LABEL, WindowFind(short_name), 0, 0);
   ObjectSetText("MAv", "Moving Averages",9, "Verdana", Lime );
   ObjectSet("MAv", OBJPROP_XDISTANCE, 75);  
   ObjectSet("MAv", OBJPROP_YDISTANCE, 0);
    
   ObjectCreate("label_object1v", OBJ_LABEL, WindowFind(short_name), 0, 0);
   ObjectSet("label_object1v", OBJPROP_XDISTANCE, 5);  
   ObjectSet("label_object1v", OBJPROP_YDISTANCE, 17);
   
   ObjectCreate("label_object2v", OBJ_LABEL, WindowFind(short_name), 0, 0); 
   ObjectSet("label_object2v", OBJPROP_XDISTANCE, 5);  
   ObjectSet("label_object2v", OBJPROP_YDISTANCE, 37);
   
   ObjectCreate("label_object3v", OBJ_LABEL, WindowFind(short_name), 0, 0); 
   ObjectSet("label_object3v", OBJPROP_XDISTANCE, 5);  
   ObjectSet("label_object3v", OBJPROP_YDISTANCE, 57);
 // ----------------------------------------------------------------------------
   ObjectCreate("H11v", OBJ_LABEL, WindowFind(short_name), 0, 0); 
   ObjectSet("H11v", OBJPROP_XDISTANCE, 40);  
   ObjectSet("H11v", OBJPROP_YDISTANCE, 15);
   
   ObjectCreate("H12v", OBJ_LABEL, WindowFind(short_name), 0, 0); 
   ObjectSet("H12v", OBJPROP_XDISTANCE, 70);  
   ObjectSet("H12v", OBJPROP_YDISTANCE, 15);
   
   ObjectCreate("H13v", OBJ_LABEL, WindowFind(short_name), 0, 0); 
   ObjectSet("H13v", OBJPROP_XDISTANCE, 100);  
   ObjectSet("H13v", OBJPROP_YDISTANCE, 15); 
   
   ObjectCreate("H14v", OBJ_LABEL, WindowFind(short_name), 0, 0); 
   ObjectSet("H14v", OBJPROP_XDISTANCE, 130);  
   ObjectSet("H14v", OBJPROP_YDISTANCE, 15); 
   
   ObjectCreate("H15v", OBJ_LABEL, WindowFind(short_name), 0, 0); 
   ObjectSet("H15v", OBJPROP_XDISTANCE, 160);  
   ObjectSet("H15v", OBJPROP_YDISTANCE, 15);    
  //--------------------------------------------------------------------------- 
   ObjectCreate("H41v", OBJ_LABEL, WindowFind(short_name), 0, 0); 
   ObjectSet("H41v", OBJPROP_XDISTANCE, 40);  
   ObjectSet("H41v", OBJPROP_YDISTANCE, 35);
   
   ObjectCreate("H42v", OBJ_LABEL, WindowFind(short_name), 0, 0); 
   ObjectSet("H42v", OBJPROP_XDISTANCE, 70);  
   ObjectSet("H42v", OBJPROP_YDISTANCE, 35);
   
   ObjectCreate("H43v", OBJ_LABEL, WindowFind(short_name), 0, 0); 
   ObjectSet("H43v", OBJPROP_XDISTANCE, 100);  
   ObjectSet("H43v", OBJPROP_YDISTANCE, 35); 
  
   ObjectCreate("H44v", OBJ_LABEL, WindowFind(short_name), 0, 0); 
   ObjectSet("H44v", OBJPROP_XDISTANCE, 130);  
   ObjectSet("H44v", OBJPROP_YDISTANCE, 35);
   
   ObjectCreate("H45v", OBJ_LABEL, WindowFind(short_name), 0, 0); 
   ObjectSet("H45v", OBJPROP_XDISTANCE, 160);  
   ObjectSet("H45v", OBJPROP_YDISTANCE, 35);
  //--------------------------------------------------------------------------- 
   ObjectCreate("D11v", OBJ_LABEL, WindowFind(short_name), 0, 0); 
   ObjectSet("D11v", OBJPROP_XDISTANCE, 40);  
   ObjectSet("D11v", OBJPROP_YDISTANCE, 55);
   
   ObjectCreate("D12v", OBJ_LABEL, WindowFind(short_name), 0, 0); 
   ObjectSet("D12v", OBJPROP_XDISTANCE, 70);  
   ObjectSet("D12v", OBJPROP_YDISTANCE, 55);
   
   ObjectCreate("D13v", OBJ_LABEL, WindowFind(short_name), 0, 0); 
   ObjectSet("D13v", OBJPROP_XDISTANCE, 100);  
   ObjectSet("D13v", OBJPROP_YDISTANCE, 55);  
   
   ObjectCreate("D14v", OBJ_LABEL, WindowFind(short_name), 0, 0); 
   ObjectSet("D14v", OBJPROP_XDISTANCE, 130);  
   ObjectSet("D14v", OBJPROP_YDISTANCE, 55);
   
   ObjectCreate("D15v", OBJ_LABEL, WindowFind(short_name), 0, 0); 
   ObjectSet("D15v", OBJPROP_XDISTANCE, 160);  
   ObjectSet("D15v", OBJPROP_YDISTANCE, 55); 
     
     MaH11v=iMA(NULL,TF1,maTrendPeriodv_1,0,MODE_SMA,PRICE_CLOSE,0);   MaH1pr1v=iMA(NULL,TF1,maTrendPeriodv_1,0,MODE_SMA,PRICE_CLOSE,1);
     MaH12v=iMA(NULL,TF1,maTrendPeriodv_2,0,MODE_SMA,PRICE_CLOSE,0);   MaH1pr2v=iMA(NULL,TF1,maTrendPeriodv_2,0,MODE_SMA,PRICE_CLOSE,1);
     MaH13v=iMA(NULL,TF1,maTrendPeriodv_3,0,MODE_SMA,PRICE_CLOSE,0);   MaH1pr3v=iMA(NULL,TF1,maTrendPeriodv_3,0,MODE_SMA,PRICE_CLOSE,1);
     MaH14v=iMA(NULL,TF1,maTrendPeriodv_4,0,MODE_SMA,PRICE_CLOSE,0);   MaH1pr4v=iMA(NULL,TF1,maTrendPeriodv_4,0,MODE_SMA,PRICE_CLOSE,1);
     MaH15v=iMA(NULL,TF1,maTrendPeriodv_5,0,MODE_SMA,PRICE_CLOSE,0);   MaH1pr5v=iMA(NULL,TF1,maTrendPeriodv_5,0,MODE_SMA,PRICE_CLOSE,1);
    
     MaH41v=iMA(NULL,TF2,maTrendPeriodv_1,0,MODE_SMA,PRICE_CLOSE,0);  MaH4pr1v=iMA(NULL,TF2,maTrendPeriodv_1,0,MODE_SMA,PRICE_CLOSE,1);
     MaH42v=iMA(NULL,TF2,maTrendPeriodv_2,0,MODE_SMA,PRICE_CLOSE,0);   MaH4pr2v=iMA(NULL,TF2,maTrendPeriodv_2,0,MODE_SMA,PRICE_CLOSE,1);
     MaH43v=iMA(NULL,TF2,maTrendPeriodv_3,0,MODE_SMA,PRICE_CLOSE,0);   MaH4pr3v=iMA(NULL,TF2,maTrendPeriodv_3,0,MODE_SMA,PRICE_CLOSE,1);
     MaH44v=iMA(NULL,TF2,maTrendPeriodv_4,0,MODE_SMA,PRICE_CLOSE,0);   MaH4pr4v=iMA(NULL,TF2,maTrendPeriodv_4,0,MODE_SMA,PRICE_CLOSE,1);
     MaH45v=iMA(NULL,TF2,maTrendPeriodv_5,0,MODE_SMA,PRICE_CLOSE,0);   MaH4pr5v=iMA(NULL,TF2,maTrendPeriodv_5,0,MODE_SMA,PRICE_CLOSE,1);
     
     MaD11v=iMA(NULL,TF3,maTrendPeriodv_1,0,MODE_SMA,PRICE_CLOSE,0);   MaD1pr1v=iMA(NULL,TF3,maTrendPeriodv_1,0,MODE_SMA,PRICE_CLOSE,1);
     MaD12v=iMA(NULL,TF3,maTrendPeriodv_2,0,MODE_SMA,PRICE_CLOSE,0);   MaD1pr2v=iMA(NULL,TF3,maTrendPeriodv_2,0,MODE_SMA,PRICE_CLOSE,1);
     MaD13v=iMA(NULL,TF3,maTrendPeriodv_3,0,MODE_SMA,PRICE_CLOSE,0);   MaD1pr3v=iMA(NULL,TF3,maTrendPeriodv_3,0,MODE_SMA,PRICE_CLOSE,1);
     MaD14v=iMA(NULL,TF3,maTrendPeriodv_4,0,MODE_SMA,PRICE_CLOSE,0);   MaD1pr4v=iMA(NULL,TF3,maTrendPeriodv_4,0,MODE_SMA,PRICE_CLOSE,1);
     MaD15v=iMA(NULL,TF3,maTrendPeriodv_5,0,MODE_SMA,PRICE_CLOSE,0);   MaD1pr5v=iMA(NULL,TF3,maTrendPeriodv_5,0,MODE_SMA,PRICE_CLOSE,1);
     
   //  MaH4=iMA(NULL,PERIOD_M30,34,0,MODE_SMA,PRICE_CLOSE,0);
     if (MaH11v < MaH1pr1v){H11v = " V ";   co11v = Red;   u1x5v = 0; d1x5v = 1;}
     if (MaH11v > MaH1pr1v){H11v = " /\\ "; co11v = Blue;  u1x5v = 1; d1x5v = 0;} 
     if (MaH11v == MaH1pr1v){H11v = " 0 "; co11v = Green;  u1x5v = 0; d1x5v = 0;}           
     if (MaH41v < MaH4pr1v){H41v = " V "; co41v = Red;     u2x5v = 0; d2x5v = 1;}            
     if (MaH41v > MaH4pr1v){H41v = " /\\ "; co41v = Blue;  u2x5v = 1; d2x5v = 0;}
     if (MaH41v == MaH4pr1v){H41v = " 0 "; co41v = Green;  u2x5v = 0; d2x5v = 0;}            
     if (MaD11v < MaD1pr1v){D11v = " V "; co61v = Red;     u3x5v = 0; d3x5v = 1;}            
     if (MaD11v > MaD1pr1v){D11v = " /\\ "; co61v = Blue;  u3x5v = 1; d3x5v = 0;}
     if (MaD11v == MaD1pr1v){D11v = " 0 "; co61v = Green;  u3x5v = 0; d3x5v = 0;}  
     
     if (MaH12v < MaH1pr2v){H12v = " V "; co12v = Red;     u1x8v = 0; d1x8v = 1;}
     if (MaH12v > MaH1pr2v){H12v = " /\\ "; co12v = Blue;  u1x8v = 1; d1x8v = 0;}
     if (MaH12v == MaH1pr2v){H12v = " 0 "; co12v = Green;  u1x8v = 0; d1x8v = 0;}            
     if (MaH42v < MaH4pr2v){H42v = " V "; co42v = Red;     u2x8v = 0; d2x8v = 1;}            
     if (MaH42v > MaH4pr2v){H42v = " /\\ "; co42v = Blue;   u2x8v = 1; d2x8v = 0;} 
     if (MaH42v == MaH4pr2v){H42v = " 0 "; co42v = Green;   u2x8v = 0; d2x8v = 0;}           
     if (MaD12v < MaD1pr2v){D12v = " V "; co62v = Red;      u3x8v = 0; d3x8v = 1;}             
     if (MaD12v > MaD1pr2v){D12v = " /\\ "; co62v = Blue;   u3x8v = 1; d3x8v = 0;}
     if (MaD12v == MaD1pr2v){D12v = " 0 "; co62v = Green;   u3x8v = 0; d3x8v = 0;} 
     
     if (MaH13v < MaH1pr3v){H13v = " V "; co13v = Red;    u1x13v = 0; d1x13v = 1;}
     if (MaH13v > MaH1pr3v){H13v = " /\\ "; co13v = Blue; u1x13v = 1; d1x13v = 0;}
     if (MaH13v ==MaH1pr3v){H13v = " 0 "; co13v = Green;  u1x13v = 0; d1x13v = 0;}              
     if (MaH43v < MaH4pr3v){H43v = " V "; co43v = Red; u2x13v = 0; d2x13v = 1;}            
     if (MaH43v > MaH4pr3v){H43v = " /\\ "; co43v = Blue; u2x13v = 1; d2x13v = 0;}
     if (MaH43v ==MaH4pr3v){H43v = " 0 "; co43v = Green;  u2x13v = 0; d2x13v = 0;}            
     if (MaD13v < MaD1pr3v){D13v = " V "; co63v = Red; u3x13v = 0; d3x13v = 1;}            
     if (MaD13v > MaD1pr3v){D13v = " /\\ "; co63v = Blue; u3x13v = 1; d3x13v = 0;}
     if (MaD13v ==MaD1pr3v){D13v = " 0 "; co63v = Green;  u3x13v = 0; d3x13v = 0;}
     
     if (MaH14v < MaH1pr4v){H14v = " V "; co14v = Red;    u1x21v = 0; d1x21v = 1;}
     if (MaH14v > MaH1pr4v){H14v = " /\\ "; co14v = Blue; u1x21v = 1; d1x21v = 0;}
     if (MaH14v == MaH1pr4v){H14v = " 0 "; co14v = Green; u1x21v = 0; d1x21v = 0;}              
     if (MaH44v < MaH4pr4v){H44v = " V "; co44v = Red; u2x21v = 0; d2x21v = 1;}            
     if (MaH44v > MaH4pr4v){H44v = " /\\ "; co44v = Blue; u2x21v = 1; d2x21v = 0;}
     if (MaH44v == MaH4pr4v){H44v = " 0 "; co44v = Green; u2x21v = 0; d2x21v = 0;}            
     if (MaD14v < MaD1pr4v){D14v = " V "; co64v = Red; u3x21v = 0; d3x21v = 1;}            
     if (MaD14v > MaD1pr4v){D14v = " /\\ "; co64v = Blue; u3x21v = 1; d3x21v = 0;} 
     if (MaD14v == MaD1pr4v){D14v = " 0 "; co64v = Green; u3x21v = 0; d3x21v = 0;}  
     
     if (MaH15v < MaH1pr5v){H15v = " V "; co15v = Red;    u1x34v = 0; d1x34v = 1;}
     if (MaH15v > MaH1pr5v){H15v = " /\\ "; co15v = Blue; u1x34v = 1; d1x34v = 0;} 
     if (MaH15v == MaH1pr5v){H15v = " 0 "; co15v = Green; u1x34v = 0; d1x34v = 0;}             
     if (MaH45v < MaH4pr5v){H45v = " V "; co45v = Red;    u2x34v = 0; d2x34v = 1;}            
     if (MaH45v > MaH4pr5v){H45v = " /\\ "; co45v = Blue; u2x34v = 1; d2x34v = 0;}
     if (MaH45v == MaH4pr5v){H45v = " 0 "; co45v = Green; u2x34v = 0; d2x34v = 0;}            
     if (MaD15v < MaD1pr5v){D15v = " V "; co65v = Red;    u3x34v = 0; d3x34v = 1;}            
     if (MaD15v > MaD1pr5v){D15v = " /\\ "; co65v = Blue; u3x34v = 1; d3x34v = 0;}
     if (MaD15v == MaD1pr5v){D15v = " 0 "; co65v = Green; u3x34v = 0; d3x34v = 0;}                      
             
    // Comment(";JGF:");
     //        "\n", "H4 - ", H41 , 
     //        "\n", "D1 - ", D11   );   

             ObjectSetText("label_object1v", "M"+TF1+": ",9, "Verdana", Lime );
             ObjectSetText("label_object2v", "M"+TF2+": ",9, "Verdana", Lime );
             ObjectSetText("label_object3v", "M"+TF3+": ",9, "Verdana", Lime );
            
 
 
//             ObjectSetText("label_object1v", "TF1 - ",11, "Verdana", Lime );
//             ObjectSetText("label_object2v", "TF2 - ",11, "Verdana", Lime );
//             ObjectSetText("label_object3v", "TF3 - ",11, "Verdana", Lime );
             
             ObjectSetText("H11v", H11v ,11, "Verdana", co11v );
             ObjectSetText("H12v", H12v ,11, "Verdana", co12v );
             ObjectSetText("H13v", H13v ,11, "Verdana", co13v );
             ObjectSetText("H14v", H14v ,11, "Verdana", co14v );
             ObjectSetText("H15v", H15v ,11, "Verdana", co15v );
             
             ObjectSetText("H41v", H41v ,11, "Verdana", co41v );
             ObjectSetText("H42v", H42v ,11, "Verdana", co42v );
             ObjectSetText("H43v", H43v ,11, "Verdana", co43v );
             ObjectSetText("H44v", H44v ,11, "Verdana", co44v );
             ObjectSetText("H45v", H45v ,11, "Verdana", co45v );
             
             ObjectSetText("D11v", D11v ,11, "Verdana", co61v );
             ObjectSetText("D12v", D12v ,11, "Verdana", co62v );
             ObjectSetText("D13v", D13v ,11, "Verdana", co63v );
             ObjectSetText("D14v", D14v ,11, "Verdana", co64v );
             ObjectSetText("D15v", D15v ,11, "Verdana", co65v ); 
             
//----------------------------------------------------------------------------
// AC Bil Vil
ObjectCreate("ACv", OBJ_LABEL, WindowFind(short_name), 0, 0);
ObjectSetText("ACv", "AC",9, "Verdana", Lime );
ObjectSet("ACv", OBJPROP_XDISTANCE, 200);  
ObjectSet("ACv", OBJPROP_YDISTANCE, 0);

double  acv  = iAC(NULL, TF1, 0);
double  ac1v = iAC(NULL, TF1, 1);
double  ac2v = iAC(NULL, TF1, 2);
double  ac3v = iAC(NULL, TF1, 3);
//double  ac4 = iAO(NULL, 0, 4);             
string ach11v;
color acco11v;

if ((ac1v>ac2v && ac2v>ac3v && acv<0 && acv>ac1v) || (acv>ac1v && ac1v>ac2v && acv>0)) 
{ach11v = "/\\ " ; acco11v = Blue; u1acv = 3; d1acv = 0;} 
if ((ac1v<ac2v && ac2v<ac3v && acv>0 && acv<ac1v) || (acv<ac1v && ac1v<ac2v && acv<0)) 
{ach11v = "V " ; acco11v = Red; u1acv = 0; d1acv = 3;}
if ((((ac1v<ac2v || ac2v<ac3v) && acv<0 && acv>ac1v) || (acv>ac1v && ac1v<ac2v && acv>0))||
(((ac1v>ac2v || ac2v>ac3v) && acv>0 && acv<ac1v) || (acv<ac1v && ac1v>ac2v && acv<0)))
{ach11v = "0 " ; acco11v = Green; u1acv = 0; d1acv = 0;}    

ObjectCreate("AC11v", OBJ_LABEL, WindowFind(short_name), 0, 0);
ObjectSetText("AC11v", ach11v,11, "Verdana", acco11v );
ObjectSet("AC11v", OBJPROP_XDISTANCE, 200);  
ObjectSet("AC11v", OBJPROP_YDISTANCE, 15);  
  
double  ac03v  = iAC(NULL, TF3, 0);
double  ac13v = iAC(NULL, TF3, 1);
double  ac23v = iAC(NULL, TF3, 2);
double  ac33v = iAC(NULL, TF3, 3);
//double  ac4 = iAO(NULL, 0, 4);             
string ach13v;
color acco13v;

if ((ac13v>ac23v && ac23v>ac33v && ac03v<0 && ac03v>ac13v) || (ac03v>ac13v && ac13v>ac23v && ac03v>0)) 
{ach13v = "/\\ " ; acco13v = Blue; u3acv = 3; d3acv = 0;}     
if ((ac13v<ac23v && ac23v<ac33v && ac03v>0 && ac03v<ac13v) || (ac03v<ac13v && ac13v<ac23v && ac03v<0)) 
{ach13v = "V " ; acco13v = Red; u3acv = 0; d3acv = 3;}     
if ((((ac13v<ac23v || ac23v<ac33v) && ac03v<0 && ac03v>ac13v) || (ac03v>ac13v && ac13v<ac23v && ac03v>0))||
(((ac13v>ac23v || ac23v>ac33v) && ac03v>0 && ac03v<ac13v) || (ac03v<ac13v && ac13v>ac23v && ac03v<0)))
{ach13v = "0 " ; acco13v = Green; u3acv = 0; d3acv = 0;}
ObjectCreate("AC13v", OBJ_LABEL, WindowFind(short_name), 0, 0);
ObjectSetText("AC13v", ach13v,11, "Verdana", acco13v );
ObjectSet("AC13v", OBJPROP_XDISTANCE, 200);  
ObjectSet("AC13v", OBJPROP_YDISTANCE, 55);  

double  ac02v = iAC(NULL, TF2, 0);
double  ac12v = iAC(NULL, TF2, 1);
double  ac22v = iAC(NULL, TF2, 2);
double  ac32v = iAC(NULL, TF2, 3);
//double  ac4 = iAO(NULL, 0, 4);             
string ach12v;
color acco12v;

if ((ac12v>ac22v && ac22v>ac32v && ac02v<0 && ac02v>ac12v) || (ac02v>ac12v && ac12v>ac22v && ac02v>0)) 
{ach12v = "/\\ " ; acco12v = Blue; u2acv = 3; d2acv = 0;}     
if ((ac12v<ac22v && ac22v<ac32v && ac02v>0 && ac02v<ac12v) || (ac02v<ac12v && ac12v<ac22v && ac02v<0)) 
{ach12v = "V " ; acco12v = Red; u2acv = 0; d2acv = 3;}     
if ((((ac12v<ac22v || ac22v<ac32v) && ac02v<0 && ac02v>ac12v) || (ac02v>ac12v && ac12v<ac22v && ac02v>0))||
(((ac12v>ac22v || ac22v>ac32v) && ac02v>0 && ac02v<ac12v) || (ac02v<ac12v && ac12v>ac22v && ac02v<0)))
{ach12v = "0 " ; acco12v = Green; u2acv = 0; d2acv = 0;}
ObjectCreate("AC12v", OBJ_LABEL, WindowFind(short_name), 0, 0);
ObjectSetText("AC12v", ach12v,11, "Verdana", acco12v );
ObjectSet("AC12v", OBJPROP_XDISTANCE, 200);  
ObjectSet("AC12v", OBJPROP_YDISTANCE, 35);     
  
 
 
ObjectCreate("rezv", OBJ_LABEL, WindowFind(short_name), 0, 0);
ObjectSetText("rezv", "RESULTS",9, "Verdana", Lime );
ObjectSet("rezv", OBJPROP_XDISTANCE, 240);  
ObjectSet("rezv", OBJPROP_YDISTANCE, 0);
 
  
  double uitog1v = (u1x5v + u1x8v + u1x13v + u1x21v + u1x34v + u1acv) * 12.5;
  double uitog2v = (u2x5v + u2x8v + u2x13v + u2x21v + u2x34v + u2acv) * 12.5;
  double uitog3v = (u3x5v + u3x8v + u3x13v + u3x21v + u3x34v + u3acv) * 12.5;
  
  double ditog1v = (d1x5v + d1x8v + d1x13v + d1x21v + d1x34v + d1acv) * 12.5;
  double ditog2v = (d2x5v + d2x8v + d2x13v + d2x21v + d2x34v + d2acv) * 12.5;
  double ditog3v = (d3x5v + d3x8v + d3x13v + d3x21v + d3x34v + d3acv) * 12.5;
  
  string hr1v, hr2v, hr3v, hr4v, hr5v,hr6v;
  string dhr1v, dhr2v, dhr3v, dhr4v, dhr5v, dhr6v;
  if (uitog1v> ditog1v) {hr1v = "Arial Black"; dhr1v = "Arial";}
  if (uitog1v< ditog1v) {hr1v = "Arial"; dhr1v = "Arial Black";}
  if (uitog1v == ditog1v) {hr1v = "Arial"; dhr1v = "Arial";}
  
  if (uitog2v> ditog2v) {hr2v = "Arial Black"; dhr2v = "Arial";}
  if (uitog2v< ditog2v) {hr2v = "Arial"; dhr2v = "Arial Black";}
  if (uitog2v == ditog2v) {hr2v = "Arial"; dhr2v = "Arial";}
  
  if (uitog3v> ditog3v) {hr3v = "Arial Black"; dhr3v = "Arial";}
  if (uitog3v< ditog3v) {hr3v = "Arial"; dhr3v = "Arial Black";}
  if (uitog3v == ditog3v) {hr3v = "Arial"; dhr3v = "Arial";}
  
  ObjectCreate("uitog1v", OBJ_LABEL, WindowFind(short_name), 0, 0);
  ObjectSetText("uitog1v", StringConcatenate("/\\ ", uitog1v, "%"),12, hr1v, DodgerBlue );
  ObjectSet("uitog1v", OBJPROP_XDISTANCE, 235);  
  ObjectSet("uitog1v", OBJPROP_YDISTANCE, 15);
  
  ObjectCreate("uitog2v", OBJ_LABEL, WindowFind(short_name), 0, 0);
  ObjectSetText("uitog2v", StringConcatenate("/\\ ",uitog2v, "%"),12, hr2v, DodgerBlue );
  ObjectSet("uitog2v", OBJPROP_XDISTANCE, 235);  
  ObjectSet("uitog2v", OBJPROP_YDISTANCE, 35);
  
  ObjectCreate("uitog3v", OBJ_LABEL, WindowFind(short_name), 0, 0);
  ObjectSetText("uitog3v", StringConcatenate("/\\ ",uitog3v, "%"),12, hr3v, DodgerBlue );
  ObjectSet("uitog3v", OBJPROP_XDISTANCE, 235);  
  ObjectSet("uitog3v", OBJPROP_YDISTANCE, 55);
  
  ObjectCreate("ditog1v", OBJ_LABEL, WindowFind(short_name), 0, 0);
  ObjectSetText("ditog1v", StringConcatenate("\\/ ", ditog1v, "%"),12, dhr1v, Red );
  ObjectSet("ditog1v", OBJPROP_XDISTANCE, 310);  
  ObjectSet("ditog1v", OBJPROP_YDISTANCE, 15);
  
  ObjectCreate("ditog2v", OBJ_LABEL, WindowFind(short_name), 0, 0);
  ObjectSetText("ditog2v", StringConcatenate("\\/ ",ditog2v, "%"),12, dhr2v, Red );
  ObjectSet("ditog2v", OBJPROP_XDISTANCE, 310);  
  ObjectSet("ditog2v", OBJPROP_YDISTANCE, 35);
  
  ObjectCreate("ditog3v", OBJ_LABEL, WindowFind(short_name), 0, 0);
  ObjectSetText("ditog3v", StringConcatenate("\\/ ",ditog3v, "%"),12, dhr3v, Red );
  ObjectSet("ditog3v", OBJPROP_XDISTANCE, 310);  
  ObjectSet("ditog3v", OBJPROP_YDISTANCE, 55);
  
  
  string txtv;
  if (uitog1v > 50 && uitog2v > 50 && uitog3v > 50)
  
  {txtv = "Not bad moment to open position  BUY";}
  else
  {txtv = "Not recommended to open position. WAIT.";} 
  
  if (ditog1v > 50 && ditog2v > 50 && ditog3v > 50)
  {txtv = "Not bad moment to open position  SELL";}
  
  if (uitog1v >= 75 && uitog2v >= 75 && uitog3v >= 75)
  {txtv = "GOOD moment to open position  BUY";}
  if (ditog1v >= 75 && ditog2v >= 75 && ditog3v >= 75)
  {txtv = "GOOD moment to open position  SELL";}
  
  
  ObjectCreate("txtv", OBJ_LABEL, WindowFind(short_name), 0, 0);
  ObjectSetText("txtv", txtv,14, "Verdana", Lime );
  ObjectSet("txtv", OBJPROP_XDISTANCE, 410);  
  ObjectSet("txtv", OBJPROP_YDISTANCE, 35);
  
  ObjectCreate("txt2v", OBJ_LABEL, WindowFind(short_name), 0, 0);
  ObjectSetText("txt2v","multitimeframe indicator \TREND_ALEXCUD v2",7, "Verdana", DarkSlateGray );
  ObjectSet("txt2v", OBJPROP_XDISTANCE, 11);  
  ObjectSet("txt2v", OBJPROP_YDISTANCE, 80);
  ObjectCreate("txt3v", OBJ_LABEL, WindowFind(short_name), 0, 0);
  ObjectSetText("txt3v","Copyright © 2007 ALEXCUD v_2",7, "Verdana", DarkSlateGray );
  ObjectSet("txt3v", OBJPROP_XDISTANCE, 410);  
  ObjectSet("txt3v", OBJPROP_YDISTANCE, 80);
  
   return(0);
  }
//+------------------------------------------------------------------+