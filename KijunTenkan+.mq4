//+------------------------------------------------------------------+
//|                                                     Ichimoku.mq4 |
//|                      Copyright � 2004, MetaQuotes Software Corp. |
//|                      Copyright � 2004, AlexSilver � ����� +      |
//|                                       http://www.metaquotes.net/ |
//|                                       http://www.viac.ru/        |
//+------------------------------------------------------------------+
#property copyright "Copyright � 2004, AlexSilver � ����� +"
#property link      "http://www.viac.ru/"

#property indicator_chart_window
#property indicator_buffers 2
#property indicator_color1 Red
#property indicator_color2 Blue
//---- input parameters
extern int Tenkan=9;
extern int Kijun=26;
extern int TenkanShift=3;
extern int KijunShift=9;
//---- buffers
double Tenkan_Buffer[];
double Kijun_Buffer[];
//----
//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int init()
  {
//---- ����� Tenkan-sen
   SetIndexStyle(0,DRAW_LINE);
   SetIndexBuffer(0,Tenkan_Buffer);
   SetIndexDrawBegin(0,Tenkan+TenkanShift-1);
   SetIndexShift(0,TenkanShift);
   SetIndexLabel(0,"Tenkan Sen");
//---- ����� Kijun-sen
   SetIndexStyle(1,DRAW_LINE);
   SetIndexBuffer(1,Kijun_Buffer);
   SetIndexDrawBegin(1,Kijun+KijunShift-1);
   SetIndexShift(1,KijunShift);
   SetIndexLabel(1,"Kijun Sen");
//----
   return(0);
  }
//+------------------------------------------------------------------+
//| Ichimoku Kinko Hyo                                               |
//+------------------------------------------------------------------+
int start()
  {
   int    i,k;
   int    counted_bars=IndicatorCounted();
   double high,low,price;
//----
   if(Bars<=Tenkan || Bars<=Kijun) return(0);
//---- initial zero
   if(counted_bars<1)
     {
      for(i=1;i<=Tenkan;i++)    Tenkan_Buffer[Bars-i]=0;
      for(i=1;i<=Kijun;i++)     Kijun_Buffer[Bars-i]=0;
     }
//---- Tenkan Sen
   i=Bars-Tenkan;
   if(counted_bars>Tenkan) i=Bars-counted_bars-1;
   while(i>=0)
     {
      high=High[i]; low=Low[i]; k=i-1+Tenkan;
      while(k>=i)
        {
         price=High[k];
         if(high<price) high=price;
         price=Low[k];
         if(low>price)  low=price;
         k--;
        }
      Tenkan_Buffer[i+TenkanShift]=(high+low)/2;
      i--;
     } i=TenkanShift-1;
   while(i>=0)
     {
      high=High[0]; low=Low[0]; k=Tenkan-TenkanShift+i;
      while(k>=0)
        {
         price=High[k];
         if(high<price) high=price;
         price=Low[k];
         if(low>price) low=price;
         k--;
        }
      Tenkan_Buffer[i]=(high+low)/2;
      i--;
     }
//---- Kijun Sen
   i=Bars-Kijun;
   if(counted_bars>Kijun) i=Bars-counted_bars-1;
   while(i>=0)
     {
      high=High[i]; low=Low[i]; k=i-1+Kijun;
      while(k>=i)
        {
         price=High[k];
         if(high<price) high=price;
         price=Low[k];
         if(low>price) low=price;
         k--;
        }
      Kijun_Buffer[i+KijunShift]=(high+low)/2;
      i--;
     } i=KijunShift-1;
   while(i>=0)
     {
      high=High[0]; low=Low[0]; k=Kijun-KijunShift+i;
      while(k>=0)
        {
         price=High[k];
         if(high<price) high=price;
         price=Low[k];
         if(low>price) low=price;
         k--;
        }
      Kijun_Buffer[i]=(high+low)/2;
      i--;
     }
//----
   return(0);
  }
//+------------------------------------------------------------------+