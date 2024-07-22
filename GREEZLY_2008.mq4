//------------------------------------------------------------------
//                                                GREEZLY_2008.mq4  |
//                                Cyright © 2007, GREEZLY           |
// e-mail: greezlyfx@mail.ru   ICQ: 491769515                       |
//------------------------------------------------------------------

#property copyright "Copyright © 2007, GREEZLY"
#property link      ""

// магические номера ордеров: 777AABB 
// AA - собственный тип ордера, BB - резерв

#define MN_Usual      7770000   // обычный ордер
#define MN_Averaging  7770100   // усредняющий ордер
#define MN_Flating    7770200   // флэтовый ордер, открытый по индикатору Flat для мелкого профита внутри канала
#define MN_Speed      7770300   // ордер, открытый по индикатору Speed при быстром и мощном движении цены

// ВНЕШНИЕ ПЕРЕМЕННЫЕ

extern double TakeProfitB                   = 12;
extern double TakeProfitS                   = 12;
extern double StopLossB                     = 1080;
extern double StopLossS                     = 780;
extern int    TimeStopLoss_Minutes          = 0;     // временной стоп-лосс: время (в минутах), по истечению которого реальный ордер закрывается (0 - не использовать)
extern double TakeProfitForLock             = 0;
extern double StopLossForLock               = 134;
extern double TrailingStop                  = 0;
extern double StepTrailingStop              = 5;     // шаг чувствительности для сдвига TrailingStop

extern double BuyStopLevel                  = 22;    // < 0 - не использовать 
extern double BuyLimitLevel                 = 17; 
extern double SellStopLevel                 = 78; 
extern double SellLimitLevel                = 83; 

extern int    UseOneWayRealOrdersB          = 1;       // использовать однонаправленные открытые позиции BUY
extern int    UseOneWayRealOrdersS          = 1;       // использовать однонаправленные открытые позиции SELL
extern double MinDistanceRealOrdersB        = 390;     // минимально допустимое расстояние между однонаправленными открытыми позициями BUY
extern double MinDistanceRealOrdersS        = 590;     // минимально допустимое расстояние между однонаправленными открытыми позициями SELL
extern int    UseAveragingTakeProfitB       = 0;       // использовать усредняющий TakeProfit для однонаправленных позиций BUY
extern int    UseAveragingTakeProfitS       = 0;       // использовать усредняющий TakeProfit для однонаправленных позиций SELL

extern int    UseAcceleratorIndicator       = 0;       // использовать индикатор ускорения
extern int    iAC_CountBars                 = 3;       // кол-во анализируемых значений индикатора Accelerator
extern int    iAC_CountTimeFrames           = 3;       // кол-во анализируемых периодов (тайм-фреймов) индикатора Accelerator
extern int    iAC_StartTimeFrame            = 0;       // начальный (наименьший) анализируемый период (тайм-фрейм) для индикатора Accelerator

extern int    UseSpeedIndicator             = 1;       // использовать индикатор скорости
extern int    iSP_CountBars                 = 2;       // кол-во анализируемых значений индикатора Speed
extern int    iSP_CountTimeFrames           = 2;       // кол-во анализируемых периодов (тайм-фреймов) индикатора Speed
extern int    iSP_StartTimeFrame            = 1;       // начальный (наименьший) анализируемый период (тайм-фрейм) для индикатора Speed
extern int    iSP_UseForOpenRealOrders      = 0;       // использовать индикатор скорости для открытия реальных ордеров
extern double iSP_MinValueForOpenRealOrders = 0.0005;  // минимальное значение индикатора скорости для открытия реальных ордеров
extern double iSP_UseMinTakeProfit          = 1;       // использовать минимальный тейк-профит для ордеров, открываемых по индикатору Speed
extern double iSP_StopLoss                  = 35;      // стоп-лосс для ордеров, открываемых по индикатору Speed

extern int    CountHighLowLimits            = 2;       // количество используемых ограничений HighLowLimit: "не покупать сверху, не продавать снизу"

extern double iHL_LimitDistance1            = 150;     // максимально допустимое отклонение цены от Low/High для возможности открытия Buy/Sell
extern int    iHL_Period1                   = 4;       // период (тайм-фрейм) для анализа HighLow (час)
extern int    iHL_CountBars1                = 24;      // кол-во анализируемых значений периода iHL_Period для определения Low/High

extern double iHL_LimitDistance2            = 700;     // второй блок ограничений HighLowLimit
extern int    iHL_Period2                   = 6;       // (день)
extern int    iHL_CountBars2                = 15;      // 

extern int    UseFlatIndicator              = 1;       // использовать флэт индикатор для открытия ордеров
extern double iFL_MinWidthCanal             = 20;      // минимально допустимая ширина канала
extern double iFL_MaxWidthCanal             = 40;      // максимально допустимая ширина канала
extern double iFL_MinExtremumsCount         = 2;       // минимально необходимое кол-во экстремумов в канале с каждой стороны (экстремумом считаем значения ниже 1/4 и выше 3/4 ширины канала)
extern int    iFL_Period                    = 1;       // период (тайм-фрейм) для анализа Flat (пятиминутки)
extern int    iFL_CountBars                 = 12;      // кол-во анализируемых значений периода iFL_Period
extern double iFL_StopLoss                  = 25;      // стоп-лосс для ордеров, открываемых по индикатору Flat
extern double iFL_LotSizeMultiply           = 2;       // мультипликатор размера лота для ордеров, открываемых по индикатору Flat

extern int    UseBuy                        = 1;       // использовать Buy
extern int    UseSell                       = 1;       // использовать Sell
extern int    OpenRealOrders                = 1;       // открывать реальные ордера по рынку
extern double Risk                          = 0.1;     // уровень риска, размер лота от остатка свободных средств, если 0, торговля ведется минимальным заданным лотом
extern double BuyDenyLevel                  = 160;     // граничный уровень открытия ордеров BUY  (выше этого уровня ордера не открываются)
extern double SellDenyLevel                 = 155;     // граничный уровень открытия ордеров SELL (ниже этого уровня ордера не открываются)

extern int    MaxOrdersCount                = 0;       // ограничение на кол-во ордеров (0 - не ограничивать)

extern double MinDistanceDeferFromPrice     = 10;      // минимально допустимое расстояние цены открываемых отложенных ордеров от текущей цены
extern double MaxDistanceDeferFromPrice     = 50;      // максимально допустимое расстояние цены открываемых отложенных ордеров от текущей цены
extern double MinDistanceBetweenDefer       = 90;      // минимально допустимое расстояние между однонаправленными отложенными ордерами

extern double MinLotSize                    = 0.1;
extern double MaxLotSize                    = 1000;
extern double StepLotSize                   = 0.1;

extern string EndOfTrading                  = "yyyy.mm.dd hh:mm";   // момент окончания торговли (дата и время в формате "yyyy.mm.dd hh:mm")

bool   PrintComments                 = false;                 // выводить комментарии при торговле      
int    DetailComments                = 0;                     // детализация комментариев (0 - самые важные)      


// ВНУТРЕННИЕ ПЕРЕМЕННЫЕ

int _OP_BUY = 0, _OP_SELL = 1, _OP_BUYLIMIT = 2, _OP_SELLLIMIT = 3, _OP_BUYSTOP = 4, _OP_SELLSTOP = 5;
int _Period[10] = {PERIOD_M1, PERIOD_M5, PERIOD_M15, PERIOD_M30, PERIOD_H1, PERIOD_H4, PERIOD_D1, PERIOD_W1, PERIOD_MN1, 0};

double _Point;

int    Counts[6];                        // кол-во ордеров по типам ордеров
double MinPrices[6], MaxPrices[6];       // минимальные и максимальные цены имеющихся ордеров по типам ордеров
double SumLots[6];                       // общее кол-во лотов по типам ордеров

double miSpeed;                          // производный индикатор относительной скорости: < 0 - цена движется вниз с ускорением; 0 - цена колеблется незначительно; > 0 - цена движется вверх с ускорением
double miAccelerator;                    // производный индикатор ускорения: < 0 - цена ускоряется вниз; 0 - ускорение незначительно; > 0 - цена ускоряется вверх
double iHL_Low[2], iHL_High[2];          // значения Low и High для анализа HighLowLimit
double _iHL_LimitDistance;
bool   iFL_IsFlat;                       // индикатор флэта
double iFL_Low, iFL_High, iFL_Width;     // нижняя, верхняя границы и ширина канала для индикатора флэта
   
int glGetNormalOrderType(int _OrderType)
{
   switch(_OrderType)
   {
      case OP_BUY:       return (_OP_BUY);
      case OP_SELL:      return (_OP_SELL);
      case OP_BUYLIMIT:  return (_OP_BUYLIMIT);
      case OP_BUYSTOP:   return (_OP_BUYSTOP);
      case OP_SELLLIMIT: return (_OP_SELLLIMIT);
      case OP_SELLSTOP:  return (_OP_SELLSTOP);
      default:           return(-1);
   }
 return(-1);   
}

int init()
{
   // корректировка переменных в зависимости от условий торговли
   
   if(TakeProfitB  != 0)  TakeProfitB  = MathMax(MarketInfo(Symbol(), MODE_STOPLEVEL), TakeProfitB);
   if(TakeProfitS  != 0)  TakeProfitS  = MathMax(MarketInfo(Symbol(), MODE_STOPLEVEL), TakeProfitS);
   if(StopLossB    != 0)  StopLossB    = MathMax(MarketInfo(Symbol(), MODE_STOPLEVEL), StopLossB);
   if(StopLossS    != 0)  StopLossS    = MathMax(MarketInfo(Symbol(), MODE_STOPLEVEL), StopLossS);
   if(iSP_StopLoss != 0)  iSP_StopLoss = MathMax(MarketInfo(Symbol(), MODE_STOPLEVEL), iSP_StopLoss);
   if(iFL_StopLoss != 0)  iFL_StopLoss = MathMax(MarketInfo(Symbol(), MODE_STOPLEVEL), iFL_StopLoss);
   
   if(TakeProfitForLock != 0)  TakeProfitForLock = MathMax(MarketInfo(Symbol(), MODE_STOPLEVEL), TakeProfitForLock);
   if(StopLossForLock   != 0)  StopLossForLock   = MathMax(MarketInfo(Symbol(), MODE_STOPLEVEL), StopLossForLock);

   if(UseAcceleratorIndicator == 1)
   {
      if(iAC_CountBars < 2)        iAC_CountBars       = 2;
      if(iAC_CountBars > 10)       iAC_CountBars       = 10;
      if(iAC_CountTimeFrames < 1)  iAC_CountTimeFrames = 1;
      if(iAC_CountTimeFrames > 5)  iAC_CountTimeFrames = 5;
   }   
   
   if(UseSpeedIndicator == 1)
   {
      if(iSP_CountBars < 2)        iSP_CountBars       = 2;
      if(iSP_CountBars > 10)       iSP_CountBars       = 10;
      if(iSP_CountTimeFrames < 1)  iSP_CountTimeFrames = 1;
      if(iSP_CountTimeFrames > 5)  iSP_CountTimeFrames = 5;
   }   
   
   if(MaxOrdersCount < 0)  MaxOrdersCount = 0;

   MinLotSize  = MathMax(MarketInfo(Symbol(), MODE_MINLOT),  MinLotSize);
   MaxLotSize  = MathMin(MarketInfo(Symbol(), MODE_MAXLOT),  MaxLotSize);
   StepLotSize = MathMax(MarketInfo(Symbol(), MODE_LOTSTEP), StepLotSize);
   
 return(0);
}

int deinit()
{
   
 return(0);
}

int start()
{
   int    _OrderType, _OrderMagicNumber, NormalOrderType; 
   double Lots, _Volume, _OrderOpenPrice, _OrderLots, _OrderStopLoss, _OrderTakeProfit;
   double CurrentPrice, CurrentFigure, NearestRealPrice, NearestDeferPrice, NeedDistance;
   double _Low, _High; 
   int    ticket, type, typedefer;
   int    i, j, k, total;
   bool   MayOpenDeferOrder, MayOpenRealOrder;
   string typestr;
   
   _Point = 1.0 / MathPow(10, Digits);  
   
   
   // ПРОВЕРКИ НА ВОЗМОЖНОСТЬ РАБОТЫ

   // проверка даты окончания торговли
   
   if((EndOfTrading != "yyyy.mm.dd hh:mm") && (StringTrimLeft(EndOfTrading) != ""))
   {
      datetime _EndOfTrading;

      _EndOfTrading = StrToTime(StringTrimLeft(EndOfTrading));
      
      if(_EndOfTrading > D'2007.01.01 00:00') 
        if(Time[0] > _EndOfTrading)
        {
           if(PrintComments)  Print("Запрещена торговля после ", EndOfTrading); 
           return(0);
        }   
   }
   
   total = OrdersTotal();
   for(i = 0; i < total; i++)
   {
      if(!OrderSelect(i, SELECT_BY_POS, MODE_TRADES))
      {
         return(0);
      }

      if(OrderSymbol() != Symbol())  continue;   // пропускаем позиции не по текущей валютной паре
      
   }   
   
   // РАСЧЕТ ИНДИКАТОРОВ
   
   //   индикатор ускорения Accelerator
   
   miAccelerator = 0;
   
   if(UseAcceleratorIndicator == 1)
   {
      double iAC_Val[10][10]; 
      int    iAC_Dir[10];
      
      for(i = 0; i < iAC_CountTimeFrames; i++)
      {
         for(j = 0; j < iAC_CountBars; j++)
           iAC_Val[i][j] = iAC(NULL, _Period[iAC_StartTimeFrame + i], j);
         
         if     (iAC_Val[i][iAC_CountBars - 2] > iAC_Val[i][iAC_CountBars - 1])  iAC_Dir[i] = 1;
         else if(iAC_Val[i][iAC_CountBars - 2] < iAC_Val[i][iAC_CountBars - 1])  iAC_Dir[i] = -1;
         else
         {
            iAC_Dir[i] = 0;
            break;
         }   
         
         for(j = iAC_CountBars - 3; j >= 0; j--)
         {
            if((iAC_Dir[i] == 1) && (iAC_Val[i][j] <= iAC_Val[i][j + 1]))
            {
               iAC_Dir[i] = 0;
               break;
            }  
            else
            if((iAC_Dir[i] == -1) && (iAC_Val[i][j] >= iAC_Val[i][j + 1]))
            {
               iAC_Dir[i] = 0;
               break;
            }  
         }
      }    
      
      miAccelerator = iAC_Dir[0];
      
      for(i = 1; i < iAC_CountTimeFrames; i++)
      {
         if(iAC_Dir[i] != miAccelerator)
         {
            miAccelerator = 0;
            break;
         }
      }   
      
      // если имеем значительное ускорение, определим значение ускорения
      
      if(miAccelerator != 0)  miAccelerator = iAC_Val[0][0] - iAC_Val[0][1]; 
   }

   //   индикатор скорости Speed

   miSpeed = 0;
   
   if(UseSpeedIndicator == 1)
   {
      double iSP_Val[10][10]; 
      int    iSP_Dir[10];
      double iPrice1, iPrice2;
      
      for(i = 0; i < iSP_CountTimeFrames; i++)
      {
         for(j = 0; j < iSP_CountBars; j++)
         {
            // используем взвешенную цену закрытия PRICE_WEIGHTED: (high + low + close + close) / 4
            
            iPrice1 = (iHigh(NULL, _Period[iSP_StartTimeFrame + i], j + 2) + iLow(NULL, _Period[iSP_StartTimeFrame + i], j + 2) + iClose(NULL, _Period[iSP_StartTimeFrame + i], j + 2) * 2) / 4;
            iPrice2 = (iHigh(NULL, _Period[iSP_StartTimeFrame + i], j + 1) + iLow(NULL, _Period[iSP_StartTimeFrame + i], j + 1) + iClose(NULL, _Period[iSP_StartTimeFrame + i], j + 1) * 2) / 4;
            
            if(iPrice1 > 0)  iSP_Val[i][j] = (iPrice2 - iPrice1) / iPrice1; 
            else             iSP_Val[i][j] = 0;
         }   
         
         if((i == 0) && (iSP_StartTimeFrame == 0))
         {
            if     (Bid > iOpen(NULL, _Period[0], 0))  iSP_Dir[0] = 1;
            else if(Bid < iOpen(NULL, _Period[0], 0))  iSP_Dir[0] = -1;
            else 
            {
               if     (iSP_Val[i][0] > 0) iSP_Dir[i] = 1;
               else if(iSP_Val[i][0] < 0) iSP_Dir[i] = -1;
               else                       
               { 
                  iSP_Dir[i] = 0;
                  break;
               }   
            }
         }
         else
         {            
            if     (iOpen(NULL, _Period[iSP_StartTimeFrame + i], 0) > iClose(NULL, _Period[iSP_StartTimeFrame + i], 1)) iSP_Dir[i] = 1;
            else if(iOpen(NULL, _Period[iSP_StartTimeFrame + i], 0) < iClose(NULL, _Period[iSP_StartTimeFrame + i], 1)) iSP_Dir[i] = -1;
            else 
            {
               if     (iSP_Val[i][0] > 0) iSP_Dir[i] = 1;
               else if(iSP_Val[i][0] < 0) iSP_Dir[i] = -1;
               else                       
               { 
                  iSP_Dir[i] = 0;
                  break;
               }   
            }
         }   
         
         if(iSP_Val[i][iSP_CountBars - 1] * iSP_Dir[i] <= 0)  // первый бар и направление имеют разные знаки
         {
            iSP_Dir[i] = 0;
            break;
         }
         
         for(j = iSP_CountBars - 2; j >= 0; j--)
         {
            if((iSP_Dir[i] == 1) && (iSP_Val[i][j] <= iSP_Val[i][j + 1]))
            {
               iSP_Dir[i] = 0;
               break;
            }  
            else
            if((iSP_Dir[i] == -1) && (iSP_Val[i][j] >= iSP_Val[i][j + 1]))
            {
               iSP_Dir[i] = 0;
               break;
            }  
         }
      }    
      
      miSpeed = iSP_Dir[0];
      
      for(i = 1; i < iSP_CountTimeFrames; i++)
      {
         if(iSP_Dir[i] != miSpeed)
         {
            miSpeed = 0;
            break;
         }
      }   
      
      // если имеем движение с увеличивающейся скоростью, определим текущую мгновенную скорость
      
      if(miSpeed != 0)  
      {
         iPrice1 = iOpen(NULL, _Period[0], 0);
         iPrice2 = Bid;
         
         if((iSP_StartTimeFrame == 0) && (iPrice1 != iPrice2) && (iPrice1 > 0))  miSpeed = (iPrice2 - iPrice1) / iPrice1; 
         else                                                                    miSpeed = iSP_Val[0][0]; 
      }   
   }

   //    расчет значений Low и High для анализа HighLowLimit
   
   if(CountHighLowLimits > 0)
   {
      int _iHL_CountBars, _iHL_Period;

      for(k = 0; k < CountHighLowLimits; k++)
      {
         iHL_Low[k]  = 0;   
         iHL_High[k] = 0;
      
         switch(k)
         {
            case 0 : _iHL_Period = iHL_Period1;  _iHL_CountBars = iHL_CountBars1;  break;
            case 1 : _iHL_Period = iHL_Period2;  _iHL_CountBars = iHL_CountBars2;  break;
            default: continue;     
         }
         
         for(i = 0; i < _iHL_CountBars; i++)
         {
            _Low  = iLow( NULL, _Period[_iHL_Period], i);
            _High = iHigh(NULL, _Period[_iHL_Period], i);  
         
            if(_Low > 0)
              if((iHL_Low[k]  == 0) || (_Low < iHL_Low[k]))    iHL_Low[k]  = _Low;

            if(_High > 0)
              if((iHL_High[k] == 0) || (_High > iHL_High[k]))  iHL_High[k] = _High;
         }
      }   
   }

   // индикатор флэта
   
   if(UseFlatIndicator == 1)
   {
      int _CountLow, _CountHigh, _PrevLowHigh;
      
      iFL_IsFlat = false;
      iFL_Low    = 0;
      iFL_High   = 0;
      iFL_Width  = 0;
      
      for(i = 0; i < iFL_CountBars; i++)
      {
         _Low  = iLow( NULL, _Period[iFL_Period], i);
         _High = iHigh(NULL, _Period[iFL_Period], i);  
      
         if(_Low > 0)
           if((iFL_Low  == 0) || (_Low < iFL_Low))    iFL_Low  = _Low;

         if(_High > 0)
           if((iFL_High == 0) || (_High > iFL_High))  iFL_High = _High;
      }
      
      iFL_Width = iFL_High - iFL_Low;
      
      if((iFL_High > 0) && (iFL_Low > 0) && (iFL_Width >= iFL_MinWidthCanal * _Point) && (iFL_Width <= iFL_MaxWidthCanal * _Point))
      {
         _CountLow = 0;  _CountHigh = 0;  _PrevLowHigh = 0;
         
         for(i = 0; i < iFL_CountBars; i++)
         {
            _Low  = iLow( NULL, _Period[iFL_Period], i);
            _High = iHigh(NULL, _Period[iFL_Period], i);  
      
            if((_Low > 0)  && (_Low  < (iFL_Low  + iFL_Width / 4)) && (_PrevLowHigh >= 0))
            {
               _PrevLowHigh = -1;
               _CountLow = _CountLow + 1;
            } 
            
            if((_High > 0) && (_High > (iFL_High - iFL_Width / 4)) && (_PrevLowHigh <= 0))
            {
               _PrevLowHigh = 1;
               _CountHigh = _CountHigh + 1;
            } 
         }
         
         if((_CountLow >= iFL_MinExtremumsCount) && (_CountHigh >= iFL_MinExtremumsCount))
         {
            iFL_IsFlat = true;
         }   
      }  
   }


   // АНАЛИЗ И КОНТРОЛЬ ТЕКУЩИХ ОРДЕРОВ

   if(!glAnalizCurrentOrdersState())  return(0);


   // контроль открытых ордеров по временному стоп-лоссу
   
  if(TimeStopLoss_Minutes > 0) 
   {
      total = OrdersTotal();

      for(i = total - 1; i >= 0; i--)
      {
         OrderSelect(i, SELECT_BY_POS, MODE_TRADES);
         
         if(OrderSymbol() != Symbol())  continue;   // пока пропускаем позиции не по текущей валютной паре
         
         if((OrderType() == OP_BUY) || (OrderType() == OP_SELL))
         {
            if((TimeCurrent() - OrderOpenTime()) > TimeStopLoss_Minutes * 60)
            {
               if(PrintComments)  Print("Удаляем открытый ордер по временному стоп-лоссу."); 
               glOrderClose();            
            }
         }
      }
   }


   if((Counts[_OP_BUY] != 0) && (Counts[_OP_BUYLIMIT] != 0))
   {
      glDeleteAllDeferOrders(_OP_BUYLIMIT, Symbol());
   }   
   
   if((Counts[_OP_SELL] != 0) && (Counts[_OP_SELLLIMIT] != 0)) 
   {
      glDeleteAllDeferOrders(_OP_SELLLIMIT, Symbol());
   }   
   
   if((Counts[_OP_BUY] != 0) && (Counts[_OP_BUYSTOP] != 0))  
   {
      glDeleteAllDeferOrders(_OP_BUYSTOP, Symbol(), MinPrices[_OP_BUY], 0);
   } 
   if((Counts[_OP_SELL] != 0) && (Counts[_OP_SELLSTOP] != 0))
   {  
      glDeleteAllDeferOrders(_OP_SELLSTOP, Symbol(), 0, MaxPrices[_OP_SELL]);
   }   
   
   // анализ и корректировка "замков"
   
   if((Counts[_OP_BUY] != 0) && (Counts[_OP_SELL] != 0)) 
   {
      
      if(((TakeProfitForLock != 0) && ((TakeProfitForLock != TakeProfitB) || (TakeProfitForLock != TakeProfitS))) ||
         ((StopLossForLock   != 0) && ((StopLossForLock   != StopLossB)   || (StopLossForLock   != StopLossS))))
      {
         CurrentPrice = (Ask + Bid) / 2;
      
         total = OrdersTotal();
         for(i = 0; i < total; i++)
         {
            if(!OrderSelect(i, SELECT_BY_POS, MODE_TRADES))
            {
               Print("Ошибка получения текущего ордера OrderSelect(): ", GetLastError());   
               return(0);
            }

            if(OrderSymbol() != Symbol())  continue;   // пропускаем позиции не по текущей валютной паре
            
            _OrderType        = OrderType();
            _OrderOpenPrice   = OrderOpenPrice();
            _OrderTakeProfit  = OrderTakeProfit();
            _OrderStopLoss    = OrderStopLoss();
            _OrderMagicNumber = OrderMagicNumber();
      
            if(_OrderMagicNumber == MN_Averaging)  continue;  // усредняющие ордера пропускаем
            
            if((_OrderType == OP_BUY) && (_OrderOpenPrice == MinPrices[_OP_BUY]))
            {
               if(_OrderTakeProfit < (_OrderOpenPrice + TakeProfitForLock * _Point))  // TakeProfit меньше заданного для замков
               {
                  if(OrderModify(OrderTicket(), _OrderOpenPrice, _OrderStopLoss, _OrderOpenPrice + TakeProfitForLock * _Point, 0))
                  {
                     _OrderTakeProfit = _OrderOpenPrice + TakeProfitForLock * _Point;
                  }   
               }
               
               if((StopLossForLock != 0) && (_OrderOpenPrice > MaxPrices[_OP_SELL]) &&
                  ((_OrderOpenPrice - MaxPrices[_OP_SELL]) > 2.2 * StopLossForLock * _Point) &&
                  (MathAbs(_OrderOpenPrice - CurrentPrice) < MathAbs(MaxPrices[_OP_SELL] - CurrentPrice)) &&
                  (_OrderStopLoss < (_OrderOpenPrice - StopLossForLock * _Point)))
               {
                  if(OrderModify(OrderTicket(), _OrderOpenPrice, _OrderOpenPrice - StopLossForLock * _Point, _OrderTakeProfit, 0))
                  {
                     _OrderStopLoss = _OrderOpenPrice - StopLossForLock * _Point;
                  }   
               }
            }
            else if((_OrderType == OP_SELL) && (_OrderOpenPrice == MaxPrices[_OP_SELL]))
            {
               if(_OrderTakeProfit > (_OrderOpenPrice - TakeProfitForLock * _Point))  // TakeProfit меньше заданного для замков
               {
                  if(OrderModify(OrderTicket(), _OrderOpenPrice, _OrderStopLoss, _OrderOpenPrice - TakeProfitForLock * _Point, 0))
                  {
                     _OrderTakeProfit = _OrderOpenPrice - TakeProfitForLock * _Point;
                  }   
               }

               if((StopLossForLock != 0) && (_OrderOpenPrice < MinPrices[_OP_BUY]) &&
                  ((MinPrices[_OP_BUY] - _OrderOpenPrice) > 2.2 * StopLossForLock * _Point) &&
                  (MathAbs(_OrderOpenPrice - CurrentPrice) < MathAbs(MinPrices[_OP_BUY] - CurrentPrice)) &&
                  (_OrderStopLoss > (_OrderOpenPrice + StopLossForLock * _Point)))
               {
                  if(OrderModify(OrderTicket(), _OrderOpenPrice, _OrderOpenPrice + StopLossForLock * _Point, _OrderTakeProfit, 0))
                  {
                     _OrderStopLoss = _OrderOpenPrice + StopLossForLock * _Point;
                  }   
               }
            }
         }   
      }
   }
   
   // проверка на индикаторе Accelerator/Decelerator
   
   if((UseAcceleratorIndicator == 1) && (miAccelerator != 0))
   {
      
      if(miAccelerator > 0)
      {
         glDeleteAllDeferOrders(_OP_SELLLIMIT, Symbol());
      }
         
      if(miAccelerator < 0)  
      {
         glDeleteAllDeferOrders(_OP_BUYLIMIT, Symbol());
      }   
   }
   
   // проверка на индикаторе Speed
   
   if((UseSpeedIndicator == 1) && (miSpeed != 0))
   {
      
      if((miSpeed > 0) && (Counts[_OP_SELLLIMIT] > 0) && (MinPrices[_OP_SELLLIMIT] < (Bid + 20 * _Point)))
      {
         glDeleteAllDeferOrders(_OP_SELLLIMIT, Symbol());
      }
         
      if((miSpeed < 0) && (Counts[_OP_BUYLIMIT] > 0) && (MaxPrices[_OP_BUYLIMIT] > (Ask - 20 * _Point)))  
      { 
         glDeleteAllDeferOrders(_OP_BUYLIMIT, Symbol());
      }   
   }
   
   // проверка HughLowLimit
   
   if(CountHighLowLimits > 0)
   {
      // удаляем все STOP ордера, расположенные в опасных зонах (BUY слишком высоко, SELL слишком низко)
      
      for(k = 0; k < CountHighLowLimits; k++)
      {
         switch(k)
         {
            case 0 : _iHL_LimitDistance = iHL_LimitDistance1;  break;
            case 1 : _iHL_LimitDistance = iHL_LimitDistance2;  break;
            default: continue;     
         }
         
         if((Counts[_OP_BUYSTOP] != 0) && (iHL_Low[k] > 0) && (MaxPrices[_OP_BUYSTOP] >= (iHL_Low[k] + _iHL_LimitDistance * _Point)))  
         {
            glDeleteAllDeferOrders(_OP_BUYSTOP, Symbol(), iHL_Low[k] + _iHL_LimitDistance * _Point, 0);
         }
         
         if((Counts[_OP_SELLSTOP] != 0) && (iHL_High[k] > 0) && (MinPrices[_OP_SELLSTOP] <= (iHL_High[k] - _iHL_LimitDistance * _Point))) 
         {
            glDeleteAllDeferOrders(_OP_SELLSTOP, Symbol(), 0, iHL_High[k] - _iHL_LimitDistance * _Point);
         }   
      }   
   }   
   
   // Контроль открытых позиций по TrailingStop
 
   total = OrdersTotal();

  if(TrailingStop > 0) 
   {
      for(i = 0; i < total; i++)
      {
         OrderSelect(i, SELECT_BY_POS, MODE_TRADES);
         
         if(OrderSymbol() != Symbol())  continue;   // пока пропускаем позиции не по текущей валютной паре
         
         if(OrderType() == OP_BUY)
         {
            if(Bid > (OrderOpenPrice() + _Point * TrailingStop))
            {
               if((OrderStopLoss() == 0) || (OrderStopLoss() < (Bid - _Point * (TrailingStop + StepTrailingStop))))
               {
                  OrderModify(OrderTicket(), OrderOpenPrice(), Bid - _Point * TrailingStop, OrderTakeProfit(), 0);
               }
            }
         }
         else if(OrderType() == OP_SELL)
         {
            if(Ask < (OrderOpenPrice() - _Point * TrailingStop))
            {
               if((OrderStopLoss() == 0) || (OrderStopLoss() > (Ask + _Point * (TrailingStop + StepTrailingStop))))
               {
                  OrderModify(OrderTicket(), OrderOpenPrice(), Ask + _Point * TrailingStop, OrderTakeProfit(), 0);
               }
            }
         }
      }
   }

   // выполняем окончательный анализ текущего состояния после выполненных модификаций

   if(!glAnalizCurrentOrdersState())  return(0);
   
   
   // MONEY MANAGEMENT
   
   //   определение размера лота
   
   if(Risk > 0)  Lots = glDoubleRound(AccountFreeMargin() / 1000.0 * Risk, StepLotSize);
   else          Lots = MinLotSize;
   
   if(Lots < MinLotSize)  Lots = MinLotSize;
   if(Lots > MaxLotSize)  Lots = MaxLotSize;


   // ОТКРЫТИЕ НОВЫХ ОРДЕРОВ
   
   if(AccountFreeMargin() < (1000 * Lots))   
   {
      if((Counts[_OP_BUY] + Counts[_OP_SELL]) == 0)  
      {
         return(0);
      }   
   }

   for(i = 0; i < 2; i++)
   {
      if(MaxOrdersCount != 0)
        if((Counts[_OP_BUY] + Counts[_OP_SELL]) >= MaxOrdersCount)  break;   // открыто максимальное кол-во ордеров, больше открывать нельзя
   
      if(i == 0)   // BUY
      {
         if(UseBuy == 0)  continue;
         
         type         = _OP_BUY;
         typestr      = "BUY";
         CurrentPrice = Ask;
      }
      else         // SELL 
      {
         if(UseSell == 0)  continue;

         type         = _OP_SELL;
         typestr      = "SELL";
         CurrentPrice = Bid;
      }
      
      // рассчитываем фигуру текущей цены
      
      CurrentFigure = (MathFloor((CurrentPrice / _Point) / 100) * 100) * _Point;
   
   
      // ОТКРЫТИЕ РЕАЛЬНЫХ ОРДЕРОВ
      
      if(OpenRealOrders == 1)
      {
         MayOpenRealOrder = false;  
         
         //   на основании индикатора флэт
         
         if((UseFlatIndicator == 1) && iFL_IsFlat) 
         {
            if((type == _OP_BUY) && (CurrentPrice > iFL_Low) && (CurrentPrice <= (iFL_Low + iFL_Width / 4)))
            {
               if((iOpen( NULL, _Period[0], 0) >= iClose( NULL, _Period[0], 1)) && 
                  (iClose( NULL, _Period[0], 1) > iClose( NULL, _Period[0], 2)) && (iClose( NULL, _Period[0], 2) > iClose( NULL, _Period[0], 3)))
               {     
                  MayOpenRealOrder = true;  
               
                  _OrderType       = OP_BUY;
                  _OrderOpenPrice  = CurrentPrice;
                  _OrderTakeProfit = _OrderOpenPrice + NormalizeDouble(iFL_Width / 2, Digits);
                  
                  if(TakeProfitB > 0) 
                  {
                     if(_OrderTakeProfit > (_OrderOpenPrice + TakeProfitB * _Point))  _OrderTakeProfit = _OrderOpenPrice + TakeProfitB * _Point;
                  }   
               
                  if(iFL_StopLoss   > 0)  _OrderStopLoss = _OrderOpenPrice - iFL_StopLoss * _Point;   
                  else if(StopLossB > 0)  _OrderStopLoss = _OrderOpenPrice - StopLossB * _Point;   
                  else                    _OrderStopLoss = 0;
               }
            }   
      
            if((type == _OP_SELL) && (CurrentPrice < iFL_High) && (CurrentPrice >= (iFL_High - iFL_Width / 4)))
            {
               if((iOpen( NULL, _Period[0], 0) <= iClose( NULL, _Period[0], 1)) && 
                  (iClose( NULL, _Period[0], 1) < iClose( NULL, _Period[0], 2)) && (iClose( NULL, _Period[0], 2) < iClose( NULL, _Period[0], 3)))
               {     
                  MayOpenRealOrder = true;  
               
                  _OrderType       = OP_SELL;
                  _OrderOpenPrice  = CurrentPrice;
                  _OrderTakeProfit = _OrderOpenPrice - NormalizeDouble(iFL_Width / 2, Digits);   
               
                  if(TakeProfitS > 0)
                  {
                     if(_OrderTakeProfit < (_OrderOpenPrice - TakeProfitS * _Point))  _OrderTakeProfit = _OrderOpenPrice - TakeProfitS * _Point;
                  }   
                  
                  if(iFL_StopLoss   > 0)  _OrderStopLoss = _OrderOpenPrice + iFL_StopLoss * _Point;   
                  else if(StopLossS > 0)  _OrderStopLoss = _OrderOpenPrice + StopLossS * _Point;   
                  else                    _OrderStopLoss = 0;
               }
            }   
            
            if(MayOpenRealOrder)  _OrderMagicNumber = MN_Flating;
         }   
         
         //   на основании индикатора SPEED
         
         if(!MayOpenRealOrder && (UseSpeedIndicator == 1) && (iSP_UseForOpenRealOrders == 1) && (MathAbs(miSpeed) > iSP_MinValueForOpenRealOrders))
         {
            if((type == _OP_BUY) && (miSpeed > 0))
            {
               MayOpenRealOrder = true;  
            
               _OrderType       = OP_BUY;
               _OrderOpenPrice  = CurrentPrice;
               
               if(iSP_UseMinTakeProfit == 1)  _OrderTakeProfit = _OrderOpenPrice + MarketInfo(Symbol(), MODE_STOPLEVEL) * _Point;
               else                           _OrderTakeProfit = _OrderOpenPrice + TakeProfitB * _Point;
               
               if(iSP_StopLoss   > 0)  _OrderStopLoss = _OrderOpenPrice - iSP_StopLoss * _Point;   
               else if(StopLossB > 0)  _OrderStopLoss = _OrderOpenPrice - StopLossB * _Point;   
               else                    _OrderStopLoss = 0;
            }
            
            if((type == _OP_SELL) && (miSpeed < 0))
            {
               MayOpenRealOrder = true;  
            
               _OrderType       = OP_SELL;
               _OrderOpenPrice  = CurrentPrice;

               if(iSP_UseMinTakeProfit == 1)  _OrderTakeProfit = _OrderOpenPrice - MarketInfo(Symbol(), MODE_STOPLEVEL) * _Point;
               else                           _OrderTakeProfit = _OrderOpenPrice - TakeProfitS * _Point;
               
               if(iSP_StopLoss   > 0)  _OrderStopLoss = _OrderOpenPrice + iSP_StopLoss * _Point;   
               else if(StopLossS > 0)  _OrderStopLoss = _OrderOpenPrice + StopLossS * _Point;   
               else                    _OrderStopLoss = 0;
            }
            
            if(MayOpenRealOrder)  _OrderMagicNumber = MN_Speed;
         }
         
         if(MayOpenRealOrder)  
         {
            if(!glCheckOrderBeforeAdding(_OrderOpenPrice, type, _OrderType, CurrentPrice))  MayOpenRealOrder = false;  
         }      
      
         if(MayOpenRealOrder)  
         {
            if(!glCheckDistanceFromOneWayReal(_OrderOpenPrice, type, typestr, NearestRealPrice))  MayOpenRealOrder = false;
         }      
      
         if(MayOpenRealOrder)  
         {
            if(!glCheckHighLowLimit(_OrderOpenPrice, type, typestr))  MayOpenRealOrder = false;
         }      
         
         if(MayOpenRealOrder)  
         {
            if(!glCheckOpenOrdersBeforeAdding(_OrderOpenPrice, _OrderType, CurrentPrice))  MayOpenRealOrder = false;  
         }  
         
         // открытие реального ордера
         
         if(MayOpenRealOrder)
         {
            _Volume = Lots;
            
            if(_OrderMagicNumber == MN_Flating)
            {
               if((iFL_LotSizeMultiply > 0) && (iFL_LotSizeMultiply != 1))
               {
                  _Volume = glDoubleRound(Lots * iFL_LotSizeMultiply, StepLotSize); 
                    
                  if(_Volume > MaxLotSize)  _Volume = MaxLotSize;
               }
               
            }   
            else if(_OrderMagicNumber == MN_Speed)
            {
            }
            
            ticket = OrderSend(Symbol(), _OrderType, _Volume, _OrderOpenPrice, 0, _OrderStopLoss, _OrderTakeProfit, "zdima", _OrderMagicNumber, 0, Green);
            
            if(ticket > 0)
            {
               if(OrderSelect(ticket, SELECT_BY_TICKET, MODE_TRADES))  
               {
                  if(!glAnalizCurrentOrdersState())  return(0);
                  continue;
               }   
            }
            else Print("Ошибка открытия ", typestr, " ордера (Lots = ", Lots, "): ", GetLastError());   
         }
      }
      
   
      // ДОБАВЛЕНИЕ ОТЛОЖЕННЫХ ОРДЕРОВ ПО УРОВНЯМ 

      for(j = 0; j < 2; j++)    
      {
         _OrderMagicNumber = MN_Usual;   
         
         if(j == 0)   // STOP
         {
            if(type == _OP_BUY)
            {
               if(BuyStopLevel < 0)  continue;
                           
               _OrderType   = OP_BUYSTOP;
               typedefer    = _OP_BUYSTOP;
               typestr = "BUY STOP";
               
               if(CurrentPrice < (CurrentFigure + BuyStopLevel * _Point))  
                 _OrderOpenPrice = CurrentFigure + BuyStopLevel * _Point;
               else
                 _OrderOpenPrice = CurrentFigure + (100 + BuyStopLevel) * _Point;
            }
            else
            {
               if(SellStopLevel < 0)  continue;
                           
               _OrderType   = OP_SELLSTOP;
               typedefer    = _OP_SELLSTOP;
               typestr = "SELL STOP";
               
               if(CurrentPrice < (CurrentFigure + SellStopLevel * _Point))  
                 _OrderOpenPrice = CurrentFigure - (100 - SellStopLevel) * _Point;
               else
                 _OrderOpenPrice = CurrentFigure + SellStopLevel * _Point;
            }   
         }
         else        // LIMIT
         {
            if(type == _OP_BUY)
            {
               if(BuyLimitLevel < 0)  continue;
                           
               _OrderType   = OP_BUYLIMIT;
               typedefer    = _OP_BUYLIMIT;
               typestr = "BUY LIMIT";
               
               if(CurrentPrice < (CurrentFigure + BuyLimitLevel * _Point))  
                 _OrderOpenPrice = CurrentFigure - (100 - BuyLimitLevel) * _Point;
               else
                 _OrderOpenPrice = CurrentFigure + BuyLimitLevel * _Point;
            }
            else
            {
               if(SellLimitLevel < 0)  continue;
                           
               _OrderType   = OP_SELLLIMIT;
               typedefer    = _OP_SELLLIMIT;
               typestr = "SELL LIMIT";
               
               if(CurrentPrice < (CurrentFigure + SellLimitLevel * _Point))  
                 _OrderOpenPrice = CurrentFigure + SellLimitLevel * _Point;
               else
                 _OrderOpenPrice = CurrentFigure + (100 + SellLimitLevel) * _Point;
            }   
         }    
         
         if(type == _OP_BUY)
         {
            _OrderTakeProfit = _OrderOpenPrice + TakeProfitB * _Point;   
            
            if(StopLossB > 0)  _OrderStopLoss = _OrderOpenPrice - StopLossB * _Point;   
            else               _OrderStopLoss = 0;
         }
         else
         {
            _OrderTakeProfit = _OrderOpenPrice - TakeProfitS * _Point;   
            
            if(StopLossS > 0)  _OrderStopLoss = _OrderOpenPrice + StopLossS * _Point;
            else               _OrderStopLoss = 0;   
         }
         
      
         MayOpenDeferOrder = true;   // разрешение на открытие текущего отложенного ордера

         // проверка возможности добавления ордера

         if(MayOpenDeferOrder)  
         {
            if(!glCheckOrderBeforeAdding(_OrderOpenPrice, type, _OrderType, CurrentPrice))  MayOpenDeferOrder = false;  
         }      
      
         // проверка на расстояние цены открытия от текущей цены

         if(MayOpenDeferOrder)
         {
            if(MinDistanceDeferFromPrice != 0)
              if(MathAbs(_OrderOpenPrice - CurrentPrice) < (MinDistanceDeferFromPrice * _Point))  MayOpenDeferOrder = false;

            if(MaxDistanceDeferFromPrice != 0)
              if(MathAbs(_OrderOpenPrice - CurrentPrice) > (MaxDistanceDeferFromPrice * _Point))  MayOpenDeferOrder = false;
         }
         
         if(MayOpenDeferOrder)
         {
            if((Counts[type] > 0) && (j == 1))  MayOpenDeferOrder = false;
         }
         
         
         if(MayOpenDeferOrder)
         {
            if(Counts[typedefer] > 0)
            {
               if((typedefer == _OP_BUYSTOP) || (typedefer == _OP_SELLLIMIT))  NearestDeferPrice = MinPrices[typedefer];  
               else                                                            NearestDeferPrice = MaxPrices[typedefer];   
               
               NeedDistance = MinDistanceBetweenDefer * _Point;
               
               if((typedefer == _OP_BUYSTOP) || (typedefer == _OP_SELLLIMIT)) 
               {
                  if(_OrderOpenPrice > NearestDeferPrice - NeedDistance)  MayOpenDeferOrder = false;
               }
               else
               {
                  if(_OrderOpenPrice < NearestDeferPrice + NeedDistance)  MayOpenDeferOrder = false;
               }   
            }
         }      
         
         
         if(MayOpenDeferOrder && (Counts[type] > 0))
         {
            if(glCheckDistanceFromOneWayReal(_OrderOpenPrice, type, typestr, NearestRealPrice))
            {
               // открытие однонаправленной позиции разрешено


               if(((type == _OP_BUY)  && (UseAveragingTakeProfitB == 1)) ||
                  ((type == _OP_SELL) && (UseAveragingTakeProfitS == 1)))
               {
                  _OrderTakeProfit = (_OrderOpenPrice + NearestRealPrice) / 2;  // усредняем TakeProfit для получения безубытка посредине
                  _OrderMagicNumber = MN_Averaging;   
               }
            }
            else MayOpenDeferOrder = false;
         }
    
         
         if(MayOpenDeferOrder && (UseAcceleratorIndicator == 1))
         {
            
            if(j == 1)
            {
               if((type == _OP_BUY)  && (miAccelerator < 0)) 
               {
                  MayOpenDeferOrder = false;
               }
                  
               if((type == _OP_SELL) && (miAccelerator > 0))  
               {
                  MayOpenDeferOrder = false;
               }   
            }
         }
         
         // проверка на индикаторе Speed
         
         if(MayOpenDeferOrder && (UseSpeedIndicator == 1))
         {
            
            if(j == 1)
            {
               if((type == _OP_BUY)  && (miSpeed < 0))  
               {
                  MayOpenDeferOrder = false;
               }   
               
               if((type == _OP_SELL) && (miSpeed > 0))  
               {
                  MayOpenDeferOrder = false;
               }   
            }
         }
         
         // проверка ограничения HighLowLimit: "не покупать сверху, не продавать снизу"
         
         if(MayOpenDeferOrder && (CountHighLowLimits > 0))
         {
            if(!glCheckHighLowLimit(_OrderOpenPrice, type, typestr))  MayOpenDeferOrder = false;
         }
           
         // проверка открытых реальных и отложенных ордеров перед добавлением текущего
         
         if(MayOpenDeferOrder)  
         {
            if(!glCheckOpenOrdersBeforeAdding(_OrderOpenPrice, _OrderType, CurrentPrice))  MayOpenDeferOrder = false;  
         }      
           
         // открываем отложенный ордер       
   
         if(MayOpenDeferOrder)
         {
            _Volume = Lots;
            
            ticket = OrderSend(Symbol(), _OrderType, _Volume, _OrderOpenPrice, 0, _OrderStopLoss, _OrderTakeProfit, "zdima", _OrderMagicNumber, 0, Green);
            
            if(ticket > 0)
            {
               if(OrderSelect(ticket, SELECT_BY_TICKET, MODE_TRADES))  
               {
                  if(!glAnalizCurrentOrdersState())  return(0);
               }   
            }
            else Print("Ошибка открытия ", typestr, " ордера (Lots = ", Lots, "): ", GetLastError());   
         }
      }
   }

 return(0);
}

// проверка открытых реальных и отложенных ордеров перед добавлением текущего

bool glCheckOrderBeforeAdding(double _OrderOpenPrice, int type, int _OrderType, double CurrentPrice)
{
   if(type == _OP_BUY)
   {
      if(UseBuy == 0)  return(false);   
      if((_OrderType == OP_BUY) && (OpenRealOrders == 0))  return(false);   
      if((BuyDenyLevel > 0) && (_OrderOpenPrice >= BuyDenyLevel))  return(false);   
   }
   
   if(type == _OP_SELL)
   {
      if(UseSell == 0)  return(false);   
      if((_OrderType == OP_SELL) && (OpenRealOrders == 0))  return(false);   
      if((SellDenyLevel > 0) && (_OrderOpenPrice <= SellDenyLevel))  return(false);   
   }
   
 return(true);  
}

// проверка открытых реальных и отложенных ордеров перед добавлением текущего

bool glCheckOpenOrdersBeforeAdding(double _OrderOpenPrice, int _OrderType, double CurrentPrice)
{
   int i, j, k, total;
   
   if((_OrderType == OP_BUY) || (_OrderType == OP_BUYLIMIT))
   {
      if(!glDeleteAllDeferOrders(OP_BUYLIMIT, Symbol()))  return(false);
   }

   if((_OrderType == OP_SELL) || (_OrderType == OP_SELLLIMIT))
   {
      if(!glDeleteAllDeferOrders(OP_SELLLIMIT, Symbol()))  return(false);
   }
   
   // проверяем ограничение на кол-во ордеров и одновременно удаляем менее значимые ордера
    
   if(MaxOrdersCount != 0)
   {
      int    CurrentOrderType, OrderTicketMaxDistance;
      double CurrentDistance, MaxDistance;
             
      total = OrdersTotal();
    
      while(total >= MaxOrdersCount) 
      {
         MaxDistance = 0;
         
         for(i = 0; i < total; i++)
         {
            if(!OrderSelect(i, SELECT_BY_POS, MODE_TRADES))
            {
               Print("Ошибка получения текущего ордера OrderSelect(): ", GetLastError());   
               continue;
            }

            if(OrderSymbol() != Symbol())  continue;   // пропускаем позиции не по текущей валютной паре
            
            CurrentOrderType = OrderType();
            
            if     ((CurrentOrderType == OP_BUYLIMIT)  || (CurrentOrderType == OP_BUYSTOP))   CurrentDistance = MathAbs(Ask - OrderOpenPrice());
            else if((CurrentOrderType == OP_SELLLIMIT) || (CurrentOrderType == OP_SELLSTOP))  CurrentDistance = MathAbs(Bid - OrderOpenPrice());
            else continue;
            
            if(CurrentDistance > MaxDistance)
            {
               MaxDistance            = CurrentDistance;
               OrderTicketMaxDistance = OrderTicket();  
            } 
         }    
         
         if(MaxDistance > MathAbs(_OrderOpenPrice - CurrentPrice))   // есть более дальние отложенные ордера
         {
            // удаляем самый дальний отложенный ордер
            
            if(OrderDelete(OrderTicketMaxDistance)) 
            {
               total = OrdersTotal();   // для повторной проверки
            }
            else  return(false);
         }
         else  return(false);
      }        
   }
  
  return(true);     
}

// проверка расстояния открываемого ордера от открытых реальных однонаправленных позиций

bool glCheckDistanceFromOneWayReal(double _OrderOpenPrice, int type, string typestr, double& NearestRealPrice)
{
   double NeedDistance;
   
   if(Counts[type] == 0)  return(true);

   if((type == _OP_BUY)  && (UseOneWayRealOrdersB == 0))  return(false);
   if((type == _OP_SELL) && (UseOneWayRealOrdersS == 0))  return(false);
   
   if(type == _OP_BUY)  
   {
      NearestRealPrice = MinPrices[type];  
      NeedDistance     = Counts[type] * MinDistanceRealOrdersB * _Point;
   }   
   else 
   {
      NearestRealPrice = MaxPrices[type];  
      NeedDistance     = Counts[type] * MinDistanceRealOrdersS * _Point;
   }

   if(type == _OP_BUY) 
   {
      if(_OrderOpenPrice > NearestRealPrice - NeedDistance)  return(false);
   }
   else
   {
      if(_OrderOpenPrice < NearestRealPrice + NeedDistance)  return(false);
   }   

  return(true);    
}

// проверка открываемого ордера на индикаторе HighLowLimit

bool glCheckHighLowLimit(double _OrderOpenPrice, int type, string typestr)
{
   int i, j, k, total;
   
   for(k = 0; k < CountHighLowLimits; k++)
   {
      switch(k)
      {
         case 0 : _iHL_LimitDistance = iHL_LimitDistance1;  break;
         case 1 : _iHL_LimitDistance = iHL_LimitDistance2;  break;
         default: continue;     
      }

      if((type == _OP_BUY) && (iHL_Low[k] > 0) && (_OrderOpenPrice >= (iHL_Low[k] + _iHL_LimitDistance * _Point)))  
      {
         return(false);
      }   
   
      if((type == _OP_SELL) && (iHL_High[k] > 0) && (_OrderOpenPrice <= (iHL_High[k] - _iHL_LimitDistance * _Point))) 
      {
         return(false);
      }   
   }  
  
  return(true);    
}


// функция для анализа текущего состояния ордеров

bool glAnalizCurrentOrdersState()
{
   int    i, j, k, total;
   int    _OrderType, NormalOrderType; 
   double _OrderOpenPrice, _OrderLots;

   total = OrdersTotal();

   for(i = 0; i < 6; i++)
   {
      MinPrices[i] = -1;
      MaxPrices[i] = -1;
      SumLots[i]   = 0;
      Counts[i]    = 0;
   }
   
   for(i = 0; i < total; i++)
   {
      if(!OrderSelect(i, SELECT_BY_POS, MODE_TRADES))
      {
         Print("Ошибка получения текущего ордера OrderSelect(): ", GetLastError());   
         return(false);
      }

      if(OrderSymbol() != Symbol())  continue;   // пропускаем позиции не по текущей валютной паре
      
      // определяем параметры текущего ордера

      _OrderType      = OrderType();
      _OrderOpenPrice = OrderOpenPrice();
      _OrderLots      = OrderLots(); 
      
      NormalOrderType = glGetNormalOrderType(_OrderType);
      if(NormalOrderType == -1)
      {
         Print("Ошибка определения типа текущего ордера: OrderType() = ", _OrderType);  
         return(false);
      }
      
      Counts[NormalOrderType] = Counts[NormalOrderType] + 1;
      
      // определяем максимальные и минимальные цены
      
      if((MinPrices[NormalOrderType] == -1) || (_OrderOpenPrice < MinPrices[NormalOrderType]))  MinPrices[NormalOrderType] = _OrderOpenPrice; 
      if((MaxPrices[NormalOrderType] == -1) || (_OrderOpenPrice > MaxPrices[NormalOrderType]))  MaxPrices[NormalOrderType] = _OrderOpenPrice; 

      SumLots[NormalOrderType] = SumLots[NormalOrderType] + _OrderLots;
   } 
 
 return(true);  
}


// функция удаляет все отложенные ордера
// [MinPrice...MaxPrice] - диапазон цен (условие) удаляемых ордеров, если какая-то граница равна 0, она не используется

bool glDeleteAllDeferOrders(int type = -1, string symbol = "", double MinPrice = 0, double MaxPrice = 0)
{  
   int    i, j, k, total;
   int    _OrderType;
   double _OrderOpenPrice;
   bool   success = true;

   total = OrdersTotal();

   for(i = total - 1; i >= 0; i--)
   {
      if(OrderSelect(i, SELECT_BY_POS, MODE_TRADES))
      {
         _OrderType      = OrderType();
         _OrderOpenPrice = OrderOpenPrice();
         
         if(((type == -1) || (_OrderType == type)) && ((symbol == "") || (OrderSymbol() == symbol)))     
         {
            if(type == -1)
               if((_OrderType == OP_BUY) || (_OrderType == OP_SELL))  continue;   // это реальный ордер, пропускаем
          
            if((MinPrice != 0) && (_OrderOpenPrice < MinPrice))  continue;       
            if((MaxPrice != 0) && (_OrderOpenPrice > MaxPrice))  continue;       
            
            if(!OrderDelete(OrderTicket())) success = false;
         }   
      }
      else success = false;
   }   
   
 return(success);
}


// ------  Округление вещественного числа с точностью Eps  ------

double glDoubleRound(double Val, double Eps)
{
   int    CEps;
   int    k = 1;
   double Dop, RDop;

   if(Eps == 0)  return(Val);

   while((Eps * k) < 1)  k = k * 10;

   CEps = Eps * k;

   Dop = MathFloor(Val * k);

   if(MathAbs(Val * k - Dop) > 0.5 )  Dop++;

   RDop = Dop / CEps;

   if(RDop != MathRound(RDop))
   {
      if(MathAbs(RDop - MathFloor(RDop)) > 0.5)  RDop = MathFloor(RDop) + 1;
      else                                       RDop = MathFloor(RDop);
      
      Dop = RDop * CEps;
   }

 return(Dop / k); 
}

bool glOrderClose(double price = -1, double slippage = 0)
{  
   int  i, j, k, total;
   int  err;
   bool success = false;
   
   if(price == -1)  price = glGetCurrentClosePrice();
   
   // предпринимаем 5 попыток с интервалом в 1 сек.
   
   for(i = 0; i < 5; i++)
   {
      if(OrderClose(OrderTicket(), OrderLots(), price, slippage))
      {
         success = true;
         break;
      }   
      else  
      {  
         err = GetLastError();
         Print("OrderClose failed, Error: ", err);
         if(err > 4000) break;
         Sleep(1000);
         RefreshRates();
         price = glGetCurrentClosePrice();
      }
   }
   
 return(success);
} 


// функция возвращает возможную соответствующую цену закрытия текущего ордера

double glGetCurrentClosePrice()
{
   double price;
   
   if(OrderSymbol() == Symbol())  
   {
      if(OrderType() == OP_BUY)  price = Bid;
      else                       price = Ask;
   }
   else
   {
      if(OrderType() == OP_BUY)  price = MarketInfo(OrderSymbol(), MODE_BID);
      else                       price = MarketInfo(OrderSymbol(), MODE_ASK);
   }   
 
 return(price);  
}

