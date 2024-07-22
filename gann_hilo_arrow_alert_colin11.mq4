//+------------------------------------------------------------------+
//|                                  gann_hilo_arrow_alert_colin.mq4 |
//|                                            Zoltan Laszlo Ferenci |
//|                              http://www.metatraderprogrammer.com |
//+------------------------------------------------------------------+
#property copyright "Zoltan Laszlo Ferenci"
#property link      "http://www.metatraderprogrammer.com"

#property indicator_chart_window
#property indicator_buffers 2
#property indicator_color1 White
#property indicator_color2 White
//--- buffers
double ExtMapBuffer1[];
double ExtMapBuffer2[];

#include <variables.mqh>
#include <objectfunctions.mqh>

#define SIGNAL_NO 0
#define SIGNAL_BUY 1
#define SIGNAL_SELL 2
#define SIGNAL_BOTH 3

extern bool email_alert = true;
extern bool sound_alert = true;
extern bool popup_alert = true;
extern bool show_on_comment = true;

extern bool sound_repeat = true;
extern bool popup_repeat = false;

extern string sound_filename = "alert.wav";
extern double alertevery = 5;
extern int maxrepeat = 5;

extern int signal_bar = 0;
extern int alert_bar = 1;
//extern int _tf_bar = 1;
//extern int tf_bar = 1;
//extern int timeframe = 0;

extern int entry_from_hl = 5;
extern int sl_from_hl = 5;
extern double tp_from_sl = 1;

bool alert_on_change = true;
bool alert_on_firsttick = true;
bool disable_if_nochange = true;

bool reverse_signal = false;

//bool isfirsttick = false;
//datetime lasttick = 0;
datetime lastalert = 0;
int last_signal = 0; // -1: no alert at first signal
bool alert_enabled = true;
bool alert_norepeat = true;
int alertcount = 0;
int atrforarrows = 200;

extern int maxbars = 900;

extern bool gannhilo_enabled = true;

extern string gannhilo_name = "###Gann_HiLo_Activator_v2###";
extern int gannhilo_lookback = 5;
extern int ma_period = 5;
extern int ma_mode = MODE_EMA;

extern bool gannhilo_mtf1_enabled = true;
extern int gannhilo_mtf1_timeframe = PERIOD_D1;
extern int gannhilo_mtf1_lookback = 5;

extern bool gannhilo_mtf2_enabled = true;
extern int gannhilo_mtf2_timeframe = PERIOD_D1;
extern int gannhilo_mtf2_lookback = 5;

extern bool rsi1_enabled = true;
extern int rsi1_period = 10;
extern bool rsi2_enabled = true;
extern int rsi2_period = 60;

extern int arrow_size = 1;
extern double arrow_dist = 0.3;

string comment = "";
string commentstring = "";

extern bool comment_enabled = true;
extern bool comment_formatting = true;
string objname_comment = "comment_textbox";
extern int comment_corner = 1;
extern int comment_fontsize = 9;
extern string comment_font = "Tahoma";
extern color comment_color = White;
extern int comment_x = 10;
extern int comment_y = 10;
extern int comment_lineheight = 15;

extern color entryColor = Black;
extern int   entryStyle = 1;
extern int   entryThickness = 1;
extern color stopColor = Red;
extern int   stopStyle = 1;
extern int   stopThickness = 1;
extern int   profitColor = Green;
extern color profitStyle = 1;
extern int   profitThickness = 1;

double entry, stoploss, takeprofit;
datetime signalbartime;
string lastalertstring;

int init()
{
   variables_init();

   SetIndexStyle(0,DRAW_ARROW,EMPTY,arrow_size);
   SetIndexArrow(0,217);
   SetIndexBuffer(0,ExtMapBuffer1);
   SetIndexEmptyValue(0,0.0);
   SetIndexStyle(1,DRAW_ARROW,EMPTY,arrow_size);
   SetIndexArrow(1,218);
   SetIndexBuffer(1,ExtMapBuffer2);
   SetIndexEmptyValue(1,0.0);
   return(0);
}

int deinit()
{
   return(0);
}

int start()
{
   variables_priceinit();

   addcomment("alphatrader.ca\n");

   obj_loadbool("sound_repeat", sound_repeat);

   int counted_bars=IndicatorCounted();
   //if(counted_bars>0) counted_bars--;
   int limit=Bars-counted_bars;
   if (limit > maxbars) limit = maxbars;

   for(int i=limit-1; i>=0; i--)
   {
      int signal = signal(i+signal_bar);

      if (signal == SIGNAL_SELL)
      {
         ExtMapBuffer2[i] = High[i]+(iATR(Symbol(),0,atrforarrows,i))*arrow_dist;
         ExtMapBuffer1[i] = EMPTY_VALUE;
      }
      
      if (signal == SIGNAL_BUY)
      {
         ExtMapBuffer1[i] = Low[i]-(iATR(Symbol(),0,atrforarrows,i))*arrow_dist;
         ExtMapBuffer2[i] = EMPTY_VALUE;
      }
      if (signal == SIGNAL_NO)
      {
         ExtMapBuffer1[i] = EMPTY_VALUE;
         ExtMapBuffer2[i] = EMPTY_VALUE;
      }
   }

   double entry, stoploss, tp;

   for(i = 0; i<limit; i++) {
      if(ExtMapBuffer1[i] != EMPTY_VALUE) {
         ObjectDelete("Long trigger");
         ObjectDelete("Short trigger");
         ObjectDelete("Stoploss");
         
         entry = High[i] + (entry_from_hl+spread_inticks)*ticksize;
         stoploss = ExtMapBuffer1[i]-entry_from_hl*ticksize;
         tp = priceround(entry+(entry-stoploss)*tp_from_sl);
         
         DrawLine(entry, "Long trigger", entryColor, Time[i], Time[0] + Period()*600, entryStyle, entryThickness);
         
         DrawLine(stoploss, "Stoploss", stopColor, Time[i], Time[0] + Period()*600, stopStyle, stopThickness);
         
         DrawLine(tp, "Take profit", profitColor, Time[i], Time[0] + Period()*600, profitStyle, profitThickness);
         
         break;
      } else if(ExtMapBuffer2[i] != EMPTY_VALUE) {
         ObjectDelete("Long trigger");
         ObjectDelete("Short trigger");
         ObjectDelete("Stoploss");
         
         entry = Low[i] - entry_from_hl*ticksize;
         stoploss = ExtMapBuffer2[i] + (sl_from_hl+spread_inticks)*ticksize;
         tp = priceround(entry-(stoploss-entry)*tp_from_sl);
         
         DrawLine(entry, "Short trigger", entryColor, Time[i], Time[0] + Period()*600, entryStyle, entryThickness);
         
         DrawLine(stoploss, "Stoploss", stopColor, Time[i], Time[0] + Period()*600, stopStyle, stopThickness);
         
         DrawLine(tp, "Take profit", profitColor, Time[i], Time[0] + Period()*600, profitStyle, profitThickness);
         
         
         break;
      } 
   }

   //Alert("entry=",entry," stoploss=",stoploss," takeprofit=",takeprofit);

   signal = SIGNAL_NO;
   if (ExtMapBuffer1[alert_bar] != EMPTY_VALUE)
      signal = SIGNAL_BUY;
   if (ExtMapBuffer2[alert_bar] != EMPTY_VALUE)
      signal = SIGNAL_SELL;

   signal_alert(signal);

   if (show_on_comment) addcomment(lastalertstring);
   if (comment_enabled) writecomment();
   delcomment();

   return(0);
}

void DrawLine(double price, string name, color col, datetime t1, datetime t2, int style, int thickness) {
   if (ObjectFind(name) != 0)
      ObjectCreate(name, OBJ_TREND, 0, 0, price, Time[0], price);

   ObjectSet(name, OBJPROP_RAY, FALSE);
   ObjectSet(name, OBJPROP_BACK, TRUE);
   ObjectSet(name, OBJPROP_STYLE, style);
   ObjectSet(name, OBJPROP_WIDTH, thickness);
   ObjectSet(name, OBJPROP_COLOR, col);
   ObjectSet(name, OBJPROP_TIME1, t1);
   ObjectSet(name, OBJPROP_PRICE1, price);
   ObjectSet(name, OBJPROP_TIME2, t2);
   ObjectSet(name, OBJPROP_PRICE2, price);
}

void alert_check(int signal)
{
   isfirsttick();

   if (last_signal == -1)
      last_signal = signal;

   if ((isfirsttick && alert_on_firsttick) || (last_signal != signal && alert_on_change)) // alert if firsttick or
   {
      lastalert = 0;
      alert_norepeat = true;
      alert_enabled = true;
   }
   else
   {
      alert_norepeat = false;
   }
   
   if (disable_if_nochange)
   {
      if (alert_norepeat)
      {
         if (last_signal == signal)
            alert_enabled = false;
         else
            alert_enabled = true;
      }
   }
   else
   {
      alert_enabled = true;
   }

   if (alert_norepeat) last_signal = signal;
}

void signal_alert(int signal)
{
   alert_check(signal);

   if (!alert_enabled) return(false);
   
   // *** alerting: ***

   if (signal == SIGNAL_NO)
      return(0);

   string alertstring;

   if (signal == SIGNAL_BUY)
      alertstring = "BUY signal on ";
   if (signal == SIGNAL_SELL)
      alertstring = "SELL signal on ";

   alertstring = alertstring + Symbol();   
   alertstring = alertstring + " on bar at " + TimeToStr(signalbartime,TIME_DATE|TIME_MINUTES);
   alertstring = alertstring + "\nEntry: " + DoubleToStr(entry,Digits) + " StopLoss: " + DoubleToStr(stoploss,Digits) + " TakeProfit: " + DoubleToStr(takeprofit,Digits);

   datetime timecurrent = TimeCurrent();

   if (alert_norepeat)
   {
      alertcount = 0;
      lastalert = 0;
   }

   if (alert_norepeat || (alertevery > 0 && timecurrent - lastalert > alertevery && alertcount < maxrepeat))
   {
      if (email_alert && alert_norepeat)
         SendMail(alertstring,alertstring);
      if (popup_alert && (alert_norepeat || popup_repeat))
         Alert(alertstring);
      if (sound_alert && (alert_norepeat || sound_repeat))
         PlaySound(sound_filename);
      lastalertstring = alertstring;         
      lastalert = timecurrent;
      alertcount++;
   }

}

/*bool isfirsttick()
{
   datetime bartime = iTime(Symbol(),0,0);
   if (bartime == lasttick)
   {
      isfirsttick = false;
      return(isfirsttick);
   }
   else
   {
      lasttick = bartime;
      isfirsttick = true;
      return(isfirsttick);
   }
}
*/

/*int signal_tf(int bar, int timeframe)
{
   int tf_bar = iBarShift(Symbol(),timeframe,iTime(Symbol(),0,bar-1)-1)+tf_bar;
   int tf_bar_last = iBarShift(Symbol(),timeframe,iTime(Symbol(),0,bar))+tf_bar;
   
   int mainsignal = SIGNAL_NO;
   for (;tf_bar<=tf_bar_last;tf_bar++){
      int signal = -1;
      signal_addsignal(signal,signal_tf_rule(tf_bar,timeframe),true);
      addsignal_or(mainsignal,signal);
   }
   return(mainsignal);
}*/

int signal_gannhilo(int bar, int timeframe)
{
   int signal = SIGNAL_NO;
   double gannhilo = iCustom(Symbol(),timeframe,gannhilo_name,gannhilo_lookback,0,bar);
   double gannhilo1 = iCustom(Symbol(),timeframe,gannhilo_name,gannhilo_lookback,0,bar+1);
   double ma = iMA(Symbol(),timeframe,ma_period,0,ma_mode,PRICE_CLOSE,bar);
   double ma1 = iMA(Symbol(),timeframe,ma_period,0,ma_mode,PRICE_CLOSE,bar+1);
   if (ma > gannhilo && ma1 <= gannhilo1) signal = SIGNAL_BUY;
   if (ma < gannhilo && ma1 >= gannhilo1) signal = SIGNAL_SELL;
   return(signal);
}


int signal_gannhilo_confirm(int gann_lookback, int bar, int timeframe)
{
   double close = iClose(Symbol(),timeframe,bar);
   double gann = iCustom(Symbol(),timeframe,gannhilo_name,gann_lookback,0,bar);
   if (close > gann) return(SIGNAL_BUY);
   if (close < gann) return(SIGNAL_SELL);
   return(SIGNAL_NO);
}


int signal_gannhilo_mtf(int gann_timeframe, int gann_lookback, int bar)
{
   int tf_bar = iBarShift(Symbol(),gann_timeframe,iTime(Symbol(),0,bar));
   //int tf_bar = iBarShift(Symbol(),gann_timeframe,iTime(Symbol(),0,bar-1)-1)+_tf_bar;
   //int tf_bar_last = iBarShift(Symbol(),gann_timeframe,iTime(Symbol(),0,bar))+_tf_bar;
   int signal = signal_gannhilo_confirm(gann_lookback,tf_bar,gann_timeframe);
   //Alert(bar," ",tf_bar," ",gann_timeframe," ",signal);
   return(signal);
   //Alert(tf_bar, tf_bar_last);
   /*int mainsignal = SIGNAL_NO;
   for (;tf_bar<=tf_bar_last;tf_bar++){
      int signal = -1;
      signal_addsignal(signal,signal_gannhilo_confirm(gann_lookback,tf_bar,gann_timeframe),true);
      addsignal_or(mainsignal,signal);
   }*/
   //return(mainsignal);
}

int signal_rsi(int rsi_period, int bar, int timeframe)
{
   double rsi = iRSI(Symbol(),timeframe,rsi_period,PRICE_CLOSE,bar);
   if (rsi > 50) return(SIGNAL_BUY);
   if (rsi < 50) return(SIGNAL_SELL);
   return(SIGNAL_NO);
}

int signal(int bar)
{
   int signal = -1;
   signal_addsignal(signal,signal_gannhilo(bar,0),gannhilo_enabled);
   signal_addsignal(signal,signal_gannhilo_mtf(gannhilo_mtf1_timeframe,gannhilo_mtf1_lookback,bar),gannhilo_mtf1_enabled);
   signal_addsignal(signal,signal_gannhilo_mtf(gannhilo_mtf2_timeframe,gannhilo_mtf2_lookback,bar),gannhilo_mtf2_enabled);
   signal_addsignal(signal,signal_rsi(rsi1_period,bar,0),rsi1_enabled);
   signal_addsignal(signal,signal_rsi(rsi2_period,bar,0),rsi2_enabled);
   
   if (reverse_signal) signal = signal_reverse(signal);
   
   if (signal != SIGNAL_NO) {
      double high = iHigh(Symbol(),0,bar);
      double low = iLow(Symbol(),0,bar);
      if (signal == SIGNAL_BUY) {
         entry = high+(entry_from_hl+spread_inticks)*ticksize;
         stoploss = low-entry_from_hl*ticksize;
         takeprofit = priceround(entry+(entry-stoploss)*tp_from_sl);
      }
      if (signal == SIGNAL_SELL) {
         entry = low-entry_from_hl*ticksize;
         stoploss = high+(sl_from_hl+spread_inticks)*ticksize;
         takeprofit = priceround(entry-(stoploss-entry)*tp_from_sl);
      }
      signalbartime = iTime(Symbol(),0,bar);
   }   

   string alertstring;

   if (signal != SIGNAL_NO) {
      if (signal == SIGNAL_BUY)
         alertstring = "BUY signal on ";
      if (signal == SIGNAL_SELL)
         alertstring = "SELL signal on ";

      alertstring = alertstring + Symbol();   
      alertstring = alertstring + " on bar at " + TimeToStr(signalbartime,TIME_DATE|TIME_MINUTES);
      alertstring = alertstring + "\nEntry: " + DoubleToStr(entry,Digits) + " StopLoss: " + DoubleToStr(stoploss,Digits) + " TakeProfit: " + DoubleToStr(takeprofit,Digits);

      lastalertstring = alertstring;
   }
      
   //signal_addsignal(signal,signal_gannhilo_mtf(gannhilo_mtf2_timeframe,gannhilo_mtf2_lookback,bar,0),gannhilo_mtf2_enabled);
   return(signal);
}


int signal_addsignal(int& signal, int this_signal, bool signal_enabled = true)
{
   if (signal_enabled)
   {
      if (signal == -1)
         signal = this_signal;
      if (signal != this_signal) {
         if (signal == SIGNAL_BOTH) signal = this_signal;
         else if (this_signal != SIGNAL_BOTH) signal = SIGNAL_NO;
      }
   }
}

int addsignal_or(int& signal, int this_signal)
{
   if (this_signal == SIGNAL_BUY) {
      if (signal == SIGNAL_SELL || signal == SIGNAL_BOTH) signal = SIGNAL_BOTH;
      else signal = this_signal;
   }
   if (this_signal == SIGNAL_SELL) {
      if (signal == SIGNAL_BUY || signal == SIGNAL_BOTH) signal = SIGNAL_BOTH;
      else signal = this_signal;
   }
   if (this_signal == SIGNAL_BOTH) {
      signal = this_signal;
   }
}

int signal_reverse(int signal)
{
   if (signal == SIGNAL_BUY)
      return(SIGNAL_SELL);
   else if (signal == SIGNAL_SELL)
      return(SIGNAL_BUY);
   
   return(signal);
}  

/*int getbar(int bar, int timeframe)
{
   return(iBarShift(Symbol(),timeframe,iTime(Symbol(),0,bar))
}*/

int addcomment(string c1, string c2="", string c3="", string c4="", string c5="", string c6="", string c7="", string c8="", 
   string c9="", string c10="", string c11="", string c12="", string c13="", string c14="", string c15="", string c16="")
{
   clear0(c1);
   clear0(c2);
   clear0(c3);
   clear0(c4);
   clear0(c5);
   clear0(c6);
   clear0(c7);
   clear0(c8);
   clear0(c9);
   clear0(c10);
   clear0(c11);
   clear0(c12);
   clear0(c13);
   clear0(c14);
   clear0(c15);
   clear0(c16);
   commentstring = commentstring+c1+c2+c3+c4+c5+c6+c7+c8+c9+c10+c11+c12+c13+c14+c15+c16;
}

void clear0(string& str)
{
   for (int i = 0; i < StringLen(str); i++)
   {
      string chr = StringSubstr(str,i,1);
      if (chr != "0" && chr != "." && chr != "1" && chr != "2" && chr != "3" && chr != "4"
      && chr != "5" && chr != "6" && chr != "7" && chr != "8" && chr != "9")
         return(0);
   }
   if (StringFind(str,".",1)>=0)
   {
      while (StringFind(str,"0",StringLen(str)-1)>=0)
      {
         str = StringSubstr(str,0,StringLen(str)-1);
      }
      if (StringFind(str,".",StringLen(str)-1)>=0)
         str = StringSubstr(str,0,StringLen(str)-1);
   }
}

int writecomment()
{
   if (comment_formatting) {
      int cnt_line = 0;
      int pos = 0;
      int lineend = 0;
      string currentline = "";
      string name_currentline;
      int ypos_currentline;
      while (pos < StringLen(commentstring)) {
         lineend = StringFind(commentstring,"\n",pos);
         if (lineend < 0) lineend = StringLen(commentstring);
         currentline = StringSubstr(commentstring,pos,lineend-pos);
         pos = lineend+1;
         name_currentline = objname_comment+DoubleToStr(cnt_line,0);
         ypos_currentline = comment_y+comment_lineheight*cnt_line;
         ObjectCreate(name_currentline,OBJ_LABEL,0,0,0,0,0);
         ObjectSet(name_currentline,OBJPROP_CORNER,comment_corner);
         ObjectSet(name_currentline,OBJPROP_XDISTANCE,comment_x);
         ObjectSet(name_currentline,OBJPROP_YDISTANCE,ypos_currentline);
         ObjectSetText(name_currentline,currentline,comment_fontsize,comment_font,comment_color);
         cnt_line++;
      }
      name_currentline = objname_comment+DoubleToStr(cnt_line,0);
      while (ObjectFind(name_currentline) >= 0) {
         ObjectDelete(name_currentline);
         cnt_line++;
         name_currentline = objname_comment+DoubleToStr(cnt_line,0);
      }
      Comment("");
   } else {
      Comment(commentstring);
      cnt_line = 0;
      name_currentline = objname_comment+DoubleToStr(cnt_line,0);
      while (ObjectFind(name_currentline) >= 0) {
         ObjectDelete(name_currentline);
         cnt_line++;
         name_currentline = objname_comment+DoubleToStr(cnt_line,0);
      }
   }
}

int delcomment()
{
   commentstring = "";   
}