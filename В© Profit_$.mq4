//+----------------------------------------------------------------  
//|       "������� �� ������� � $"             � Profit_$.mq4  
//+----------------------------------------------------------------- 
#property indicator_chart_window
 //+----------------------------------------------------------------  
   extern int     Corner = 1;      // values [0-3] - ������� ����
   extern int  XDistance = 10;     // x ���������� �� �������� ����
   extern int  YDistance = 10;     // y ���������� �� �������� ����
   extern color   Color1 = Lime;   // ���� ����� ���  �������
   extern  color  Color2 = Maroon; // White  ���� ����� ��� ������
   extern int   FontSize = 21;
   extern string FontName = "Tahoma" ;  // "Arial" "Arial Black"
   double profit=0;  double   nPoint = 0;
//+----------------------------------------------------------- 
int init(){
   return(0);}
//+-----------------------------------------------------------   
int deinit()
  {  ObjectDelete("�������"); 
   return(0); }                                        
//+----------------------------------------------------------- 
 int start(){ 
   double nPoint = GetPoint(Symbol()); profit=0;
  for (int w1=0; w1<OrdersTotal(); w1++) 
  if ((OrderSelect(w1, SELECT_BY_POS, MODE_TRADES))&&
  (OrderSymbol()==Symbol())&&(OrderType()==OP_BUY)||(OrderType()==OP_SELL))
   profit+=OrderProfit();
 //+---------------------------------------------------------   
      color colir ;
  if(profit >0) colir = Color1 ; else colir = Color2; 
 // ======================================================================================== 
     ObjectCreate ("�������", OBJ_LABEL,   0,0,0); 
     ObjectSetText("�������",  DoubleToStr(profit,2)+"$"  ,FontSize, FontName, colir);
          ObjectSet( "�������", OBJPROP_CORNER,    Corner); 
          ObjectSet( "�������", OBJPROP_XDISTANCE, XDistance);  
          ObjectSet( "�������", OBJPROP_YDISTANCE, YDistance); 
   ObjectSet("�������",OBJPROP_TIMEFRAMES,OBJ_PERIOD_M1 |OBJ_PERIOD_M5| OBJ_PERIOD_M15 | OBJ_PERIOD_M30 | OBJ_PERIOD_H1 );                            
 // ========================================================================================
     return(0);  }
  //======================================================================================== 
 double GetPoint(string vSymbol){
 int vres = StringFind(vSymbol,"JPY");
 if (vres == -1) return(0.0001); return(0.01);}  
//+------------------------------------------------------------------
 //======================================================================================== 