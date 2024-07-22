//+------------------------------------------------------------------+
//|                                            Woodies the Robot.mq4 |
//|                                                      Andrei Yanin|
//|                                                www.yan_in.com.ua |
//+------------------------------------------------------------------+
#property copyright "Andei Yanin"
#property link      "www.yan_in.com.ua"

extern string _____________________________="CCI settings";
extern int TrendCCI_Period = 50;
extern int EntryCCI_Period = 14;
extern int TurboCCI_Period = 6;   
extern int TP=150;
extern int SL=50;
extern bool FixedLot=true;
extern double Risk=25;
extern string _______________1_____________="ZLR settings";
extern bool UseZLR=true;
extern bool ZLR_used=true;
extern bool ZLR_active=false;
extern int MagicZLR=3832293;
extern double ZLR_lot=0.1;
extern double ZLR_minilot=0.1;

extern int ZonePeriod=50;
int StoplossZL=5;
int BarOverlayPeriod=5;
int VelichinaOtskoka=3;
extern string _______________2_____________="Pattern ZR";
extern bool UseFilterZR=true;
extern bool ZR_Entry=true;
extern bool ZR_Reverse=false;
extern int MagicZR=356493;
extern double ZR_lot=0.1;
extern double ZR_lotstep=0.1;
int BarOverlayCurrent=5;
extern string _______________3_____________="Pattern LT";
extern bool UseFilterLT=true;
extern bool LT_Entry=true;
extern bool LT_Reverse=false;
extern int MagicLT=356493;
extern double LT_lot=0.1;
extern double LT_lotstep=0.1;
extern int bar_OverDoSignal=20;
extern double Uroven1Vershiny=100;
extern double LineDo=50;
extern double SignalDo=50;
extern string _______________4_____________="Pattern Ryuk"; 
extern bool UseFilterRK=true;
extern bool UseFilterEntryRK=true;
extern bool ReversRK=false;
extern int MagicRK=3564933;
extern double RK_period=150;
extern double RK_lot=0.1;
extern double RK_lotstep=0.1;

extern string _______________5_____________="Position management";
extern bool TrailOn=true;
extern bool   TSProfitOnly = True;     // close the order that have profits only
extern int    TStop.Buy    = 50;       // stoploss for buys 
extern int    TStop.Sell   = 50;       //stoploss for sells
extern int    TrailingStep = 3;        // trailingstep
extern bool   UseSound     = True;          // if use sounds
extern string SoundSuccess = "tick.wav";  // sound for success
extern string SoundError   = "timeout.wav"; // sound for errors
extern int    NumberOfTry  = 3;             // Number of attempts to trade 

color  clModifyBuy  = Aqua;            // Buy modification
color  clModifySell = Tomato;          // Sell motification
int SleepOk = 2000;
int SleepErr = 6000; 
double point;  
#include <stderror.mqh>
#include <stdlib.mqh>
//+------------------------------------------------------------------+
//| expert initialization function                                   |
//+------------------------------------------------------------------+
int init(){

 if (Point == 0.00001) point = 0.0001;
      else {
      if (Point == 0.0001) point = 0.001;
      else {
      if (Point == 0.001) point = 0.01;
      else point = Point;
     }
    }
  
//----
   
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
double l,t,s;
 if(TrailOn) SimpleTrailing(Symbol(),-1, -1) ;
 
 //Act on ryuk signal
/////////////////////////////////////////////////////////////   
  if(UseFilterEntryRK||((!UseFilterEntryRK)&&GetThisEAsOrder(Symbol())==0)){
  l=RK_lot;
  if(UseFilterEntryRK&&GetThisEAsOrder(Symbol())!=0) l=RK_lotstep;
    
  if(RK_sig(1)==1&&UseFilterRK&&(GetOrders(Symbol(),OP_BUY,MagicRK)==0)&&(GetOrders(Symbol(),OP_SELL,MagicRK)==0))
   {
   t=0;
   if(TP!=0) t=Ask+TP*point;
   s=0;
   if(SL!=0) s=Ask-SL*point;
   if(!FixedLot) l=GetLot(SL);
   
   OpenOrders(OP_BUY,t,s,Ask,l,MagicRK,"RK buy");
   }
  if(RK_sig(1)==-1&&UseFilterRK&&(GetOrders(Symbol(),OP_BUY,MagicRK)==0)&&(GetOrders(Symbol(),OP_SELL,MagicRK)==0))
   {
  t=0;
   if(TP!=0) t=Bid-TP*point;
   s=0;
   if(SL!=0) s=Bid+SL*point;
   
   if(!FixedLot) l=GetLot(SL);
   OpenOrders(OP_SELL,t,s,Bid,l,MagicRK,"RK sell");
   } 
   } 
 
  
  
 //act on ZLR signal
  
  if(ZLR_used||((!ZLR_used)&&GetThisEAsOrder(Symbol())==0)){
  l=ZLR_lot;
  if(ZLR_used&&GetThisEAsOrder(Symbol())!=0) l=ZLR_minilot;
    
  if(ZLR_sig(1)==1&&UseZLR&&(GetOrders(Symbol(),OP_BUY,MagicZLR)==0)&&(GetOrders(Symbol(),OP_SELL,MagicZLR)==0))
   {
   t=0;
   if(TP!=0) t=Ask+TP*point;
   s=0;
   if(SL!=0) s=Ask-SL*point;
   if(!FixedLot) l=GetLot(SL);
   
   OpenOrders(OP_BUY,t,s,Ask,l,MagicZLR,"ZLR buy");
   }
  if(ZLR_sig(1)==-1&&UseZLR&&(GetOrders(Symbol(),OP_BUY,MagicZLR)==0)&&(GetOrders(Symbol(),OP_SELL,MagicZLR)==0))
   {
  t=0;
   if(TP!=0) t=Bid-TP*point;
   s=0;
   if(SL!=0) s=Bid+SL*point;
   
   if(!FixedLot) l=GetLot(SL);
   OpenOrders(OP_SELL,t,s,Bid,l,MagicZLR,"ZLR sell");
   } 
   }
 
 
//act on ZR signal
  if(ZR_Entry||((!ZR_Entry)&&GetThisEAsOrder(Symbol())==0)){
  l=ZR_lot;
  if(ZR_Entry&&GetThisEAsOrder(Symbol())!=0) l=ZR_lotstep;
  
  
  if(ZR_sig(1)==1&&UseFilterZR&&(GetOrders(Symbol(),OP_BUY,MagicZR)==0)&&(GetOrders(Symbol(),OP_SELL,MagicZR)==0))
   {
   t=0;
   if(TP!=0) t=Ask+TP*point;
   s=0;
   if(SL!=0) s=Ask-SL*point;
   if(!FixedLot) l=GetLot(SL);
   OpenOrders(OP_BUY,t,s,Ask,l,MagicZR,"ZR buy");
   }
  if(ZR_sig(1)==-1&&UseFilterZR&&(GetOrders(Symbol(),OP_BUY,MagicZR)==0)&&(GetOrders(Symbol(),OP_SELL,MagicZR)==0))
   {
     t=0;
   if(TP!=0) t=Bid-TP*point;
   s=0;
   if(SL!=0) s=Bid+SL*point;
   if(!FixedLot) l=GetLot(SL);
   OpenOrders(OP_SELL,t,s,Bid,l,MagicZR,"ZR sell");
   } 
   }   

//act on LT signal
  if(LT_Entry||((!LT_Entry)&&GetThisEAsOrder(Symbol())==0)){
  l=LT_lot;
  if(LT_Entry&&GetThisEAsOrder(Symbol())!=0) l=LT_lotstep;
  
  
  if(LT_sig(1)==1&&UseFilterLT&&(GetOrders(Symbol(),OP_BUY,MagicLT)==0)&&(GetOrders(Symbol(),OP_SELL,MagicLT)==0))
   {
   t=0;
   if(TP!=0) t=Ask+TP*point;
   s=0;
   if(SL!=0) s=Ask-SL*point;
   if(!FixedLot) l=GetLot(SL);
   OpenOrders(OP_BUY,t,s,Ask,l,MagicLT,"LT buy");
   }
  if(LT_sig(1)==-1&&UseFilterLT&&(GetOrders(Symbol(),OP_BUY,MagicLT)==0)&&(GetOrders(Symbol(),OP_SELL,MagicLT)==0))
   {
     t=0;
   if(TP!=0) t=Bid-TP*point;
   s=0;
   if(SL!=0) s=Bid+SL*point;
  if(!FixedLot) l=GetLot(SL);
   OpenOrders(OP_SELL,t,s,Bid,l,MagicLT,"LT sell");
   } 
   } 
//----

//Overall conditions Stoploss and exit

 if(ZLR_active)
 {
 if(ZLR_sig(1)==1) CloseOrders(OP_SELL);
 if(ZLR_sig(1)==-1) CloseOrders(OP_BUY);
 }

 if(ZR_Reverse)
 {
 if(ZR_sig(1)==1) CloseOrders(OP_SELL);
 if(ZR_sig(1)==-1) CloseOrders(OP_BUY);
 }

 if(LT_Reverse)
 {
 if(LT_sig(1)==1) CloseOrders(OP_SELL);
 if(LT_sig(1)==-1) CloseOrders(OP_BUY);
 }




   return(0);
  }

int WTShift(int shift,int buff)
   {
   return(iCustom(Symbol(),0,"Woodie_Trend",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,ZonePeriod,StoplossZL,BarOverlayPeriod,VelichinaOtskoka,BarOverlayCurrent,bar_OverDoSignal,Uroven1Vershiny,LineDo,SignalDo,RK_period,5,buff,buff,shift));
   }
int ZLR_sig(int shift)
   {
   return(WTShift(shift,1));
   }
int ZR_sig(int shift)
   {
   return(WTShift(shift,2));
   }
int LT_sig(int shift)
   {
   return(WTShift(shift,3));
   }
   
int RK_sig(int shift)
   {
   return(WTShift(shift,4));
   }
   
//+------------------------------------------------------------------+
int OpenOrders(int type,double tp,double sl,double pr,double Lot,int Magic,string comm)
{ 
tp=NormalizeDouble(tp,Digits);
sl=NormalizeDouble(sl,Digits);
pr=NormalizeDouble(pr,Digits);
  if (type == OP_BUY) {
   RefreshRates();
   int res =OrderSend(Symbol(),OP_BUY,Lot,Ask,5,sl,tp,comm,Magic,0,Green);
   if (res >= 0) {
   Sleep(SleepOk);
   return (res); } 	
   int code = GetLastError();
   Print("Error setting Buy order: ", ErrorDescription(code), " (", code, ")");
   Sleep(SleepErr);
   return (-1);
   }
 
   if (type == OP_SELL) {
   RefreshRates();

   res =OrderSend(Symbol(),OP_SELL,Lot,Bid,5,sl,tp,comm,Magic,0,Red);
   if (res >= 0) {
    Sleep(SleepOk);
   return (res); } 	
  code = GetLastError();
  Print("Error setting SELL order: ", ErrorDescription(code), " (", code, ")");
  Sleep(SleepErr);
  return (-1);
  }
  
  return(0);
  
}
int GetOrders(string symbol, int type,int Magic) {
  int res = 0;
  int cnt = OrdersTotal();
  for (int i=0; i < cnt; i++) {
    OrderSelect(i, SELECT_BY_POS, MODE_TRADES);
    if (OrderSymbol() != symbol) continue;
    if (OrderMagicNumber() != Magic) continue;
    if(OrderType()==type) res++;
   }
  return(res);
}
int GetThisEAsOrder(string symbol) {
  int res = 0;
  int cnt = OrdersTotal();
  for (int i=0; i < cnt; i++) {
    OrderSelect(i, SELECT_BY_POS, MODE_TRADES);
    if (OrderSymbol() != symbol) continue;
    if ((OrderMagicNumber() != MagicZLR)&&(OrderMagicNumber() != MagicZR)&&(OrderMagicNumber() != MagicLT)) continue;
    res++;
   }
  return(res);
}



void SimpleTrailing(string sy="", int op=-1, int mn=-1) {
  double po, pp;
  int    i, k=OrdersTotal();

  if (sy=="0") sy=Symbol();
  for (i=0; i<k; i++) {
    if (OrderSelect(i, SELECT_BY_POS, MODE_TRADES)) {
      if ((OrderSymbol()==sy || sy=="") && (op<0 || OrderType()==op)) {
        po=MarketInfo(OrderSymbol(), MODE_POINT);
        if ((OrderMagicNumber() != MagicZLR)&&(OrderMagicNumber() != MagicZR)&&(OrderMagicNumber() != MagicLT)&&(OrderMagicNumber() != MagicRK)) continue;
          if (OrderType()==OP_BUY) {
            pp=MarketInfo(OrderSymbol(), MODE_BID);
            if (!TSProfitOnly || pp-OrderOpenPrice()>TStop.Buy*po) {
              if (OrderStopLoss()<pp-(TStop.Buy+TrailingStep-1)*po) {
                ModifyOrder(-1, pp-TStop.Buy*po, -1);
              }
            }
          
          
            }
           if (OrderType()==OP_SELL) {
           pp=MarketInfo(OrderSymbol(), MODE_ASK);
           if (!TSProfitOnly || OrderOpenPrice()-pp>TStop.Sell*po) {
              if (OrderStopLoss()>pp+(TStop.Sell+TrailingStep-1)*po || OrderStopLoss()==0) {
                ModifyOrder(-1, pp+TStop.Sell*po, -1);
            }
          }
        }
      }
    }
  }
}

void ModifyOrder(double pp=-1, double sl=0, double tp=0, datetime ex=0) {
  bool   fm;
  color  cl=IIFc(OrderType()==OP_BUY
              || OrderType()==OP_BUYLIMIT
              || OrderType()==OP_BUYSTOP, clModifyBuy, clModifySell);
  double op, pa, pb, os, ot;
  int    dg=MarketInfo(OrderSymbol(), MODE_DIGITS), er, it;

  if (pp<=0) pp=OrderOpenPrice();
  if (sl<0 ) sl=OrderStopLoss();
  if (tp<0 ) tp=OrderTakeProfit();
  
  pp=NormalizeDouble(pp, dg);
  sl=NormalizeDouble(sl, dg);
  tp=NormalizeDouble(tp, dg);
  op=NormalizeDouble(OrderOpenPrice() , dg);
  os=NormalizeDouble(OrderStopLoss()  , dg);
  ot=NormalizeDouble(OrderTakeProfit(), dg);

  if (pp!=op || sl!=os || tp!=ot) {
    for (it=1; it<=NumberOfTry; it++) {
      if (!IsTesting() && (!IsExpertEnabled() || IsStopped())) break;
      while (!IsTradeAllowed()) Sleep(5000);
      RefreshRates();
      fm=OrderModify(OrderTicket(), pp, sl, tp, ex, cl);
      if (fm) {
        if (UseSound) PlaySound(SoundSuccess); break;
      } else {
        er=GetLastError();
        if (UseSound) PlaySound(SoundError);
        pa=MarketInfo(OrderSymbol(), MODE_ASK);
        pb=MarketInfo(OrderSymbol(), MODE_BID);
        Print("Error(",er,") modifying order: ",ErrorDescription(er),", try ",it);
        Print("Ask=",pa,"  Bid=",pb,"  sy=",OrderSymbol(),
              "  op="+GetNameOP(OrderType()),"  pp=",pp,"  sl=",sl,"  tp=",tp);
        Sleep(1000*10);
      }
    }
  }
}
string GetNameOP(int op) {
  switch (op) {
    case OP_BUY      : return("Buy");
    case OP_SELL     : return("Sell");
    case OP_BUYLIMIT : return("BuyLimit");
    case OP_SELLLIMIT: return("SellLimit");
    case OP_BUYSTOP  : return("BuyStop");
    case OP_SELLSTOP : return("SellStop");
    default          : return("Unknown Operation");
  }
}


color IIFc(bool condition, color ifTrue, color ifFalse) {
  if (condition) return(ifTrue); else return(ifFalse);
}

int CloseOrders(int type) {

  int cnt = OrdersTotal();
  for (int i=cnt-1; i >= 0; i--) {
    if (!OrderSelect(i, SELECT_BY_POS, MODE_TRADES)) continue;

    if (OrderSymbol() != Symbol()) continue;
    if ((OrderMagicNumber() == MagicZLR)||(OrderMagicNumber() == MagicZR)||(OrderMagicNumber() == MagicLT)||(OrderMagicNumber() == MagicRK)) {
    
   
    int type2 = OrderType();
    if (type != type2) continue;
    
    if (type == OP_BUY) {
      RefreshRates();
      CloseOrder(OrderTicket(), OrderLots(), Bid);
    }
          
    if (type == OP_SELL) {
      RefreshRates();
      CloseOrder(OrderTicket(), OrderLots(), Ask);
    }}
  }
  
  return(0);
}

bool CloseOrder(int ticket, double lot, double price) 
{
  if (!OrderSelect(ticket, SELECT_BY_TICKET, MODE_TRADES)) return(false);
  
  int dig = MarketInfo(OrderSymbol(), MODE_DIGITS);
  string _lot = DoubleToStr(lot, 2);
  string _price = DoubleToStr(price, dig);

  Print("CloseOrder ", ticket, ", ", _lot, ", ", _price, ", ", 5);
  
  bool res = OrderClose(ticket, lot, price, 5);
  if (res) {
    Sleep(SleepOk);
    return (res);
  } 	
   	
  int code = GetLastError();
  Print("CloseOrder failed: ", ErrorDescription(code), " (", code, ")");
  Sleep(SleepErr);
  return (false);
}

double GetLot(int s)
{

  double equity=AccountEquity();
  double MyTickvalue=MarketInfo(Symbol(),MODE_TICKVALUE);
  double d;
  if(MarketInfo(Symbol(),MODE_MINLOT)==0.01) d=2;
  if(MarketInfo(Symbol(),MODE_MINLOT)==0.1) d=1;
  if(MarketInfo(Symbol(),MODE_MINLOT)==1) d=0;
  
  double OptimalLot=equity*Risk/100;
  double Mylot=NormalizeDouble(OptimalLot/(s*MyTickvalue),d);
  return(Mylot);
}




