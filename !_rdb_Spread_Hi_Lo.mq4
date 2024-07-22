//+------------------------------------------------------------------+
//|                                           !_rdb_Spread_Hi_Lo.mq4 |
//|                                                    rahman_DGBeta |
//|                                        http://www.metaquotes.net |
//+------------------------------------------------------------------+
#property copyright "rahman_Dg_Beta"
#property link      "abdulrahman_maros@yahoo.com"

#property indicator_chart_window
#property  indicator_buffers 0

#include <stdlib.mqh>

//--------------------------------------------------------------------
// Jika anda seorang coder terhormat dan menghormati sesama coder, jangan hapus bagian ini !
extern string  CreatedBy         = "rahman_Dg_Beta_/_ServerUang"; 
//--------------------------------------------------------------------
 int MAFast_Period = 1; 
 int MAFast_Method = 0; 
 int MAFast_Apply_To = 0;
 int MAFast_Shift = 0;

 int MASlow_Period = 5; 
 int MASlow_Method = 0;
 int MASlow_Apply_To = 0;
 int MASlow_Shift = 0;

 bool    Show_Price                 = true;
 bool    Show_Buy_Sell              = false;

 int     Sebelah              = 1;  //0=Kiri_Atas, 1=Kanan_Atas
 bool    Right_Top                  = true;
extern int     Shift_Y              = -20; 
extern int     Shift_X              = 0; //default = 8
extern int     window               = 0;

 bool    Show_Background      = true;
 bool    Background_Kecil           = false;
 color   Background_S         = C'25,25,25';          //C'20,20,20';  LightSteelBlue
 bool    Show_Garis_Signals         = false;



// Untuk menentukan Warna Harga sesuai arah Trend
extern string Colors_Price  ="Colors for Price";
extern color Price_color_Up = DodgerBlue;
extern color Price_color_Dn = Brown;
extern color Price_color_Dn1= Gold;
extern color Price_color_Nt = Silver;
extern color Price_color_Hi = Silver;
extern color Price_color_Lo = Silver;

extern string Colors_Data   ="Colors for Data";
extern color Highest_Color  = DodgerBlue;
extern color Lowest_Color   = Brown;
extern color Warna_D1       = Gainsboro; 
extern color Warna_Av       = Gainsboro;
extern color SymbolColor    = Gainsboro;
extern color LineColor      = DimGray;

extern bool Show_Symbol     = true;

//--------------------------------------------------------------------
int Side = 1;
//extern int MP_Y = 0; 
//extern int MP_X = 0;
//--------------------------------------------------------------------

//--------------------------------------------------------------------
//===================================================================+
double vA, vB, vC, vX, vY, TFs,High_Lama, Low_Lama;
double TimeFrame, x, x1, y, z, a,  space,space1, baris, fontsize, cTF, cMC, cBB, cIC, cLS, cNR;
string text, fontname, Teks_Menit, Teks_Detik;

string UpSymbol="‡",  DnSymbol="ˆ", NtSymbol="n", SignalSymbol,MTF, Peringatan_RSI="", Peringatan_DM="";   //"ñ"

color SignalColor;

string Label_Teks="", Huruf="", Huruf1="", Huruf2="",Huruf3="", Teks="", Pesan="", nomor="";
double Nilai, y1, y2, y3, y4,d_A, d_B, TF, Range, bbP, bbMid, bbM, nilaiWarnaCandle,mylot,lot,balance1,margin,keuangan,Candle;
color  WarnaHarga, WarnaTrend, WarnaCandle;
int    Ukuran, Ukuran1, Ukuran2, Ukuran3,Ukuran4, n, Kolom;


// --- variabel Daili_Av --------------------------------------------
int    R1, R5, R10, R20, RAvg, i;
string Teks_ReRata = "", Teks_Rerata_Kemarin ="", Nomor="";


//+------------------------------------------------------------------+
//     expert initialization function                                |       
//+------------------------------------------------------------------+
int init()
  {
//----
   return(0);                                                               // end of init function
  }
//+------------------------------------------------------------------+
//     expert deinitialization function                              |       
//+------------------------------------------------------------------+
int deinit()
  {
//----
   ObjectsDeleteAll(0,OBJ_LABEL);
   Print("shutdown error - ",ErrorDescription(GetLastError()));            // system is detached from platform
//----
//----
     for(int i = ObjectsTotal() - 1; i >= 0; i--)
     {
       string label = ObjectName(i);
       if(StringSubstr(label, 0, 4) != "MP14")
           continue;
       ObjectDelete(label);   
     }   //----
   return(0);
   
//----
   return(0);
  }
//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int start()
  {
   //double volume10  =iVolume(NULL,PERIOD_M1,0);
   //if(volume10>1) return;
   int myspread;
   string mysymbol="", ms=""; 

   if (Symbol() == "AUDCADm" || Symbol() == "AUDCAD." || Symbol() == "AUDCAD") { mysymbol = "AUDCAD"; myspread=6;} else
   if (Symbol() == "AUDCHFm" || Symbol() == "AUDCHF." || Symbol() == "AUDCHF") { mysymbol = "AUDCHF"; myspread=6;} else
   if (Symbol() == "AUDJPYm" || Symbol() == "AUDJPY." || Symbol() == "AUDJPY") { mysymbol = "AUDJPY"; myspread=5;} else
   if (Symbol() == "AUDNZDm" || Symbol() == "AUDNZD." || Symbol() == "AUDNZD") { mysymbol = "AUDNZD"; myspread=6;} else
   if (Symbol() == "AUDUSDm" || Symbol() == "AUDUSD." || Symbol() == "AUDUSD") { mysymbol = "AUDUSD"; myspread=5;} else
   if (Symbol() == "CHFJPYm" || Symbol() == "CHFJPY." || Symbol() == "CHFJPY") { mysymbol = "CHFJPY"; myspread=5;} else
   if (Symbol() == "EURAUDm" || Symbol() == "EURAUD." || Symbol() == "EURAUD") { mysymbol = "EURAUD"; myspread=6;} else
   if (Symbol() == "EURCADm" || Symbol() == "EURCAD." || Symbol() == "EURCAD") { mysymbol = "EURCAD"; myspread=7;} else
   if (Symbol() == "EURCHFm" || Symbol() == "EURCHF." || Symbol() == "EURCHF") { mysymbol = "EURCHF"; myspread=6;} else
   if (Symbol() == "EURGBPm" || Symbol() == "EURGBP." || Symbol() == "EURGBP") { mysymbol = "EURGBP"; myspread=6;} else
   if (Symbol() == "EURJPYm" || Symbol() == "EURJPY." || Symbol() == "EURJPY") { mysymbol = "EURJPY"; myspread=6;} else
   if (Symbol() == "EURUSDm" || Symbol() == "EURUSD." || Symbol() == "EURUSD") { mysymbol = "EURUSD"; myspread=5;} else
   if (Symbol() == "GBPCHFm" || Symbol() == "GBPCHF." || Symbol() == "GBPCHF") { mysymbol = "GBPCHF"; myspread=11;} else
   if (Symbol() == "GBPCADm" || Symbol() == "GBPCAD." || Symbol() == "GBPCAD") { mysymbol = "GBPCAD"; myspread=14;} else
   if (Symbol() == "GBPJPYm" || Symbol() == "GBPJPY." || Symbol() == "GBPJPY") { mysymbol = "GBPJPY"; myspread=11;} else
   if (Symbol() == "GBPUSDm" || Symbol() == "GBPUSD." || Symbol() == "GBPUSD") { mysymbol = "GBPUSD"; myspread=5;} else
   if (Symbol() == "NZDCADm" || Symbol() == "NZDCAD." || Symbol() == "NZDCAD") { mysymbol = "NZDCAD"; myspread=9;} else
   if (Symbol() == "NZDCHFm" || Symbol() == "NZDCHF." || Symbol() == "NZDCHF") { mysymbol = "NZDCHF"; myspread=9;} else
   if (Symbol() == "NZDJPYm" || Symbol() == "NZDJPY." || Symbol() == "NZDJPY") { mysymbol = "NZDJPY"; myspread=9;} else
   if (Symbol() == "NZDUSDm" || Symbol() == "NZDUSD." || Symbol() == "NZDUSD") { mysymbol = "NZDUSD"; myspread=7;} else
   if (Symbol() == "USDCHFm" || Symbol() == "USDCHF." || Symbol() == "USDCHF") { mysymbol = "USDCHF"; myspread=5;} else
   if (Symbol() == "USDJPYm" || Symbol() == "USDJPY." || Symbol() == "USDJPY") { mysymbol = "USDJPY"; myspread=5;} else
   if (Symbol() == "USDCADm" || Symbol() == "USDCAD." || Symbol() == "USDCAD") { mysymbol = "USDCAD"; myspread=6;} else
                              { mysymbol = Symbol(); }


   int    counted_bars=IndicatorCounted();
//----

    TF=Period();
    if (TF==PERIOD_M1) { MTF="M1"; }
    else if (TF==PERIOD_M5){ MTF="M5"; }
    else if (TF==PERIOD_M15){ MTF="M15"; }
    else if (TF==PERIOD_M30){ MTF="M30"; }
    else if (TF==PERIOD_H1){ MTF="H1"; }
    else if (TF==PERIOD_H4){ MTF="H4"; }
    else if (TF==PERIOD_D1){ MTF="D1"; }
    else if (TF==PERIOD_MN1){ MTF="MN1"; }
    else { MTF="-"; }

//-----------------------------------------------------------------------------------------------------------------------------  +
if(Show_Price==true)
{
   x=10; y=50; y1=10;
   double mydigit,mypoint;
   if((Digits==5) || (Digits==3)) mydigit=Digits-1; else mydigit=Digits;
   if((Point==0.001) || (Point==0.00001)) mypoint=Point*10; else mypoint=Point;
   // Price
   //Menampilkan Harga
   Nilai=iMA(Symbol(),0,1,0,MODE_EMA,PRICE_CLOSE,0); 
   Teks=DoubleToStr(Nilai,(mydigit));
   Huruf="Footlight MT Light"; Ukuran=19; Ukuran1=7;  //34
   // WarnaHarga=WarnaLampu pada trend TF 5 menit
   d_A = iMA(Symbol(),PERIOD_M5,MAFast_Period,MAFast_Shift,MAFast_Method,MAFast_Apply_To,0);
   d_B = iMA(Symbol(),PERIOD_M5,MASlow_Period,MASlow_Shift,MASlow_Method,MASlow_Apply_To,0);
   WarnaHarga=CheckWarna(d_B, d_A, Price_color_Up, Price_color_Dn);
   Write("MP01", Right_Top, Shift_X+x, Shift_Y+y+(y1*0)-18, Teks, Ukuran, Huruf, WarnaHarga);
   Write("MP0111", Right_Top, Shift_X+x, Shift_Y+y+(y1*0), "_______________", Ukuran1, Huruf, LineColor);

   Huruf="Tahoma Bold"; Ukuran=10; 
   //Menampilkan Highest Day
   d_A=iHigh(NULL,1440,0); 
   Teks=DoubleToStr(d_A, mydigit);

   Write("MP02", Right_Top,Shift_X+x, Shift_Y+y+(y1*1), Teks, Ukuran1, Huruf, Price_color_Hi);
   Write("MP0211", Right_Top,Shift_X+x+40, Shift_Y+y+(y1*1), "High : ", Ukuran1, Huruf, Price_color_Hi);
   
   //Menampilkan Lowest Day
   d_B=iLow(NULL,1440,0); 
   Teks=DoubleToStr(d_B, mydigit);

   Write("MP03", Right_Top, Shift_X+x, Shift_Y+y+(y1*2), Teks, Ukuran1, Huruf, Price_color_Lo);
   Write("MP0311", Right_Top, Shift_X+x+40, Shift_Y+y+(y1*2), "Low : ", Ukuran1, Huruf, Price_color_Lo);
      
   //--- Informasi Hi to Lo ---
   Teks=DoubleToStr((d_A - d_B)/mypoint,0);

   Write("MP06", Right_Top, Shift_X+x, Shift_Y+y+(y1*3), Teks, Ukuran1, Huruf, Price_color_Up);
   Write("MP0611", Right_Top, Shift_X+x+40, Shift_Y+y+(y1*3), "D1 : ", Ukuran1, Huruf, Price_color_Up);
   
   //--- Informasi Daily Av ---
   R1=0; R5=0; R10=0; R20=0; RAvg=0; i=0;
   R1 =  (iHigh(NULL,PERIOD_D1,1)-iLow(NULL,PERIOD_D1,1))/mypoint;
   for(i=1;i<=5;i++)   
     R5  = R5  + (iHigh(NULL,PERIOD_D1,i)-iLow(NULL,PERIOD_D1,i))/mypoint;
   for(i=1;i<=10;i++)
     R10 = R10 + (iHigh(NULL,PERIOD_D1,i)-iLow(NULL,PERIOD_D1,i))/mypoint;
   for(i=1;i<=20;i++)
     R20 = R20 + (iHigh(NULL,PERIOD_D1,i)-iLow(NULL,PERIOD_D1,i))/mypoint;

   R5 = R5/5;
   R10 = R10/10;
   R20 = R20/20;
   RAvg  =  (R1+R5+R10+R20)/4;    
   
   Teks_ReRata = (DoubleToStr(RAvg,mydigit-4));
   Teks_Rerata_Kemarin = (iHigh(NULL,PERIOD_D1,1)-iLow(NULL,PERIOD_D1,1))/mypoint;
   
   Write("MP07", Right_Top, Shift_X+x, Shift_Y+y+(y1*4), Teks_ReRata, Ukuran1, Huruf, Warna_Av);
   Write("MP0711", Right_Top, Shift_X+x+40, Shift_Y+y+(y1*4), "Av : ", Ukuran1, Huruf, Warna_Av);
   
   //Time for Next Candle
   d_B = (Time[4]-Time[5])-MathMod(CurTime(),Time[4]-Time[5]);
   d_A = d_B/60;
   d_B = (d_A-MathFloor(d_A))*60;
   d_A = MathFloor(d_A);
   Teks_Menit = DoubleToStr(d_A,0);
   Teks_Detik = DoubleToStr(d_B,0);
   Teks=Teks_Menit+":"+Teks_Detik;

   Write("MP08", Right_Top, Shift_X+x, Shift_Y+y+(y1*6), Teks, Ukuran1, Huruf, Price_color_Hi);
   Write("MP0811", Right_Top, Shift_X+x+40, Shift_Y+y+(y1*6), "Time : ", Ukuran1, Huruf, Price_color_Hi);
   
   // --- Spread
   d_A = (Ask - Bid)/mypoint;
   Teks = (DoubleToStr(d_A,mydigit-3));
   if (((Ask - Bid)/mypoint)<myspread)
      { SignalColor=Price_color_Up;}
   else 
   if (((Ask - Bid)/mypoint)>myspread)
      { SignalColor=Price_color_Dn1;}
   else 
      { SignalColor=Price_color_Nt;}

   Write("MP09", Right_Top, Shift_X+x, Shift_Y+y+(y1*5), Teks, Ukuran1, Huruf, SignalColor);
   Write("MP0911", Right_Top, Shift_X+x+40, Shift_Y+y+(y1*5), "Sprd : ", Ukuran1, Huruf, SignalColor);

if (Show_Symbol==true)
   {
   Write("MP0912", Right_Top, Shift_X+x, Shift_Y+y+(y1*6.5), "____________", Ukuran1, Huruf, LineColor);
   Write("MP09121", Right_Top, Shift_X+x, Shift_Y+y+(y1*8), "____________", Ukuran1, Huruf, LineColor);

   Write("MP0913", Right_Top, Shift_X+x+8, Shift_Y+y+(y1*7.45), mysymbol, 11, Huruf, SymbolColor);
   
   string MTF;
    double TF=Period();
    if (TF==PERIOD_M1) { MTF="M1"; }
    else if (TF==PERIOD_M5){ MTF="M5"; }
    else if (TF==PERIOD_M15){ MTF="M15"; }
    else if (TF==PERIOD_M30){ MTF="M30"; }
    else if (TF==PERIOD_H1){ MTF="H1"; }
    else if (TF==PERIOD_H4){ MTF="H4"; }
    else if (TF==PERIOD_D1){ MTF="D1"; }
    else if (TF==PERIOD_MN1){ MTF="MN1"; }
    else { MTF="-"; }

   Write("MP0914", Right_Top, Shift_X+x+8, Shift_Y+y+(y1*9), MTF, 9, Huruf, Price_color_Lo);
   }   
   
   Write("MP091444", Right_Top, x-5, y-49, "Bismillah <==> Alhamdulillah", 7, Huruf, Price_color_Lo);
}
//----
   return(0);  // end of start funtion
  }
//+------------------------------------------------------------------+
//     expert custom function                                        |       
//+------------------------------------------------------------------+    

// Write Procedure
void Write(string LBL, double side, int pos_x, int pos_y, string text, int fontsize, string fontname, color Tcolor=CLR_NONE, int angle=0)
     {
       ObjectCreate(LBL, OBJ_LABEL, window, 0, 0);
       ObjectSetText(LBL,text, fontsize, fontname, Tcolor);
       ObjectSet(LBL, OBJPROP_CORNER, Sebelah);
       ObjectSet(LBL, OBJPROP_XDISTANCE, pos_x);
       ObjectSet(LBL, OBJPROP_YDISTANCE, pos_y);
       ObjectSetText("signal",CharToStr(164),60,"Wingdings",Gold);
         if (LBL == "MP5221")
         {
            ObjectCreate(LBL, OBJ_LABEL, window, 0, 0);
            ObjectSetText(LBL,text, fontsize, fontname, Tcolor);
            ObjectSet(LBL, OBJPROP_CORNER, Sebelah);
                ObjectSet(LBL,OBJPROP_ANGLE,0);
            ObjectSet(LBL, OBJPROP_XDISTANCE, pos_x);
            ObjectSet(LBL, OBJPROP_YDISTANCE, pos_y);
            ObjectSetText("signal",CharToStr(164),60,"Wingdings",Gold);
         }
         if (LBL == "MP091444")
         {
            ObjectCreate(LBL, OBJ_LABEL, window, 0, 0);
            ObjectSetText(LBL,text, fontsize, fontname, Tcolor);
            ObjectSet(LBL, OBJPROP_CORNER, 3);
                ObjectSet(LBL,OBJPROP_ANGLE,0);
            ObjectSet(LBL, OBJPROP_XDISTANCE, pos_x);
            ObjectSet(LBL, OBJPROP_YDISTANCE, pos_y);
         }
     }
// Function CheckWarna  
color CheckWarna(double a, double b, color U, color D)
      {
        if (a>b) { return (U); } else { return (D); }
      } 


