//+------------------------------------------------------------------+
//|                                        MetaCOT 2 - COT Index.mq4 |
//|                                  Copyright 2018, Vasiliy Sokolov |
//|                                https://www.mql5.com/en/users/c-4 |
//+------------------------------------------------------------------+
#property copyright "MetaCOT® 2009-2018, Vasiliy Sokolov, St.-Petersburg, Russia"
#property link      "https://www.mql5.com/en/articles/1573"
#include <MetaCOT\Version.mqh>
#property version   VERSION
#property description "MetaCOT 2 is designed for analyze CFTC reports, data mining and for fundamental analysis."
#property description "See article 'MetaCOT Project - New horizons for CFTC report analysis in MetaTrader 4'"
#property description "\nFor work this indicator need download and install 'MetaCOT -  Install CFTC reports' tool."
#property indicator_separate_window
#property indicator_buffers 1
#property indicator_plots   1
#property indicator_type1   DRAW_LINE
#property indicator_color1   clrRed
#property indicator_minimum -10
#property indicator_maximum 110
#property indicator_level1 0;
#property indicator_level2 20;
#property indicator_level3 80;
#property indicator_level4 100;
#property icon "\\Images\\MetaCOT\\MetaCOT_COT_Index.ico"
#property strict

#include <MetaCot\Enums.mqh>
#include <MetaCOT\ToolBox.mqh>

const ENUM_CFTC_REPORT     ReportType = CFTC_COT;
CftcReportInfo             ReportInfo;
input ENUM_COT_SOURCE      Source = FUTURES_AND_OPTIONS;          // Source of Report
input ENUM_COT_NETTO_GROUP Group = COT_NETTO_OPERATORS;           // Nett Group of Traders
input int                  CotPeriod = 52;                        // Period of COT Index
input string               ProffSettings = "";                    // #      PROFESSIONAL SETTINGS:    #
input ENUM_COT_RELEASE_DAY ReleaseDay = COT_RELEASE_FRIDAY;       // Release Day
input ENUM_COT_DATA_TYPE   DateType = COT_DATA_FUTURES;           // Data Type
input ENUM_COT_SUBGROUP    SubGroup = COT_SUBGROUP_ALL;           // Subgroup of Traders
input bool                 AutoDetectReport = true;               // Auto Detect Report Name
input string               LoadReportName = "# EURO FX - CONCATENATE";// Report Name (If Auto Detect=false)
input bool                 Mirror = false;                        // Mirror Mode
input bool                 NotShowContinuesData = false;          // Not Show Continues Data
input bool                 AutoUpdate = true;                     // Auto Update

double                     cot_values[];
ENUM_LICENSE_TYPE          LicenseType;
int                        Sign = 1;
double                     cvalues[];
datetime                   ctimes[];
datetime                   last_knowing_date = 0;
int                        cindex = 0;
int                        prev_total = 0;
CotBaseSettings            CftcSet;

//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+
int OnInit()
{  
   SendOnInit();
   EventSetMillisecondTimer(200);
   if(!AutoDetectReport || !GetCftcReportInfo(Symbol(), ReportType, ReportInfo))
   {
      ReportInfo.reverse = Mirror;
      ReportInfo.report_name = LoadReportName;
      ReportInfo.short_name = LoadReportName;
      printf("Report for " + Symbol() + " was not find. Will be try load data for default report name: " + LoadReportName);
   }
   if(DateType == COT_DATA_NUMBERS_TRADES &&
     (Group == COT_NETTO_NONREPORTABLE))
   {
      printf("Incorrect combination of parameters");
      return (INIT_PARAMETERS_INCORRECT);
   }
   Sign = Mirror ? -1 : 1;
   SetIndexBuffer(0, cot_values, INDICATOR_DATA);
   IndicatorSetInteger(INDICATOR_DIGITS, 2);
   CftcSet.source = Source;
   CftcSet.subgroup = SubGroup;
   CftcSet.report_name = ReportInfo.report_name;
   CftcSet.date_type = DateType;
   CftcSet.release_day = ReleaseDay;
   CftcSet.report_name = ReportInfo.report_name;
   string mmode = Mirror ? " (Mirror mode)," : ",";
   string speriod = " (" + (string)CotPeriod + "), ";
   IndicatorSetString(INDICATOR_SHORTNAME, MC_LABEL + " COT Index" + speriod + ReportInfo.short_name + ", " + EnumCotNetGroupToString(Group) + mmode); 
   return(INIT_SUCCEEDED);
}

int OnCalculate (const int rates_total,      // размер входных таймсерий 
                 const int prev_calculated,  // обработано баров на предыдущем вызове 
                 const datetime& time[],     // Time 
                 const double& open[],       // Open 
                 const double& high[],       // High 
                 const double& low[],        // Low 
                 const double& close[],      // Close 
                 const long& tick_volume[],  // Tick Volume 
                 const long& volume[],       // Real Volume 
                 const int& spread[]         // Spread 
   )
{
   ArraySetAsSeries(cot_values, false);
   ArraySetAsSeries(time, false);
   int limit = prev_calculated;
   bool need_full_recalc = false;
   if(LastKnowingDate() > last_knowing_date || prev_calculated == 0)
   {
      GetCotIndexValues(CftcSet, CotPeriod, Group, ctimes, cvalues);
      last_knowing_date = LastKnowingDate();
      need_full_recalc = true;
   }
   else if(rates_total - prev_calculated > 1 && NeedFullRecalc())
   {
      GetCotIndexValues(CftcSet, CotPeriod, Group, ctimes, cvalues);
      if(ArraySize(cvalues) >= prev_total)
         need_full_recalc = true;
   }
   int total = ArraySize(cvalues);
   if(total == 0)
      return rates_total;
   if(need_full_recalc)
   {
      cindex = 0;
      limit = 0;
      prev_total = total;
   }
   //-- plotting  values synchronized 
   for(int i = limit; i < rates_total; i++)
   {
      if(ctimes[cindex] > time[i])
      {
         cot_values[i] = EMPTY_VALUE;
         continue;
      }
      while(cindex+1 < total && time[i] + PeriodSeconds() >= ctimes[cindex+1])
        cindex++;
      if(!Mirror)
         cot_values[i] = cvalues[cindex];
      else
         cot_values[i] = 100.0 - cvalues[cindex];
      if(i > 0 && cot_values[i-1] == EMPTY_VALUE)
         cot_values[i-1] = cot_values[i];
   }
   //-- trim last values if 'NotShowContinuesData' is enable
   datetime last_t = ctimes[cindex];
   for(int i = rates_total-1; i >= 0 && NotShowContinuesData; i--)
   {
      if(time[i] > last_t)
         cot_values[i] = EMPTY_VALUE;
      else
         break;
   }
   return rates_total-1;
}
//+------------------------------------------------------------------+
//| This function using for blocking full recalculation of indicator |
//| in strategy tester.                                              |  
//+------------------------------------------------------------------+
bool NeedFullRecalc()
{
   if(!IsTesting())
      return true;
   if(NotShowContinuesData)
      return true;
   return false;
}
//+------------------------------------------------------------------+
//| Auto update CFTC reports by timer                                |
//+------------------------------------------------------------------+
void OnTimer()
{
   if(AutoUpdate)
      UpdateReportsByTimer();
}

void OnChartEvent(const int id, const long& lparam, const double& dparam, const string& sparam)
{
   SendOnChartEvent(id, lparam, dparam, sparam);
}