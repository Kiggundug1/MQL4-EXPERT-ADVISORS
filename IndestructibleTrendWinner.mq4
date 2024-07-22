//+------------------------------------------------------------------+
//|             Copyright © 2012, Konstantin http://www.fxaktiv.com  |
//|                        panelektrik@yandex.ru skype pan--elektrik |
//|                                ISQ 561090193 Моб.+380 50 7115118 |
//+------------------------------------------------------------------+
//#property copyright "Copyright © 2012, Konstantin"
//#property link      "http://www.fxaktiv.com  panelektrik@yandex.ru skype pan--elektrik ISQ 561090193 Моб.+380 50 7115118"


#property indicator_chart_window
#property indicator_buffers 4
#property indicator_color1 Yellow
#property indicator_color2 Lime
#property indicator_color3 OrangeRed
#property indicator_color4 Chartreuse
#property indicator_width1 2
#property indicator_width2 2
#property indicator_width3 2


extern int BarsHistory =10000;
extern int PeriodCCI =50;
extern int PeriodATR =5;

extern bool alert = true;
extern bool email = false;
extern bool fractals =true;

double Trend[];
double TrendUp[];
double TrendDown[];
double fr[];
double CCI,ATR,Bf;
int tr=0;
int tm;
//+------------------------------------------------------------------+
int init(){
 SetIndexBuffer(0,Trend);
 SetIndexBuffer(1,TrendUp);
 SetIndexBuffer(2,TrendDown);
 SetIndexBuffer(3,fr);SetIndexStyle(3,DRAW_ARROW);SetIndexArrow(3,108);
 }
//+------------------------------------------------------------------+ 
void mail(string c){
 if(IsTesting()==false&&IsOptimization()==false&&IsVisualMode()==false){
 SendMail(WindowExpertName(),c);}}
//+------------------------------------------------------------------+ 
void Signal(string c){
 if(IsTesting()==false&&IsOptimization()==false&&IsVisualMode()==false){
 if(alert)Alert("New signal "+c);
 if(email)mail("New signal "+c);}}
//+------------------------------------------------------------------+
void object(string Nm,string Tx,int Sz,string Shr,color Col,int Y,int X,int W)
 {
 ObjectCreate(Nm,OBJ_LABEL,0,0,0);                //создаем объект
 ObjectSetText(Nm,Tx,Sz,Shr,Col);                 //указываем что это текстовый и вводим параметры
 ObjectSet(Nm,OBJPROP_YDISTANCE,Y);               //устанавливаем Y -координату
 ObjectSet(Nm,OBJPROP_XDISTANCE,X);               //устанавливаем X -координату
 ObjectSet(Nm,OBJPROP_CORNER,W);                  //устанавливаем угол привязки
 if(Shr!="Arial")ObjectSet(Nm,OBJPROP_BACK,true); //устанавливаем фон или обычный объект
 } 
//+------------------------------------------------------------------+ 
int start()
{
 object("Time",TimeToStr(TimeCurrent()),9,"Arial",White ,20,20,1);
 if(TimeCurrent()<tm+5)return(0);tm=TimeCurrent();
//static int time;if(iTime(NULL,0,0)==time)return(0);time=iTime(NULL,0,0); 
//+----------
 for(int i=BarsHistory+MathMax(PeriodCCI,PeriodATR)*2;i>0;i--)
 {
 CCI=iCCI(NULL,0,PeriodCCI,PRICE_TYPICAL,i);
 ATR=iATR(NULL,0,PeriodATR,i);
//+---------- 
 if(CCI>0&&Low[i]-ATR>Bf)Bf=Low[i]-ATR;
 if(CCI<0&&High[i]+ATR<Bf)Bf=High[i]+ATR;
 if(fractals&&iFractals(NULL,0,1,i)>0)fr[i]=iFractals(NULL,0,1,i);
 if(fractals&&iFractals(NULL,0,2,i)>0)fr[i]=iFractals(NULL,0,2,i);
//+---------- 
 if(i<BarsHistory){ 
 Trend[i]=Bf;
 if(CCI>0){TrendUp[i]=Bf;}
 if(CCI<0){TrendDown[i]=Bf;}
 }}
 if(TrendUp[1]<1000)if(tr==2||tr==0){tr=1;Signal("Current Trend: UP");ObjectDelete("Trend");object("Trend","Current Trend: UP",9,"Arial",LawnGreen ,40,20,1);}
 if(TrendDown[1]<1000)if(tr==1||tr==0){tr=2;Signal("Current Trend: DW");ObjectDelete("Trend");object("Trend","Current Trend: DW",9,"Arial",OrangeRed ,40,20,1);}
 }
//+------------------------------------------------------------------+
void deinit(){ObjectDelete("Time");ObjectDelete("Trend");}
//+------------------------------------------------------------------+

