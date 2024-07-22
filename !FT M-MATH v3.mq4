
// +----------------------------------------------------------------------------------------+ //
// |                                        !FT M-MATH v3  \¦/                              | //
// |                            Knowledge of the ancients (ò ó)                             | //
// |_________________________________________________o0o___(_)___o0o________________________| //
// |_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|____|_____| //
// |                                                                                   2011 | //
// |----------------------------------------------------------------------------------------| //
// | Programming language:     MQL4                                                         | //
// | Development platform:     MetaTrader 4                                                 | //
// |          End product:     Indicator for MetaTrader 4 designed                          | //
// |                           for Build 229 (current version)                              | //
// +----------------------------------------------------------------------------------------+ //

#property indicator_chart_window
//+------------------------------------------------------------------+ 
extern color midcol = Blue;

double s1[];
extern int P = 512;
extern int FW = 512;
extern int StepBack = 0;

extern bool   show.timeleft=false;
extern bool   show.symbol.price=false;
extern int win = 0;
extern int Adjust_Side_to_side = 10;
extern int Shift_UP_DN = 0;

extern bool   showcomments=true;
//+------------------------------------------------------------------+
extern bool       bml.25.lines=false;
extern color      bml.25.color=DarkSlateGray;
extern int        bml.25.style=0;
//+------
extern bool       bml.33.lines=true;
extern color      bml.33.color=DarkSlateGray;
extern int        bml.33.style=0;
//+------
extern bool       bml.50.lines=false;
extern color      bml.50.color=DarkSlateGray;
extern int        bml.50.style=1;
//+------------------------------------------------------------------+ 
extern bool color.frame=false;
color MM1Color = C'0,6,60';   //C'0,90,90';
color MM2Color = C'100,5,60'; //C'90,0,90';
color MM3Color = C'0,6,60';   //C'0,30,90';
//+------------------------------------------------------------------+
#define FF1 "FF1"
#define FF2 "FF2"
#define FF3 "FF3"
#define FF4 "FF4"
#define FF5 "FF5"
//+------------------------------------------------------------------+ 
int l996 = 0;
int l1004 = 0;
 

double  bml.25[26], bml.33[26], bml.50[12];
double  dmml = 0,
        dvtl = 0,
        sum  = 0,
        v1 = 0,
        v2 = 0,
        mn = 0,
        mx = 0,
        x1 = 0,
        x2 = 0,
        x3 = 0,
        x4 = 0,
        x5 = 0,
        x6 = 0,
        y1 = 0,
        y2 = 0,
        y3 = 0,
        y4 = 0,
        y5 = 0,
        y6 = 0,
        octave = 0,
        fractal = 0,
        range   = 0,
        finalH  = 0,
        finalL  = 0,
        DecNos,
        mml[13];
        

            
//+------------------------------------------------------------------+ 
string  ln_txt[13], ln_tx[13],       
        buff_str = "", buff_str2 = "", buff_str3 = "", buff_str4 = "";
//+------------------------------------------------------------------+         
int bn_v1=0, bn_v2=0, OctLinesCnt=13, mml_thk=8, mml_clr[13], mml_shft=3, nTime=0, CurPeriod=0, x33 = 0, x25 = 0, x50 = 0,
    nDigits=0, frametemp=0, i=0, gb=0, gb.T=0, mP=0, lperiod=0, d=0,ts=0, mml_wdth[13],
    bml.33.Cnt = 26, bml.25.Cnt = 38, bml.50.Cnt = 12;
//+------------------------------------------------------------------+
int init() {
//---- indicators
   ln_txt[0]  = "[-2/8]  ";
   ln_txt[1]  = "[-1/8]  ";
   ln_txt[2]  = "[0/8]  ";
   ln_txt[3]  = "[1/8]  ";
   ln_txt[4]  = "[2/8]  ";
   ln_txt[5]  = "[3/8]  ";
   ln_txt[6]  = "[4/8]  ";
   ln_txt[7]  = "[5/8]  ";
   ln_txt[8]  = "[6/8]  ";
   ln_txt[9]  = "[7/8]  ";
   ln_txt[10] = "[8/8]  ";
   ln_txt[11] = "[+1/8]  ";
   ln_txt[12] = "[+2/8]  ";
//+------------------------------------------------------------------+    
   mml_wdth[0] = 2;
   mml_wdth[1] = 1;
   mml_wdth[2] = 3;
   mml_wdth[3] = 1;
   mml_wdth[4] = 2;
   mml_wdth[5] = 1;
   mml_wdth[6] = 3;
   mml_wdth[7] = 1;
   mml_wdth[8] = 2;
   mml_wdth[9] = 1;
   mml_wdth[10] = 3;
   mml_wdth[11] = 1;
   mml_wdth[12] = 2;
//+------------------------------------------------------------------+   
   ln_tx[0]  = "";
   ln_tx[1]  = "";
   ln_tx[2]  = "";
   ln_tx[3]  = "";
   ln_tx[4]  = "";
   ln_tx[5]  = "";
   ln_tx[6]  = "";
   ln_tx[7]  = "";
   ln_tx[8]  = "";
   ln_tx[9]  = "";
   ln_tx[10] = "";
   ln_tx[11] = "";
   ln_tx[12] = "";
//+------------------------------------------------------------------+ 
   mml_shft = 0;//original was 3
   mml_thk  = 3;
//+------------------------------------------------------------------+  
   mml_clr[0]  = Red;//Maroon;    // [-2]/8
   mml_clr[1]  = Orange;//C'60,60,60';  // [-1]/8
   mml_clr[2]  = Blue;//Red;        //  [0]/8
   mml_clr[3]  = Yellow;//C'60,60,60';      //  [1]/8
   mml_clr[4]  = HotPink;//DarkGreen;         //  [2]/8
   mml_clr[5]  = Lime;//C'60,60,60';   //  [3]/8
   mml_clr[6]  = midcol;//Lavender;        //  [4]/8
   mml_clr[7]  = Lime;//C'60,60,60';   //  [5]/8
   mml_clr[8]  = HotPink;//DarkGreen;         //  [6]/8
   mml_clr[9]  = Yellow;//C'60,60,60';      //  [7]/8
   mml_clr[10] = Blue;//Red;        //  [8]/8
   mml_clr[11] = Orange;//C'60,60,60';//DarkViolet;  // [+1]/8
   mml_clr[12] = Red;//Maroon;//LightSlateGray;    // [+2]/8
//+------------------------------------------------------------------+ 
  bn_v1 = Lowest(NULL,0,MODE_LOW,0);
  bn_v2 = Highest(NULL,0,MODE_HIGH,0);

  v1 = Low[bn_v1];
  v2 = High[bn_v2];

   return(0);
  }
//+------------------------------------------------------------------+
int deinit() {
//---- TODO: add your code here
Comment(" ");   
//+------------------------------------------------------------------+ 
for(i=0;i<OctLinesCnt;i++) {
    buff_str = "mml"+i;
    ObjectDelete(buff_str);
    buff_str = "mml_txt"+i;
    ObjectDelete(buff_str);
    }
    //---- Screen Background
   ObjectDelete(FF1);
   ObjectDelete(FF2);
   ObjectDelete(FF3);
   ObjectDelete(FF4);
   ObjectDelete(FF5);
   
   
   
   for(x25=0;x25<bml.25.Cnt;x25++) {
    buff_str3 = "bml.25"+x25;
    ObjectDelete(buff_str3);   
    }
  
   for(x33=0;x33<bml.33.Cnt;x33++) {
    buff_str2 = "bml.33"+x33;
    ObjectDelete(buff_str2);   
    }
    
  for(x50=0;x50<bml.50.Cnt;x50++) {
    buff_str4 = "bml.50"+x50;
    ObjectDelete(buff_str4);   
    }  
//----      
   ObjectsDeleteAll(0,OBJ_TREND);
   ObjectsDeleteAll(0,OBJ_TEXT); 
   ObjectsDeleteAll(0,OBJ_LABEL);
   ObjectsDeleteAll(2,OBJ_LABEL);
   ObjectsDeleteAll(win,OBJ_LABEL);
   ObjectsDeleteAll(0,OBJ_VLINE);
    
   return(0);
}
//+------------------------------------------------------------------+   
int start(){

   if (StringFind (Symbol(), "JPY", 0) != -1){ DecNos = 2;}
   else { DecNos = 4; } 

double r;
   int m,s,k;
   m=Time[0]+Period()*60-CurTime();
   r=m/60.0;
   s=m%60;
   m=(m-m%60)/60;

if (show.timeleft) {
   ObjectDelete("xard1");
   ObjectCreate("xard1", OBJ_LABEL, win, 0, 0);
   ObjectSetText("xard1",m+":"+s , 14, "MV Boli", Silver);
   ObjectSet("xard1", OBJPROP_CORNER, 1);
   ObjectSet("xard1", OBJPROP_XDISTANCE, Adjust_Side_to_side + 135);
   ObjectSet("xard1", OBJPROP_YDISTANCE, Shift_UP_DN +  20);
}   
if (show.symbol.price) {   
/*   ObjectCreate("Xdb", OBJ_LABEL, win, 0, 0);
        ObjectSetText("Xdb",Symbol(),14, "MV Boli", Yellow);
        ObjectSet("Xdb", OBJPROP_CORNER, 1);
        ObjectSet("Xdb", OBJPROP_XDISTANCE, Adjust_Side_to_side + 130);
        ObjectSet("Xdb", OBJPROP_YDISTANCE, Shift_UP_DN + 0);*/  
 
   ObjectDelete("v2");
   ObjectCreate("v2", OBJ_LABEL, win, 0, 0);
   ObjectSetText("v2",DoubleToStr(v2,Digits) , 14, "MV Boli", Blue);
   ObjectSet("v2", OBJPROP_CORNER, 1);
   ObjectSet("v2", OBJPROP_XDISTANCE, Adjust_Side_to_side + 130);
   ObjectSet("v2", OBJPROP_YDISTANCE, Shift_UP_DN + 0);
 
   ObjectDelete("v1");
   ObjectCreate("v1", OBJ_LABEL, win, 0, 0);
   ObjectSetText("v1",DoubleToStr(v1,Digits) , 14, "MV Boli", Crimson);
   ObjectSet("v1", OBJPROP_CORNER, 1);
   ObjectSet("v1", OBJPROP_XDISTANCE, Adjust_Side_to_side + 130);
   ObjectSet("v1", OBJPROP_YDISTANCE, Shift_UP_DN + 20);
        
   ObjectDelete("xard2");
   ObjectCreate("xard2", OBJ_LABEL, win, 0, 0);
   ObjectSetText("xard2",DoubleToStr(Bid,Digits) , 25, "MV Boli", Yellow);
   ObjectSet("xard2", OBJPROP_CORNER, 1);
   ObjectSet("xard2", OBJPROP_XDISTANCE, Adjust_Side_to_side + 0);
   ObjectSet("xard2", OBJPROP_YDISTANCE, Shift_UP_DN + 0);
}
  /* ObjectDelete("xard4");
   ObjectCreate("xard4", OBJ_LABEL, 2, 0, 0);
   ObjectSetText("xard4","Final Draft rev5.3 ", 14, "MV Boli", SteelBlue);
   ObjectSet("xard4", OBJPROP_CORNER, 3);
   ObjectSet("xard4", OBJPROP_XDISTANCE, Adjust_Side_to_side -7);
   ObjectSet("xard4", OBJPROP_YDISTANCE, 18);

   ObjectDelete("xard5a");
   ObjectCreate("xard5a", OBJ_LABEL, 2, 0, 0);
   ObjectSetText("xard5a","Bringing Order to Chaos", 11, "MV Boli", SlateBlue);
   ObjectSet("xard5a", OBJPROP_CORNER, 3);
   ObjectSet("xard5a", OBJPROP_XDISTANCE, Adjust_Side_to_side +0);
   ObjectSet("xard5a", OBJPROP_YDISTANCE, 4);*/
    
//+------------------------------------------------------------------+ 
   CreateMM();
}
void CreateObj(string objName, double start, double end, color clr)
   {
   ObjectCreate(objName, OBJ_RECTANGLE, 0, Time[0+FW], start, Time[0], end);
   ObjectSet(objName, OBJPROP_COLOR, clr);
   }
   void DeleteObjects()
   {
   ObjectDelete(FF1);
   ObjectDelete(FF2);
   ObjectDelete(FF3);
   ObjectDelete(FF4);
   ObjectDelete(FF5);
   }
   
   void CreateMM()
   {
   DeleteObjects();
  
//+------------------------------------------------------------------+    
  
   bn_v1 = Lowest(NULL,0,MODE_LOW,P+StepBack,0);
   bn_v2 = Highest(NULL,0,MODE_HIGH,P+StepBack,0); // changes when price exceeds hi/low

   v1 = Low[bn_v1];
   v2 = High[bn_v2];
//+------------------------------------------------------------------+    
//determine fractal.....
   if( v2<=250000 && v2>25000 )
   fractal=100000;
   else
     if( v2<=25000 && v2>2500 )
     fractal=10000;
     else
       if( v2<=2500 && v2>250 )
       fractal=1000;
       else
         if( v2<=250 && v2>25 )
         fractal=100;
         else
           if( v2<=25 && v2>12.5 )
           fractal=12.5;
           else
             if( v2<=12.5 && v2>6.25)
             fractal=12.5;
             else
               if( v2<=6.25 && v2>3.125 )
               fractal=6.25;
               else
                 if( v2<=3.125 && v2>1.5625 )
                 fractal=3.125;
                 else
                   if( v2<=1.5625 && v2>0.390625 )
                   fractal=1.5625;
                   else
                     if( v2<=0.390625 && v2>0)
                     fractal=0.1953125;
//+------------------------------------------------------------------+       
   range=(v2-v1);
   sum=MathFloor(MathLog(fractal/range)/MathLog(2));
   octave=fractal*(MathPow(0.5,sum));
   mn=MathFloor(v1/octave)*octave;
   if( (mn+octave)>v2 )
   mx=mn+octave; 
   else
     mx=mn+(2*octave);
//+------------------------------------------------------------------+ 
// calculating xx
//x2
    if( (v1>=(3*(mx-mn)/16+mn)) && (v2<=(9*(mx-mn)/16+mn)) )
    x2=mn+(mx-mn)/2; 
    else x2=0;
//x1
    if( (v1>=(mn-(mx-mn)/8))&& (v2<=(5*(mx-mn)/8+mn)) && (x2==0) )
    x1=mn+(mx-mn)/2; 
    else x1=0;

//x4
    if( (v1>=(mn+7*(mx-mn)/16))&& (v2<=(13*(mx-mn)/16+mn)) )
    x4=mn+3*(mx-mn)/4; 
    else x4=0;

//x5
    if( (v1>=(mn+3*(mx-mn)/8))&& (v2<=(9*(mx-mn)/8+mn))&& (x4==0) )
    x5=mx; 
    else  x5=0;

//x3
    if( (v1>=(mn+(mx-mn)/8))&& (v2<=(7*(mx-mn)/8+mn))&& (x1==0) && (x2==0) && (x4==0) && (x5==0) )
    x3=mn+3*(mx-mn)/4; 
    else x3=0;

//x6
    if( (x1+x2+x3+x4+x5) ==0 )
    x6=mx; 
    else x6=0;

     finalH = x1+x2+x3+x4+x5+x6;
// calculating yy
//y1
    if( x1>0 )
    y1=mn; 
    else y1=0;

//y2
    if( x2>0 )
    y2=mn+(mx-mn)/4; 
    else y2=0;

//y3
    if( x3>0 )
    y3=mn+(mx-mn)/4; 
    else y3=0;

//y4
    if( x4>0 )
    y4=mn+(mx-mn)/2; 
    else y4=0;

//y5
    if( x5>0 )
    y5=mn+(mx-mn)/2; 
    else y5=0;

//y6
    if( (finalH>0) && ((y1+y2+y3+y4+y5)==0) )
    y6=mn; 
    else y6=0;

    finalL = y1+y2+y3+y4+y5+y6;
//+------------------------------------------------------------------+ 
double xo = (finalH-finalL);
double xmm = xo/8;
//+------------------------------------------------------------------+ 
    for( i=0; i<OctLinesCnt; i++) {
         mml[i] = 0;
         }
         
   dmml = (finalH-finalL)/8;

   mml[0] =(finalL-dmml*2); //-2/8
   for( i=1; i<OctLinesCnt; i++) {
        mml[i] = mml[i-1] + dmml;
        }
   for( i=0; i<OctLinesCnt; i++ ){
        buff_str = "mml"+i;
        
        
//calculating baby lines
bml.25[0] = mml[0]-((mml[1]-mml[0])/4);
bml.25[1] = ((mml[1]-mml[0])/4)+mml[0];
bml.25[2] = ((mml[1]-mml[0])/4)*3+mml[0];
bml.25[3] = ((mml[2]-mml[1])/4)+mml[1];
bml.25[4] = ((mml[2]-mml[1])/4)*3+mml[1];
bml.25[5] = ((mml[3]-mml[2])/4)+mml[2];
bml.25[6] = ((mml[3]-mml[2])/4)*3+mml[2];
bml.25[7] = ((mml[4]-mml[3])/4)+mml[3];
bml.25[8] = ((mml[4]-mml[3])/4)*3+mml[3];
bml.25[9] = ((mml[5]-mml[4])/4)+mml[4];
bml.25[10] = ((mml[5]-mml[4])/4)*3+mml[4];
bml.25[11] = ((mml[6]-mml[5])/4)+mml[5];
bml.25[12] = ((mml[6]-mml[5])/4)*3+mml[5];
bml.25[13] = ((mml[7]-mml[6])/4)+mml[6];
bml.25[14] = ((mml[7]-mml[6])/4)*3+mml[6];
bml.25[15] = ((mml[8]-mml[7])/4)+mml[7];
bml.25[16] = ((mml[8]-mml[7])/4)*3+mml[7];
bml.25[17] = ((mml[9]-mml[8])/4)+mml[8];
bml.25[18] = ((mml[9]-mml[8])/4)*3+mml[8];
bml.25[19] = ((mml[10]-mml[9])/4)+mml[9];
bml.25[20] = ((mml[10]-mml[9])/4)*3+mml[9];
bml.25[21] = ((mml[11]-mml[10])/4)+mml[10];
bml.25[22] = ((mml[11]-mml[10])/4)*3+mml[10];
bml.25[23] = ((mml[12]-mml[11])/4)+mml[11];
bml.25[24] = ((mml[12]-mml[11])/4)*3+mml[11];
bml.25[25] = ((mml[12]-mml[11])/4)+mml[12];
//+-----  
bml.33[0] = mml[0]-((mml[1]-mml[0])/3);
bml.33[1] = ((mml[1]-mml[0])/3)+mml[0];
bml.33[2] = ((mml[1]-mml[0])/3)*2+mml[0];
bml.33[3] = ((mml[2]-mml[1])/3)+mml[1];
bml.33[4] = ((mml[2]-mml[1])/3)*2+mml[1];
bml.33[5] = ((mml[3]-mml[2])/3)+mml[2];
bml.33[6] = ((mml[3]-mml[2])/3)*2+mml[2];
bml.33[7] = ((mml[4]-mml[3])/3)+mml[3];
bml.33[8] = ((mml[4]-mml[3])/3)*2+mml[3];
bml.33[9] = ((mml[5]-mml[4])/3)+mml[4];
bml.33[10] = ((mml[5]-mml[4])/3)*2+mml[4];
bml.33[11] = ((mml[6]-mml[5])/3)+mml[5];
bml.33[12] = ((mml[6]-mml[5])/3)*2+mml[5];
bml.33[13] = ((mml[7]-mml[6])/3)+mml[6];
bml.33[14] = ((mml[7]-mml[6])/3)*2+mml[6];
bml.33[15] = ((mml[8]-mml[7])/3)+mml[7];
bml.33[16] = ((mml[8]-mml[7])/3)*2+mml[7];
bml.33[17] = ((mml[9]-mml[8])/3)+mml[8];
bml.33[18] = ((mml[9]-mml[8])/3)*2+mml[8];
bml.33[19] = ((mml[10]-mml[9])/3)+mml[9];
bml.33[20] = ((mml[10]-mml[9])/3)*2+mml[9];
bml.33[21] = ((mml[11]-mml[10])/3)+mml[10];
bml.33[22] = ((mml[11]-mml[10])/3)*2+mml[10];
bml.33[23] = ((mml[12]-mml[11])/3)+mml[11];
bml.33[24] = ((mml[12]-mml[11])/3)*2+mml[11];
bml.33[25] = ((mml[12]-mml[11])/3)+mml[12];
//-----  
bml.50[0] = ((mml[1]-mml[0])/2)+mml[0];
bml.50[1] = ((mml[2]-mml[1])/2)+mml[1];   
bml.50[2] = ((mml[3]-mml[2])/2)+mml[2];
bml.50[3] = ((mml[4]-mml[3])/2)+mml[3];
bml.50[4] = ((mml[5]-mml[4])/2)+mml[4];
bml.50[5] = ((mml[6]-mml[5])/2)+mml[5];
bml.50[6] = ((mml[7]-mml[6])/2)+mml[6];
bml.50[7] = ((mml[8]-mml[7])/2)+mml[7];
bml.50[8] = ((mml[9]-mml[8])/2)+mml[8];
bml.50[9] = ((mml[10]-mml[9])/2)+mml[9];
bml.50[10] = ((mml[11]-mml[10])/2)+mml[10];
bml.50[11] = ((mml[12]-mml[11])/2)+mml[11];
// End of pre-run with MML array values complete         
//+------------------------------------------------------------------+         
        ObjectDelete(buff_str);
        ObjectCreate(buff_str, OBJ_TREND, 0, Time[0], mml[i], Time[0+FW], mml[i]);
        ObjectSet(buff_str, OBJPROP_STYLE, STYLE_SOLID);
        ObjectSet(buff_str, OBJPROP_WIDTH, mml_wdth[i]);
        ObjectSet(buff_str, OBJPROP_COLOR, mml_clr[i]);
        ObjectSet(buff_str, OBJPROP_BACK, 1);
        ObjectSet(buff_str, OBJPROP_RAY, 0);
        ObjectMove(buff_str, 0, Time[0],  mml[i]);
//+------------------------------------------------------------------+              
        buff_str = "mml_txt"+i;
        ObjectDelete(buff_str);
        ObjectCreate(buff_str, OBJ_TEXT, 0, Time[mml_shft], mml_shft);
        ObjectSetText(buff_str, ln_txt[i]+DoubleToStr(mml[i],DecNos)+ln_tx[i], 12, "MV Boli", mml_clr[i]);
        ObjectSet(buff_str, OBJPROP_BACK, 1);
        ObjectMove(buff_str, 0, Time[mml_shft+25],  mml[i]);
   }
   
if (bml.25.lines) {
        for( x25=0; x25<bml.25.Cnt; x25++ ){
        buff_str3 = "bml.25"+x25;
        ObjectDelete(buff_str3);
        ObjectCreate(buff_str3, OBJ_TREND, 0, Time[0], bml.25[x25], Time[0+FW], bml.25[x25]);
        ObjectSet(buff_str3, OBJPROP_STYLE, bml.25.style);
        ObjectSet(buff_str3, OBJPROP_WIDTH, 0);
        ObjectSet(buff_str3, OBJPROP_COLOR, bml.25.color);
        ObjectSet(buff_str3, OBJPROP_BACK, 1);
        ObjectSet(buff_str3, OBJPROP_RAY, 0);
        ObjectMove(buff_str3, 0, Time[0],  bml.25[x25]);       
       }
   }       
   
if (bml.50.lines) {
        for( x50=0; x50<bml.50.Cnt; x50++ ){
        buff_str4 = "bml.50"+x50;
        ObjectDelete(buff_str4);
        ObjectCreate(buff_str4, OBJ_TREND, 0, Time[0], bml.50[x50], Time[0+FW], bml.50[x50]);
        ObjectSet(buff_str4, OBJPROP_STYLE, bml.50.style);
        ObjectSet(buff_str4, OBJPROP_WIDTH, 0);
        ObjectSet(buff_str4, OBJPROP_COLOR, bml.50.color);
        ObjectSet(buff_str4, OBJPROP_BACK, 1);
        ObjectSet(buff_str4, OBJPROP_RAY, 0);
        ObjectMove(buff_str4, 0, Time[0],  bml.50[x50]);       
       }
   }  
   
if (bml.33.lines) {
        for( x33=0; x33<bml.33.Cnt; x33++ ){
        buff_str2 = "bml.33"+x33;
        ObjectDelete(buff_str2);
        ObjectCreate(buff_str2, OBJ_TREND, 0, Time[0], bml.33[x33], Time[0+FW], bml.33[x33]);
        ObjectSet(buff_str2, OBJPROP_STYLE, bml.33.style);
        ObjectSet(buff_str2, OBJPROP_WIDTH, 0);
        ObjectSet(buff_str2, OBJPROP_COLOR, bml.33.color);
        ObjectSet(buff_str2, OBJPROP_BACK, 1);
        ObjectSet(buff_str2, OBJPROP_RAY, 0);
        ObjectMove(buff_str2, 0, Time[0],  bml.33[x33]);       
       }
   }        
 //+------------------------------------------------------------------+ 
 double plus.franka = mml[10]+((mml[10]-mml[2])*1/3);
 double t66.franka = mml[2]+((mml[10]-mml[2])*2/3);
 double t33.franka = mml[2]+((mml[10]-mml[2])*1/3);
 double minus.franka = mml[2]-((mml[10]-mml[2])*1/3); 
 //+------------------------------------------------------------------+ 
 ObjectDelete("pf");
        ObjectCreate("pf", OBJ_TREND, 0, Time[0], plus.franka, Time[0+FW], plus.franka);
        ObjectSet("pf", OBJPROP_STYLE, STYLE_DASHDOTDOT);
        ObjectSet("pf", OBJPROP_COLOR, OrangeRed);
        ObjectSet("pf", OBJPROP_BACK, 1);
        ObjectSet("pf", OBJPROP_RAY, 0);
        ObjectMove("pf", 0, Time[0],  plus.franka);
        
ObjectDelete("pft");
        ObjectCreate("pft", OBJ_TEXT, 0, Time[mml_shft], mml_shft);
        ObjectSetText("pft","["+"+1/3rd Frame Shift"+"]  "+DoubleToStr(plus.franka,Digits), 9, "MV Boli", OrangeRed);
        ObjectSet("pft", OBJPROP_BACK, 1);
        ObjectMove("pft", 0, Time[mml_shft+25],  plus.franka);        
//+------------------------------------------------------------------+  
ObjectDelete("mf");
        ObjectCreate("mf", OBJ_TREND, 0, Time[0], minus.franka, Time[0+FW], minus.franka);
        ObjectSet("mf", OBJPROP_STYLE, STYLE_DASHDOTDOT);
        ObjectSet("mf", OBJPROP_COLOR, OrangeRed);
        ObjectSet("mf", OBJPROP_BACK, 1);
        ObjectSet("mf", OBJPROP_RAY, 0);
        ObjectMove("mf", 0, Time[0],  minus.franka);
        
ObjectDelete("mft");
        ObjectCreate("mft", OBJ_TEXT, 0, Time[mml_shft], mml_shft);
        ObjectSetText("mft","["+"-1/3rd Frame Shift"+"]  "+DoubleToStr(minus.franka,Digits), 9, "MV Boli", OrangeRed);
        ObjectSet("mft", OBJPROP_BACK, 1);
        ObjectMove("mft", 0, Time[mml_shft+25],  minus.franka);         
//+------------------------------------------------------------------+  
/*ObjectDelete("t66");
        ObjectCreate("t66", OBJ_TREND, 0, Time[0], t66.franka, Time[0+FW], t66.franka);
        ObjectSet("t66", OBJPROP_STYLE, STYLE_DASHDOTDOT);
        ObjectSet("t66", OBJPROP_COLOR, OrangeRed);
        ObjectSet("t66", OBJPROP_BACK, 1);
        ObjectSet("t66", OBJPROP_RAY, 0);
        ObjectMove("t66", 0, Time[0],  t66.franka);
//+------------------------------------------------------------------+  
ObjectDelete("t33");
        ObjectCreate("t33", OBJ_TREND, 0, Time[0], t33.franka, Time[0+FW], t33.franka);
        ObjectSet("t33", OBJPROP_STYLE, STYLE_DASHDOTDOT);
        ObjectSet("t33", OBJPROP_COLOR, OrangeRed);
        ObjectSet("t33", OBJPROP_BACK, 1);
        ObjectSet("t33", OBJPROP_RAY, 0);
        ObjectMove("t33", 0, Time[0],  t33.franka);*/
//+------------------------------------------------------------------+  
if (color.frame) {  
CreateObj(FF1, mml[5], mml[7], MM1Color);
CreateObj(FF2, mml[0], mml[2], MM2Color);
CreateObj(FF3, mml[10],mml[12], MM2Color);
CreateObj(FF4, mml[7], mml[10], MM3Color);
CreateObj(FF5, mml[2], mml[5], MM3Color); 
} 
//+------------------------------------------------------------------+  
//+------------------------------------------------------------------+   
 if (showcomments) {
   Comment("Fractal: ",fractal,"   Octave: ",xo,"   Frame: ",fractal/xo,"   1/8: ",xmm);
 }

 
  return(0);
}

