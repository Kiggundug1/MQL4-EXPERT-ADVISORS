//+------------------------------------------------------------------+
//|                                         EMA-Crossover_Signal.mq4 |
//|         Copyright © 2005, Jason Robinson (jnrtrading)            |
//|                   http://www.jnrtading.co.uk                     |
//+------------------------------------------------------------------+

/*
  +------------------------------------------------------------------+
  | Allows you to enter two ema periods and it will then show you at |
  | Which point they crossed over. It is more usful on the shorter   |
  | periods that get obscured by the bars / candlesticks and when    |
  | the zoom level is out. Also allows you then to remove the emas   |
  | from the chart. (emas are initially set at 5 and 6)              |
  +------------------------------------------------------------------+
*/   
#property copyright "Copyright © 2005, Jason Robinson (jnrtrading)"
#property link      "http://www.jnrtrading.co.uk"

#property indicator_chart_window
#property indicator_buffers 3
#property indicator_color1 SeaGreen
#property indicator_color2 Red
#property indicator_color3 Blue

double CrossUp[];
double CrossDown[];
//double signal[];
extern bool DisplayArrows = true;
extern bool AlertOn = false;
extern bool EmailOn = false;
extern int FasterEMA = 1;
extern int SlowerEMA = 11;
double alertTag;

 
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int init()
  {
//---- indicators
   SetIndexStyle(0, DRAW_ARROW, EMPTY, 2);
   SetIndexArrow(0, 233);
   SetIndexBuffer(0, CrossUp);
   SetIndexStyle(1, DRAW_ARROW, EMPTY, 2);
   SetIndexArrow(1, 234);
   SetIndexBuffer(1, CrossDown);
   //SetIndexStyle(2, DRAW_NONE);
   //SetIndexArrow(2, 235);
   //SetIndexBuffer(2, signal);
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
int start() {
   int limit, i, counter;
   double fasterEMAnow, slowerEMAnow, fasterEMAprevious, slowerEMAprevious, fasterEMAafter, slowerEMAafter;
   double Range, AvgRange;
   
   int counted_bars=IndicatorCounted();
//---- check for possible errors
   if(counted_bars<0) return(-1);
//---- last counted bar will be recounted
   if(counted_bars>0) counted_bars--;

   limit = Bars - counted_bars;
   
   //signal[0] = 0;
      
   for(i = 0; i <= limit; i++) {
   
      counter=i;
      Range=0;
      AvgRange=0;
      for (counter = i; counter <= i+9; counter++)
      {
         AvgRange=AvgRange+MathAbs(High[counter]-Low[counter]);
      }
      Range=AvgRange/10;
       
      fasterEMAnow = iMA(NULL, 0, FasterEMA, 0, MODE_EMA, PRICE_CLOSE, i);
      fasterEMAprevious = iMA(NULL, 0, FasterEMA, 0, MODE_EMA, PRICE_CLOSE, i+1);
      fasterEMAafter = iMA(NULL, 0, FasterEMA, 0, MODE_EMA, PRICE_CLOSE, i-1);

      slowerEMAnow = iMA(NULL, 0, SlowerEMA, 0, MODE_EMA, PRICE_CLOSE, i);
      slowerEMAprevious = iMA(NULL, 0, SlowerEMA, 0, MODE_EMA, PRICE_CLOSE, i+1);
      slowerEMAafter = iMA(NULL, 0, SlowerEMA, 0, MODE_EMA, PRICE_CLOSE, i-1);

      if ((fasterEMAnow > slowerEMAnow) && (fasterEMAprevious < slowerEMAprevious) && (fasterEMAafter > slowerEMAafter)) {
         
         if (DisplayArrows) CrossUp[i] = Low[i] - Range*0.5;
         
         if ( i == 1 && alertTag != Time[0]) {
         
            if (AlertOn) Alert("BUY signal at " + Ask + " on ",Symbol()," ",Period());
            if (EmailOn) Send_Email("BUY");
         
         }
                  
         //signal[i-1] = 1;
         alertTag = Time[0];
         
      } else if ((fasterEMAnow < slowerEMAnow) && (fasterEMAprevious > slowerEMAprevious) && (fasterEMAafter < slowerEMAafter)) {
         
         if (DisplayArrows) CrossDown[i] = High[i] + Range*0.5;
         
         if ( i == 1 && alertTag != Time[0]) {
         
            if (AlertOn) Alert("SELL signal at " + Bid + " on ",Symbol()," ",Period());
            if (EmailOn) Send_Email("SELL");
            
         }
                 
         //signal[i-1] = -1;
         alertTag = Time[0];
         
      }
      
  }
  
  return(0);
}

//+------------------------------------------------------------------+
//| Function to send Alert Notifications by E-mail                   |
//+------------------------------------------------------------------+
void Send_Email(string event)
{
   
   string email_subject;
   string email_body;
     
   email_subject = Symbol() + ": " + event + " signal alert";
   
   email_body = email_body + "\nPeriod: " + Period();
   //email_body = email_body + "\nTime: " + Year()+"."+formatDateTime(Month())+"."+formatDateTime(Day()) + " "
   //                           + formatDateTime(Hour()) + ":" + formatDateTime(Minute()) + ":" + formatDateTime(Seconds());
   email_body = email_body + "\nTime: " + TimeToStr(TimeCurrent(), TIME_DATE|TIME_MINUTES|TIME_SECONDS);
   
   if (event == "BUY")
      email_body = email_body + "\nPrice: " + DoubleToStr(Ask,5);
   else if (event == "SELL")
      email_body = email_body + "\nPrice: " + DoubleToStr(Bid,5);
   
   email_body = email_body + "\n*****Open Trades*****";
   
   for(int cnt=OrdersTotal()-1;cnt>=0;cnt--) 
   {
      OrderSelect (cnt, SELECT_BY_POS, MODE_TRADES);
      email_body = email_body + "\n------------------------";
      email_body = email_body + "\nOrder Symbol: " + OrderSymbol();
      email_body = email_body + "\nOrder Open Price: " + DoubleToStr(OrderOpenPrice(),5);
      email_body = email_body + "\nOrder Profit: " + DoubleToStr(ProfitInPips(OrderTicket()),1) + " pips (" 
                                                         + DoubleToStr(OrderProfit(),2) + " " + AccountCurrency() + ")";
      email_body = email_body + "\n------------------------";
   }
   
   email_body = email_body + "\n*****Account Information*****";
   email_body = email_body + "\nCurrent Balance: " + DoubleToStr(AccountBalance(),2) + " " + AccountCurrency();
   email_body = email_body + "\nCurrent Equity: " + DoubleToStr(AccountEquity(),2) + " " + AccountCurrency();
   
   SendMail(email_subject, email_body);  
   
   return(0);
}

/*string formatDateTime(int value) {
   if (value >= 10)
      return (value);
   else
      return ("0" + value);
}*/

double ProfitInPips(int ticket) {

  double ProfitInPips = 0;
  
  if (OrderSelect(ticket, SELECT_BY_TICKET) && (OrderType() == OP_BUY || OrderType() == OP_SELL)) {
    ProfitInPips = MathAbs((OrderOpenPrice()-OrderClosePrice())/Point);
  
    if (OrderType() == OP_BUY && OrderOpenPrice() > OrderClosePrice() )
      ProfitInPips = -ProfitInPips;
    else if (OrderType() == OP_SELL && OrderOpenPrice() < OrderClosePrice() )
      ProfitInPips = -ProfitInPips;
    
  }

  if (Digits == 5 || Digits == 3)
     ProfitInPips = ProfitInPips/10;
 
  return (NormalizeDouble(ProfitInPips,1));
}