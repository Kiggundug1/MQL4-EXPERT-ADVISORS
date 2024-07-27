//+------------------------------------------------------------------+
//|                                             Elder Impulse EA.mq4 |
//|                                                                  |
//|                                                                  |
//+------------------------------------------------------------------+
#property copyright ""
#property link      ""



#include <stdlib.mqh>
#include <stderror.mqh>
#define  PAUSE_BEFORE_RETRY 500

//
//
//
//
//

extern int     MagicNumber                = 00110011;
extern bool    EcnBroker                  = true;
extern bool    NoHedge                    = true;
extern bool    UseAutomaticMM             = true;
extern bool    AllowMultipleTradesOnBar   = false;
extern bool    AllowTradesOnEverySignal   = true;
extern bool    AllowOnlyOneActiveTrade    = true;
extern double  Risk                       = 5;
extern double  BaseLot                    = 0.1;
extern bool    CloseOnTrendChange         = false;
//
//
extern string  ____Positions              = "Positions settings";
extern double  TakeProfitPips             = 0;
extern double  StopLossPips               = 50;
extern double  CloseWhenProfit            = 0;
extern double  CloseWhenLoss              = 0;
extern bool    AllSymbolsForProfitAndLoss = false;
extern bool    StopWhenClosedAllTrades    = false;

extern string  EInlmasettings             = "Elder Impulse_nlma settings";
extern int     ElderTf                    = 60;     
extern int     NlmaPeriod                 = 13;
extern int     MacdFastPeriod             = 12;
extern int     MacdSlowPeriod             = 26;
extern int     MacdSignalPeriod           = 9;
extern int     Price                      = PRICE_CLOSE;
extern string  __shift                    = "Shift how many bars back for indicators to look";
extern int     shift                      = 1;

extern string  ____MinorEntry             = "Using MA for entries too";
extern string  __masets                   = "Ma Filter Settings";
extern bool    SMA.UseForEntry            =  false;
extern int     matf                       = 30;
extern int     MaPeriod                   = 50;
extern int     MAMethod                   = 3;
extern int     MAPrice                    = 0;

extern string  ____EmaTrailingStop        = "Ema trailing stop settings (if used)";
extern bool    UseEMATrailingStop         = false;
extern int     EMA.timeFrame              = 0;
extern int     EMA.price                  = 0;
extern int     EMA.period                 = 13;
extern int     EMA.barToUse               = 2;    
extern int     EMA.initialStopLoss        = 50;
//
//
extern string  ____TimeFilter             = "Time filter settings";
extern string  Trade.startFrom            = "00:00";
extern string  Trade.endAt                = "23:00";
extern bool    Trade.useServerTime        = true;
extern string  ____Other                  = "";
extern int     AllowedSlippage            =  0;
extern bool    showMessages               = false;
//
//
int     NumberOfTries = 5;
double  pipMultiplier = 1;
//
//
string  IEAMessagesID;
int     IEAMessagesIDLength;
#define IEAMessagesIDMagic EMPTY_VALUE
#define IEAMessagesIDExSep "-ex:"

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
//
//
//
//
//

int init()
{
   if (AllSymbolsForProfitAndLoss)
            IEAMessagesID = "KmB"+MagicNumber;
   else     IEAMessagesID = "KmB"+MagicNumber+Symbol();
   IEAMessagesIDLength = StringLen(IEAMessagesID);
   return(0);
}
int deinit() { return(0); }

//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
//
//
//
//
//

#define __trendUp       1
#define __trendDown    -1
#define __trendNeutral  0


//
//
//
//
//

int start()
{     
   if (!CheckTerminalStatus()) return(0);
   if (Digits==3 || Digits==5) 
         pipMultiplier = 10;
   else  pipMultiplier = 1;               

   //
   //
   //
   //
   //

      if (StopLossPips<=0)
           bool forceCloseOnTrendChange = True;
      else      forceCloseOnTrendChange = CloseOnTrendChange; 
           bool stopedTrading           = false;
           int  trendDirection          = findTrend();

                        manageOpenedOrders(trendDirection,forceCloseOnTrendChange,stopedTrading);

      if (stopedTrading) return(0);

   //
   //
   //
   //
   //

         double totalProfit  = 0;
         int    openedBuys   = 0;
         int    openedSells  = 0;
         int    openedOrders = countOpenedOrders(openedBuys,openedSells,totalProfit);
         
         //
         //
         //
         //
         //

         if (CloseWhenProfit>0 &&  totalProfit >= CloseWhenProfit)
         {
            if (StopWhenClosedAllTrades) PostMessage();
                  CloseAll(); openedOrders = countOpenedOrders(openedBuys,openedSells,totalProfit);
         }
         if (CloseWhenLoss > 0 && totalProfit <= -CloseWhenLoss)
         {
            if (StopWhenClosedAllTrades) PostMessage();
                  CloseAll(); openedOrders = countOpenedOrders(openedBuys,openedSells,totalProfit);
         }
         if (FindMessage()) return(0);
      
         //
         //
         //
         //
         //
      
         bool canEnterNewTrade = true;

            if (AllowOnlyOneActiveTrade) canEnterNewTrade = (openedOrders==0);
            else                         canEnterNewTrade = (countOpenedOnACurrentBar()==0);

   //
   //
   //    time fiter checking
   //
   //
      
         if (canEnterNewTrade)
         {
            string     st1 = normalizeTime(Trade.startFrom);
            string     et1 = normalizeTime(Trade.endAt);
            datetime   ts  = StrToTime(TimeToStr(Time[0],TIME_DATE)+st1);
            datetime   te  = StrToTime(TimeToStr(Time[0],TIME_DATE)+et1);
            if (te<ts) te -= 24*60*60;
                    canEnterNewTrade = ((Time[0]>=ts && Time[0]<=te));
         }

   //
   //
   //
   //
   //
   
   if (canEnterNewTrade && trendDirection != __trendNeutral)
   {
      if (!AllowMultipleTradesOnBar) if (countClosedOrders()>0) return(0);
      
      //
      //
      //
      //
      //

      if (!UseEMATrailingStop)
            double tradeLots = getLots(StopLossPips);
      else         tradeLots = getLots(EMA.initialStopLoss);
      if(AccountFreeMargin()<tradeLots*MarketInfo(Symbol(),MODE_MARGINREQUIRED))
         { showTwoStateMessage("money","Not enough money to trade "+DoubleToStr(tradeLots,2),false); return(0); }
      else showTwoStateMessage("money","Continuing to trade",true);
      
      //
      //
      //
      //
      //
      
      if (trendDirection==__trendUp   && openedSells==0) Buy(tradeLots);
      if (trendDirection==__trendDown && openedBuys ==0) Sell(tradeLots);
      
   }  
   return(0);      
}



//----------------------------------------------------------------------------------------
//                                 
//----------------------------------------------------------------------------------------
//
//
//
//    lots and range calculation
//
//
//

double getLots(double range)
{
   RefreshRates();
   double step   = MarketInfo(Symbol(),MODE_LOTSTEP);
   double minLot = MarketInfo(Symbol(),MODE_MINLOT);
   double maxLot = MarketInfo(Symbol(),MODE_MAXLOT);
   double lots   = BaseLot;
   if (UseAutomaticMM)
   {
      if (Risk>0)
      {
         lots = NormalizeDouble(AccountFreeMargin()*Risk/100000,1);
      }
   }      
   return(MathMax(MathMin(lots,maxLot),minLot));   
}


//----------------------------------------------------------------------------------------
//       trend determination       
//----------------------------------------------------------------------------------------
//
//

int findTrend()
{
RefreshRates();


double ElderI1 =iCustom(NULL,ElderTf,"Elder impulse - nlma for EA",NlmaPeriod,MacdFastPeriod,MacdSlowPeriod,MacdSignalPeriod,Price,0,shift+1); // Elder before
double ElderI2 =iCustom(NULL,ElderTf,"Elder impulse - nlma for EA",NlmaPeriod,MacdFastPeriod,MacdSlowPeriod,MacdSignalPeriod,Price,0,shift); // Elder now



bool ElBuy;
bool ElSell;
bool closeAbove;
bool closeBellow;

if (ElderI1 == 0 || ElderI1 == -1 && ElderI2 == +1) ElBuy  = true;
if (ElderI1 == 0 || ElderI1 == +1 && ElderI2 == -1) ElSell = true;

if (Close[1] > iMA(NULL,matf,MaPeriod,0,MAMethod,MAPrice,shift)) closeAbove  = true;
if (Close[1] < iMA(NULL,matf,MaPeriod,0,MAMethod,MAPrice,shift)) closeBellow = true;

if (closeAbove && ElBuy) return(__trendUp);
if (closeBellow && ElSell) return(__trendDown);  
         
                         
}



//----------------------------------------------------------------------------------------
//       orders counters
//----------------------------------------------------------------------------------------
//
//
//
//
//

int countOpenedOrders(int& openedBuys,int& openedSells,double& totalProfit)
{
   int openedOrders = 0;   
       openedBuys   = 0;
       openedSells  = 0;
       totalProfit  = 0;
   
   //
   //
   //
   //
   //
      
   for(int i=0; i < OrdersTotal(); i++)
   {
      if(OrderSelect(i, SELECT_BY_POS, MODE_TRADES) == false) break;
   
      //
      //
      //
      //
      //
      
      if(AllSymbolsForProfitAndLoss)
      {
         if(OrderMagicNumber() == MagicNumber)
         if(OrderType() == OP_BUY || OrderType() == OP_SELL) totalProfit  += (OrderProfit()+OrderSwap()); 
      }
      if(OrderSymbol() != Symbol()) continue;
      if(NoHedge)
      {
         if(OrderType() == OP_BUY)  openedBuys++; 
         if(OrderType() == OP_SELL) openedSells++;
      }
      if(OrderMagicNumber() != MagicNumber) continue;
                  
      //
      //
      //
      //
      //
                  
      if(OrderType() == OP_BUY || OrderType() == OP_SELL) { openedOrders++; if (!AllSymbolsForProfitAndLoss) totalProfit  += (OrderProfit()+OrderSwap()); }
   }      
   return(openedOrders);
}

//
//
//
//
//

int countClosedOrders()
{
   int      closedAtBar = 0;    
   datetime startTime   = Time[0];
   datetime endTime     = Time[0]+Period()*60;
   
   for(int i = OrdersHistoryTotal()-1; i >= 0 ; i--)
   {
      if(OrderSelect(i, SELECT_BY_POS, MODE_HISTORY) == false) break;
      if(OrderMagicNumber() != MagicNumber)                       continue;
      if(OrderSymbol()      != Symbol())                          continue;
      if(OrderCloseTime()<startTime || OrderCloseTime()>=endTime) continue; 
         closedAtBar++;
         break;
   } 
   return(closedAtBar); 
}  

//
//
//
//
//

int countOpenedOnACurrentBar()
{
   int      openedAtBar = 0;    
   datetime startTime   = Time[0];
   datetime endTime     = Time[0]+Period()*60;
   
   for(int i=0; i < OrdersTotal(); i++)
   {
      if(OrderSelect(i, SELECT_BY_POS, MODE_TRADES) == false) break;
      if(OrderMagicNumber() != MagicNumber)                     continue;
      if(OrderSymbol()      != Symbol())                        continue;
      if(OrderOpenTime()<startTime || OrderOpenTime()>=endTime) continue; 
         openedAtBar++;
         break;
   } 
   return(openedAtBar); 
}  



//----------------------------------------------------------------------------------------
//       opened orders management 
//----------------------------------------------------------------------------------------
//
//
//
//
//

void manageOpenedOrders(int currentDirection,bool doCloseOnTrendChange, bool stoped)
{
   double TakeProfit = TakeProfitPips*Point*pipMultiplier;
   double StopLoss   = StopLossPips  *Point*pipMultiplier;
   double newStop;
   double curStop;
   double maxStop;
   
   //
   //
   //
   //
   //
   
   for(int i=OrdersTotal()-1; i >= 0 ; i--)
   {
      if(OrderSelect(i, SELECT_BY_POS, MODE_TRADES) == false) break;
      
      //
      //
      //    check if stop when profit was signaled
      //    do not trade untill the sell stop order expires or is deleted
      //
      //

      if(OrderMagicNumber() == IEAMessagesIDMagic && OrderType()==OP_BUYLIMIT && StopWhenClosedAllTrades)
      {
         if (StringSubstr(OrderComment(),0,IEAMessagesIDLength)==IEAMessagesID)
         {
            int pos = StringFind(OrderComment(),IEAMessagesIDExSep);
            if (pos>-1)
            {
               datetime expiring = StrToDouble(StringSubstr(OrderComment(),pos+4,0));
                     if(expiring <= TimeCurrent())
                     {
                        OrderDelete(OrderTicket());
                        return;
                     }                        
            }
            CloseAll(); stoped=true; return;
         }            
      }

      //
      //
      //
      //
      //
      
      if(OrderMagicNumber() != MagicNumber) continue;
      if(OrderSymbol()      != Symbol())    continue;

      //
      //
      //
      //
      //

      int err = 0;      
      if(OrderType() == OP_BUY)
      {
         if (doCloseOnTrendChange) { if (currentDirection==__trendDown) { CloseOrder(0,OrderTicket()); continue; }}
         if (EcnBroker && StopLoss>0)   { if (OrderStopLoss()==0)   { RefreshRates(); setStopLoss(OrderTicket()  ,OrderOpenPrice()-StopLoss);}}
         if (EcnBroker && TakeProfit>0) { if (OrderTakeProfit()==0) { RefreshRates(); setTakeProfit(OrderTicket(),OrderOpenPrice()+TakeProfit);}}
         
         //
         //
         //
         //
         //
         
         for(int c=0; c<NumberOfTries; c++)
         { 
            RefreshRates();
               if (!UseEMATrailingStop)
                     double trailingStopBuy = Bid-StopLossPips*pipMultiplier;
               else         trailingStopBuy = emaValue(Symbol());
            
               //
               //
               //
               //
               //
               
               curStop = NormalizeDouble(OrderStopLoss(),Digits);
               newStop = NormalizeDouble(trailingStopBuy,Digits);
               maxStop = NormalizeDouble(Bid-MarketInfo(Symbol(),MODE_STOPLEVEL)*Point,Digits);
               if (newStop>curStop && newStop<maxStop)
               {
                  OrderModify(OrderTicket(),OrderOpenPrice(),newStop,OrderTakeProfit(),0);
                  err = GetLastError(); checkError("stop loss modified",err);
               }
        			switch (err)
 	       	   {
        			   case ERR_SERVER_BUSY:
		            case ERR_NO_CONNECTION:
		            case ERR_INVALID_PRICE:
		            case ERR_OFF_QUOTES:
		            case ERR_BROKER_BUSY:
		            case ERR_TRADE_CONTEXT_BUSY:
			                 Sleep(PAUSE_BEFORE_RETRY);
			                 continue;

		            case ERR_PRICE_CHANGED:
		            case ERR_REQUOTE:
				              continue;

		            default:
			                 c=NumberOfTries;
			                 continue;
               }
         }
      }
      
      //
      //
      //
      //
      //
      
      if(OrderType() == OP_SELL)
      {
         if (doCloseOnTrendChange) { if (currentDirection==__trendUp) { CloseOrder(0,OrderTicket()); continue; }}
         if (EcnBroker && StopLoss>0)   { if (OrderStopLoss()==0)   { RefreshRates(); setStopLoss(OrderTicket()  ,OrderOpenPrice()+StopLoss);}}
         if (EcnBroker && TakeProfit>0) { if (OrderTakeProfit()==0) { RefreshRates(); setTakeProfit(OrderTicket(),OrderOpenPrice()-TakeProfit);}}

         //
         //
         //
         //
         //
         
         for(c=0; c<NumberOfTries; c++)
         { 
            RefreshRates();
               if (!UseEMATrailingStop)
                     double trailingStopSell = Bid+StopLossPips*pipMultiplier;
               else         trailingStopSell = emaValue(Symbol());
               
               //
               //
               //
               //
               //
               
               curStop = NormalizeDouble(OrderStopLoss(),Digits);
               newStop = NormalizeDouble(trailingStopSell,Digits);
               maxStop = NormalizeDouble(Ask+MarketInfo(Symbol(),MODE_STOPLEVEL)*Point,Digits);
               if (curStop>0 && newStop<curStop && newStop>maxStop)
               {
                  OrderModify(OrderTicket(),OrderOpenPrice(),newStop,OrderTakeProfit(),0);
                  err = GetLastError(); checkError("stop loss modified",err);
               }                        
        			switch (err)
  	       	   {
        			   case ERR_SERVER_BUSY:
		            case ERR_NO_CONNECTION:
		            case ERR_INVALID_PRICE:
		            case ERR_OFF_QUOTES:
		            case ERR_BROKER_BUSY:
		            case ERR_TRADE_CONTEXT_BUSY:
   		                 Sleep(PAUSE_BEFORE_RETRY);
	  	                    continue;

		            case ERR_PRICE_CHANGED:
		            case ERR_REQUOTE:
   			              continue;

		            default:
			                 c=NumberOfTries;
			                 continue;
               }
         }                  
      }
   }
}




      

//----------------------------------------------------------------------------------------
//       orders management
//----------------------------------------------------------------------------------------
//       buy and sell orders
//----------------------------------------------------------------------------------------
//
//
//
//
//

void setStopLoss(int ticket,double stopLoss)
{
   if (ticket != -1)
   for(int c=0; c<NumberOfTries; c++)
   {
      OrderModify(OrderTicket(),OrderOpenPrice(),stopLoss,OrderTakeProfit(),0);
         int     err = GetLastError(); checkError("stop loss aplied",err);
         switch (err)
	  	   {
            case ERR_SERVER_BUSY:
            case ERR_NO_CONNECTION:
            case ERR_INVALID_PRICE:
            case ERR_OFF_QUOTES:
            case ERR_BROKER_BUSY:
            case ERR_TRADE_CONTEXT_BUSY:
			        Sleep(PAUSE_BEFORE_RETRY);
			        continue;

            case ERR_PRICE_CHANGED:
			   case ERR_REQUOTE:
				     continue;

            default:
	              c=NumberOfTries;
	              continue;
         }
   }
}

//
//
//
//
//

void setTakeProfit(int ticket,double takeProfit)
{
   if (ticket != -1)
   for(int c=0; c<NumberOfTries; c++)
   {
      OrderModify(OrderTicket(),OrderOpenPrice(),OrderStopLoss(),takeProfit,0);
         int     err = GetLastError(); checkError("stop loss aplied",err);
         switch (err)
	  	   {
            case ERR_SERVER_BUSY:
            case ERR_NO_CONNECTION:
            case ERR_INVALID_PRICE:
            case ERR_OFF_QUOTES:
            case ERR_BROKER_BUSY:
            case ERR_TRADE_CONTEXT_BUSY:
			        Sleep(PAUSE_BEFORE_RETRY);
			        continue;

            case ERR_PRICE_CHANGED:
			   case ERR_REQUOTE:
				     continue;

            default:
	              c=NumberOfTries;
	              continue;
         }
   }
}

//
//
//
//
//

void Buy(double Lots)
{ 
   double TakeProfit = TakeProfitPips*Point*pipMultiplier;
   double StopLoss   = StopLossPips  *Point*pipMultiplier;
   if (UseEMATrailingStop)
                       StopLoss = EMA.initialStopLoss*Point*pipMultiplier;
   
   //
   //
   //
   //
   //
   
   if (IsTesting() || CheckTradeAllowed())
   for(int c=0; c<NumberOfTries; c++)
   { 
      RefreshRates();
      double sl=0;
      double tp=0;
         if (!EcnBroker)
         {
            if (StopLoss>0)   sl = Ask-StopLoss;
            if (TakeProfit>0) tp = Ask+TakeProfit;
         }            
         int ticket = OrderSend(Symbol(),OP_BUY,Lots,Ask,AllowedSlippage*pipMultiplier,sl,tp,"PCBreakout - buy",MagicNumber,0,Blue);
         
         //
         //
         //
         //
         //
         
         int     err = GetLastError(); checkError("buy order opened",err);
  			switch (err)
         {
            case ERR_NO_ERROR:
                 if (EcnBroker && StopLoss>0)   setStopLoss(ticket,Ask-StopLoss);
                 if (EcnBroker && TakeProfit>0) setTakeProfit(ticket,Ask+TakeProfit);
                     c=NumberOfTries;
                 continue;
			                 
			   case ERR_SERVER_BUSY:
            case ERR_NO_CONNECTION:
            case ERR_INVALID_PRICE:
            case ERR_OFF_QUOTES:
            case ERR_BROKER_BUSY:
            case ERR_TRADE_CONTEXT_BUSY:
                 Sleep(PAUSE_BEFORE_RETRY);
                 continue;

            case ERR_PRICE_CHANGED:
            case ERR_REQUOTE:
	              continue;

            default:
                 c=NumberOfTries;
                 continue;
         }
   } 	    
}

//
//
//
//
//

void Sell(double Lots)
{        
   double TakeProfit = TakeProfitPips*Point*pipMultiplier;
   double StopLoss   = StopLossPips  *Point*pipMultiplier;
   if (UseEMATrailingStop)
                       StopLoss = EMA.initialStopLoss*Point*pipMultiplier;
      
   //
   //
   //
   //
   //
   
   if (IsTesting() || CheckTradeAllowed())
   for(int c=0;c <NumberOfTries; c++)
   { 
      RefreshRates();
      double sl=0;
      double tp=0;
         if (!EcnBroker)
         {
            if (StopLoss>0)   sl = Bid+StopLoss;
            if (TakeProfit>0) tp = Bid-TakeProfit;
         }
         int ticket = OrderSend(Symbol(),OP_SELL,Lots,Bid,AllowedSlippage*pipMultiplier,sl,tp,"PCBreakout - sell",MagicNumber,0,Red);
         
         //
         //
         //
         //
         //
         
         int     err = GetLastError(); checkError("sell order opened",err);
  			switch (err)
         {
            case ERR_NO_ERROR:
                 if (EcnBroker && StopLoss>0)   setStopLoss(ticket,Bid+StopLoss);
                 if (EcnBroker && TakeProfit>0) setTakeProfit(ticket,Bid-TakeProfit);
                     c=NumberOfTries;
                 continue;
			                 
			   case ERR_SERVER_BUSY:
            case ERR_NO_CONNECTION:
            case ERR_INVALID_PRICE:
            case ERR_OFF_QUOTES:
            case ERR_BROKER_BUSY:
            case ERR_TRADE_CONTEXT_BUSY:
                 Sleep(PAUSE_BEFORE_RETRY);
                 continue;

            case ERR_PRICE_CHANGED:
            case ERR_REQUOTE:
	              continue;

            default:
                 c=NumberOfTries;
                 continue;
         }
   }
}




//----------------------------------------------------------------------------------------
//       orders closing and closing all (take profit mode)
//----------------------------------------------------------------------------------------
//
//
//
//
//

void CloseAll()
{
   for (int i=OrdersTotal()-1; i>=0; i--)
   { 
      OrderSelect(i, SELECT_BY_POS,MODE_TRADES);
      if (OrderMagicNumber()!=MagicNumber) continue;
      if (!AllSymbolsForProfitAndLoss)
      if (OrderSymbol() != Symbol())       continue;

      //
      //
      //
      //
      //

      if (OrderType()==OP_BUY || OrderType()==OP_SELL)
      {
         for(int c=0 ; c<3; c++)
         {
            OrderClose(OrderTicket(),OrderLots(),OrderClosePrice(),0,CLR_NONE);
            int     err=GetLastError(); checkError(OrderSymbol()+" order closed",err);
     			switch (err)
            {
   			   case ERR_SERVER_BUSY:
               case ERR_NO_CONNECTION:
               case ERR_INVALID_PRICE:
               case ERR_OFF_QUOTES:
               case ERR_BROKER_BUSY:
               case ERR_TRADE_CONTEXT_BUSY:
                    Sleep(PAUSE_BEFORE_RETRY);
                    continue;

               case ERR_PRICE_CHANGED:
               case ERR_REQUOTE:
	                continue;

               default:
                    c=NumberOfTries;
                    continue;
            }                 
         }
      }
   }
}

//
//
//
//
//

void CloseOrder(double lotsToClose=0,int ticket=-1)
{
   double minLot = NormalizeDouble(MarketInfo(Symbol(),MODE_MINLOT),2);
   string message;

   //
   //
   //
   //
   //
      
   if (IsTesting() || CheckTradeAllowed())
   for(int i=OrdersTotal()-1; i>=0; i--)
   {
      OrderSelect(i, SELECT_BY_POS, MODE_TRADES);
      if (OrderMagicNumber()!=MagicNumber) continue;
      if (OrderSymbol() != Symbol())       continue;
      if (ticket!=-1)
         if (OrderTicket()!=ticket) continue;
         
      //
      //
      //
      //
      //
         
      if (OrderType()==OP_BUY || OrderType()==OP_SELL)
      {
         if (OrderType()==OP_BUY)
               { string operation = "buy"; color theColor  = Blue;}  
         else  {        operation = "sell";      theColor  = Red; }
            
         //
         //
         //
         //
         //

         if (lotsToClose==0) lotsToClose = OrderLots();
         if (lotsToClose!=OrderLots())
         {
            lotsToClose = MathMax(minLot,lotsToClose);
               if (OrderLots() < 2.0*minLot)
                  lotsToClose = OrderLots();
         }               
            
         if (lotsToClose!=OrderLots())
                  message="partialy closed "+operation+" - closed "+DoubleToStr(lotsToClose,2)+" lots";
         else     message=operation+" order closed";
            
         //
         //
         //
         //
         //
            
         for(int c=0 ; c<NumberOfTries; c++)
         {
            RefreshRates();
            if (OrderType()==OP_BUY)
                  double cp = Bid;  
            else         cp = Ask;
               
            //
            //
            //
            //
            //
               
            OrderClose(OrderTicket(),lotsToClose,cp,AllowedSlippage*pipMultiplier,theColor);
            int err=GetLastError();  checkError(message,err);
     			switch (err)
            {
    			   case ERR_SERVER_BUSY:
               case ERR_NO_CONNECTION:
               case ERR_INVALID_PRICE:
               case ERR_OFF_QUOTES:
               case ERR_BROKER_BUSY:
               case ERR_TRADE_CONTEXT_BUSY:
                    Sleep(PAUSE_BEFORE_RETRY);
                    continue;

               case ERR_PRICE_CHANGED:
               case ERR_REQUOTE:
    	              continue;

               default:
                    c=NumberOfTries;
                    continue;
            }
         }
      }            
   }  
}


//----------------------------------------------------------------------------------------
//       miscellaneus functions           
//----------------------------------------------------------------------------------------
//
//
//
//
//

string normalizeTime(string time)
{
   int sepAt  = StringFind(time,":",0);
   int hour   = StrToInteger(StringSubstr(time,0,sepAt));
   int minute = StrToInteger(StringSubstr(time,sepAt+1,0));
   
   //
   //
   //
   //
   //
   
   hour   = MathMax(MathMin(hour  ,24),0);
   minute = MathMax(MathMin(minute,59),0);
   string answer="";
      while(true)
      {
         if (hour==0) { answer="00";     break; }
         if (hour<10) { answer="0"+hour; break; }
                        answer=    hour; break; 
      }                        
      while(true)
      {
         if (minute==0) { answer=answer+":00";       break; }
         if (minute<10) { answer=answer+":0"+minute; break; }
                          answer=answer+":" +minute; break; 
      }
   return(" "+answer); 
}

//
//
//
//
//

double emaValue(string symbol)
{
   double ema = iMA(symbol,EMA.timeFrame,EMA.period,0,MODE_EMA,EMA.price,EMA.barToUse);
   return(ema);
}

//----------------------------------------------------------------------------------------
//       terminal status handling
//----------------------------------------------------------------------------------------
//
//
//
//
//

bool CheckTradeAllowed() { return(IsTradeAllowed() && !IsStopped() && IsExpertEnabled() && !IsTradeContextBusy()); }
bool CheckTerminalStatus()
{
   bool status=false;
   
   //
   //
   //
   //
   //
   
   while(true)
   {
         if (!IsConnected())
             { showTwoStateMessage("connected","No connection to server",False); break; }
         else  showTwoStateMessage("connected","Reconected to server",true);
         if ( IsStopped())
             { showTwoStateMessage("stopped","EA stopped",False); break; }  
         else  showTwoStateMessage("stopped","EA started again",true);
         if (!IsTradeAllowed())
             { showTwoStateMessage("allowed","Trading not allowed",false); break; }
         else  showTwoStateMessage("allowed","Trading allowed again",true);
         if (!IsExpertEnabled() && !IsTesting())
            { showTwoStateMessage("disabled","EA''s are disabled",false); break; }
         else showTwoStateMessage("disabled","EA''s are enabled again",true);
         if ( IsTradeContextBusy())
            { showTwoStateMessage("busy","Trade contest busy",false); break; }
         else showTwoStateMessage("busy","Trade contest ready again",true);

      //
      //
      //
      //
      //
      
      status=true;
      break;
   }
   return(status);
}


//----------------------------------------------------------------------------------------
//       inter EA messages handling
//----------------------------------------------------------------------------------------
//
//
//
//
//
//

bool FindMessage()
{
   bool found=false;
   for (int i=OrdersTotal()-1; i>=0; i--)
   {
      if (OrderSelect(i,SELECT_BY_POS,MODE_TRADES))
      if (OrderMagicNumber() == IEAMessagesIDMagic)
      if (OrderComment()     == IEAMessagesID)
      {
        found=true; break;
      }
   }
   return(found);
}

//
//
//
//
//

void PostMessage()
{
   string   message    = IEAMessagesID;
   int      timeToAdd  = 660;
   double   lot        = MarketInfo(Symbol(),MODE_MINLOT);
   datetime expiration = Time[0]+24*3600;
            expiration = StrToTime(TimeToStr(expiration,TIME_DATE)+" 00:00");
   
   //
   //
   //
   //
   //
   
   if (!FindMessage())
   {
     for(int c=0; c<NumberOfTries; c++)
      {
         expiration = MathMax(expiration,TimeCurrent()+timeToAdd);
         
         //
         //
         //
         //
         //
         
         OrderSend(Symbol(),OP_BUYLIMIT,lot,Point,0,0,0,message,IEAMessagesIDMagic,expiration,CLR_NONE);
         int err = GetLastError();
      	switch (err)
 	      {
 	         case ERR_TRADE_EXPIRATION_DENIED:
 	               if (expiration !=0)
 	               {
 	                  message    = IEAMessagesID+IEAMessagesIDExSep+expiration;
                     expiration = 0; 	                   
 	               }
 	               continue;
 	         
            case ERR_INVALID_TRADE_PARAMETERS:
                  timeToAdd += 300;
                  continue;

            case ERR_SERVER_BUSY:
		      case ERR_NO_CONNECTION:
		      case ERR_INVALID_PRICE:
		      case ERR_OFF_QUOTES:
		      case ERR_BROKER_BUSY:
		      case ERR_TRADE_CONTEXT_BUSY:
			          Sleep(PAUSE_BEFORE_RETRY);
			          continue;

            case ERR_PRICE_CHANGED:
            case ERR_REQUOTE:
		              continue;

            default:
	                 c=NumberOfTries;
	                 continue;
         }
      }
   }             
}


//----------------------------------------------------------------------------------------
//       messages handling
//----------------------------------------------------------------------------------------
//
//
//
//
//
//

bool   msg.errState[];
string msg.errNames[];
string msg.messageText[10];
color  msg.messageColor[10];
int    msg.lastMessage=0;

//
//
//
//
//

void checkError(string what,int err)
{
   showMessage(what);
   if(err!=0)
         showMessage("error occured :"+ErrorDescription(err),Red);

}

//
//
//
//
//

void showTwoStateMessage(string name, string message, bool state)
{
   for(int i=ArraySize(msg.errNames)-1; i>=0; i--) if (msg.errNames[i]==name) break;
   if (i==-1)
      {
         int size = ArraySize(msg.errNames)+1;
         i = size-1;
            ArrayResize(msg.errNames,size); msg.errNames[i] = name;
            ArrayResize(msg.errState,size); msg.errState[i] = true;
      }

   //
   //
   //
   //
   //

   if (msg.errState[i]!= state)
   {   
      msg.errState[i] = state;
      if (state==false)
            showMessage(message,Red);
      else  showMessage(message,Green);
   }      
}

//
//
//
//
//

void showMessage(string text, color theColor=Gray)
{
   if(!showMessages) { Print(text); return; }
   
   //
   //
   //
   //
   //
   
   if(msg.lastMessage>9)
   {
      for(int i=0; i<9; i++)
      {
         msg.messageText[i] =msg.messageText[i+1];
         msg.messageColor[i]=msg.messageColor[i+1];
      }
      msg.lastMessage = 9;
   }

   //
   //
   //    set message que text and color
   //
   //
   
      msg.messageText[msg.lastMessage]  = text+" - "+TimeToStr(TimeCurrent(),TIME_DATE|TIME_SECONDS);
      msg.messageColor[msg.lastMessage] = theColor;
   
   //
   //
   //
   //
   //
      
   for(i=0; i<=msg.lastMessage; i++)
   {
      string name = "msg.que"+i;
      if (ObjectFind(name) == -1)
      {
         ObjectCreate(name,OBJ_LABEL,0,0,0);
            ObjectSet(name,OBJPROP_CORNER,3);
            ObjectSet(name,OBJPROP_XDISTANCE,5);
            ObjectSet(name,OBJPROP_YDISTANCE,5+14*i);
      }
      ObjectSetText(name,msg.messageText[i],9,"Arial",msg.messageColor[i]);
   }
   msg.lastMessage++;
   WindowRedraw();
}