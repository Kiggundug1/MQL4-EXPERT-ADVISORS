//+------------------------------------------------------------------+
//|                                       SAR ADX Expert Advisor.mq4 |
//|                              Copyright © 2009, TradingSytemForex |
//|                                http://www.tradingsystemforex.com |
//+------------------------------------------------------------------+

#property copyright "Copyright © 2009, TradingSytemForex"
#property link "http://www.tradingsystemforex.com"

//|----------------------------------------------you can modify this expert
//|----------------------------------------------you can change the name
//|----------------------------------------------you can add "modified by you"
//|----------------------------------------------but you are not allowed to erase the copyrights

#define EAName "SAR ADX Expert Advisor"

extern string S1="---------------- Entry Settings";

extern double Step=0.02;
extern double Maximum=0.2;
extern int ADXPeriod=50;

extern string S2="---------------- Money Management";

extern double Lots=0.1;//|-----------------------lots size
extern bool RiskMM=false;//|---------------------risk management
extern double RiskPercent=1;//|------------------risk percentage

/*
extern bool Martingale=false;//|-----------------martingale
extern double Multiplier=2.0;//|-----------------multiplier martingale
extern double MinProfit=50;//--------------------minimum profit to apply the martingale
extern bool BasketProfitLoss=false;//|-----------use basket loss/profit
extern int BasketProfit=100000;//|---------------if equity reaches this level, close trades
extern int BasketLoss=9999;//|-------------------if equity reaches this negative level, close trades
*/

extern string S3="---------------- Order Management";

extern int StopLoss=0;//|------------------------stop loss
extern int TakeProfit=0;//|----------------------take profit
extern bool HideSL=false;//|---------------------hide stop loss
extern bool HideTP=false;//|---------------------hide take profit
extern int TrailingStop=0;//|--------------------trailing stop
extern int TrailingStep=0;//|--------------------trailing step
extern int BreakEven=0;//|-----------------------break even
extern int MaxOrders=100;//|---------------------maximum orders allowed
extern int Slippage=3;//|------------------------slippage
extern int Magic=2009;//|------------------------magic number

/*
extern string S4="---------------- MA Filter";

extern bool MAFilter=false;//|-------------------moving average filter
extern int MAPeriod=20;//|-----------------------ma filter period
extern int MAMethod=0;//|------------------------ma filter method
extern int MAPrice=0;//|-------------------------ma filter price
*/

/*
extern string S5="---------------- Time Filter";

extern bool TradeOnSunday=true;//|---------------time filter on sunday
extern bool MondayToThursdayTimeFilter=false;//|-time filter the week
extern int MondayToThursdayStartHour=0;//|-------start hour time filter the week
extern int MondayToThursdayEndHour=24;//|--------end hour time filter the week
extern bool FridayTimeFilter=false;//|-----------time filter on friday
extern int FridayStartHour=0;//|-----------------start hour time filter on friday
extern int FridayEndHour=21;//|------------------end hour time filter on friday
*/

extern string S6="---------------- Extras";

extern bool Hedge=false;//|----------------------enter an opposite trade
extern int HedgeSL=0;//|-------------------------stop loss
extern int HedgeTP=0;//|-------------------------take profit
extern bool ReverseSystem=false;//|--------------buy instead of sell, sell instead of buy

/*
extern bool ReverseAtStop=false;//|--------------buy instead of sell, sell instead of buy
extern int Expiration=240;//|--------------------expiration in minute for the reverse pending order
extern bool Comments=true;//|--------------------allow comments on chart
*/

datetime PreviousBarTime1;
datetime PreviousBarTime2;

double maxEquity,minEquity,Balance=0.0;

//|---------initialization

int init()
{
  /*if(Comments)Comment("\nLoading...");*/
  return(0);
}

//|---------deinitialization

/*int deinit()
{
  return(0);
}*/

int start()
{

//|---------trailing stop

   if(TrailingStop>0)MoveTrailingStop();

//|---------break even

   if(BreakEven>0)MoveBreakEven();
   
/*
//|---------basket profit loss

   if(BasketProfitLoss)
   {
      double CurrentProfit=0,CurrentBasket=0;
      CurrentBasket=AccountEquity()-AccountBalance();
      if(CurrentBasket>maxEquity)maxEquity=CurrentBasket;
      if(CurrentBasket<minEquity)minEquity=CurrentBasket;
      if(CurrentBasket>=BasketProfit||CurrentBasket<=(BasketLoss*(-1)))
      {
         CloseBuyOrders(Magic);
         CloseSellOrders(Magic);
         return(0);
      }
   }
*/

/*
//|---------time filter

   if((TradeOnSunday==false&&DayOfWeek()==0)||(MondayToThursdayTimeFilter&&DayOfWeek()>=1&&DayOfWeek()<=4&&!(Hour()>=MondayToThursdayStartHour&&Hour()<=MondayToThursdayEndHour))||(FridayTimeFilter&&DayOfWeek()==5&&!(Hour()>=FridayStartHour&&Hour()<=FridayEndHour)))
   {
      CloseBuyOrders(Magic);
      CloseSellOrders(Magic);
      return(0);
   }
*/

//|---------signal conditions

   int limit=1;
   for(int i=1;i<=limit;i++)
   {
   
/*
   //|---------moving average filter

      double MAF=iMA(Symbol(),0,MAPeriod,0,MAMethod,MAPrice,i);

      string MABUY="false";string MASELL="false";

      if((MAFilter==false)||(MAFilter&&Bid>MAF))MABUY="true";
      if((MAFilter==false)||(MAFilter&&Ask<MAF))MASELL="true";
*/

   //|---------main signal
 
      double SAR1=iSAR(NULL,0,Step,Maximum,i+1);
      double SAR2=iSAR(NULL,0,Step,Maximum,i);
      
      double ADXP1=iADX(NULL,0,ADXPeriod,PRICE_CLOSE,MODE_PLUSDI,i+1);
      double ADXP2=iADX(NULL,0,ADXPeriod,PRICE_CLOSE,MODE_PLUSDI,i);
      double ADXM1=iADX(NULL,0,ADXPeriod,PRICE_CLOSE,MODE_MINUSDI,i+1);
      double ADXM2=iADX(NULL,0,ADXPeriod,PRICE_CLOSE,MODE_MINUSDI,i);

      string BUY="false";
      string SELL="false";

      if(
      (Close[i+1]<SAR1&&Close[i]>SAR2&&ADXP2>ADXM2)||
      (Close[i]>SAR2&&ADXP1<ADXM1&&ADXP2>ADXM2))BUY="true";
      if(
      (Close[i+1]>SAR1&&Close[i]<SAR2&&ADXP2<ADXM2)||
      (Close[i]<SAR2&&ADXP1>ADXM1&&ADXP2<ADXM2))SELL="true";
      
      string SignalBUY="false";
      string SignalSELL="false";
      
      if(BUY=="true"/*&&MABUY=="true"*/)if(ReverseSystem)SignalSELL="true";else SignalBUY="true";
      if(SELL=="true"/*&&MASELL=="true"*/)if(ReverseSystem)SignalBUY="true";else SignalSELL="true";
      
   }

//|---------risk management

   if(RiskMM)CalculateMM();

/*
//|---------martingale

   if(Martingale)CalculateMartingale();Balance=AccountBalance();
*/

//|---------open orders

   double SL,TP,SLP,TPP,OPP;
   int Ticket,TicketH,TicketP,Expire=0;
   /*if(Expiration>0)Expire=TimeCurrent()+(Expiration*60)-5;*/
   
   if(OrdersTotal()<MaxOrders)
   {  
      if (SignalBUY=="true"&&NewBarBuy())
      {
         if(HideSL==false&&StopLoss>0){SL=Ask-StopLoss*Point;/*OPP=Bid-StopLoss*Point;SLP=Bid;*/}else {SL=0;}
         if(SL>0&&SL>(Bid-MarketInfo(Symbol(),MODE_STOPLEVEL)*Point)){SL=Bid-MarketInfo(Symbol(),MODE_STOPLEVEL)*Point;}
         if(HideTP==false&&TakeProfit>0){TP=Ask+TakeProfit*Point;/*TPP=Bid-(TakeProfit*2)*Point;*/}else {TP=0;/*TPP=0;*/}
         
         Ticket=OrderSend(Symbol(),OP_BUY,Lots,Ask,Slippage,SL,TP,EAName,Magic,0,Blue);
         if(Hedge)TicketH=OrderSend(Symbol(),OP_SELL,Lots,Bid,Slippage,TP,SL,EAName,Magic,0,Red);
         /*if(ReverseAtStop&&StopLoss>0)TicketP=OrderSend(Symbol(),OP_SELLSTOP,Lots,OPP,Slippage,SLP,TPP,EAName,Magic,Expire,Red);*/
      }
      if (SignalSELL=="true"&&NewBarSell())
      {
         if(HideSL==false&&StopLoss>0){SL=Bid+StopLoss*Point;/*OPP=Ask+StopLoss*Point;SLP=Ask;*/}else {SL=0;}
         if(SL>0&&SL<(Ask+MarketInfo(Symbol(),MODE_STOPLEVEL)*Point)){SL=Ask+MarketInfo(Symbol(),MODE_STOPLEVEL)*Point;}
         if(HideTP==false&&TakeProfit>0){TP=Bid-TakeProfit*Point;/*TPP=Ask+(TakeProfit*2)*Point;*/}else {TP=0;/*TPP=0;*/}
         
         Ticket=OrderSend(Symbol(),OP_SELL,Lots,Bid,Slippage,SL,TP,EAName,Magic,0,Red);
         if(Hedge)TicketH=OrderSend(Symbol(),OP_BUY,Lots,Ask,Slippage,TP,SL,EAName,Magic,0,Blue);
         /*if(ReverseAtStop&&StopLoss>0)TicketP=OrderSend(Symbol(),OP_BUYSTOP,Lots,OPP,Slippage,SLP,TPP,EAName,Magic,Expire,Red);*/
      }
   }

//|---------close orders
   
   if(Hedge==false)
   {
      if((SELL=="true")||(ReverseSystem==false&&HideSL&&(OrderOpenPrice()-Ask)/Point>=StopLoss)||(ReverseSystem==false&&HideTP&&(Bid-OrderOpenPrice())/Point>=TakeProfit)||(ReverseSystem&&HideSL&&(Bid-OrderOpenPrice())/Point>=StopLoss)||(ReverseSystem&&HideTP&&(OrderOpenPrice()-Ask)/Point>=TakeProfit))
      {
         if(ReverseSystem)CloseSellOrders(Magic);else CloseBuyOrders(Magic);
      }
      if((BUY=="true")||(ReverseSystem==false&&HideSL&&(Bid-OrderOpenPrice())/Point>=StopLoss)||(ReverseSystem==false&&HideTP&&(OrderOpenPrice()-Ask)/Point>=TakeProfit)||(ReverseSystem&&HideSL&&(OrderOpenPrice()-Ask)/Point>=StopLoss)||(ReverseSystem&&HideTP&&(Bid-OrderOpenPrice())/Point>=TakeProfit))
      {
         if(ReverseSystem)CloseBuyOrders(Magic);else CloseSellOrders(Magic);
      }
   }
   else
   {
      if((HideSL&&StopLoss>0&&(OrderOpenPrice()-Ask)/Point>=StopLoss)||(HideTP&&TakeProfit>0&&(Bid-OrderOpenPrice())/Point>=TakeProfit))
      {
         CloseBuyOrders(Magic);
      }
      if((HideSL&&StopLoss>0&&(Bid-OrderOpenPrice())/Point>=StopLoss)||(HideTP&&TakeProfit>0&&(OrderOpenPrice()-Ask)/Point>=TakeProfit))
      {
         CloseSellOrders(Magic);
      }
   }
   

//|---------not enough money warning

   int err=0;
   if(Ticket<0)
   {
      if(GetLastError()==134)
      {
         err=1;
         Print("Not enough money!");
      }
      return (-1);
   }
   
/*
   if(Comments)
   {
      Comment("\nCopyright © 2009, TradingSytemForex",
              "\n\nL o t s                   =  " + DoubleToStr(Lots,2),
              "\nB a l a n c e         =  " + DoubleToStr(AccountBalance(),2),
              "\nE q u i t y            =  " + DoubleToStr(AccountEquity(),2));
   }
*/

   return(0);
}

//|---------close buy orders

int CloseBuyOrders(int Magic)
{
  int result,total=OrdersTotal();

  for (int cnt=total-1;cnt>=0;cnt--)
  {
    OrderSelect(cnt,SELECT_BY_POS,MODE_TRADES);
    if(OrderMagicNumber()==Magic&&OrderSymbol()==Symbol())
    {
      if(OrderType()==OP_BUY)
      {
        OrderClose(OrderTicket(),OrderLots(),Bid,3);
        switch(OrderType())
        {
          case OP_BUYLIMIT:
          case OP_BUYSTOP:
          result=OrderDelete(OrderTicket());
        }
      }
    }
  }
  return(0);
}

//|---------close sell orders

int CloseSellOrders(int Magic)
{
  int result,total=OrdersTotal();

  for(int cnt=total-1;cnt>=0;cnt--)
  {
    OrderSelect(cnt,SELECT_BY_POS,MODE_TRADES);
    if(OrderMagicNumber()==Magic&&OrderSymbol()==Symbol())
    {
      if(OrderType()==OP_SELL)
      {
        OrderClose(OrderTicket(),OrderLots(),Ask,3);
        switch(OrderType())
        {
          case OP_SELLLIMIT:
          case OP_SELLSTOP:
          result=OrderDelete(OrderTicket());
        }
      }
    }
  }
  return(0);
}

//|---------trailing stop

void MoveTrailingStop()
{
   int cnt,total=OrdersTotal();
   for(cnt=0;cnt<total;cnt++)
   {
      OrderSelect(cnt,SELECT_BY_POS,MODE_TRADES);
      if(OrderType()<=OP_SELL&&OrderSymbol()==Symbol()&&OrderMagicNumber()==Magic)
      {
         if(OrderType()==OP_BUY)
         {
            if(TrailingStop>0)  
            {                 
               if((NormalizeDouble(OrderStopLoss(),Digits)<NormalizeDouble(Bid-Point*(TrailingStop+TrailingStep),Digits))||(OrderStopLoss()==0))
               {
                  OrderModify(OrderTicket(),OrderOpenPrice(),NormalizeDouble(Bid-Point*TrailingStop,Digits),OrderTakeProfit(),0,Blue);
                  return(0);
               }
            }
         }
         else 
         {
            if(TrailingStop>0)  
            {                 
               if((NormalizeDouble(OrderStopLoss(),Digits)>(NormalizeDouble(Ask+Point*(TrailingStop+TrailingStep),Digits)))||(OrderStopLoss()==0))
               {
                  OrderModify(OrderTicket(),OrderOpenPrice(),NormalizeDouble(Ask+Point*TrailingStop,Digits),OrderTakeProfit(),0,Red);
                  return(0);
               }
            }
         }
      }
   }
}

//|---------break even

void MoveBreakEven()
{
   int cnt,total=OrdersTotal();
   for(cnt=0;cnt<total;cnt++)
   {
      OrderSelect(cnt,SELECT_BY_POS,MODE_TRADES);
      if(OrderType()<=OP_SELL&&OrderSymbol()==Symbol()&&OrderMagicNumber()==Magic)
      {
         if(OrderType()==OP_BUY)
         {
            if(BreakEven>0)
            {
               if(NormalizeDouble((Bid-OrderOpenPrice()),Digits)>BreakEven*Point)
               {
                  if(NormalizeDouble((OrderStopLoss()-OrderOpenPrice()),Digits)<0)
                  {
                     OrderModify(OrderTicket(),OrderOpenPrice(),NormalizeDouble(OrderOpenPrice()+0*Point,Digits),OrderTakeProfit(),0,Blue);
                     return(0);
                  }
               }
            }
         }
         else
         {
            if(BreakEven>0)
            {
               if(NormalizeDouble((OrderOpenPrice()-Ask),Digits)>BreakEven*Point)
               {
                  if(NormalizeDouble((OrderOpenPrice()-OrderStopLoss()),Digits)<0)
                  {
                     OrderModify(OrderTicket(),OrderOpenPrice(),NormalizeDouble(OrderOpenPrice()-0*Point,Digits),OrderTakeProfit(),0,Red);
                     return(0);
                  }
               }
            }
         }
      }
   }
}

//|---------allow one action per bar

bool NewBarBuy()
{
   if(PreviousBarTime1<Time[0])
   {
      PreviousBarTime1=Time[0];
      return(true);
   }
   return(false);
}

bool NewBarSell()
{
   if(PreviousBarTime2<Time[0])
   {
      PreviousBarTime2=Time[0];
      return(true);
   }
   return(false);
}

//|---------calculate money management

void CalculateMM()
{
   double MinLots=MarketInfo(Symbol(),MODE_MINLOT);
   double MaxLots=MarketInfo(Symbol(),MODE_MAXLOT);
   Lots=AccountFreeMargin()/100000*RiskPercent;
   Lots=MathMin(MaxLots,MathMax(MinLots,Lots));
   if(MinLots<0.1)Lots=NormalizeDouble(Lots,2);
   else
   {
     if(MinLots<1)Lots=NormalizeDouble(Lots,1);
     else Lots=NormalizeDouble(Lots,0);
   }
   if(Lots<MinLots)Lots=MinLots;
   if(Lots>MaxLots)Lots=MaxLots;
   return(0);
}

/*
//|---------calculate martingale

void CalculateMartingale()
{
   double MinLots=MarketInfo(Symbol(),MODE_MINLOT);
   double MaxLots=MarketInfo(Symbol(),MODE_MAXLOT);
   if(Balance!=0.0)
   {
      if(Balance>AccountBalance())Lots=Multiplier*Lots;
      else if((Balance+MinProfit)<AccountBalance())Lots=Lots/Multiplier;
      else if((Balance+MinProfit)>=AccountBalance())Lots=Lots;
      if(Lots<MinLots)Lots=MinLots;
      if(Lots>MaxLots)Lots=MaxLots;
   }
   return(0);
}
*/

