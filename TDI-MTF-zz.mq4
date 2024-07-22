//+------------------------------------------------------------------+
//|                                                   TDI-MTF-zz.mq4 |
//+------------------------------------------------------------------+
#property copyright "Copyright © 2011, zznbrm"
#property indicator_buffers 3
#property indicator_color1 DodgerBlue
#property indicator_color2 Red
#property indicator_separate_window

//---- input parameters
extern int eintTF = PERIOD_H1;
extern int eintRsiPeriod = 13;
extern int eintPricePeriod = 2;      
extern int eintPriceType = PRICE_CLOSE;
extern int eintSignalPeriod = 7;   
extern int eintSignalType = 0;
extern int eintMaxBars = 100;

//---- indicator buffers
double gadblRsi[];
double gadblPriceLine[];
double gadblSignalLine[];

//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int init()
{
   IndicatorShortName( "TDI-MTF-zz(M" + eintTF + ")" );
   
   SetIndexBuffer( 0, gadblPriceLine );
   SetIndexBuffer( 1, gadblSignalLine );
   SetIndexBuffer( 2, gadblRsi );
      
   SetIndexStyle( 0,DRAW_LINE ); 
   SetIndexStyle( 1,DRAW_LINE ); 
   SetIndexStyle( 2,DRAW_NONE ); 
      
   SetIndexLabel( 0, "TDI Price" );
   SetIndexLabel( 1, "TDI Signal" );
   SetIndexLabel( 2, "TDI RSI" ); 
    
     
   return( 0 );
}

//+------------------------------------------------------------------+
//| Custom indicator deinitialization function                       |
//+------------------------------------------------------------------+
int deinit()
{
   return( 0 );
}

//+------------------------------------------------------------------+
//| Custom indicator iteration function                              |
//+------------------------------------------------------------------+
int start()
{
   int counted_bars = IndicatorCounted();   
   if (counted_bars < 0) return (-1);
   if (counted_bars > 0) counted_bars--;
   int intLimit = Bars - counted_bars;
   
   if ( ( eintMaxBars > 0 ) && ( intLimit > eintMaxBars ) )  intLimit = eintMaxBars;
   
   double adblRSI[];      
   ArrayResize( adblRSI, MathMax( eintPricePeriod, eintSignalPeriod ) );
   ArraySetAsSeries( adblRSI, true );   
   
   for( int inx = intLimit; inx >= 0; inx-- )
   {
      ArrayInitialize( adblRSI, 0.0 );
      
      calcRSI( inx, adblRSI );
      
      gadblRsi[inx] = adblRSI[0];      
      gadblPriceLine[inx] = iMAOnArray( adblRSI, 0, eintPricePeriod, 0, eintPriceType, 0 );
      gadblSignalLine[inx] = iMAOnArray( adblRSI, 0, eintSignalPeriod, 0, eintSignalType, 0 );
   }

   return( 0 );
}
  
//+------------------------------------------------------------------+
//| calcRSI                                                          |
//+------------------------------------------------------------------+ 
void calcRSI( int intChartShift, double& adblData[] )
{
   double adblPrice[], adblTemp[200];
   
   int intUtfShift = iBarShift( Symbol(), eintTF, Time[intChartShift], false );
   
   ArraySetAsSeries( adblTemp, true );
   ArrayCopySeries( adblPrice, MODE_CLOSE, Symbol(), eintTF );
   ArrayCopy( adblTemp, adblPrice, 0, intUtfShift, ArraySize( adblTemp ) );
   
   adblTemp[0] = Close[intChartShift];
   
   for ( int inx = ArraySize( adblData ) - 1; inx >= 0; inx-- )
   {   
      adblData[inx] = iRSIOnArray( adblTemp, WHOLE_ARRAY, eintRsiPeriod, inx );
   }
}

  