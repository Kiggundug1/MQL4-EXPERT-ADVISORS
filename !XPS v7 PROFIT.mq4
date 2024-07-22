
// +----------------------------------------------------------------------------------------+ //
// |    .-._______                           XARD777                          _______.-.    | //
// |---( )_)______)                 Knowledge of the ancients                (______(_( )---| //
// |  (    ()___)                              \¦/                             (___()    )  | //
// |       ()__)                              (o o)                             (__()       | //
// |--(___()_)__________________________oOOo___(_)___oOOo_________________________(_()___)--| //
// |_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|_____|____|_____| //
// |                                                                                   2011 | //
// |----------------------------------------------------------------------------------------| //
// |                 File:     !XPS v7 PROFIT.mq4                                           | //
// | Programming language:     MQL4                                                         | //
// | Development platform:     MetaTrader 4                                                 | //
// |          End product:     THIS SOFTWARE IS FOR USE ONLY BY XARD777                     | //
// |                                                                                        | //
// |                                                         [Xard777 Proprietory Software] | //
// +----------------------------------------------------------------------------------------+ //

#property indicator_chart_window

// ------------------------------------------------------------------------------------------ //
//                            E X T E R N A L   V A R I A B L E S                             //
// ------------------------------------------------------------------------------------------ //

int Corner=1;
int Window=0;
color Warna_Text       = Snow;
color Warna_Order_Sell = Orange;
color Warna_Order_Buy  = DeepSkyBlue;
color Warna_Rugi       = Orange;
color Warna_Laba       = DeepSkyBlue;
string NamaFont        = "Arial Black";
int    UkuranFont      = 10;
double posX            = 38;
double posY            = -14;

// ------------------------------------------------------------------------------------------ //
//                            I N T E R N A L   V A R I A B L E S                             //
// ------------------------------------------------------------------------------------------ //



int Font=9;
int x = NULL;

// ------------------------------------------------------------------------------------------ //
//                             I N I T I A L I S A T I O N                                    //
// ------------------------------------------------------------------------------------------ //

int init()
  {
//---- indicators
//----
   return(0);
  }

// ------------------------------------------------------------------------------------------ //
//                            D E - I N I T I A L I S A T I O N                               //
// ------------------------------------------------------------------------------------------ //

int deinit()
  {
//----
   int    idx;

   if(x != NULL) {
      for(idx = 0; idx<x; idx++) {
         ObjectDelete("Panel242"+idx);
         ObjectDelete("PL"+idx);
      }
         
      ObjectDelete("Panel241"); 
      ObjectDelete("Panel243");     
      ObjectDelete("h");      
      ObjectDelete("Total1");
      ObjectDelete("Total2");

   }
   
   ObjectsDeleteAll(0,OBJ_HLINE);
   ObjectsDeleteAll(0,OBJ_TEXT);
   ObjectsDeleteAll(0,OBJ_LABEL); 

//----
   return(0);
  }
  
void DisplayText(string objname, string text, int fontsize, color clr, double C, double X, double Y, string font)
{
   ObjectDelete(objname);
   ObjectCreate(objname, OBJ_LABEL, Window, 0, 0);
   ObjectSetText(objname, text, fontsize, font, clr);
   ObjectSet(objname, OBJPROP_CORNER, Corner);
   ObjectSet(objname, OBJPROP_XDISTANCE, X+posX);
   ObjectSet(objname, OBJPROP_YDISTANCE, Y+posY);
}
  
// ------------------------------------------------------------------------------------------ //
//                                M A I N   P R O C E D U R E                                 //
// ------------------------------------------------------------------------------------------ //

int start()
  {
 
   int    counted_bars=IndicatorCounted();
   int    j;
   int    idx;
   string text;
   double PL;
   double total;
//----
         if(x != NULL) {
            for(idx = 0; idx<x; idx++) {
               ObjectDelete("Panel242"+idx);
               ObjectDelete("Panel243"+idx);
            }
            
            ObjectDelete("Total1");
            ObjectDelete("Total2");
         }
            
         text = "";
         j=0;
         total = 0;
         
            
         DisplayText("Panel241", "Trades", 12, Warna_Text, 0, -6, 20 , "Arial Black"); 
   
         for (int i = OrdersTotal()-1 ; i >= 0; i--) 
         { 
            if(OrderSelect(i, SELECT_BY_POS, MODE_TRADES) == true)
            { 
               
               if(OrderType() == OP_BUY)  {
               
                  DisplayText("Panel242"+j, OrderSymbol(), 12, Warna_Order_Buy, 0, 10, Font+28 + j * 18, "Arial Black"); 
                  PL = (OrderClosePrice()-OrderOpenPrice())/MarketInfo(OrderSymbol(),MODE_POINT)/10;
                  total = total + PL;
                  if(PL<0) DisplayText("Panel243"+j, DoubleToStr(PL, 0), 12, Warna_Rugi, 0, -30, Font+28 + j * 18, "Arial Black"); 
                  else if(PL>0) DisplayText("Panel243"+j, "+"+DoubleToStr(PL, 0), 12, Warna_Laba, 0, -30, Font+28 + j * 18, "Arial Black"); 
                  else DisplayText("Panel243"+j, DoubleToStr(PL, 0), 12, Warna_Text, 0, -30, Font+28 + j * 18, "Arial Black"); 
               }
               else if(OrderType() == OP_SELL)  {
                  
                  DisplayText("Panel242"+j, OrderSymbol(), 12, Warna_Order_Sell, 0, 10, Font+28 + j * 18, "Arial Black"); 
                  PL = (OrderOpenPrice()-OrderClosePrice())/MarketInfo(OrderSymbol(),MODE_POINT)/10;
                  total = total + PL;
                  if(PL<0) DisplayText("Panel243"+j, DoubleToStr(PL, 0), 12, Warna_Rugi, 0, -30, Font+28 + j * 18, "Arial Black"); 
                  else if(PL>0) DisplayText("Panel243"+j,"+"+DoubleToStr(PL, 0), 12, Warna_Laba, 0, -30, Font+28 + j * 18, "Arial Black"); 
                  else DisplayText("Panel243"+j,DoubleToStr(PL, 0), 12, Warna_Text, 0, -30, Font+28 + j * 18, "Arial Black"); 
               }
               j=j+1;
            } 
         } 
   
         DisplayText("Total1","Total", 12, Warna_Text, 0, 25, Font+28 + j * 18, "Arial Black");
   
         if(total<0) DisplayText("Total2", DoubleToStr(total, 0), 12, Warna_Rugi, 0, -30, Font+28 + j * 18, "Arial Black");
         else if (total>0) DisplayText("Total2","+" + DoubleToStr(total, 0), 12, Warna_Laba, 0, -30, Font+28 + j * 18, "Arial Black");
         else DisplayText("Total2", DoubleToStr(total, 0), 12, White, 0, -30, Font+28 + j * 18, "Arial Black");
                
         x=j;
   
   return(0);
  }
// ------------------------------------------------------------------------------------------ //
//                                     E N D   P R O G R A M                                  //
// ------------------------------------------------------------------------------------------ //
/*                                                         
                                        ud$$$**BILLION$bc.                          
                                    u@**"        PROJECT$$Nu                       
                                  J                ""#$$$$$$r                     
                                 @                       $$$$b                    
                               .F                        ^*3$$$                   
                              :% 4                         J$$$N                  
                              $  :F                       :$$$$$                  
                             4F  9                       J$$$$$$$                 
                             4$   k             4$$$$bed$$$$$$$$$                 
                             $$r  'F            $$$$$$$$$$$$$$$$$r                
                             $$$   b.           $$$$$$$$$$$$$$$$$N                
                             $$$$$k 3eeed$$b    XARD777."$$$$$$$$$                
              .@$**N.        $$$$$" $$$$$$F'L $$$$$$$$$$$  $$$$$$$                
              :$$L  'L       $$$$$ 4$$$$$$  * $$$$$$$$$$F  $$$$$$F         edNc   
             @$$$$N  ^k      $$$$$  3$$$$*%   $F4$$$$$$$   $$$$$"        d"  z$N  
             $$$$$$   ^k     '$$$"   #$$$F   .$  $$$$$c.u@$$$          J"  @$$$$r 
             $$$$$$$b   *u    ^$L            $$  $$$$$$$$$$$$u@       $$  d$$$$$$ 
              ^$$$$$$.    "NL   "N. z@*     $$$  $$$$$$$$$$$$$P      $P  d$$$$$$$ 
                 ^"*$$$$b   '*L   9$E      4$$$  d$$$$$$$$$$$"     d*   J$$$$$r   
                      ^$$$$u  '$.  $$$L     "#" d$$$$$$".@$$    .@$"  z$$$$*"     
                        ^$$$$. ^$N.3$$$       4u$$$$$$$ 4$$$  u$*" z$$$"          
                          '*$$$$$$$$ *$b      J$$$$$$$b u$$P $"  d$$P             
                             #$$$$$$ 4$ 3*$"$*$ $"$'c@@$$$$ .u@$$$P               
                               "$$$$  ""F~$ $uNr$$$^&J$$$$F $$$$#                 
                                 "$$    "$$$bd$.$W$$$$$$$$F $$"                   
                                   ?k         ?$$$$$$$$$$$F'*                     
                                    9$$bL     z$$$$$$$$$$$F                       
                                     $$$$    $$$$$$$$$$$$$                        
                                      '#$$c  '$$$$$$$$$"                          
                                       .@"#$$$$$$$$$$$$b                          
                                     z*      $$$$$$$$$$$$N.                       
                                   e"      z$$"  #$$$k  '*$$.                     
                                .u*      u@$P"      '#$$c   "$$c                   
                        u@$*"""       d$$"            "$$$u  ^*$$b.               
                      :$F           J$P"                ^$$$c   '"$$$$$$bL        
                     d$$  ..      @$#                      #$$b         '#$       
                     9$$$$$$b   4$$                          ^$$k         '$      
                      "$$6""$b u$$                             '$    d$$$$$P      
                        '$F $$$$$"                              ^b  ^$$$$b$       
                         '$W$$$$"                                'b@$$$$"         
                                                                  ^$$$*/     