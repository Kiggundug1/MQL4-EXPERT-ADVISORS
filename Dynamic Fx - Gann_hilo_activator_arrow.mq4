/*
   Generated by EX4-TO-MQ4 decompiler V4.0.224.1 []
   Website: http://purebeam.biz
   E-mail : purebeam@gmail.com
*/
#property copyright "Zoltan Laszlo Ferenci"
#property link      "http://www.metatraderprogrammer.com"

#property indicator_chart_window
#property indicator_buffers 2
#property indicator_color1 Black
#property indicator_color2 Black

double g_ibuf_76[];
double g_ibuf_80[];
string gs_dummy_84;
int gi_unused_92 = 0;
bool gi_unused_96 = FALSE;
extern bool email_alert = FALSE;
extern bool sound_alert = TRUE;
extern bool popup_alert = TRUE;
extern bool sound_repeat = TRUE;
extern bool popup_repeat = FALSE;
extern string sound_filename = "alert.wav";
extern double alertevery = 5.0;
extern int maxrepeat = 2;
extern int signal_bar = 0;
extern int alert_bar = 1;
extern string gannhilo_name = "###Gann_HiLo_Activator_v2###";
extern int gannhilo_lookback = 10;
extern int ma_period = 1;
extern int ma_mode = 0;
bool gi_168 = TRUE;
bool gi_172 = TRUE;
bool gi_176 = TRUE;
bool gi_180 = FALSE;
int g_datetime_184 = 0;
int g_datetime_188 = 0;
int gi_192 = 0;
bool gi_196 = TRUE;
bool gi_200 = TRUE;
int g_count_204 = 0;
int g_period_208 = 200;

string ordobjname(int ai_0, string as_4) {
   return (DoubleToStr(ai_0, 0) + as_4);
}

string obj_getdesc(string a_name_0, int ai_8 = -1) {
   if (ai_8 != -1) a_name_0 = ordobjname(ai_8, a_name_0);
   return (ObjectDescription(a_name_0));
}

void obj_loadbool(string as_0, int &ai_8, int ai_12 = -1) {
   string ls_16 = obj_getdesc(as_0, ai_12);
   if (ls_16 != "") ai_8 = MathRound(StrToDouble(ls_16));
}

int init() {
   SetIndexStyle(0, DRAW_ARROW);
   SetIndexArrow(0, 217);
   SetIndexBuffer(0, g_ibuf_76);
   SetIndexEmptyValue(0, 0.0);
   SetIndexStyle(1, DRAW_ARROW);
   SetIndexArrow(1, 218);
   SetIndexBuffer(1, g_ibuf_80);
   SetIndexEmptyValue(1, 0.0);
   return (0);
}

int deinit() {
   return (0);
}

int signal(int ai_0) {
   int li_ret_4 = 0;
   double l_icustom_8 = iCustom(Symbol(), 0, gannhilo_name, gannhilo_lookback, 0, ai_0);
   double l_icustom_16 = iCustom(Symbol(), 0, gannhilo_name, gannhilo_lookback, 0, ai_0 + 1);
   double l_ima_24 = iMA(Symbol(), 0, ma_period, 0, ma_mode, PRICE_CLOSE, ai_0);
   double l_ima_32 = iMA(Symbol(), 0, ma_period, 0, ma_mode, PRICE_CLOSE, ai_0 + 1);
   if (l_ima_24 > l_icustom_8 && l_ima_32 <= l_icustom_16) li_ret_4 = 1;
   if (l_ima_24 < l_icustom_8 && l_ima_32 >= l_icustom_16) li_ret_4 = 2;
   return (li_ret_4);
}

int start() {
   int li_12;
   int l_ind_counted_0 = IndicatorCounted();
   int li_4 = Bars - l_ind_counted_0;
   for (int li_8 = 0; li_8 < li_4; li_8++) {
      li_12 = signal(li_8 + signal_bar);
      if (li_12 == 2) {
         g_ibuf_80[li_8] = High[li_8] + iATR(Symbol(), 0, g_period_208, li_8) / 3.0;
         g_ibuf_76[li_8] = EMPTY_VALUE;
      }
      if (li_12 == 1) {
         g_ibuf_76[li_8] = Low[li_8] - iATR(Symbol(), 0, g_period_208, li_8) / 3.0;
         g_ibuf_80[li_8] = EMPTY_VALUE;
      }
      if (li_12 == 0) {
         g_ibuf_76[li_8] = EMPTY_VALUE;
         g_ibuf_80[li_8] = EMPTY_VALUE;
      }
   }
   Comment("");
   li_12 = 0;
   if (g_ibuf_76[alert_bar] != EMPTY_VALUE) li_12 = 1;
   if (g_ibuf_80[alert_bar] != EMPTY_VALUE) li_12 = 2;
   signal_alert(li_12);
   return (0);
}

void alert_check(int ai_0) {
   isfirsttick();
   if (gi_192 == -1) gi_192 = ai_0;
   if ((gi_180 && gi_172) || (gi_192 != ai_0 && gi_168)) {
      g_datetime_188 = 0;
      gi_200 = TRUE;
      gi_196 = TRUE;
   } else gi_200 = FALSE;
   if (gi_176) {
      if (gi_200) {
         if (gi_192 == ai_0) gi_196 = FALSE;
         else gi_196 = TRUE;
      }
   } else gi_196 = TRUE;
   if (gi_200) gi_192 = ai_0;
}

void signal_alert(int ai_0) {
   string ls_4;
   int l_datetime_12;
   alert_check(ai_0);
   if (gi_196) {
      if (ai_0 != 0) {
         if (ai_0 == 1) ls_4 = "BUY signal on ";
         if (ai_0 == 2) ls_4 = "SELL signal on ";
         ls_4 = ls_4 + Symbol();
         l_datetime_12 = TimeCurrent();
         if (gi_200) {
            g_count_204 = 0;
            g_datetime_188 = 0;
         }
         if (gi_200 || (alertevery > 0.0 && l_datetime_12 - g_datetime_188 > alertevery && g_count_204 < maxrepeat)) {
            if (email_alert && gi_200) SendMail(ls_4, ls_4);
            if (popup_alert && gi_200 || popup_repeat) Alert(ls_4);
            if (sound_alert && gi_200 || sound_repeat) PlaySound(sound_filename);
            g_datetime_188 = l_datetime_12;
            g_count_204++;
         }
      }
   }
}

int isfirsttick() {
   int l_datetime_0 = iTime(Symbol(), 0, 0);
   if (l_datetime_0 == g_datetime_184) {
      gi_180 = FALSE;
      return (gi_180);
   }
   g_datetime_184 = l_datetime_0;
   gi_180 = TRUE;
   return (gi_180);
}