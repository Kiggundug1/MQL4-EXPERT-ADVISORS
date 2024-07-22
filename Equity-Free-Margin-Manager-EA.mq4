//+------------------------------------------------------------------+
//|            Profit Protection, Stop Loss Hedge Balance Trader.mq4 |
//|                                    Copyright © 2011, DancingPhil |
//|                                                                  |
//+------------------------------------------------------------------+
#property copyright "Copyright © 2011, DancingPhil"
#property link      "bad-boy-phil@hotmail.com"

extern int Magic = 2;
extern int LookBack = 3;              // Bars back from current open to look for a Fractal
extern int Slippage = 0;
extern int TakeprofitHP = 30;
extern int TakeprofitML =30;
extern int TakeprofitFM = 30;
extern double FM = 0.30;
extern int Stoploss = 0;
extern double MaxLoss = 0.25;
extern double HeapsProfit = 0.26;
string     Comments = "";
double     LowestFreeMargin=1000000;
double     StartingEquity=0;
double     WorstEquity=0;
double     BestEquity=0;
double     TargetBestEquity=0;
bool buyFlag = false, sellFlag = false;
datetime barStart = 0;
//+------------------------------------------------------------------+
//| expert initialization function                                   |
//+------------------------------------------------------------------+
int init()
  {
//----
   StartingEquity=AccountEquity();
   
   if(Digits == 5)
   {
      TakeprofitML = TakeprofitML * 10;
      TakeprofitHP = TakeprofitHP * 10;
      TakeprofitFM = TakeprofitFM * 10;            
      Stoploss = Stoploss * 10;
      
   }   
   
//----
   return(0);
  }
//+------------------------------------------------------------------+
//| expert deinitialization function                                 |
//+------------------------------------------------------------------+
int deinit()
  {
//----
   
//----
   return(0);
  }
//+------------------------------------------------------------------+
//| expert start function                                            |
//+------------------------------------------------------------------+
int start()
  {
//----
/*if (barStart < Time[0]) //start of new bar
{
barStart = Time[0];
buyFlag = false;
sellFlag = false;
}
*/
   double total_selllots =0;   //define variable total_sellots, starting at =0
   double total_buylots =0;   //define variable total_buylots, starting at =0
   double lotdifference=0;
   int t;

      double   upfractal = GetFractal(MODE_UPPER),
               dnfractal = GetFractal(MODE_LOWER);

   //Calculate total_buylots
 
   for (int i = OrdersTotal()-1; i >=0; i--)   //scanning all trades
   {
      if (! OrderSelect(i, SELECT_BY_POS, MODE_TRADES)) { Sleep(10); continue; }
      if(OrderSymbol() == Symbol() ) //check the currency and magic number are correct
      {         
         if (OrderType() == OP_BUY)  //with OP_BUY trades
         {
            total_buylots = total_buylots + OrderLots();  //add them up and keep a tally of them
 
         }
   //Calculate total_selllots
 
         if (OrderType() == OP_SELL) //with the OP_SELL trades
         {
            total_selllots = total_selllots + OrderLots();    //add them up and keep a tally of them too
         }

      }
   }
   if (LowestFreeMargin>AccountFreeMargin())
   {
   LowestFreeMargin=AccountFreeMargin();
   }   
   if (BestEquity<AccountEquity())
   {
   BestEquity=AccountEquity();
   }
   string strTotalLots;
   strTotalLots="Total BUY  LOTS = " + DoubleToStr(total_buylots,2) + "\n";
   strTotalLots=strTotalLots+"Total SELL LOTS = " + DoubleToStr(total_selllots,2) + "\n";
   strTotalLots=strTotalLots+"Total ALL  LOTS = " + DoubleToStr(total_selllots+total_buylots,2) + "\n";
   strTotalLots=strTotalLots+"StartingEquity = " + DoubleToStr(StartingEquity,2) + "\n";
   strTotalLots=strTotalLots+"BestEquity = " + DoubleToStr(BestEquity,2) + "\n";
   strTotalLots=strTotalLots+"Max Loss = " + DoubleToStr((1-MaxLoss)*BestEquity,2) + "\n";
   strTotalLots=strTotalLots+"Target Profit = " + DoubleToStr((1+HeapsProfit)*StartingEquity,2) + "\n";
   strTotalLots=strTotalLots+"CurrentEquity = " + DoubleToStr(AccountEquity(),2) + "\n";
   strTotalLots=strTotalLots+"Lowest Free Margin = " + DoubleToStr(LowestFreeMargin,2) + "\n";
   Comment(strTotalLots); 
   //--------------------------------------------------------------------------------------------------------------------------------
   if( total_buylots<total_selllots)
   if (AccountEquity()<((1-MaxLoss)*BestEquity))

   {

      lotdifference = total_selllots - total_buylots; //Check difference in lots, if buylots is smaller then we will buy
      t = OrderSend(Symbol(),OP_BUY,lotdifference,Ask,Slippage,0,0,Comments + "BuyOnMaxLoss",Magic,0,Blue);
      BestEquity=AccountEquity();
      if (t > 1){
      if (OrderSelect(t, SELECT_BY_TICKET))OrderModify(OrderTicket(),OrderOpenPrice(),0,Ask + TakeprofitML*Point,0,Blue ); 
      else Print("OrderModify() ticket=",t," failed with error code ",GetLastError());
      }
      else Print("OrderSend ticket=",t," failed with error code ",GetLastError()); 
  
   }
   if( total_buylots>total_selllots)
   if (AccountEquity()<((1-MaxLoss)*BestEquity))
   
   {

      lotdifference = total_buylots - total_selllots; //Check difference in lots, if buylots is smaller then we will sell
      t = OrderSend(Symbol(),OP_SELL,lotdifference,Bid,Slippage,0,0,Comments + "SellOnMaxLoss",Magic,0,Blue);
      BestEquity=AccountEquity();
      if (t > 1){
      if (OrderSelect(t, SELECT_BY_TICKET))OrderModify(OrderTicket(),OrderOpenPrice(),0,Bid - TakeprofitML*Point,0,Red ); 
      else Print("OrderModify() ticket=",t," failed with error code ",GetLastError());
      }
      else Print("OrderSend ticket=",t," failed with error code ",GetLastError());    
   }
   if( total_buylots<total_selllots)
   if (AccountEquity()>((1+HeapsProfit)*StartingEquity))

   {

      lotdifference = total_selllots - total_buylots; //Check difference in lots, if buylots is smaller then we will buy
      t = OrderSend(Symbol(),OP_BUY,lotdifference,Ask,Slippage,0,0,Comments + "BuyOnHeapsProfit",Magic,0,Red);
      StartingEquity=AccountEquity();
      if (t > 1){
      if (OrderSelect(t, SELECT_BY_TICKET))OrderModify(OrderTicket(),OrderOpenPrice(),0,Ask + TakeprofitHP*Point,0,Blue ); 
      else Print("OrderModify() ticket=",t," failed with error code ",GetLastError());
      }
      else Print("OrderSend ticket=",t," failed with error code ",GetLastError()); 
  
   }
   if( total_buylots>total_selllots)
   if (AccountEquity()>((1+HeapsProfit)*StartingEquity))
   
   {

      lotdifference = total_buylots - total_selllots; //Check difference in lots, if buylots is smaller then we will sell
      t = OrderSend(Symbol(),OP_SELL,lotdifference,Bid,Slippage,0,0,Comments + "SellOnHeaps",Magic,0,Red);
      StartingEquity=AccountEquity();
      if (t > 1){
      if (OrderSelect(t, SELECT_BY_TICKET))OrderModify(OrderTicket(),OrderOpenPrice(),0,Bid - TakeprofitHP*Point,0,Red ); 
      else Print("OrderModify() ticket=",t," failed with error code ",GetLastError());
      }
      else Print("OrderSend ticket=",t," failed with error code ",GetLastError());    
   }
   if( total_buylots<total_selllots)
   if (AccountFreeMargin()<(FM*BestEquity))

   {

      lotdifference = total_selllots - total_buylots; //Check difference in lots, if buylots is smaller then we will buy
      t = OrderSend(Symbol(),OP_BUY,(lotdifference*0.5),Ask,Slippage,0,0,Comments + "FreeMarginWorry",Magic,0,Green);

      if (t > 1){
      if (OrderSelect(t, SELECT_BY_TICKET))OrderModify(OrderTicket(),OrderOpenPrice(),0,0,0,Blue ); 
      else Print("OrderModify() ticket=",t," failed with error code ",GetLastError());
      }
      else Print("OrderSend ticket=",t," failed with error code ",GetLastError()); 
  
   }
   if( total_buylots>total_selllots)
   if (AccountFreeMargin()<(FM*BestEquity))
   
   {

      lotdifference = total_buylots - total_selllots; //Check difference in lots, if buylots is smaller then we will sell
      t = OrderSend(Symbol(),OP_SELL,(lotdifference*0.5),Bid,Slippage,0,0,Comments + "FreeMarginWorry",Magic,0,Green);

      if (t > 1){
      if (OrderSelect(t, SELECT_BY_TICKET))OrderModify(OrderTicket(),OrderOpenPrice(),0,0,0,Red ); 
      else Print("OrderModify() ticket=",t," failed with error code ",GetLastError());
      }
      else Print("OrderSend ticket=",t," failed with error code ",GetLastError());    
   }   
   
//----
   return(0);
  }
//+------------------------------------------------------------------+

double GetFractal(int mode)
   {
      double tempup=0, tempdn=0, fup=0, fdn=0;
      tempup = iFractals(Symbol(), 0, MODE_UPPER, LookBack);
      tempdn = iFractals(Symbol(), 0, MODE_LOWER, LookBack);
      if(tempup != 0) fup = tempup;
      if(tempdn != 0) fdn = tempdn;

      if ( fup != 0 && fdn == 0 && mode == MODE_UPPER ) return(fup);
      if ( fdn != 0 && fup == 0 && mode == MODE_LOWER ) return(fdn);
      return(0);
   }

