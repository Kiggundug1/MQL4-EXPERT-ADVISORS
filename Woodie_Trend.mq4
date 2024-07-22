//+------------------------------------------------------------------+
//|                                                 Woodie_Trend.mq4 |
//|                                                         AndreiFX |
//|                                AndreiFX@mail.ru, TradersWELL.COM |
//+------------------------------------------------------------------+
#property copyright "AndreiFX"
#property link      "AndreiFX@mail.ru, TradersWELL.COM"
#property indicator_separate_window
#property indicator_buffers 5
#property indicator_color1 LimeGreen  
#property indicator_color2 Green 
#property indicator_color3 White 
#property indicator_color4 Red 
#property indicator_color5 Lime
#property indicator_level1 0
extern int TrendCCI_Period = 50;
extern int EntryCCI_Period = 14;
extern int TurboCCI_Period = 6;   
extern int ЗонаРазворота=50;
extern int ЗавалЗаZL=5;
extern int БаровДляРазворота=5;
extern int ВеличинаОтскока=3;
extern int БаровДляПересечения=5;
extern int Баров_ДоСигнала=20;
extern double Уровень1Вершины=100;
extern double ЛинияДо=50;
extern double СигналДо=50;
extern double ЗонаКрюка=150;
extern int Баров=50;
extern int buf=3;
double Trend[];
double ZLR[];
double CrossZL[];
double MAXBuffer[];
double KRBuff[];
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int init()
  {
 
  
   SetIndexStyle(0, DRAW_LINE, STYLE_SOLID, 2);
   SetIndexBuffer(0, Trend);
    SetIndexEmptyValue(0, EMPTY_VALUE);   
   SetIndexStyle(1, DRAW_HISTOGRAM, 0, 2);
   SetIndexBuffer(1, ZLR);
    SetIndexEmptyValue(1, EMPTY_VALUE);   
   SetIndexStyle(2, DRAW_HISTOGRAM, 0, 2);
   SetIndexBuffer(2, CrossZL);
    SetIndexEmptyValue(2, EMPTY_VALUE);   
   
   SetIndexStyle(3, DRAW_HISTOGRAM, 0, 1);
   SetIndexBuffer(3, MAXBuffer);
    SetIndexEmptyValue(3, EMPTY_VALUE);   
    
    SetIndexStyle(4, DRAW_HISTOGRAM, 0, 2);
   SetIndexBuffer(4, KRBuff);
    SetIndexEmptyValue(4, EMPTY_VALUE);  
  // SetIndexEmptyValue(1, 0); 
   return(0);
  }
//+------------------------------------------------------------------+
//| Custom indicator deinitialization function                       |
//+------------------------------------------------------------------+
int deinit()
  {
//----
   Затираем();
//----
   return(0);
  }
//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int start()
  {
int limit;
     int counted_bars=IndicatorCounted();
  //---- последний посчитанный бар будет пересчитан
     if(counted_bars>0) counted_bars--;
     limit=Bars-counted_bars;
  //---- основной цикл
     for(int i=0; i<Баров; i++)
       {
        if(iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,0,i)!=0) Trend[i]=1;
        if(iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,1,i)!=0) Trend[i]=-1;
        if((iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,0,i)==0)&&(iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,1,i)==0)) Trend[i]=BligishiiTrend(i,limit);
       
       KRBuff[i]=Крюк(i);
       
       
       
        ZLR[i]=0;
        if(ZLRPatternBuy(i)==1) ZLR[i]=1;
        if(ZLRPatternSell(i)==1) ZLR[i]=-1;
        //CrossZL[i]=iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,4,i);
      
       if(ZLCrossBuy(i)==1) CrossZL[i]=1;
       if(ZLCrossSell(i)==1) CrossZL[i]=-1;
       
      // if(E_Max(i,Баров_ДоСигнала,Уровень1Вершины)!=0) MAXBuffer[E_Max(i,Баров_ДоСигнала,Уровень1Вершины)]=1;
       if(buf==3){//Чтобы не грузить лишний раз
         if(TrendLineDn(i)==1) MAXBuffer[i]=-1;
         if(TrendLineUp(i)==1) MAXBuffer[i]=1;
         }
       }
//----
   return(0);
  }
//+------------------------------------------------------------------+
int BligishiiTrend(int shift, int l)
   {
   double BufferDown=0;
   double BufferUp=0;
   while(BufferUp==0&&BufferDown==0&&shift<l-1)
      {
      shift++;
       if(iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,0,shift)!=0) BufferUp=1;
       if(iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,1,shift)!=0) BufferDown=-1;
      //BufferDown=
      }
   if(BufferUp==1) return(1);
   if(BufferDown==-1) return(-1);   
   }
   
   
//1-сигнал на бай
//0-нет сигнала
int ZLRPatternBuy(int shift)
   {
   bool ТрендВверх=true;
   double Min=1000;
   //Для сигналов к покупке
   for (int i=shift;i<shift+БаровДляРазворота;i++)
      {
      if(Trend[i]==-1) ТрендВверх=false;
      if(iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,4,i)<-ЗавалЗаZL )ТрендВверх=false;
      if(iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,4,i)<Min) Min=iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,4,i);
      }
   if(ТрендВверх&&Min<ЗонаРазворота) 
      {
      if((iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,4,shift+1)==Min)&&(iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,4,shift)>Min+ВеличинаОтскока)) return(1);
      }
      
   
   
   return(0);
   }
   
 //1-сигнал на селл
//0-нет сигнала
int ZLRPatternSell(int shift)
   {
   bool ТрендВниз=true;
   double Max=-1000;
   //Для сигналов к покупке
   for (int i=shift;i<shift+БаровДляРазворота;i++)
      {
      if(Trend[i]==1) ТрендВниз=false;
      if(iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,4,i)> ЗавалЗаZL )ТрендВниз=false;
      if(iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,4,i)>Max) Max=iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,4,i);
      }
   if(ТрендВниз&&Max>-ЗонаРазворота) 
      {
      if((iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,4,shift+1)==Max)&&(iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,4,shift)<Max-ВеличинаОтскока)) return(1);
      }
   return(0);
   }
 
 
 int ZLCrossBuy(int shift)
   {
   double max=-10000;
   double min=10000;
   bool ТрендВверх=true;
   for (int i=shift;i<shift+БаровДляПересечения;i++)
      {
      if(Trend[i]==-1) ТрендВверх=false;
      if(iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,4,i)>=max) max=iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,4,i);
      if(iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,4,i)<=min) min=iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,4,i);
      }
   if(ТрендВверх&&max>0&&min<0&&max==iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,4,shift)&&iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,4,shift+1)<=0) return(1);
   return(0);
   }
 
  int ZLCrossSell(int shift)
   {
   double max=-10000;
   double min=10000;
   bool ТрендВниз=true;
   for (int i=shift;i<shift+БаровДляПересечения;i++)
      {
      if(Trend[i]==1) ТрендВниз=false;
      if(iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,4,i)>=max) max=iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,4,i);
      if(iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,4,i)<=min) min=iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,4,i);
      }
   if(ТрендВниз&&max>0&&min<0&&min==iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,4,shift)&&iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,4,shift+1)>=0) return(1);
   return(0);
   }
   
int E_Max(int shift,int number,double limit)
    {
    int res=0;
   
    for (int i=shift;i<shift+number;i++)
      {
      if((Индюк(i,4)>Индюк(i+1,4))&&(Индюк(i,4)>Индюк(i-1,4)+2)&&(Индюк(i,4)>0)&&(Индюк(i+1,4)>0)&&(Индюк(i-1,4)>0)&&(Индюк(i,4)>limit)) return(i);
      if((Индюк(i,6)>Индюк(i+1,6))&&(Индюк(i,6)>Индюк(i-1,6)+2)&&(Индюк(i,6)>0)&&(Индюк(i+1,6)>0)&&(Индюк(i-1,6)>0)&&(Индюк(i,6)>limit)) return(i);
      }
    
   // if(max!=-10000) res=1;
    
    return(res);
    }
int E_Min(int shift,int number,double limit)
    {
    int res=0;
   
    for (int i=shift;i<shift+number;i++)
      {
      if((Индюк(i,4)<Индюк(i+1,4))&&(Индюк(i,4)<Индюк(i-1,4)-2)&&(Индюк(i,4)<0)&&(Индюк(i+1,4)<0)&&(Индюк(i-1,4)<0)&&(Индюк(i,4)<-limit)) return(i);
      if((Индюк(i,6)<Индюк(i+1,6))&&(Индюк(i,6)<Индюк(i-1,6)-2)&&(Индюк(i,6)<0)&&(Индюк(i+1,6)<0)&&(Индюк(i-1,6)<0)&&(Индюк(i,6)<-limit)) return(i);
      }
    
   // if(max!=-10000) res=1;
    
    return(res);
    }
        
double Индюк(int shift,int buff)
{
return(iCustom(Symbol(),0,"TripleCCI",TrendCCI_Period,EntryCCI_Period,TurboCCI_Period,buff,shift));
}


int TrendLineUp(int shift)
   {
   if(Trend[shift]!=1) return(0);
   double Цена1=0;
   double Уровень=0;
   int Бар1=0;
   double Цена2=0;
   int Бар2=0;  
   double m;
   int ct; 
   for (int i=shift;i<shift+Баров_ДоСигнала;i++)
      {
         Цена1=0;
         Бар1=0;
         m=E_Max(i,shift+Баров_ДоСигнала-i,1);
         if(m!=0) Бар1=m;
         
         if(Бар1!=0) for (int j=Бар1;j<shift+Баров_ДоСигнала;j++)
                     {
                       Цена2=0;
                       Бар2=0;
                       Уровень=Уровень1Вершины;
                       if(Уровень<MathMax(Индюк(Бар1,4),Индюк(Бар1,6))) Уровень=MathMax(Индюк(Бар1,4),Индюк(Бар1,6));
                       m=E_Max(j,shift+Баров_ДоСигнала-j,Уровень);
                       if(m!=0) Бар2=m;   
                       //Здесь нужно проверить есть ли выше данной линии какие либо значения индюка
                       if(Бар2!=0) 
                        {
                        ct=CrossTrend(Бар1,Бар2,shift);
                        if(ct!=0&&Trend[ct]==1) {ЛТ(ct,Бар2);return(1);}
                        } 
                     }
         
         
      }
  return(0);
   }
int TrendLineDn(int shift)
   {
   if(Trend[shift]!=-1) return(0);
   double Цена1=0;
   double Уровень=0;
   int Бар1=0;
   double Цена2=0;
   int Бар2=0;  
   double m;
   int ct; 
   for (int i=shift;i<shift+Баров_ДоСигнала;i++)
      {
         Цена1=0;
         Бар1=0;
         m=E_Min(i,shift+Баров_ДоСигнала-i,1);
         if(m!=0) Бар1=m;
         
         if(Бар1!=0) for (int j=Бар1;j<shift+Баров_ДоСигнала;j++)
                     {
                       Цена2=0;
                       Бар2=0;
                       Уровень=Уровень1Вершины;
                       if(-Уровень>MathMin(Индюк(Бар1,4),Индюк(Бар1,6))) Уровень=-MathMin(Индюк(Бар1,4),Индюк(Бар1,6));
                       m=E_Min(j,shift+Баров_ДоСигнала-j,Уровень);
                       if(m!=0) Бар2=m;   
                       //Здесь нужно проверить есть ли выше данной линии какие либо значения индюка
                       if(Бар2!=0) 
                        {
                        ct=CrossTrendDn(Бар1,Бар2,shift);
                        if(ct!=0&&Trend[ct]==-1) {ЛТ(ct,Бар2);return(1);}
                        } 
                     }
         
         
      }
  return(0);
   }
   
int CrossTrend(int b1,int b2,int s)
//Возвратит 1 если уровень не пересекали
//0 если пересекали
   {
   if(b1==s) return(0);
   int res=1;
   int res1=1;
   double p1,p2,b,k,znach,p;
   
   if(b1==b2) return(0);
   if(Индюк(b1,4)>Индюк(b1,6)) {p1=Индюк(b1,4);}
   else {p1=Индюк(b1,6);}
   if(Индюк(b2,4)>Индюк(b2,6)) {p2=Индюк(b2,4);}
   else {p2=Индюк(b2,6);}
   b=(p1*b2-b1*p2)/(b2-b1);
   k=(p2-b)/b2;
   //res=b1;
    
   if(p1>ЛинияДо)
      {
      p1=ЛинияДо;
      b1=(p1-b)/k;
      if(b1<0) b1=0;
      }
   res=b1;
   
   
   for (int i=b1;i<=b2;i++)
      {
       znach=k*i+b;
       if(Индюк(i,4)>znach+2) res=0;
       if(Индюк(i,6)>znach+2) res=0;
       if(znach<0) res=0;
      if(res==0) return(0);
      }
   
   if(res!=0) 

      {
      znach=k*res+b;
      p=Индюк(res,4);
      
      res1=res;
      res=1;
      for(i=res1;i>s;i--) 
         {
         znach=k*i+b;
         p=Индюк(i,4);
         if(znach<p) res=0;
         if(znach<0) res=0;
         if(res==0) return(0);
         }
      znach=k*s+b;
      p=Индюк(s,4);
      
      if(res!=0&&znach<p&&Индюк(s+1,4)<СигналДо&&p>Индюк(s+1,4)) {res=s;}
      else {res=0;} 
      
      }
   
   
   
   return(res);
   }

int CrossTrendDn(int b1,int b2,int s)
//Возвратит 1 если уровень не пересекали
//0 если пересекали
   {
   if(b1==s) return(0);
   int res=1;
   int res1=1;
   double p1,p2,b,k,znach,p;
   
   if(b1==b2) return(0);
   if(Индюк(b1,4)<Индюк(b1,6)) {p1=Индюк(b1,4);}
   else {p1=Индюк(b1,6);}
   if(Индюк(b2,4)<Индюк(b2,6)) {p2=Индюк(b2,4);}
   else {p2=Индюк(b2,6);}
   b=(p1*b2-b1*p2)/(b2-b1);
   k=(p2-b)/b2;
   //res=b1;
    
   if(p1<-ЛинияДо)
      {
      p1=-ЛинияДо;
      b1=(p1-b)/k;
      if(b1<0) b1=0;
      }
   res=b1;
   
   
   for (int i=b1;i<=b2;i++)
      {
       znach=k*i+b;
       if(Индюк(i,4)<znach-2) res=0;
       if(Индюк(i,6)<znach-2) res=0;
       if(znach>0) res=0;
      if(res==0) return(0);
      }
   //до сюда дошел
   if(res!=0) 

      {
      znach=k*res+b;
      p=Индюк(res,4);
      
      res1=res;
      res=1;
      for(i=res1;i>s;i--) 
         {
         znach=k*i+b;
         p=Индюк(i,4);
         if(znach>p) res=0;
         if(znach>0) res=0;
         if(res==0) return(0);
         }
      znach=k*s+b;
      p=Индюк(s,4);
      
      if(res!=0&&znach>p&&Индюк(s+1,4)>-СигналДо&&p<Индюк(s+1,4)) {res=s;}
      else {res=0;} 
      
      }
   
   
   
   return(res);
   }




   
void ЛТ(int b1,int b2)
   {
   
   ObjectCreate("LT"+b1+b2,OBJ_TREND,0,0,0,0,0);
   ObjectSet("LT"+b1+b2,OBJPROP_PRICE1,High[b1]);
   ObjectSet("LT"+b1+b2,OBJPROP_PRICE2,High[b2]);
    ObjectSet("LT"+b1+b2,OBJPROP_TIME1,Time[b1]);
    ObjectSet("LT"+b1+b2,OBJPROP_TIME2,Time[b2]);
    ObjectSet("LT"+b1+b2,OBJPROP_RAY,false);
   }
 void Затираем(){  
for (int i = ObjectsTotal(); i >= 0; i--)     if (StringFind(ObjectName(i),"LT",0) >=0){  ObjectDelete(ObjectName(i));}
            
           
         
 }
 
 
 
int Крюк(int shift)
{
int res=0;
//Смотрим баи
//Надо чтобы последние 3 бара были в зеленой зоне-0 буфер и 
//на прошлом баре был лоу ниже ЗонаКрюка в 5 буфере и позапрошлый бар с текущим были выше прошлого
if(Индюк(shift,0)!=0)
   {
   if(Индюк(shift+1,0)!=0)
    {
      if(Индюк(shift+2,0)!=0)
       {
         if(Индюк(shift+1,5)<-ЗонаКрюка)
            {
             
             if(Индюк(shift,5)>Индюк(shift+1,5)&&Индюк(shift+2,5)>Индюк(shift+1,5)) res=1;
            }
       }
    }
   }
//Селы наоборот
if(Индюк(shift,1)!=0)
   {
   if(Индюк(shift+1,1)!=0)
    {
      if(Индюк(shift+2,1)!=0)
       {
         if(Индюк(shift+1,5)>ЗонаКрюка)
            {
             if(Индюк(shift,5)<Индюк(shift+1,5)&&Индюк(shift+2,5)<Индюк(shift+1,5)) res=-1;
            }
       }
    }
   }






return(res);
} 