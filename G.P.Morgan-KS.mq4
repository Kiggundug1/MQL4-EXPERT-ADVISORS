#property copyright "http://biggame24.tripod.com/"
extern string com0 = "Колличество знаков в лоте после запятой";
extern int lot_st = 2;
extern string com1 = "Размер лота";
extern double Lots = 0.01;
extern double LotExponent = 1.667;
extern double TakeProfit = 10;
extern double Stoploss = 500;
extern double TrailStart = 10;
extern double TrailStop = 10;
extern double PipStep = 30;
extern int Insure1 = 0;
extern int Insure2 = 0;
extern int MaxTrades = 10;
extern bool UseEquityStop = false;
extern double TotalEquityRisk = 20; //loss as a percentage of equity
extern bool UseTrailingStop = false;
extern bool UseTimeOut = false;
extern double MaxTradeOpenHours = 48;
extern double slip = 3;

extern int MagicNumber = 88824;
double PriceTarget, StartEquity, BuyTarget, SellTarget;
double AveragePrice, SellLimit, BuyLimit;
double LastBuyPrice, LastSellPrice, ClosePrice, Spread;
int flag;
extern string EAName = "G.P.Morgan-KS";
Comment("BigGame24.tripod.com");
datetime timeprev=0, expiration;
int NumOfTrades=0;
double iLots;
int cnt=0, total;
double Stopper=0;  
bool TradeNow = false, LongTrade=false, ShortTrade=false;
int ticket;
bool NewOrdersPlaced = false;// установленные ордера

int init()
{
 Spread = MarketInfo(Symbol(), MODE_SPREAD)*Point;
 return(0);
}

int deinit()
{
 return(0);
}

int start()
{
  
 if (UseTrailingStop)   TrailingAlls(TrailStart, TrailStop, AveragePrice); //потом
 if (UseTimeOut) // по умолчанию false
  if(CurTime() >= expiration)             //потом
  {
   CloseThisSymbolAll();
   Print("Closed All due to TimeOut");
  }
  
 if(timeprev==Time[0])
  return(0);
 timeprev=Time[0];
 
  double CurrentPairProfit = CalculateProfit(); //подсчет текущего профита
  if(UseEquityStop)//внешний параметр - типа "стоп лосс"
  if(CurrentPairProfit<0 && MathAbs(CurrentPairProfit)>(TotalEquityRisk/100)*AccountEquityHigh())
  {
   CloseThisSymbolAll();
   Print("Closed All due to Stop Out");
   NewOrdersPlaced = false;
  }

   int total=OrdersTotal();
  int count=0;
  for(int pos=0;pos<total;pos++)
    {
     if(OrderSelect(pos,SELECT_BY_POS,MODE_TRADES)==false) continue;
      count++;
    }
 
  total=CountTrades(); // количество сделок с конкретным идентификационным номером (открытых)
  if (total == 0) flag = 0;
  for(cnt=OrdersTotal()-1;cnt>=0;cnt--)//проверка - в какую сторону открыта сделка
  {
    OrderSelect(cnt,SELECT_BY_POS,MODE_TRADES);

    if(OrderSymbol()!=Symbol()||OrderMagicNumber()!=MagicNumber)
     continue;
   
    if(OrderSymbol()==Symbol()&&OrderMagicNumber()==MagicNumber)
    if(OrderType()==OP_BUY)
    {
     if(Insure1!=0||Insure2!=0)
          if(Insure1==count||Insure2==count) 
            {
            LongTrade = true;
            ShortTrade = false;
            break;
            }
            else {
                  LongTrade = false;     
                  ShortTrade = true;
                  break;
                 }
            
     else {
          LongTrade = true;
          ShortTrade = false;
          break;
          }
    }
    if(OrderSymbol()==Symbol()&&OrderMagicNumber()==MagicNumber)
    if(OrderType()==OP_SELL)
    {
     if(Insure1!=0||Insure2!=0)
          if(Insure1==count||Insure2==count) 
            {
            LongTrade = false;
            ShortTrade = true;
            break;
            }
            else {
                  LongTrade = true;     
                  ShortTrade = false;
                  break;
                 }
            
     else {
          LongTrade = false;
          ShortTrade = true;
          break;
          }
    }
  }
  
  if(total>0 && total <= MaxTrades)//если график ушел больше/меньше PipStep то открываем сделку
  {
   RefreshRates();
   LastBuyPrice = FindLastBuyPrice();
   LastSellPrice = FindLastSellPrice();
   if(LongTrade && (LastBuyPrice - Ask) >= (PipStep*Point))
   {
     TradeNow = true;
   }
   if(ShortTrade && (Bid - LastSellPrice) >= (PipStep*Point))
   {
     TradeNow = true;
   }
  } 
  
  if (total < 1)
  {
   ShortTrade = false;
   LongTrade = false;
   TradeNow = true;
   StartEquity = AccountEquity();//Возвращает сумму собственных средств для текущего счета. Расчет equity зависит от настроек торгового сервера. 
  }

  if (TradeNow) //если график дернулся больше PipStep открываем сделку в противоположную сторону
  {
    LastBuyPrice = FindLastBuyPrice();
    LastSellPrice = FindLastSellPrice();
   if(ShortTrade)
   {
    NumOfTrades = total;
    iLots = NormalizeDouble(Lots*MathPow(LotExponent,NumOfTrades),lot_st);
    RefreshRates();
    ticket = OpenPendingOrder(OP_SELL,iLots,Bid,slip,Ask,0,0,EAName+"-"+NumOfTrades,MagicNumber,0,HotPink);
    if(ticket<0){Print("Error: ",GetLastError()); return(0);}
     LastSellPrice = FindLastSellPrice();
    TradeNow = false;
    NewOrdersPlaced = true;
   }
   else if (LongTrade)
   {   
    NumOfTrades = total;
    iLots = NormalizeDouble(Lots*MathPow(LotExponent,NumOfTrades),lot_st);
    ticket = OpenPendingOrder(OP_BUY,iLots,Ask,slip,Bid,0,0,EAName+"-"+NumOfTrades,MagicNumber,0,Lime);
    if(ticket<0){Print("Error: ",GetLastError()); return(0);}
     LastBuyPrice = FindLastBuyPrice();
    TradeNow = false;
    NewOrdersPlaced = true;
   }
  }
  
  if (TradeNow && total<1) //если сделок открытых нет
  {

   double PrevCl = iClose(Symbol(),0,2);//Возвращает значение цены закрытия
   double CurrCl = iClose(Symbol(),0,1);
    SellLimit = Bid;   
    BuyLimit = Ask;
   
   if (!ShortTrade && !LongTrade)
   {
    NumOfTrades = total;
    iLots = NormalizeDouble(Lots*MathPow(LotExponent,NumOfTrades),lot_st);
    if(PrevCl > CurrCl)
    {
     ticket = OpenPendingOrder(OP_SELL,iLots,SellLimit,slip,SellLimit,0,0,EAName+"-"+NumOfTrades,MagicNumber,0,HotPink);
     if(ticket<0){Print("Error: ",GetLastError()); return(0);}
      LastBuyPrice = FindLastBuyPrice();
     NewOrdersPlaced = true;
    }   
    else
    {
     ticket = OpenPendingOrder(OP_BUY,iLots,BuyLimit,slip,BuyLimit,0,0,EAName+"-"+NumOfTrades,MagicNumber,0,Lime);
     if(ticket<0){Print("Error: ",GetLastError()); return(0);}
      LastSellPrice = FindLastSellPrice();
     NewOrdersPlaced = true;
    }
    if(ticket>0) expiration = CurTime()+MaxTradeOpenHours*60*60;
    TradeNow = false;
   }
  }

//----------------------- CALCULATE AVERAGE OPENING PRICE
   total=CountTrades();
   AveragePrice=0;
   double Count = 0;
   for(cnt=OrdersTotal()-1;cnt>=0;cnt--)
   {
    OrderSelect(cnt, SELECT_BY_POS, MODE_TRADES);
    if(OrderSymbol()!=Symbol()||OrderMagicNumber()!=MagicNumber)
     continue;
    if(OrderSymbol()==Symbol()&&OrderMagicNumber()==MagicNumber)
     if(OrderType()==OP_BUY || OrderType()==OP_SELL)  
      {
       AveragePrice=AveragePrice+OrderOpenPrice()*OrderLots();
       Count = Count + OrderLots();
      }
   }
   if(total > 0)
    AveragePrice=NormalizeDouble(AveragePrice/Count, Digits);

   
//----------------------- RECALCULATE STOPLOSS & PROFIT TARGET BASED ON AVERAGE OPENING PRICE
   if(NewOrdersPlaced)
   for(cnt=OrdersTotal()-1;cnt>=0;cnt--)
   {
    OrderSelect(cnt, SELECT_BY_POS, MODE_TRADES);
    if(OrderSymbol()!=Symbol()||OrderMagicNumber()!=MagicNumber)
     continue;
    if(OrderSymbol()==Symbol()&&OrderMagicNumber()==MagicNumber)
     if(OrderType()==OP_BUY) // Calculate profit/stop target for long 
     {
      PriceTarget=AveragePrice+(TakeProfit*Point);
      BuyTarget = PriceTarget;
      Stopper=AveragePrice-(Stoploss*Point); 
//      Stopper=0; 
      flag = 1;
     }
    if(OrderSymbol()==Symbol()&&OrderMagicNumber()==MagicNumber)
     if(OrderType()==OP_SELL) // Calculate profit/stop target for short
     {
      PriceTarget=AveragePrice-(TakeProfit*Point);
      SellTarget = PriceTarget;
      Stopper=AveragePrice+(Stoploss*Point);  
//      Stopper=0; 
      flag = 1; 
     }
   }
//----------------------- IF NEEDED CHANGE ALL OPEN ORDERS TO NEWLY CALCULATED PROFIT TARGET    
  if(NewOrdersPlaced)
  if(flag==1)// check if average has really changed
  {   
   for(cnt=OrdersTotal()-1;cnt>=0;cnt--)
    {
//     PriceTarget=total;
     OrderSelect(cnt, SELECT_BY_POS, MODE_TRADES);            
     if(OrderSymbol()!=Symbol()||OrderMagicNumber()!=MagicNumber)
      continue;
     if(OrderSymbol()==Symbol()&&OrderMagicNumber()==MagicNumber)
//      OrderModify(OrderTicket(),0,Stopper,PriceTarget,0,Yellow);// set all positions to averaged levels
      OrderModify(OrderTicket(),AveragePrice,OrderStopLoss(),PriceTarget,0,Yellow);// set all positions to averaged levels
     NewOrdersPlaced = false;
    }
  }
}

int CountTrades()
{
 int count=0;
 int trade;
 for(trade=OrdersTotal()-1;trade>=0;trade--)
 {
  OrderSelect(trade,SELECT_BY_POS,MODE_TRADES);
  
  if(OrderSymbol()!=Symbol()||OrderMagicNumber()!=MagicNumber)
   continue;
   
  if(OrderSymbol()==Symbol()&&OrderMagicNumber()==MagicNumber)
  if(OrderType()==OP_SELL || OrderType()==OP_BUY)
   count++;
 }//for
 return(count);
}


void CloseThisSymbolAll()
{
 int trade;
 for(trade=OrdersTotal()-1;trade>=0;trade--)
 {
  OrderSelect(trade,SELECT_BY_POS,MODE_TRADES);

  if(OrderSymbol()!=Symbol())
   continue;
  if(OrderSymbol()==Symbol() && OrderMagicNumber()== MagicNumber)
  {
   if(OrderType()==OP_BUY)
    OrderClose(OrderTicket(),OrderLots(),Bid,slip,Blue);

   if(OrderType()==OP_SELL)
    OrderClose(OrderTicket(),OrderLots(),Ask,slip,Red);
  }
  Sleep(1000);
 }
}

int OpenPendingOrder(int pType,double pLots,double pLevel,int sp, double pr, int sl, int tp,string pComment,int pMagic,datetime pExpiration,color pColor)
{
  int ticket=0;
  int err=0;
  int c = 0;
  int NumberOfTries = 100;
  switch (pType)
  {
      case OP_BUYLIMIT:
         for(c = 0 ; c < NumberOfTries ; c++)
         {
            ticket=OrderSend(Symbol(),OP_BUYLIMIT,pLots,pLevel,sp,StopLong(pr,sl),TakeLong(pLevel,tp),pComment,pMagic,pExpiration,pColor);
            err=GetLastError();
            if(err==0)
            { 
               break;
            }
            else
            {
               if(err==4 || err==137 ||err==146 || err==136) //Busy errors
               {
                  Sleep(1000);
                  continue;
               }
               else //normal error
               {
                  break;
               }  
            }
         }   
         break;
      case OP_BUYSTOP:
         for(c = 0 ; c < NumberOfTries ; c++)
         {
            ticket=OrderSend(Symbol(),OP_BUYSTOP,pLots,pLevel,sp,StopLong(pr,sl),TakeLong(pLevel,tp),pComment,pMagic,pExpiration,pColor);
            err=GetLastError();
            if(err==0)
            { 
               break;
            }
            else
            {
               if(err==4 || err==137 ||err==146 || err==136) //Busy errors
               {
                  Sleep(5000);
                  continue;
               }
               else //normal error
               {
                  break;
               }  
            }
         } 
         break;
      case OP_BUY:
         for(c = 0 ; c < NumberOfTries ; c++)
         {  
            RefreshRates();
            ticket=OrderSend(Symbol(),OP_BUY,pLots,Ask,sp,StopLong(Bid,sl),TakeLong(Ask,tp),pComment,pMagic,pExpiration,pColor);
            err=GetLastError();
            if(err==0)
            { 
               break;
            }
            else
            {
               if(err==4 || err==137 ||err==146 || err==136) //Busy errors
               {
                  Sleep(5000);
                  continue;
               }
               else //normal error
               {
                  break;
               }  
            }
         } 
         break;
      case OP_SELLLIMIT:
         for(c = 0 ; c < NumberOfTries ; c++)
         {
            ticket=OrderSend(Symbol(),OP_SELLLIMIT,pLots,pLevel,sp,StopShort(pr,sl),TakeShort(pLevel,tp),pComment,pMagic,pExpiration,pColor);
            err=GetLastError();
            if(err==0)
            { 
               break;
            }
            else
            {
               if(err==4 || err==137 ||err==146 || err==136) //Busy errors
               {
                  Sleep(5000);
                  continue;
               }
               else //normal error
               {
                  break;
               }  
            }
         } 
         break;
      case OP_SELLSTOP:
         for(c = 0 ; c < NumberOfTries ; c++)
         {
            ticket=OrderSend(Symbol(),OP_SELLSTOP,pLots,pLevel,sp,StopShort(pr,sl),TakeShort(pLevel,tp),pComment,pMagic,pExpiration,pColor);
            err=GetLastError();
            if(err==0)
            { 
               break;
            }
            else
            {
               if(err==4 || err==137 ||err==146 || err==136) //Busy errors
               {
                  Sleep(5000);
                  continue;
               }
               else //normal error
               {
                  break;
               }  
            }
         } 
         break;
      case OP_SELL:
         for(c = 0 ; c < NumberOfTries ; c++)
         {
            ticket=OrderSend(Symbol(),OP_SELL,pLots,Bid,sp,StopShort(Ask,sl),TakeShort(Bid,tp),pComment,pMagic,pExpiration,pColor);
            err=GetLastError();
            if(err==0)
            { 
               break;
            }
            else
            {
               if(err==4 || err==137 ||err==146 || err==136) //Busy errors
               {
                  Sleep(5000);
                  continue;
               }
               else //normal error
               {
                  break;
               }  
            }
         } 
         break;
  } 
  
  return(ticket);
}  

double StopLong(double price,int stop)
{
 if(stop==0)
  return(0);
 else
  return(price-(stop*Point));
}

double StopShort(double price,int stop)
{
 if(stop==0)
  return(0);
 else
  return(price+(stop*Point));
}

double TakeLong(double price,int take)
{
 if(take==0)
  return(0);
 else
  return(price+(take*Point));
}

double TakeShort(double price,int take)
{
 if(take==0)
  return(0);
 else
  return(price-(take*Point));
}


double CalculateProfit()
{

   double Profit=0;
   for(cnt=OrdersTotal()-1;cnt>=0;cnt--)
   {
    OrderSelect(cnt, SELECT_BY_POS, MODE_TRADES);
    if(OrderSymbol()!=Symbol()||OrderMagicNumber()!=MagicNumber)
     continue;
    if(OrderSymbol()==Symbol() && OrderMagicNumber()==MagicNumber)
     if(OrderType()==OP_BUY || OrderType()==OP_SELL)  
      {
       Profit=Profit+OrderProfit();
      }
   }

  return(Profit);
}

void TrailingAlls(int start,int stop, double AvgPrice)
{
 int profit;
 double stoptrade;
 double stopcal;
 
 if(stop==0)
  return;
 
 int trade;
 for(trade=OrdersTotal()-1;trade>=0;trade--)
 {
  if(!OrderSelect(trade,SELECT_BY_POS,MODE_TRADES))
   continue;

  if(OrderSymbol()!=Symbol()||OrderMagicNumber()!=MagicNumber)
   continue;

  if(OrderSymbol()==Symbol()||OrderMagicNumber()==MagicNumber)
  {
   if(OrderType()==OP_BUY)
   {
    profit=NormalizeDouble((Bid-AvgPrice)/Point,0);
    if(profit<start)
     continue;
    stoptrade=OrderStopLoss();
    stopcal=Bid-(stop*Point);
    if(stoptrade==0||(stoptrade!=0&&stopcal>stoptrade))
//     OrderModify(OrderTicket(),OrderOpenPrice(),stopcal,OrderTakeProfit(),0,Blue);
     OrderModify(OrderTicket(),AvgPrice,stopcal,OrderTakeProfit(),0,Aqua);
   }//Long
  
   if(OrderType()==OP_SELL)
   {
    profit=NormalizeDouble((AvgPrice-Ask)/Point,0);
    if(profit<start)
     continue;
    stoptrade=OrderStopLoss();
    stopcal=Ask+(stop*Point);
    if(stoptrade==0||(stoptrade!=0&&stopcal<stoptrade))
//     OrderModify(OrderTicket(),OrderOpenPrice(),stopcal,OrderTakeProfit(),0,Red);
     OrderModify(OrderTicket(),AvgPrice,stopcal,OrderTakeProfit(),0,Red);
   }//Shrt
  }
  Sleep(1000);
 }//for
}




double AccountEquityHigh()
{
 static double AccountEquityHighAmt,PrevEquity;
  if(CountTrades()==0) AccountEquityHighAmt=AccountEquity();
   if(AccountEquityHighAmt < PrevEquity) AccountEquityHighAmt=PrevEquity;
   else AccountEquityHighAmt=AccountEquity();
  PrevEquity = AccountEquity();
 return(AccountEquityHighAmt);
}


double FindLastBuyPrice()//возвращает номер последней сделки бай
{
 double oldorderopenprice = 0, orderprice;
 int cnt, oldticketnumber = 0, ticketnumber;
 
 for(cnt=OrdersTotal()-1;cnt>=0;cnt--)
 {
  OrderSelect(cnt, SELECT_BY_POS, MODE_TRADES);
  if(OrderSymbol()!=Symbol()||OrderMagicNumber()!=MagicNumber)
   continue;
  if(OrderSymbol()==Symbol() && OrderMagicNumber()==MagicNumber && OrderType()==OP_BUY)  
  {
     ticketnumber = OrderTicket();
     if(ticketnumber>oldticketnumber)
     {
      orderprice=OrderOpenPrice();
      oldorderopenprice=orderprice;
      oldticketnumber=ticketnumber;
     }
  }
 }
 
  return(orderprice);
}

double FindLastSellPrice()
{
 double oldorderopenprice = 0, orderprice;
 int cnt, oldticketnumber = 0, ticketnumber;
 
 for(cnt=OrdersTotal()-1;cnt>=0;cnt--)
 {
  OrderSelect(cnt, SELECT_BY_POS, MODE_TRADES);
  if(OrderSymbol()!=Symbol()||OrderMagicNumber()!=MagicNumber)
   continue;
  if(OrderSymbol()==Symbol() && OrderMagicNumber()==MagicNumber && OrderType()==OP_SELL)  
  {
     ticketnumber = OrderTicket();
     if(ticketnumber>oldticketnumber)
     {
      orderprice=OrderOpenPrice();
      oldorderopenprice=orderprice;
      oldticketnumber=ticketnumber;
     }
  }
 }
 
  return(orderprice);
}



