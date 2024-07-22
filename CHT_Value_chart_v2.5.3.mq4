/*==============================================================================
 *
 *  The CHT_Value_Chart program is free software: you can redistribute
 *  it and/or modify it under the terms of the GNU General Public License as
 *  published by the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  CHT_Value_Chart is distributed in the hope that it will be useful, but WITHOUT ANY
 *  WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
 *  A PARTICULAR PURPOSE. See the GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with CHT_Value_Chart. If not, see <http://www.gnu.org/licenses/>.
 *
 * FILE: CHT_Value_Chart_v2.5.mq4
 * VERSION: 2.5
 * AUTHOR: Thierry Chappuis <tc77@pygnol.ch>
 * DESCRIPTION:
 * MT4 Custom indicator that aims at calculating and displaying a value chart
 *
 * LOG:
 * - 20121104: version 1.0
 * - 20121207: version 2.0, improvement of the display
 * - 20121211: version 2.1, multiple timeframes version
 * - 20121228: version 2.2, bug fix with vc_delete(). VC_Bars2Check has been added.
 * - 20130110: version 2.3, add support for automatic vc support/resistance display
 * - 20130110: version 2.3.1 bug fix in the value chart computation algorithm
 * - 20130110: version 2.4, bug fixes with multiple timeframes functionalities
 * - 20130122: version 2.5, integration of the alert system
 *
 * Copyright 2012-2013 Thierry Chappuis
 */

#property copyright "Copyright 2012-2013, Thierry Chappuis"

#property indicator_separate_window

#property indicator_buffers 4

#property indicator_level1 6
#property indicator_level2 8
#property indicator_level3 -6
#property indicator_level4 -8
#property indicator_level5 10
#property indicator_level6 -10
#property indicator_level7 12
#property indicator_level8 -12

#property indicator_levelstyle 2
#property indicator_levelcolor DimGray

#property indicator_maximum 15
#property indicator_minimum -15

/* Input parameters */
extern int VC_Period = 0;
extern int VC_NumBars = 5;
extern int VC_Bars2Check = 500;
extern bool VC_DisplayChart = true;
extern bool VC_UseDynamicSRLevels = true;
extern int VC_DynamicSRPeriod = 100;
extern double VC_DynamicSRCut = 0.02;
extern double VC_Overbought = 6;
extern double VC_Oversold = -6;
extern bool VC_AlertON = false;
extern double VC_AlertSRAnticipation = 1.0;

extern color VC_UpColor = Lime;
extern color VC_DownColor = Red;
extern int VC_WickWidth = 1;
extern int VC_BodyWidth = 4;
extern color VC_ResistanceColor = Red;
extern color VC_SupportColor = Lime;

int alert_confirmation_value = 1;

/* Buffers */
double vcHigh[];
double vcLow[];
double vcOpen[];
double vcClose[];

/* Global variables */
string indicator_short_name;
int bar_new_ID;

/* Initialisation of the indicator */
int init()
{
    indicator_short_name = "CHT_Value_Chart (" + VC_NumBars + "," + VC_Period + ")";

    IndicatorShortName(indicator_short_name);

    SetIndexStyle(0, DRAW_NONE);
    SetIndexStyle(1, DRAW_NONE);
    SetIndexStyle(2, DRAW_NONE);
    SetIndexStyle(3, DRAW_NONE);
    SetIndexStyle(4, DRAW_NONE);

    SetIndexBuffer(0, vcHigh);
    SetIndexBuffer(1, vcLow);
    SetIndexBuffer(2, vcOpen);
    SetIndexBuffer(3, vcClose);

    SetIndexEmptyValue(0, 0.0);
    SetIndexEmptyValue(1, 0.0);
    SetIndexEmptyValue(2, 0.0);
    SetIndexEmptyValue(3, 0.0);

    // Value chart can only calculate data for TFs >= Period()
    if (VC_Period != 0 && VC_Period < Period())
    {
        VC_Period = 0;
    }
    
    string name;
    for (int i = ObjectsTotal() - 1; i >= 0; i--)
    {
        name = ObjectName(i);
        string s = "CHT_VC_";

        if (StringSubstr(name, 0, StringLen(s)) == s)
        {
            ObjectDelete(name);
        }
    }

    return (0);
}

/* Entry point for the indicator action */
int start()
{
    int bars;
    int counted_bars = IndicatorCounted();
    static int pa_profile[];

    double vc_support;
    double vc_resistance;
    int alert_signal = 0;
    
    ObjectDelete("CHT_VC_(" + VC_NumBars + "," + VC_Period + ")" + "_Support");
    ObjectDelete("CHT_VC_(" + VC_NumBars + "," + VC_Period + ")" + "_Resistance");

    // The last counted bar is counted again
    if(counted_bars > 0)
    {
        counted_bars--;
    }

    bars = Bars - counted_bars;

    if (bars > VC_Bars2Check && VC_Bars2Check > 10)
    {
        bars = VC_Bars2Check;
    }

    computes_value_chart(bars, VC_Period);

    computes_pa_profile(VC_Period, pa_profile, vc_support, vc_resistance);

    if (VC_DisplayChart== true)
    {
        dispays_value_chart(bars);
        vc_displays_sr(vc_support, vc_resistance);
    }

    if (VC_UseDynamicSRLevels == true)
    {
        VC_Overbought = vc_resistance - VC_AlertSRAnticipation;
        VC_Oversold = vc_support + VC_AlertSRAnticipation;
    }

    vc_check(vcClose[0], alert_signal);

    vc_alert_trigger(alert_signal, VC_AlertON);

    return(0);
}

int deinit()
{
    vc_delete();
    Comment("");
    return (0);
}

void computes_value_chart(int bars, int period)
{
    double sum;
    double floatingAxis;
    double volatilityUnit;
    static datetime last_time;

    static double high;
    static double low;
    static double open;
    static double close;

    for(int i = bars-1; i >= 0; i--)
    {
        datetime t = Time[i];
        int y = iBarShift(NULL, period, t);
        int z = iBarShift(NULL, 0, iTime(NULL, period, y));

        /* Determination of the floating axis */
        sum = 0;
        for (int k = y; k < y+VC_NumBars; k++)
        {
            sum += (iHigh(NULL, period, k) + iLow(NULL, period, k)) / 2.0;
        }
        floatingAxis = sum / VC_NumBars;

        /* Determination of the volatility unit */
        sum = 0;
        for (k = y; k < VC_NumBars + y; k++)
        {
            sum += iHigh(NULL, period, k) - iLow(NULL, period, k);
        }
        volatilityUnit = 0.2 * (sum / VC_NumBars);

        /* Determination of relative high, low, open and close values */
        vcHigh[i] = (iHigh(NULL, period, y) - floatingAxis) / volatilityUnit;
        vcLow[i] = (iLow(NULL, period, y) - floatingAxis) / volatilityUnit;
        vcOpen[i] = (iOpen(NULL, period, y) - floatingAxis) / volatilityUnit;
        vcClose[i] = (iClose(NULL, period, y) - floatingAxis) / volatilityUnit;
    }
}

void dispays_value_chart(int bars)
{
    int window = WindowFind(indicator_short_name);

    string current_body_ID;
    string current_wick_ID;

    for(int i = 0; i < bars; i++)
    {
        if (vcHigh[i] == 0.0 && vcOpen[i] == 0.0 && vcClose[i] == 0.0 && vcLow[i] == 0.0)
        {
            // Do nothing
        }
        else
        {
            current_body_ID = "CHT_VC_(" + VC_NumBars + "," + VC_Period + ")" + "_BODY_ID(" + Time[i] + ")";
            current_wick_ID = "CHT_VC_(" + VC_NumBars + "," + VC_Period + ")" + "_WICK_ID(" + Time[i] + ")";

            ObjectDelete(current_body_ID);
            ObjectDelete(current_wick_ID);

            ObjectCreate(current_body_ID, OBJ_TREND, window, Time[i], vcOpen[i], Time[i], vcClose[i]);
            ObjectSet(current_body_ID, OBJPROP_STYLE, STYLE_SOLID);
            ObjectSet(current_body_ID, OBJPROP_RAY, false);
            ObjectSet(current_body_ID, OBJPROP_WIDTH, VC_BodyWidth);


            ObjectCreate(current_wick_ID, OBJ_TREND, window, Time[i], vcHigh[i], Time[i], vcLow[i]);
            ObjectSet(current_wick_ID, OBJPROP_STYLE, STYLE_SOLID);
            ObjectSet(current_wick_ID, OBJPROP_RAY, false);
            ObjectSet(current_wick_ID, OBJPROP_WIDTH, VC_WickWidth);

            if (vcOpen[i] <= vcClose[i])
            {
                ObjectSet(current_body_ID, OBJPROP_COLOR, VC_UpColor);
                ObjectSet(current_wick_ID, OBJPROP_COLOR, VC_UpColor);
            }
            else
            {
                ObjectSet(current_body_ID, OBJPROP_COLOR, VC_DownColor);
                ObjectSet(current_wick_ID, OBJPROP_COLOR, VC_DownColor);
            }
        }
    }
}

void vc_delete()
{
    string name;
    for (int i = ObjectsTotal() - 1; i >= 0; i--)
    {
        name = ObjectName(i);
        string s = "CHT_VC_(" + VC_NumBars + "," + VC_Period + ")";

        if (StringSubstr(name, 0, StringLen(s)) == s)
        {
            ObjectDelete(name);
        }
    }
}

int computes_pa_profile(int period, int & pa_profile[], double & support, double & resistance)
{
    int err = 0;
    static datetime last_time;
    static bool initialized = false;

    if (err == 0 && VC_UseDynamicSRLevels)
    {
        double pap_max = 15;
        double pap_min = -15;
        double pap_increment = 0.1;
        int pap_size = (pap_max - pap_min) / pap_increment + 1;
        double value;
        int n;
        int sum;

        if (initialized == false)
        {
            ArrayResize(pa_profile, pap_size);
            initialized = true;
        }

        int i, j;

        if (last_time < iTime(NULL, period, 0))
        {
            // Initialization
            for (j = 0; j < pap_size; j++)
            {
                pa_profile[j] = 0;
            }

            // Scan of value chart
            for (i = 1; i < VC_DynamicSRPeriod; i++)
            {
                int z = iBarShift(NULL, 0, iTime(NULL, period, i));

                for (j = 1; j < pap_size; j++)
                {
                    value = pap_min + j * pap_increment;

                    if (vcLow[z] <= value && vcHigh[z] > value)
                    {
                        pa_profile[0]++;
                        pa_profile[j]++;
                    }
                }
            }
        }

        n = VC_DynamicSRCut * pa_profile[0];
        for (j = 1, sum = 0; j < pap_size; j++)
        {
            sum += pa_profile[j];
            if (sum >= n)
            {
                break;
            }
        }

        support = pap_min + j * pap_increment;

        for (j = pap_size - 1, sum = 0; j > 0; j--)
        {
            sum = sum + pa_profile[j];
            if (sum >= n)
            {
                break;
            }
        }

        resistance = pap_min + j * pap_increment;
    }

    return (err);
}

int vc_displays_sr(double & vc_support, double & vc_resistance)
{
    int err = 0;
    
    vc_delete_sr();

    if (err == 0 && VC_UseDynamicSRLevels)
    {
        int window = WindowFind(indicator_short_name);
        string support_name = "CHT_VC_(" + VC_NumBars + "," + VC_Period + ")" + "_Support";
        string resistance_name = "CHT_VC_(" + VC_NumBars + "," + VC_Period + ")" + "_Resistance";

        ObjectCreate(support_name, OBJ_HLINE, window, Time[0], vc_support);
        ObjectSet(support_name, OBJPROP_COLOR, VC_SupportColor);

        ObjectCreate(resistance_name, OBJ_HLINE, window, Time[0], vc_resistance);
        ObjectSet(resistance_name, OBJPROP_COLOR, VC_ResistanceColor);

    }

    return (err);
}

void vc_delete_sr()
{
    string name;
    for (int i = ObjectsTotal() - 1; i >= 0; i--)
    {
        name = ObjectName(i);

        if (StringSubstr(name, StringLen(name) - 12, 11) == "_Resistance" && StringSubstr(name, 0, 7) == "CHT_VC_")
        {
            ObjectDelete(name);
        }
        if (StringSubstr(name, StringLen(name) - 9, 8) == "_Support" && StringSubstr(name, 0, 7) == "CHT_VC_")
        {
            ObjectDelete(name);
        }
    }
}

void vc_check(double value, int & alert_signal)
{
    if (value > VC_Overbought)
    {
        alert_signal++;
    }
    else if (value > VC_Oversold)
    {
        // Do nothing
    }
    else // value < VC_Oversold
    {
        alert_signal--;
    }
}

void vc_alert_trigger(int alert_signal, bool use_alert)
{
    if (use_alert)
    {
        static datetime last_alert;
        static int last_alert_signal;

        if (VC_Period == 0)
        {
            VC_Period = Period();
        }

        if (last_alert_signal != alert_signal && last_alert < iTime(NULL, VC_Period, 0))
        {
            if (alert_signal == alert_confirmation_value) // Overbought
            {

                Alert(Symbol() + "(" + VC_Period + "min): value chart is overbought. vcClose = " + vcClose[0] + "!");
            }
            else if (alert_signal == -alert_confirmation_value) // Oversold
            {
                Alert(Symbol() + "(" + VC_Period + "min): value chart is oversold. vcClose = " + vcClose[0] + "!");
            }

            last_alert = iTime(NULL, VC_Period, 0);
            last_alert_signal = alert_signal;
        }
    }
}

