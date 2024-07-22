#property copyright "Copyright © 2007 Third Wave FX"
#property link      "http://www.thirdwavefx.com"

#property indicator_separate_window

extern string indi_name = "Third Wave FX VENOM - Window 1";
extern bool Venom_Alert = TRUE;
double Gd_88 = 25.0;
int G_period_96 = 50;
int G_period_100 = 100;
double G_pips_104 = 5.0;
double G_pips_112 = 5.0;

// E37F0136AA3FFAF149B351F6A4C948E9
int init() {
   IndicatorShortName("Third Wave FX VENOM (" + Symbol() + ")");
   string var_name_0 = "start_saat" + Symbol();
   int second_8 = TimeSeconds(TimeCurrent());
   GlobalVariableSet(var_name_0, second_8);
   return (0);
}

// 52D46093050F38C27267BCE42543EF60
int deinit() {
   string var_name_0 = "start_saat" + Symbol();
   ObjectsDeleteAll(0, OBJ_LABEL);
   ObjectDelete("Cover");
   ObjectDelete("Cover1");
   ObjectDelete("Vectorial_Bias");
   ObjectDelete("Sup_Res_1");
   ObjectDelete("Sup_Res_2");
   ObjectDelete("Venom_1_Text_BG");
   GlobalVariableDel(var_name_0);
   ObjectDelete("Venom_1_Text");
   ObjectDelete("Venom_1_Sig");
   ObjectDelete("Venom_1_Eyesig");
   ObjectDelete("Venom_1_Eyeprice");
   ObjectDelete("Venom_1_Eyehi");
   ObjectDelete("Venom_1_Eyelo");
   ObjectDelete("Venom_2_Text");
   ObjectDelete("Venom_2_Sig");
   ObjectDelete("Venom_2_Eyesig");
   ObjectDelete("Venom_2_Eyeprice");
   ObjectDelete("Venom_2_Eyehi");
   ObjectDelete("Venom_2_Eyelo");
   ObjectDelete("Venom_3_Text");
   ObjectDelete("Venom_3_Sig");
   ObjectDelete("Venom_3_Eyesig");
   ObjectDelete("Venom_3_Eyeprice");
   ObjectDelete("Venom_3_Eyehi");
   ObjectDelete("Venom_3_Eyelo");
   ObjectDelete("Venom_4_Text");
   ObjectDelete("Venom_4_Sig");
   ObjectDelete("Venom_4_Eyesig");
   ObjectDelete("Venom_4_Eyeprice");
   ObjectDelete("Venom_4_Eyehi");
   ObjectDelete("Venom_4_Eyelo");
   ObjectDelete("Venom_5_Text");
   ObjectDelete("Venom_5_Sig");
   ObjectDelete("Venom_5_Eyesig");
   ObjectDelete("Venom_5_Eyeprice");
   ObjectDelete("Venom_5_Eyehi");
   ObjectDelete("Venom_5_Eyelo");
   ObjectDelete("Venom_6_Text");
   ObjectDelete("Venom_6_Sig");
   ObjectDelete("Venom_6_Eyesig");
   ObjectDelete("Venom_6_Eyeprice");
   ObjectDelete("Venom_6_Eyehi");
   ObjectDelete("Venom_6_Eyelo");
   return (0);
}

// EA2B2676C28C0DB26D39331A336C6B92
int start() {
   double ima_0;
   double ima_8;
   double istochastic_16;
   double istochastic_24;
   double ima_32;
   double ima_40;
   double istochastic_48;
   double istochastic_56;
   double ima_64;
   double ima_72;
   double istochastic_80;
   double istochastic_88;
   double ima_96;
   double ima_104;
   double istochastic_112;
   double istochastic_120;
   double ima_128;
   double ima_136;
   double istochastic_144;
   double istochastic_152;
   double ima_160;
   double ima_168;
   double istochastic_176;
   double istochastic_184;
   color color_192;
   color color_196;
   color color_200;
   color color_204;
   color color_208;
   color color_212;
   string text_216;
   string text_224;
   string text_232;
   string text_240;
   string text_248;
   string text_256;
   double Ld_264;
   double Ld_272;
   double point_280;
   double Ld_288;
   double Ld_296;
   int Li_304;
   int Li_308;
   int Li_312;
   int Li_316;
   int Li_320;
   int Li_324;
   double Ld_328;
   double Ld_336;
   double Ld_344;
   double Ld_352;
   double Ld_360;
   double Ld_368;
   double Ld_376;
   double Ld_384;
   double Ld_392;
   double Ld_400;
   double Ld_408;
   double Ld_416;
   double Ld_424;
   double Ld_432;
   double Ld_440;
   double Ld_448;
   double Ld_456;
   double Ld_464;
   double Ld_472;
   double Ld_480;
   double Ld_488;
   double Ld_496;
   double Ld_504;
   double Ld_512;
   string Ls_520;
   int y_528;
   double Ld_532;
   string dbl2str_540;
   string dbl2str_548;
   string dbl2str_556;
   bool Li_564;
   int y_568;
   double Ld_572;
   string dbl2str_580;
   string dbl2str_588;
   string dbl2str_596;
   bool Li_604;
   int y_608;
   double Ld_612;
   string dbl2str_620;
   string dbl2str_628;
   string dbl2str_636;
   bool Li_644;
   int y_648;
   double Ld_652;
   string dbl2str_660;
   string dbl2str_668;
   string dbl2str_676;
   bool Li_684;
   int y_688;
   double Ld_692;
   string dbl2str_700;
   string dbl2str_708;
   string dbl2str_716;
   bool Li_724;
   int y_728;
   double Ld_732;
   string dbl2str_740;
   string dbl2str_748;
   string dbl2str_756;
   bool Li_764;
   string var_name_768;
   int Li_unused_776;
   string var_name_780;
   string var_name_788;
   bool bool_796;
   double digits_800;
   double ima_808;
   double ibands_816;
   double ibands_824;
   double ibands_832;
   double ibands_840;
   double ima_848;
   double ibands_856;
   double ibands_864;
   double ibands_872;
   double ibands_880;
   double ima_888;
   double ibands_896;
   double ibands_904;
   double ibands_912;
   double ibands_920;
   double ima_928;
   double ibands_936;
   double ibands_944;
   double ibands_952;
   double ibands_960;
   double ima_968;
   double ibands_976;
   double ibands_984;
   double ibands_992;
   double ibands_1000;
   double ima_1008;
   double ibands_1016;
   double ibands_1024;
   double ibands_1032;
   double ibands_1040;
   color color_1048;
   color color_1052;
   color color_1056;
   color color_1060;
   color color_1064;
   color color_1068;
   string text_1072;
   string text_1080;
   string text_1088;
   string text_1096;
   string text_1104;
   string text_1112;
   ObjectCreate("Cover", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
   ObjectSetText("Cover", "nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn", 15, "Wingdings", Black);
   ObjectSet("Cover", OBJPROP_CORNER, 0);
   ObjectSet("Cover", OBJPROP_XDISTANCE, 0);
   ObjectSet("Cover", OBJPROP_YDISTANCE, 0);
   ObjectCreate("Cover1", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
   ObjectSetText("Cover1", "nnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn", 15, "Wingdings", Black);
   ObjectSet("Cover1", OBJPROP_CORNER, 0);
   ObjectSet("Cover1", OBJPROP_XDISTANCE, 4);
   ObjectSet("Cover1", OBJPROP_YDISTANCE, 0);
   RefreshRates();
   int second_1120 = TimeSeconds(TimeCurrent());
   int minute_1124 = TimeMinute(TimeCurrent());
   int hour_1128 = TimeHour(TimeCurrent());
   int day_1132 = TimeDay(TimeCurrent());
   int month_1136 = TimeMonth(TimeCurrent());
   int year_1140 = TimeYear(TimeCurrent());
   if (year_1140 < 2030) {
      RefreshRates();
      ima_0 = iMA(NULL, PERIOD_M1, G_period_96, 0, MODE_EMA, PRICE_CLOSE, 0);
      ima_8 = iMA(NULL, PERIOD_M1, G_period_100, 0, MODE_SMA, PRICE_CLOSE, 0);
      istochastic_16 = iStochastic(NULL, PERIOD_M1, 30, 3, 3, MODE_SMA, 0, MODE_MAIN, 0);
      istochastic_24 = iStochastic(NULL, PERIOD_M1, 30, 3, 3, MODE_SMA, 0, MODE_SIGNAL, 0);
      ima_32 = iMA(NULL, PERIOD_M5, G_period_96, 0, MODE_EMA, PRICE_CLOSE, 0);
      ima_40 = iMA(NULL, PERIOD_M5, G_period_100, 0, MODE_SMA, PRICE_CLOSE, 0);
      istochastic_48 = iStochastic(NULL, PERIOD_M5, 30, 3, 3, MODE_SMA, 0, MODE_MAIN, 0);
      istochastic_56 = iStochastic(NULL, PERIOD_M5, 30, 3, 3, MODE_SMA, 0, MODE_SIGNAL, 0);
      ima_64 = iMA(NULL, PERIOD_M15, G_period_96, 0, MODE_EMA, PRICE_CLOSE, 0);
      ima_72 = iMA(NULL, PERIOD_M15, G_period_100, 0, MODE_SMA, PRICE_CLOSE, 0);
      istochastic_80 = iStochastic(NULL, PERIOD_M15, 30, 3, 3, MODE_SMA, 0, MODE_MAIN, 0);
      istochastic_88 = iStochastic(NULL, PERIOD_M15, 30, 3, 3, MODE_SMA, 0, MODE_SIGNAL, 0);
      ima_96 = iMA(NULL, PERIOD_M30, G_period_96, 0, MODE_EMA, PRICE_CLOSE, 0);
      ima_104 = iMA(NULL, PERIOD_M30, G_period_100, 0, MODE_SMA, PRICE_CLOSE, 0);
      istochastic_112 = iStochastic(NULL, PERIOD_M30, 30, 3, 3, MODE_SMA, 0, MODE_MAIN, 0);
      istochastic_120 = iStochastic(NULL, PERIOD_M30, 30, 3, 3, MODE_SMA, 0, MODE_SIGNAL, 0);
      ima_128 = iMA(NULL, PERIOD_H1, G_period_96, 0, MODE_EMA, PRICE_CLOSE, 0);
      ima_136 = iMA(NULL, PERIOD_H1, G_period_100, 0, MODE_SMA, PRICE_CLOSE, 0);
      istochastic_144 = iStochastic(NULL, PERIOD_H1, 30, 3, 3, MODE_SMA, 0, MODE_MAIN, 0);
      istochastic_152 = iStochastic(NULL, PERIOD_H1, 30, 3, 3, MODE_SMA, 0, MODE_SIGNAL, 0);
      ima_160 = iMA(NULL, PERIOD_H4, G_period_96, 0, MODE_EMA, PRICE_CLOSE, 0);
      ima_168 = iMA(NULL, PERIOD_H4, G_period_100, 0, MODE_SMA, PRICE_CLOSE, 0);
      istochastic_176 = iStochastic(NULL, PERIOD_H4, 30, 3, 3, MODE_SMA, 0, MODE_MAIN, 0);
      istochastic_184 = iStochastic(NULL, PERIOD_H4, 30, 3, 3, MODE_SMA, 0, MODE_SIGNAL, 0);
      if (istochastic_24 == istochastic_16) color_192 = DarkSlateGray;
      if (istochastic_56 == istochastic_48) color_196 = DarkSlateGray;
      if (istochastic_88 == istochastic_80) color_200 = DarkSlateGray;
      if (istochastic_120 == istochastic_112) color_204 = DarkSlateGray;
      if (istochastic_152 == istochastic_144) color_208 = DarkSlateGray;
      if (istochastic_184 == istochastic_176) color_212 = DarkSlateGray;
      RefreshRates();
      Ld_264 = MarketInfo(Symbol(), MODE_SPREAD);
      Ld_272 = NormalizeDouble(Ld_264 * Point, Digits);
      point_280 = MarketInfo(Symbol(), MODE_POINT);
      Ld_288 = NormalizeDouble(G_pips_104 * Point, Digits);
      Ld_296 = NormalizeDouble(G_pips_112 * Point, Digits);
      Ld_328 = (ima_0 - Bid - Ld_272) / point_280;
      Ld_336 = (ima_8 - Bid - Ld_272) / point_280;
      Ld_344 = (Ask - ima_0 - Ld_272) / point_280;
      Ld_352 = (Ask - ima_8 - Ld_272) / point_280;
      if (istochastic_24 < istochastic_16 && Ld_328 >= Gd_88 && Ld_336 >= Gd_88 && Bid < ima_0 && Bid < ima_8) {
         text_216 = "é";
         color_192 = Lime;
         Li_304 = 0;
      }
      if (istochastic_24 < istochastic_16 && Ld_328 < Gd_88 || Ld_336 < Gd_88 && Bid <= ima_0 && Bid <= ima_8) {
         text_216 = "è";
         color_192 = LimeGreen;
         Li_304 = 0;
      }
      if (istochastic_24 < istochastic_16 && Bid >= ima_0 + Ld_296 && Bid < ima_8 && Ld_336 >= Gd_88) {
         text_216 = "é";
         color_192 = Lime;
         Li_304 = 0;
      }
      if (istochastic_24 < istochastic_16 && Bid < ima_0 + Ld_296 && Bid > ima_0 && Bid < ima_8 && Ld_336 >= Gd_88) {
         text_216 = "ì";
         color_192 = Lime;
         Li_304 = 0;
      }
      if (istochastic_24 < istochastic_16 && Bid < ima_0 + Ld_296 && Bid > ima_0 && Bid < ima_8 && Ld_336 < Gd_88) {
         text_216 = "è";
         color_192 = LimeGreen;
         Li_304 = 0;
      }
      if (istochastic_24 < istochastic_16 && Bid >= ima_0 + Ld_296 && Bid < ima_8 && Ld_336 < Gd_88) {
         text_216 = "è";
         color_192 = LimeGreen;
         Li_304 = 0;
      }
      if (istochastic_24 < istochastic_16 && Bid >= ima_8 + Ld_296 && Bid < ima_0 && Ld_328 >= Gd_88) {
         text_216 = "é";
         color_192 = Lime;
         Li_304 = 0;
      }
      if (istochastic_24 < istochastic_16 && Bid < ima_8 + Ld_296 && Bid > ima_8 && Bid < ima_0 && Ld_328 >= Gd_88) {
         text_216 = "ì";
         color_192 = Lime;
         Li_304 = 0;
      }
      if (istochastic_24 < istochastic_16 && Bid < ima_8 + Ld_296 && Bid > ima_8 && Bid < ima_0 && Ld_328 < Gd_88) {
         text_216 = "è";
         color_192 = LimeGreen;
         Li_304 = 0;
      }
      if (istochastic_24 < istochastic_16 && Bid >= ima_8 + Ld_296 && Bid < ima_0 && Ld_328 < Gd_88) {
         text_216 = "è";
         color_192 = LimeGreen;
         Li_304 = 0;
      }
      if (istochastic_24 < istochastic_16 && Bid >= ima_0 + Ld_296 && Bid >= ima_8 + Ld_296) {
         text_216 = "é";
         color_192 = Lime;
         Li_304 = 6;
      }
      if (istochastic_24 < istochastic_16 && Bid > ima_0 && Bid < ima_0 + Ld_296 && Bid > ima_8 && Bid < ima_8 + Ld_296) {
         text_216 = "ì";
         color_192 = Lime;
         Li_304 = 0;
      }
      if (istochastic_24 < istochastic_16 && Bid >= ima_0 + Ld_296 && Bid >= ima_8 && Bid < ima_8 + Ld_296) {
         text_216 = "ì";
         color_192 = Lime;
         Li_304 = 0;
      }
      if (istochastic_24 < istochastic_16 && Bid >= ima_8 + Ld_296 && Bid >= ima_0 && Bid < ima_0 + Ld_296) {
         text_216 = "ì";
         color_192 = Lime;
         Li_304 = 0;
      }
      if (istochastic_24 > istochastic_16 && Ld_344 >= Gd_88 && Ld_352 >= Gd_88 && Bid > ima_0 && Bid > ima_8) {
         text_216 = "ê";
         color_192 = Red;
         Li_304 = 0;
      }
      if (istochastic_24 > istochastic_16 && Ld_344 < Gd_88 || Ld_352 < Gd_88 && Bid >= ima_0 && Bid >= ima_8) {
         text_216 = "è";
         color_192 = OrangeRed;
         Li_304 = 0;
      }
      if (istochastic_24 > istochastic_16 && Bid <= ima_0 - Ld_296 && Bid > ima_8 && Ld_352 >= Gd_88) {
         text_216 = "ê";
         color_192 = Red;
         Li_304 = 0;
      }
      if (istochastic_24 > istochastic_16 && Bid > ima_0 - Ld_296 && Bid < ima_0 && Bid > ima_8 && Ld_352 >= Gd_88) {
         text_216 = "î";
         color_192 = Red;
         Li_304 = 0;
      }
      if (istochastic_24 > istochastic_16 && Bid > ima_0 - Ld_296 && Bid < ima_0 && Bid > ima_8 && Ld_352 < Gd_88) {
         text_216 = "è";
         color_192 = OrangeRed;
         Li_304 = 0;
      }
      if (istochastic_24 > istochastic_16 && Bid <= ima_0 - Ld_296 && Bid > ima_8 && Ld_352 < Gd_88) {
         text_216 = "è";
         color_192 = OrangeRed;
         Li_304 = 0;
      }
      if (istochastic_24 > istochastic_16 && Bid <= ima_8 - Ld_296 && Bid > ima_0 && Ld_344 >= Gd_88) {
         text_216 = "ê";
         color_192 = Red;
         Li_304 = 0;
      }
      if (istochastic_24 > istochastic_16 && Bid > ima_8 - Ld_296 && Bid < ima_8 && Bid > ima_0 && Ld_344 >= Gd_88) {
         text_216 = "î";
         color_192 = Red;
         Li_304 = 0;
      }
      if (istochastic_24 > istochastic_16 && Bid > ima_8 - Ld_296 && Bid < ima_8 && Bid > ima_0 && Ld_344 < Gd_88) {
         text_216 = "è";
         color_192 = OrangeRed;
         Li_304 = 0;
      }
      if (istochastic_24 > istochastic_16 && Bid <= ima_8 - Ld_296 && Bid > ima_0 && Ld_344 < Gd_88) {
         text_216 = "è";
         color_192 = OrangeRed;
         Li_304 = 0;
      }
      if (istochastic_24 > istochastic_16 && Bid <= ima_0 - Ld_296 && Bid <= ima_8 - Ld_296) {
         text_216 = "ê";
         color_192 = Red;
         Li_304 = -6;
      }
      if (istochastic_24 > istochastic_16 && Bid < ima_0 && Bid > ima_0 - Ld_296 && Bid < ima_8 && Bid > ima_8 - Ld_296) {
         text_216 = "î";
         color_192 = Red;
         Li_304 = 0;
      }
      if (istochastic_24 > istochastic_16 && Bid <= ima_0 - Ld_296 && Bid <= ima_8 && Bid > ima_8 - Ld_296) {
         text_216 = "î";
         color_192 = Red;
         Li_304 = 0;
      }
      if (istochastic_24 > istochastic_16 && Bid <= ima_8 - Ld_296 && Bid <= ima_0 && Bid > ima_0 - Ld_296) {
         text_216 = "î";
         color_192 = Red;
         Li_304 = 0;
      }
      RefreshRates();
      Ld_360 = (ima_32 - Bid - Ld_272) / point_280;
      Ld_368 = (ima_40 - Bid - Ld_272) / point_280;
      Ld_376 = (Ask - ima_32 - Ld_272) / point_280;
      Ld_384 = (Ask - ima_40 - Ld_272) / point_280;
      if (istochastic_56 < istochastic_48 && Ld_360 >= Gd_88 && Ld_368 >= Gd_88 && Bid < ima_32 && Bid < ima_40) {
         text_224 = "é";
         color_196 = Lime;
         Li_308 = 0;
      }
      if (istochastic_56 < istochastic_48 && Ld_360 < Gd_88 || Ld_368 < Gd_88 && Bid <= ima_32 && Bid <= ima_40) {
         text_224 = "è";
         color_196 = LimeGreen;
         Li_308 = 0;
      }
      if (istochastic_56 < istochastic_48 && Bid >= ima_32 + Ld_296 && Bid < ima_40 && Ld_368 >= Gd_88) {
         text_224 = "é";
         color_196 = Lime;
         Li_308 = 0;
      }
      if (istochastic_56 < istochastic_48 && Bid < ima_32 + Ld_296 && Bid > ima_32 && Bid < ima_40 && Ld_368 >= Gd_88) {
         text_224 = "ì";
         color_196 = Lime;
         Li_308 = 0;
      }
      if (istochastic_56 < istochastic_48 && Bid < ima_32 + Ld_296 && Bid > ima_32 && Bid < ima_40 && Ld_368 < Gd_88) {
         text_224 = "è";
         color_196 = LimeGreen;
         Li_308 = 0;
      }
      if (istochastic_56 < istochastic_48 && Bid >= ima_32 + Ld_296 && Bid < ima_40 && Ld_368 < Gd_88) {
         text_224 = "è";
         color_196 = LimeGreen;
         Li_308 = 0;
      }
      if (istochastic_56 < istochastic_48 && Bid >= ima_40 + Ld_296 && Bid < ima_32 && Ld_360 >= Gd_88) {
         text_224 = "é";
         color_196 = Lime;
         Li_308 = 0;
      }
      if (istochastic_56 < istochastic_48 && Bid < ima_40 + Ld_296 && Bid > ima_40 && Bid < ima_32 && Ld_360 >= Gd_88) {
         text_224 = "ì";
         color_196 = Lime;
         Li_308 = 0;
      }
      if (istochastic_56 < istochastic_48 && Bid < ima_40 + Ld_296 && Bid > ima_40 && Bid < ima_32 && Ld_360 < Gd_88) {
         text_224 = "è";
         color_196 = LimeGreen;
         Li_308 = 0;
      }
      if (istochastic_56 < istochastic_48 && Bid >= ima_40 + Ld_296 && Bid < ima_32 && Ld_360 < Gd_88) {
         text_224 = "è";
         color_196 = LimeGreen;
         Li_308 = 0;
      }
      if (istochastic_56 < istochastic_48 && Bid >= ima_32 + Ld_296 && Bid >= ima_40 + Ld_296) {
         text_224 = "é";
         color_196 = Lime;
         Li_308 = 6;
      }
      if (istochastic_56 < istochastic_48 && Bid > ima_32 && Bid < ima_32 + Ld_296 && Bid > ima_40 && Bid < ima_40 + Ld_296) {
         text_224 = "ì";
         color_196 = Lime;
         Li_308 = 0;
      }
      if (istochastic_56 < istochastic_48 && Bid >= ima_32 + Ld_296 && Bid >= ima_40 && Bid < ima_40 + Ld_296) {
         text_224 = "ì";
         color_196 = Lime;
         Li_308 = 0;
      }
      if (istochastic_56 < istochastic_48 && Bid >= ima_40 + Ld_296 && Bid >= ima_32 && Bid < ima_32 + Ld_296) {
         text_224 = "ì";
         color_196 = Lime;
         Li_308 = 0;
      }
      if (istochastic_56 > istochastic_48 && Ld_376 >= Gd_88 && Ld_384 >= Gd_88 && Bid > ima_32 && Bid > ima_40) {
         text_224 = "ê";
         color_196 = Red;
         Li_308 = 0;
      }
      if (istochastic_56 > istochastic_48 && Ld_376 < Gd_88 || Ld_384 < Gd_88 && Bid >= ima_32 && Bid >= ima_40) {
         text_224 = "è";
         color_196 = OrangeRed;
         Li_308 = 0;
      }
      if (istochastic_56 > istochastic_48 && Bid <= ima_32 - Ld_296 && Bid > ima_40 && Ld_384 >= Gd_88) {
         text_224 = "ê";
         color_196 = Red;
         Li_308 = 0;
      }
      if (istochastic_56 > istochastic_48 && Bid > ima_32 - Ld_296 && Bid < ima_32 && Bid > ima_40 && Ld_384 >= Gd_88) {
         text_224 = "î";
         color_196 = Red;
         Li_308 = 0;
      }
      if (istochastic_56 > istochastic_48 && Bid > ima_32 - Ld_296 && Bid < ima_32 && Bid > ima_40 && Ld_384 < Gd_88) {
         text_224 = "è";
         color_196 = OrangeRed;
         Li_308 = 0;
      }
      if (istochastic_56 > istochastic_48 && Bid <= ima_32 - Ld_296 && Bid > ima_40 && Ld_384 < Gd_88) {
         text_224 = "è";
         color_196 = OrangeRed;
         Li_308 = 0;
      }
      if (istochastic_56 > istochastic_48 && Bid <= ima_40 - Ld_296 && Bid > ima_32 && Ld_376 >= Gd_88) {
         text_224 = "ê";
         color_196 = Red;
         Li_308 = 0;
      }
      if (istochastic_56 > istochastic_48 && Bid > ima_40 - Ld_296 && Bid < ima_40 && Bid > ima_32 && Ld_376 >= Gd_88) {
         text_224 = "î";
         color_196 = Red;
         Li_308 = 0;
      }
      if (istochastic_56 > istochastic_48 && Bid > ima_40 - Ld_296 && Bid < ima_40 && Bid > ima_32 && Ld_376 < Gd_88) {
         text_224 = "è";
         color_196 = OrangeRed;
         Li_308 = 0;
      }
      if (istochastic_56 > istochastic_48 && Bid <= ima_40 - Ld_296 && Bid > ima_32 && Ld_376 < Gd_88) {
         text_224 = "è";
         color_196 = OrangeRed;
         Li_308 = 0;
      }
      if (istochastic_56 > istochastic_48 && Bid <= ima_32 - Ld_296 && Bid <= ima_40 - Ld_296) {
         text_224 = "ê";
         color_196 = Red;
         Li_308 = -6;
      }
      if (istochastic_56 > istochastic_48 && Bid < ima_32 && Bid > ima_32 - Ld_296 && Bid < ima_40 && Bid > ima_40 - Ld_296) {
         text_224 = "î";
         color_196 = Red;
         Li_308 = 0;
      }
      if (istochastic_56 > istochastic_48 && Bid <= ima_32 - Ld_296 && Bid <= ima_40 && Bid > ima_40 - Ld_296) {
         text_224 = "î";
         color_196 = Red;
         Li_308 = 0;
      }
      if (istochastic_56 > istochastic_48 && Bid <= ima_40 - Ld_296 && Bid <= ima_32 && Bid > ima_32 - Ld_296) {
         text_224 = "î";
         color_196 = Red;
         Li_308 = 0;
      }
      RefreshRates();
      Ld_392 = (ima_64 - Bid - Ld_272) / point_280;
      Ld_400 = (ima_72 - Bid - Ld_272) / point_280;
      Ld_408 = (Ask - ima_64 - Ld_272) / point_280;
      Ld_416 = (Ask - ima_72 - Ld_272) / point_280;
      if (istochastic_88 < istochastic_80 && Ld_392 >= Gd_88 && Ld_400 >= Gd_88 && Bid < ima_64 && Bid < ima_72) {
         text_232 = "é";
         color_200 = Lime;
         Li_312 = 0;
      }
      if (istochastic_88 < istochastic_80 && Ld_392 < Gd_88 || Ld_400 < Gd_88 && Bid <= ima_64 && Bid <= ima_72) {
         text_232 = "è";
         color_200 = LimeGreen;
         Li_312 = 0;
      }
      if (istochastic_88 < istochastic_80 && Bid >= ima_64 + Ld_296 && Bid < ima_72 && Ld_400 >= Gd_88) {
         text_232 = "é";
         color_200 = Lime;
         Li_312 = 0;
      }
      if (istochastic_88 < istochastic_80 && Bid < ima_64 + Ld_296 && Bid > ima_64 && Bid < ima_72 && Ld_400 >= Gd_88) {
         text_232 = "ì";
         color_200 = Lime;
         Li_312 = 0;
      }
      if (istochastic_88 < istochastic_80 && Bid < ima_64 + Ld_296 && Bid > ima_64 && Bid < ima_72 && Ld_400 < Gd_88) {
         text_232 = "è";
         color_200 = LimeGreen;
         Li_312 = 0;
      }
      if (istochastic_88 < istochastic_80 && Bid >= ima_64 + Ld_296 && Bid < ima_72 && Ld_400 < Gd_88) {
         text_232 = "è";
         color_200 = LimeGreen;
         Li_312 = 0;
      }
      if (istochastic_88 < istochastic_80 && Bid >= ima_72 + Ld_296 && Bid < ima_64 && Ld_392 >= Gd_88) {
         text_232 = "é";
         color_200 = Lime;
         Li_312 = 0;
      }
      if (istochastic_88 < istochastic_80 && Bid < ima_72 + Ld_296 && Bid > ima_72 && Bid < ima_64 && Ld_392 >= Gd_88) {
         text_232 = "ì";
         color_200 = Lime;
         Li_312 = 0;
      }
      if (istochastic_88 < istochastic_80 && Bid < ima_72 + Ld_296 && Bid > ima_72 && Bid < ima_64 && Ld_392 < Gd_88) {
         text_232 = "è";
         color_200 = LimeGreen;
         Li_312 = 0;
      }
      if (istochastic_88 < istochastic_80 && Bid >= ima_72 + Ld_296 && Bid < ima_64 && Ld_392 < Gd_88) {
         text_232 = "è";
         color_200 = LimeGreen;
         Li_312 = 0;
      }
      if (istochastic_88 < istochastic_80 && Bid >= ima_64 + Ld_296 && Bid >= ima_72 + Ld_296) {
         text_232 = "é";
         color_200 = Lime;
         Li_312 = 6;
      }
      if (istochastic_88 < istochastic_80 && Bid > ima_64 && Bid < ima_64 + Ld_296 && Bid > ima_72 && Bid < ima_72 + Ld_296) {
         text_232 = "ì";
         color_200 = Lime;
         Li_312 = 0;
      }
      if (istochastic_88 < istochastic_80 && Bid >= ima_64 + Ld_296 && Bid >= ima_72 && Bid < ima_72 + Ld_296) {
         text_232 = "ì";
         color_200 = Lime;
         Li_312 = 0;
      }
      if (istochastic_88 < istochastic_80 && Bid >= ima_72 + Ld_296 && Bid >= ima_64 && Bid < ima_64 + Ld_296) {
         text_232 = "ì";
         color_200 = Lime;
         Li_312 = 0;
      }
      if (istochastic_88 > istochastic_80 && Ld_408 >= Gd_88 && Ld_416 >= Gd_88 && Bid > ima_64 && Bid > ima_72) {
         text_232 = "ê";
         color_200 = Red;
         Li_312 = 0;
      }
      if (istochastic_88 > istochastic_80 && Ld_408 < Gd_88 || Ld_416 < Gd_88 && Bid >= ima_64 && Bid >= ima_72) {
         text_232 = "è";
         color_200 = OrangeRed;
         Li_312 = 0;
      }
      if (istochastic_88 > istochastic_80 && Bid <= ima_64 - Ld_296 && Bid > ima_72 && Ld_416 >= Gd_88) {
         text_232 = "ê";
         color_200 = Red;
         Li_312 = 0;
      }
      if (istochastic_88 > istochastic_80 && Bid > ima_64 - Ld_296 && Bid < ima_64 && Bid > ima_72 && Ld_416 >= Gd_88) {
         text_232 = "î";
         color_200 = Red;
         Li_312 = 0;
      }
      if (istochastic_88 > istochastic_80 && Bid > ima_64 - Ld_296 && Bid < ima_64 && Bid > ima_72 && Ld_416 < Gd_88) {
         text_232 = "è";
         color_200 = OrangeRed;
         Li_312 = 0;
      }
      if (istochastic_88 > istochastic_80 && Bid <= ima_64 - Ld_296 && Bid > ima_72 && Ld_416 < Gd_88) {
         text_232 = "è";
         color_200 = OrangeRed;
         Li_312 = 0;
      }
      if (istochastic_88 > istochastic_80 && Bid <= ima_72 - Ld_296 && Bid > ima_64 && Ld_408 >= Gd_88) {
         text_232 = "ê";
         color_200 = Red;
         Li_312 = 0;
      }
      if (istochastic_88 > istochastic_80 && Bid > ima_72 - Ld_296 && Bid < ima_72 && Bid > ima_64 && Ld_408 >= Gd_88) {
         text_232 = "î";
         color_200 = Red;
         Li_312 = 0;
      }
      if (istochastic_88 > istochastic_80 && Bid > ima_72 - Ld_296 && Bid < ima_72 && Bid > ima_64 && Ld_408 < Gd_88) {
         text_232 = "è";
         color_200 = OrangeRed;
         Li_312 = 0;
      }
      if (istochastic_88 > istochastic_80 && Bid <= ima_72 - Ld_296 && Bid > ima_64 && Ld_408 < Gd_88) {
         text_232 = "è";
         color_200 = OrangeRed;
         Li_312 = 0;
      }
      if (istochastic_88 > istochastic_80 && Bid <= ima_64 - Ld_296 && Bid <= ima_72 - Ld_296) {
         text_232 = "ê";
         color_200 = Red;
         Li_312 = -6;
      }
      if (istochastic_88 > istochastic_80 && Bid < ima_64 && Bid > ima_64 - Ld_296 && Bid < ima_72 && Bid > ima_72 - Ld_296) {
         text_232 = "î";
         color_200 = Red;
         Li_312 = 0;
      }
      if (istochastic_88 > istochastic_80 && Bid <= ima_64 - Ld_296 && Bid <= ima_72 && Bid > ima_72 - Ld_296) {
         text_232 = "î";
         color_200 = Red;
         Li_312 = 0;
      }
      if (istochastic_88 > istochastic_80 && Bid <= ima_72 - Ld_296 && Bid <= ima_64 && Bid > ima_64 - Ld_296) {
         text_232 = "î";
         color_200 = Red;
         Li_312 = 0;
      }
      RefreshRates();
      Ld_424 = (ima_96 - Bid - Ld_272) / point_280;
      Ld_432 = (ima_104 - Bid - Ld_272) / point_280;
      Ld_440 = (Ask - ima_96 - Ld_272) / point_280;
      Ld_448 = (Ask - ima_104 - Ld_272) / point_280;
      if (istochastic_120 < istochastic_112 && Ld_424 >= Gd_88 && Ld_432 >= Gd_88 && Bid < ima_96 && Bid < ima_104) {
         text_240 = "é";
         color_204 = Lime;
         Li_316 = 0;
      }
      if (istochastic_120 < istochastic_112 && Ld_424 < Gd_88 || Ld_432 < Gd_88 && Bid <= ima_96 && Bid <= ima_104) {
         text_240 = "è";
         color_204 = LimeGreen;
         Li_316 = 0;
      }
      if (istochastic_120 < istochastic_112 && Bid >= ima_96 + Ld_296 && Bid < ima_104 && Ld_432 >= Gd_88) {
         text_240 = "é";
         color_204 = Lime;
         Li_316 = 0;
      }
      if (istochastic_120 < istochastic_112 && Bid < ima_96 + Ld_296 && Bid > ima_96 && Bid < ima_104 && Ld_432 >= Gd_88) {
         text_240 = "ì";
         color_204 = Lime;
         Li_316 = 0;
      }
      if (istochastic_120 < istochastic_112 && Bid < ima_96 + Ld_296 && Bid > ima_96 && Bid < ima_104 && Ld_432 < Gd_88) {
         text_240 = "è";
         color_204 = LimeGreen;
         Li_316 = 0;
      }
      if (istochastic_120 < istochastic_112 && Bid >= ima_96 + Ld_296 && Bid < ima_104 && Ld_432 < Gd_88) {
         text_240 = "è";
         color_204 = LimeGreen;
         Li_316 = 0;
      }
      if (istochastic_120 < istochastic_112 && Bid >= ima_104 + Ld_296 && Bid < ima_96 && Ld_424 >= Gd_88) {
         text_240 = "é";
         color_204 = Lime;
         Li_316 = 0;
      }
      if (istochastic_120 < istochastic_112 && Bid < ima_104 + Ld_296 && Bid > ima_104 && Bid < ima_96 && Ld_424 >= Gd_88) {
         text_240 = "ì";
         color_204 = Lime;
         Li_316 = 0;
      }
      if (istochastic_120 < istochastic_112 && Bid < ima_104 + Ld_296 && Bid > ima_104 && Bid < ima_96 && Ld_424 < Gd_88) {
         text_240 = "è";
         color_204 = LimeGreen;
         Li_316 = 0;
      }
      if (istochastic_120 < istochastic_112 && Bid >= ima_104 + Ld_296 && Bid < ima_96 && Ld_424 < Gd_88) {
         text_240 = "è";
         color_204 = LimeGreen;
         Li_316 = 0;
      }
      if (istochastic_120 < istochastic_112 && Bid >= ima_96 + Ld_296 && Bid >= ima_104 + Ld_296) {
         text_240 = "é";
         color_204 = Lime;
         Li_316 = 6;
      }
      if (istochastic_120 < istochastic_112 && Bid > ima_96 && Bid < ima_96 + Ld_296 && Bid > ima_104 && Bid < ima_104 + Ld_296) {
         text_240 = "ì";
         color_204 = Lime;
         Li_316 = 0;
      }
      if (istochastic_120 < istochastic_112 && Bid >= ima_96 + Ld_296 && Bid >= ima_104 && Bid < ima_104 + Ld_296) {
         text_240 = "ì";
         color_204 = Lime;
         Li_316 = 0;
      }
      if (istochastic_120 < istochastic_112 && Bid >= ima_104 + Ld_296 && Bid >= ima_96 && Bid < ima_96 + Ld_296) {
         text_240 = "ì";
         color_204 = Lime;
         Li_316 = 0;
      }
      if (istochastic_120 > istochastic_112 && Ld_440 >= Gd_88 && Ld_448 >= Gd_88 && Bid > ima_96 && Bid > ima_104) {
         text_240 = "ê";
         color_204 = Red;
         Li_316 = 0;
      }
      if (istochastic_120 > istochastic_112 && Ld_440 < Gd_88 || Ld_448 < Gd_88 && Bid >= ima_96 && Bid >= ima_104) {
         text_240 = "è";
         color_204 = OrangeRed;
         Li_316 = 0;
      }
      if (istochastic_120 > istochastic_112 && Bid <= ima_96 - Ld_296 && Bid > ima_104 && Ld_448 >= Gd_88) {
         text_240 = "ê";
         color_204 = Red;
         Li_316 = 0;
      }
      if (istochastic_120 > istochastic_112 && Bid > ima_96 - Ld_296 && Bid < ima_96 && Bid > ima_104 && Ld_448 >= Gd_88) {
         text_240 = "î";
         color_204 = Red;
         Li_316 = 0;
      }
      if (istochastic_120 > istochastic_112 && Bid > ima_96 - Ld_296 && Bid < ima_96 && Bid > ima_104 && Ld_448 < Gd_88) {
         text_240 = "è";
         color_204 = OrangeRed;
         Li_316 = 0;
      }
      if (istochastic_120 > istochastic_112 && Bid <= ima_96 - Ld_296 && Bid > ima_104 && Ld_448 < Gd_88) {
         text_240 = "è";
         color_204 = OrangeRed;
         Li_316 = 0;
      }
      if (istochastic_120 > istochastic_112 && Bid <= ima_104 - Ld_296 && Bid > ima_96 && Ld_440 >= Gd_88) {
         text_240 = "ê";
         color_204 = Red;
         Li_316 = 0;
      }
      if (istochastic_120 > istochastic_112 && Bid > ima_104 - Ld_296 && Bid < ima_104 && Bid > ima_96 && Ld_440 >= Gd_88) {
         text_240 = "î";
         color_204 = Red;
         Li_316 = 0;
      }
      if (istochastic_120 > istochastic_112 && Bid > ima_104 - Ld_296 && Bid < ima_104 && Bid > ima_96 && Ld_440 < Gd_88) {
         text_240 = "è";
         color_204 = OrangeRed;
         Li_316 = 0;
      }
      if (istochastic_120 > istochastic_112 && Bid <= ima_104 - Ld_296 && Bid > ima_96 && Ld_440 < Gd_88) {
         text_240 = "è";
         color_204 = OrangeRed;
         Li_316 = 0;
      }
      if (istochastic_120 > istochastic_112 && Bid <= ima_96 - Ld_296 && Bid <= ima_104 - Ld_296) {
         text_240 = "ê";
         color_204 = Red;
         Li_316 = -6;
      }
      if (istochastic_120 > istochastic_112 && Bid < ima_96 && Bid > ima_96 - Ld_296 && Bid < ima_104 && Bid > ima_104 - Ld_296) {
         text_240 = "î";
         color_204 = Red;
         Li_316 = 0;
      }
      if (istochastic_120 > istochastic_112 && Bid <= ima_96 - Ld_296 && Bid <= ima_104 && Bid > ima_104 - Ld_296) {
         text_240 = "î";
         color_204 = Red;
         Li_316 = 0;
      }
      if (istochastic_120 > istochastic_112 && Bid <= ima_104 - Ld_296 && Bid <= ima_96 && Bid > ima_96 - Ld_296) {
         text_240 = "î";
         color_204 = Red;
         Li_316 = 0;
      }
      RefreshRates();
      Ld_456 = (ima_128 - Bid - Ld_272) / point_280;
      Ld_464 = (ima_136 - Bid - Ld_272) / point_280;
      Ld_472 = (Ask - ima_128 - Ld_272) / point_280;
      Ld_480 = (Ask - ima_136 - Ld_272) / point_280;
      if (istochastic_152 < istochastic_144 && Ld_456 >= Gd_88 && Ld_464 >= Gd_88 && Bid < ima_128 && Bid < ima_136) {
         text_248 = "é";
         color_208 = Lime;
         Li_320 = 0;
      }
      if (istochastic_152 < istochastic_144 && Ld_456 < Gd_88 || Ld_464 < Gd_88 && Bid <= ima_128 && Bid <= ima_136) {
         text_248 = "è";
         color_208 = LimeGreen;
         Li_320 = 0;
      }
      if (istochastic_152 < istochastic_144 && Bid >= ima_128 + Ld_296 && Bid < ima_136 && Ld_464 >= Gd_88) {
         text_248 = "é";
         color_208 = Lime;
         Li_320 = 0;
      }
      if (istochastic_152 < istochastic_144 && Bid < ima_128 + Ld_296 && Bid > ima_128 && Bid < ima_136 && Ld_464 >= Gd_88) {
         text_248 = "ì";
         color_208 = Lime;
         Li_320 = 0;
      }
      if (istochastic_152 < istochastic_144 && Bid < ima_128 + Ld_296 && Bid > ima_128 && Bid < ima_136 && Ld_464 < Gd_88) {
         text_248 = "è";
         color_208 = LimeGreen;
         Li_320 = 0;
      }
      if (istochastic_152 < istochastic_144 && Bid >= ima_128 + Ld_296 && Bid < ima_136 && Ld_464 < Gd_88) {
         text_248 = "è";
         color_208 = LimeGreen;
         Li_320 = 0;
      }
      if (istochastic_152 < istochastic_144 && Bid >= ima_136 + Ld_296 && Bid < ima_128 && Ld_456 >= Gd_88) {
         text_248 = "é";
         color_208 = Lime;
         Li_320 = 0;
      }
      if (istochastic_152 < istochastic_144 && Bid < ima_136 + Ld_296 && Bid > ima_136 && Bid < ima_128 && Ld_456 >= Gd_88) {
         text_248 = "ì";
         color_208 = Lime;
         Li_320 = 0;
      }
      if (istochastic_152 < istochastic_144 && Bid < ima_136 + Ld_296 && Bid > ima_136 && Bid < ima_128 && Ld_456 < Gd_88) {
         text_248 = "è";
         color_208 = LimeGreen;
         Li_320 = 0;
      }
      if (istochastic_152 < istochastic_144 && Bid >= ima_136 + Ld_296 && Bid < ima_128 && Ld_456 < Gd_88) {
         text_248 = "è";
         color_208 = LimeGreen;
         Li_320 = 0;
      }
      if (istochastic_152 < istochastic_144 && Bid >= ima_128 + Ld_296 && Bid >= ima_136 + Ld_296) {
         text_248 = "é";
         color_208 = Lime;
         Li_320 = 6;
      }
      if (istochastic_152 < istochastic_144 && Bid > ima_128 && Bid < ima_128 + Ld_296 && Bid > ima_136 && Bid < ima_136 + Ld_296) {
         text_248 = "ì";
         color_208 = Lime;
         Li_320 = 0;
      }
      if (istochastic_152 < istochastic_144 && Bid >= ima_128 + Ld_296 && Bid >= ima_136 && Bid < ima_136 + Ld_296) {
         text_248 = "ì";
         color_208 = Lime;
         Li_320 = 0;
      }
      if (istochastic_152 < istochastic_144 && Bid >= ima_136 + Ld_296 && Bid >= ima_128 && Bid < ima_128 + Ld_296) {
         text_248 = "ì";
         color_208 = Lime;
         Li_320 = 0;
      }
      if (istochastic_152 > istochastic_144 && Ld_472 >= Gd_88 && Ld_480 >= Gd_88 && Bid > ima_128 && Bid > ima_136) {
         text_248 = "ê";
         color_208 = Red;
         Li_320 = 0;
      }
      if (istochastic_152 > istochastic_144 && Ld_472 < Gd_88 || Ld_480 < Gd_88 && Bid >= ima_128 && Bid >= ima_136) {
         text_248 = "è";
         color_208 = OrangeRed;
         Li_320 = 0;
      }
      if (istochastic_152 > istochastic_144 && Bid <= ima_128 - Ld_296 && Bid > ima_136 && Ld_480 >= Gd_88) {
         text_248 = "ê";
         color_208 = Red;
         Li_320 = 0;
      }
      if (istochastic_152 > istochastic_144 && Bid > ima_128 - Ld_296 && Bid < ima_128 && Bid > ima_136 && Ld_480 >= Gd_88) {
         text_248 = "î";
         color_208 = Red;
         Li_320 = 0;
      }
      if (istochastic_152 > istochastic_144 && Bid > ima_128 - Ld_296 && Bid < ima_128 && Bid > ima_136 && Ld_480 < Gd_88) {
         text_248 = "è";
         color_208 = OrangeRed;
         Li_320 = 0;
      }
      if (istochastic_152 > istochastic_144 && Bid <= ima_128 - Ld_296 && Bid > ima_136 && Ld_480 < Gd_88) {
         text_248 = "è";
         color_208 = OrangeRed;
         Li_320 = 0;
      }
      if (istochastic_152 > istochastic_144 && Bid <= ima_136 - Ld_296 && Bid > ima_128 && Ld_472 >= Gd_88) {
         text_248 = "ê";
         color_208 = Red;
         Li_320 = 0;
      }
      if (istochastic_152 > istochastic_144 && Bid > ima_136 - Ld_296 && Bid < ima_136 && Bid > ima_128 && Ld_472 >= Gd_88) {
         text_248 = "î";
         color_208 = Red;
         Li_320 = 0;
      }
      if (istochastic_152 > istochastic_144 && Bid > ima_136 - Ld_296 && Bid < ima_136 && Bid > ima_128 && Ld_472 < Gd_88) {
         text_248 = "è";
         color_208 = OrangeRed;
         Li_320 = 0;
      }
      if (istochastic_152 > istochastic_144 && Bid <= ima_136 - Ld_296 && Bid > ima_128 && Ld_472 < Gd_88) {
         text_248 = "è";
         color_208 = OrangeRed;
         Li_320 = 0;
      }
      if (istochastic_152 > istochastic_144 && Bid <= ima_128 - Ld_296 && Bid <= ima_136 - Ld_296) {
         text_248 = "ê";
         color_208 = Red;
         Li_320 = -6;
      }
      if (istochastic_152 > istochastic_144 && Bid < ima_128 && Bid > ima_128 - Ld_296 && Bid < ima_136 && Bid > ima_136 - Ld_296) {
         text_248 = "î";
         color_208 = Red;
         Li_320 = 0;
      }
      if (istochastic_152 > istochastic_144 && Bid <= ima_128 - Ld_296 && Bid <= ima_136 && Bid > ima_136 - Ld_296) {
         text_248 = "î";
         color_208 = Red;
         Li_320 = 0;
      }
      if (istochastic_152 > istochastic_144 && Bid <= ima_136 - Ld_296 && Bid <= ima_128 && Bid > ima_128 - Ld_296) {
         text_248 = "î";
         color_208 = Red;
         Li_320 = 0;
      }
      RefreshRates();
      Ld_488 = (ima_160 - Bid - Ld_272) / point_280;
      Ld_496 = (ima_168 - Bid - Ld_272) / point_280;
      Ld_504 = (Ask - ima_160 - Ld_272) / point_280;
      Ld_512 = (Ask - ima_168 - Ld_272) / point_280;
      Ls_520 = "new_value_m240_V11" + Symbol();
      if (istochastic_184 < istochastic_176 && Ld_488 >= Gd_88 && Ld_496 >= Gd_88 && Bid < ima_160 && Bid < ima_168) {
         text_256 = "é";
         color_212 = Lime;
         Li_324 = 0;
      }
      if (istochastic_184 < istochastic_176 && Ld_488 < Gd_88 || Ld_496 < Gd_88 && Bid <= ima_160 && Bid <= ima_168) {
         text_256 = "è";
         color_212 = LimeGreen;
         Li_324 = 0;
      }
      if (istochastic_184 < istochastic_176 && Bid >= ima_160 + Ld_296 && Bid < ima_168 && Ld_496 >= Gd_88) {
         text_256 = "é";
         color_212 = Lime;
         Li_324 = 0;
      }
      if (istochastic_184 < istochastic_176 && Bid < ima_160 + Ld_296 && Bid > ima_160 && Bid < ima_168 && Ld_496 >= Gd_88) {
         text_256 = "ì";
         color_212 = Lime;
         Li_324 = 0;
      }
      if (istochastic_184 < istochastic_176 && Bid < ima_160 + Ld_296 && Bid > ima_160 && Bid < ima_168 && Ld_496 < Gd_88) {
         text_256 = "è";
         color_212 = LimeGreen;
         Li_324 = 0;
      }
      if (istochastic_184 < istochastic_176 && Bid >= ima_160 + Ld_296 && Bid < ima_168 && Ld_496 < Gd_88) {
         text_256 = "è";
         color_212 = LimeGreen;
         Li_324 = 0;
      }
      if (istochastic_184 < istochastic_176 && Bid >= ima_168 + Ld_296 && Bid < ima_160 && Ld_488 >= Gd_88) {
         text_256 = "é";
         color_212 = Lime;
         Li_324 = 0;
      }
      if (istochastic_184 < istochastic_176 && Bid < ima_168 + Ld_296 && Bid > ima_168 && Bid < ima_160 && Ld_488 >= Gd_88) {
         text_256 = "ì";
         color_212 = Lime;
         Li_324 = 0;
      }
      if (istochastic_184 < istochastic_176 && Bid < ima_168 + Ld_296 && Bid > ima_168 && Bid < ima_160 && Ld_488 < Gd_88) {
         text_256 = "è";
         color_212 = LimeGreen;
         Li_324 = 0;
      }
      if (istochastic_184 < istochastic_176 && Bid >= ima_168 + Ld_296 && Bid < ima_160 && Ld_488 < Gd_88) {
         text_256 = "è";
         color_212 = LimeGreen;
         Li_324 = 0;
      }
      if (istochastic_184 < istochastic_176 && Bid >= ima_160 + Ld_296 && Bid >= ima_168 + Ld_296) {
         text_256 = "é";
         color_212 = Lime;
         Li_324 = 6;
      }
      if (istochastic_184 < istochastic_176 && Bid > ima_160 && Bid < ima_160 + Ld_296 && Bid > ima_168 && Bid < ima_168 + Ld_296) {
         text_256 = "ì";
         color_212 = Lime;
         Li_324 = 0;
      }
      if (istochastic_184 < istochastic_176 && Bid >= ima_160 + Ld_296 && Bid >= ima_168 && Bid < ima_168 + Ld_296) {
         text_256 = "ì";
         color_212 = Lime;
         Li_324 = 0;
      }
      if (istochastic_184 < istochastic_176 && Bid >= ima_168 + Ld_296 && Bid >= ima_160 && Bid < ima_160 + Ld_296) {
         text_256 = "ì";
         color_212 = Lime;
         Li_324 = 0;
      }
      if (istochastic_184 > istochastic_176 && Ld_504 >= Gd_88 && Ld_512 >= Gd_88 && Bid > ima_160 && Bid > ima_168) {
         text_256 = "ê";
         color_212 = Red;
         Li_324 = 0;
      }
      if (istochastic_184 > istochastic_176 && Ld_504 < Gd_88 || Ld_512 < Gd_88 && Bid >= ima_160 && Bid >= ima_168) {
         text_256 = "è";
         color_212 = OrangeRed;
         Li_324 = 0;
      }
      if (istochastic_184 > istochastic_176 && Bid <= ima_160 - Ld_296 && Bid > ima_168 && Ld_512 >= Gd_88) {
         text_256 = "ê";
         color_212 = Red;
         Li_324 = 0;
      }
      if (istochastic_184 > istochastic_176 && Bid > ima_160 - Ld_296 && Bid < ima_160 && Bid > ima_168 && Ld_512 >= Gd_88) {
         text_256 = "î";
         color_212 = Red;
         Li_324 = 0;
      }
      if (istochastic_184 > istochastic_176 && Bid > ima_160 - Ld_296 && Bid < ima_160 && Bid > ima_168 && Ld_512 < Gd_88) {
         text_256 = "è";
         color_212 = OrangeRed;
         Li_324 = 0;
      }
      if (istochastic_184 > istochastic_176 && Bid <= ima_160 - Ld_296 && Bid > ima_168 && Ld_512 < Gd_88) {
         text_256 = "è";
         color_212 = OrangeRed;
         Li_324 = 0;
      }
      if (istochastic_184 > istochastic_176 && Bid <= ima_168 - Ld_296 && Bid > ima_160 && Ld_504 >= Gd_88) {
         text_256 = "ê";
         color_212 = Red;
         Li_324 = 0;
      }
      if (istochastic_184 > istochastic_176 && Bid > ima_168 - Ld_296 && Bid < ima_168 && Bid > ima_160 && Ld_504 >= Gd_88) {
         text_256 = "î";
         color_212 = Red;
         Li_324 = 0;
      }
      if (istochastic_184 > istochastic_176 && Bid > ima_168 - Ld_296 && Bid < ima_168 && Bid > ima_160 && Ld_504 < Gd_88) {
         text_256 = "è";
         color_212 = OrangeRed;
         Li_324 = 0;
      }
      if (istochastic_184 > istochastic_176 && Bid <= ima_168 - Ld_296 && Bid > ima_160 && Ld_504 < Gd_88) {
         text_256 = "è";
         color_212 = OrangeRed;
         Li_324 = 0;
      }
      if (istochastic_184 > istochastic_176 && Bid <= ima_160 - Ld_296 && Bid <= ima_168 - Ld_296) {
         text_256 = "ê";
         color_212 = Red;
         Li_324 = -6;
      }
      if (istochastic_184 > istochastic_176 && Bid < ima_160 && Bid > ima_160 - Ld_296 && Bid < ima_168 && Bid > ima_168 - Ld_296) {
         text_256 = "î";
         color_212 = Red;
         Li_324 = 0;
      }
      if (istochastic_184 > istochastic_176 && Bid <= ima_160 - Ld_296 && Bid <= ima_168 && Bid > ima_168 - Ld_296) {
         text_256 = "î";
         color_212 = Red;
         Li_324 = 0;
      }
      if (istochastic_184 > istochastic_176 && Bid <= ima_168 - Ld_296 && Bid <= ima_160 && Bid > ima_160 - Ld_296) {
         text_256 = "î";
         color_212 = Red;
         Li_324 = 0;
      }
      ObjectCreate("Vectorial_Bias", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Vectorial_Bias", "VECTORIAL BIAS", 8, "Arial Black", Gold);
      ObjectSet("Vectorial_Bias", OBJPROP_CORNER, 0);
      ObjectSet("Vectorial_Bias", OBJPROP_XDISTANCE, 44);
      ObjectSet("Vectorial_Bias", OBJPROP_YDISTANCE, 55);
      ObjectCreate("Sup_Res_1", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Sup_Res_1", "S / R LEVEL 1", 8, "Arial Black", Gold);
      ObjectSet("Sup_Res_1", OBJPROP_CORNER, 0);
      ObjectSet("Sup_Res_1", OBJPROP_XDISTANCE, 53);
      ObjectSet("Sup_Res_1", OBJPROP_YDISTANCE, 86);
      ObjectCreate("Sup_Res_2", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Sup_Res_2", "S / R LEVEL 2", 8, "Arial Black", Gold);
      ObjectSet("Sup_Res_2", OBJPROP_CORNER, 0);
      ObjectSet("Sup_Res_2", OBJPROP_XDISTANCE, 53);
      ObjectSet("Sup_Res_2", OBJPROP_YDISTANCE, 104);
      ObjectCreate("Positional_Bias", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Positional_Bias", "POSITIONAL BIAS", 8, "Arial Black", Gold);
      ObjectSet("Positional_Bias", OBJPROP_CORNER, 0);
      ObjectSet("Positional_Bias", OBJPROP_XDISTANCE, 42);
      ObjectSet("Positional_Bias", OBJPROP_YDISTANCE, 139);
      ObjectCreate("Venom_1_Text", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_1_Text", "VENOM 1", 11, "Arial Black", color_192);
      ObjectSet("Venom_1_Text", OBJPROP_CORNER, 0);
      ObjectSet("Venom_1_Text", OBJPROP_XDISTANCE, 160);
      ObjectSet("Venom_1_Text", OBJPROP_YDISTANCE, 23);
      ObjectCreate("Venom_1_Sig", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_1_Sig", text_216, 20, "Wingdings", color_192);
      ObjectSet("Venom_1_Sig", OBJPROP_CORNER, 0);
      ObjectSet("Venom_1_Sig", OBJPROP_XDISTANCE, 185);
      ObjectSet("Venom_1_Sig", OBJPROP_YDISTANCE, 50);
      ObjectCreate("Venom_2_Text", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_2_Text", "VENOM 2", 11, "Arial Black", color_196);
      ObjectSet("Venom_2_Text", OBJPROP_CORNER, 0);
      ObjectSet("Venom_2_Text", OBJPROP_XDISTANCE, 260);
      ObjectSet("Venom_2_Text", OBJPROP_YDISTANCE, 23);
      ObjectCreate("Venom_2_Sig", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_2_Sig", text_224, 20, "Wingdings", color_196);
      ObjectSet("Venom_2_Sig", OBJPROP_CORNER, 0);
      ObjectSet("Venom_2_Sig", OBJPROP_XDISTANCE, 285);
      ObjectSet("Venom_2_Sig", OBJPROP_YDISTANCE, 50);
      ObjectCreate("Venom_3_Text", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_3_Text", "VENOM 3", 11, "Arial Black", color_200);
      ObjectSet("Venom_3_Text", OBJPROP_CORNER, 0);
      ObjectSet("Venom_3_Text", OBJPROP_XDISTANCE, 360);
      ObjectSet("Venom_3_Text", OBJPROP_YDISTANCE, 23);
      ObjectCreate("Venom_3_Sig", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_3_Sig", text_232, 20, "Wingdings", color_200);
      ObjectSet("Venom_3_Sig", OBJPROP_CORNER, 0);
      ObjectSet("Venom_3_Sig", OBJPROP_XDISTANCE, 385);
      ObjectSet("Venom_3_Sig", OBJPROP_YDISTANCE, 50);
      ObjectCreate("Venom_4_Text", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_4_Text", "VENOM 4", 11, "Arial Black", color_204);
      ObjectSet("Venom_4_Text", OBJPROP_CORNER, 0);
      ObjectSet("Venom_4_Text", OBJPROP_XDISTANCE, 460);
      ObjectSet("Venom_4_Text", OBJPROP_YDISTANCE, 23);
      ObjectCreate("Venom_4_Sig", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_4_Sig", text_240, 20, "Wingdings", color_204);
      ObjectSet("Venom_4_Sig", OBJPROP_CORNER, 0);
      ObjectSet("Venom_4_Sig", OBJPROP_XDISTANCE, 485);
      ObjectSet("Venom_4_Sig", OBJPROP_YDISTANCE, 50);
      ObjectCreate("Venom_5_Text", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_5_Text", "VENOM 5", 11, "Arial Black", color_208);
      ObjectSet("Venom_5_Text", OBJPROP_CORNER, 0);
      ObjectSet("Venom_5_Text", OBJPROP_XDISTANCE, 560);
      ObjectSet("Venom_5_Text", OBJPROP_YDISTANCE, 23);
      ObjectCreate("Venom_5_Sig", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_5_Sig", text_248, 20, "Wingdings", color_208);
      ObjectSet("Venom_5_Sig", OBJPROP_CORNER, 0);
      ObjectSet("Venom_5_Sig", OBJPROP_XDISTANCE, 585);
      ObjectSet("Venom_5_Sig", OBJPROP_YDISTANCE, 50);
      ObjectCreate("Venom_6_Text", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_6_Text", "VENOM 6", 11, "Arial Black", color_212);
      ObjectSet("Venom_6_Text", OBJPROP_CORNER, 0);
      ObjectSet("Venom_6_Text", OBJPROP_XDISTANCE, 660);
      ObjectSet("Venom_6_Text", OBJPROP_YDISTANCE, 23);
      ObjectCreate("Venom_6_Sig", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_6_Sig", text_256, 20, "Wingdings", color_212);
      ObjectSet("Venom_6_Sig", OBJPROP_CORNER, 0);
      ObjectSet("Venom_6_Sig", OBJPROP_XDISTANCE, 685);
      ObjectSet("Venom_6_Sig", OBJPROP_YDISTANCE, 50);
      if (Bid > ima_0 && Bid > ima_8 && ima_0 > ima_8) {
         Ld_532 = (Bid - ima_0) / point_280;
         dbl2str_540 = DoubleToStr(Ld_532, 0);
         y_528 = 85;
         Li_564 = TRUE;
      }
      if (Bid > ima_0 && Bid > ima_8 && ima_8 > ima_0) {
         Ld_532 = (Bid - ima_8) / point_280;
         dbl2str_540 = DoubleToStr(Ld_532, 0);
         y_528 = 85;
         Li_564 = TRUE;
      }
      if (Bid > ima_0 && Bid > ima_8 && ima_8 == ima_0) {
         Ld_532 = (Bid - ima_8) / point_280;
         dbl2str_540 = DoubleToStr(Ld_532, 0);
         y_528 = 85;
         Li_564 = TRUE;
      }
      if (Bid < ima_0 && Bid < ima_8 && ima_0 < ima_8) {
         Ld_532 = (ima_0 - Bid) / point_280;
         dbl2str_540 = DoubleToStr(Ld_532, 0);
         y_528 = 102;
         Li_564 = TRUE;
      }
      if (Bid < ima_0 && Bid < ima_8 && ima_8 < ima_0) {
         Ld_532 = (ima_8 - Bid) / point_280;
         dbl2str_540 = DoubleToStr(Ld_532, 0);
         y_528 = 102;
         Li_564 = TRUE;
      }
      if (Bid < ima_0 && Bid < ima_8 && ima_8 == ima_0) {
         Ld_532 = (ima_8 - Bid) / point_280;
         dbl2str_540 = DoubleToStr(Ld_532, 0);
         y_528 = 102;
         Li_564 = TRUE;
      }
      if (ima_0 > ima_8 && Bid < ima_0 && Bid > ima_8) {
         dbl2str_548 = DoubleToStr((ima_0 - Bid) / point_280, 0);
         dbl2str_556 = DoubleToStr((Bid - ima_8) / point_280, 0);
         Li_564 = FALSE;
      }
      if (ima_0 < ima_8 && Bid > ima_0 && Bid < ima_8) {
         dbl2str_548 = DoubleToStr((ima_8 - Bid) / point_280, 0);
         dbl2str_556 = DoubleToStr((Bid - ima_0) / point_280, 0);
         Li_564 = FALSE;
      }
      if (Li_564 == FALSE) {
         ObjectCreate("Venom_1_Up_Range", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
         ObjectSetText("Venom_1_Up_Range", "( " + dbl2str_548 + " )", 12, "Arial Narrow", Gray);
         ObjectSet("Venom_1_Up_Range", OBJPROP_CORNER, 0);
         ObjectSet("Venom_1_Up_Range", OBJPROP_XDISTANCE, 187);
         ObjectSet("Venom_1_Up_Range", OBJPROP_YDISTANCE, 85);
         ObjectCreate("Venom_1_Down_Range", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
         ObjectSetText("Venom_1_Down_Range", "( " + dbl2str_556 + " )", 12, "Arial Narrow", Gray);
         ObjectSet("Venom_1_Down_Range", OBJPROP_CORNER, 0);
         ObjectSet("Venom_1_Down_Range", OBJPROP_XDISTANCE, 187);
         ObjectSet("Venom_1_Down_Range", OBJPROP_YDISTANCE, 102);
      } else {
         ObjectDelete("Venom_1_Up_Range");
         ObjectDelete("Venom_1_Down_Range");
      }
      if (Li_564 == TRUE && Ld_532 >= 0.5) {
         ObjectCreate("Venom_1_Eyesig", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
         ObjectSetText("Venom_1_Eyesig", "¥", 15, "Wingdings", color_192);
         ObjectSet("Venom_1_Eyesig", OBJPROP_CORNER, 0);
         ObjectSet("Venom_1_Eyesig", OBJPROP_XDISTANCE, 165);
         ObjectSet("Venom_1_Eyesig", OBJPROP_YDISTANCE, y_528);
         ObjectCreate("Venom_1_Eyeprice", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
         ObjectSetText("Venom_1_Eyeprice", dbl2str_540, 12, "Arial Narrow", Gold);
         ObjectSet("Venom_1_Eyeprice", OBJPROP_CORNER, 0);
         ObjectSet("Venom_1_Eyeprice", OBJPROP_XDISTANCE, 187);
         ObjectSet("Venom_1_Eyeprice", OBJPROP_YDISTANCE, y_528);
      } else {
         ObjectDelete("Venom_1_Eyesig");
         ObjectDelete("Venom_1_Eyeprice");
      }
      ObjectCreate("Venom_1_Eyehi", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_1_Eyehi", "¥", 15, "Wingdings", DarkSlateGray);
      ObjectSet("Venom_1_Eyehi", OBJPROP_CORNER, 0);
      ObjectSet("Venom_1_Eyehi", OBJPROP_XDISTANCE, 165);
      ObjectSet("Venom_1_Eyehi", OBJPROP_YDISTANCE, 85);
      ObjectCreate("Venom_1_Eyelo", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_1_Eyelo", "¥", 15, "Wingdings", DarkSlateGray);
      ObjectSet("Venom_1_Eyelo", OBJPROP_CORNER, 0);
      ObjectSet("Venom_1_Eyelo", OBJPROP_XDISTANCE, 165);
      ObjectSet("Venom_1_Eyelo", OBJPROP_YDISTANCE, 102);
      if (Bid > ima_32 && Bid > ima_40 && ima_32 > ima_40) {
         Ld_572 = (Bid - ima_32) / point_280;
         dbl2str_580 = DoubleToStr(Ld_572, 0);
         y_568 = 85;
         Li_604 = TRUE;
      }
      if (Bid > ima_32 && Bid > ima_40 && ima_40 > ima_32) {
         Ld_572 = (Bid - ima_40) / point_280;
         dbl2str_580 = DoubleToStr(Ld_572, 0);
         y_568 = 85;
         Li_604 = TRUE;
      }
      if (Bid > ima_32 && Bid > ima_40 && ima_40 == ima_32) {
         Ld_572 = (Bid - ima_40) / point_280;
         dbl2str_580 = DoubleToStr(Ld_572, 0);
         y_568 = 85;
         Li_604 = TRUE;
      }
      if (Bid < ima_32 && Bid < ima_40 && ima_32 < ima_40) {
         Ld_572 = (ima_32 - Bid) / point_280;
         dbl2str_580 = DoubleToStr(Ld_572, 0);
         y_568 = 102;
         Li_604 = TRUE;
      }
      if (Bid < ima_32 && Bid < ima_40 && ima_40 < ima_32) {
         Ld_572 = (ima_40 - Bid) / point_280;
         dbl2str_580 = DoubleToStr(Ld_572, 0);
         y_568 = 102;
         Li_604 = TRUE;
      }
      if (Bid < ima_32 && Bid < ima_40 && ima_40 == ima_32) {
         Ld_572 = (ima_40 - Bid) / point_280;
         dbl2str_580 = DoubleToStr(Ld_572, 0);
         y_568 = 102;
         Li_604 = TRUE;
      }
      if (ima_32 > ima_40 && Bid < ima_32 && Bid > ima_40) {
         dbl2str_588 = DoubleToStr((ima_32 - Bid) / point_280, 0);
         dbl2str_596 = DoubleToStr((Bid - ima_40) / point_280, 0);
         Li_604 = FALSE;
      }
      if (ima_32 < ima_40 && Bid > ima_32 && Bid < ima_40) {
         dbl2str_588 = DoubleToStr((ima_40 - Bid) / point_280, 0);
         dbl2str_596 = DoubleToStr((Bid - ima_32) / point_280, 0);
         Li_604 = FALSE;
      }
      if (Li_604 == FALSE) {
         ObjectCreate("Venom_2_Up_Range", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
         ObjectSetText("Venom_2_Up_Range", "( " + dbl2str_588 + " )", 12, "Arial Narrow", Gray);
         ObjectSet("Venom_2_Up_Range", OBJPROP_CORNER, 0);
         ObjectSet("Venom_2_Up_Range", OBJPROP_XDISTANCE, 287);
         ObjectSet("Venom_2_Up_Range", OBJPROP_YDISTANCE, 85);
         ObjectCreate("Venom_2_Down_Range", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
         ObjectSetText("Venom_2_Down_Range", "( " + dbl2str_596 + " )", 12, "Arial Narrow", Gray);
         ObjectSet("Venom_2_Down_Range", OBJPROP_CORNER, 0);
         ObjectSet("Venom_2_Down_Range", OBJPROP_XDISTANCE, 287);
         ObjectSet("Venom_2_Down_Range", OBJPROP_YDISTANCE, 102);
      } else {
         ObjectDelete("Venom_2_Up_Range");
         ObjectDelete("Venom_2_Down_Range");
      }
      if (Li_604 == TRUE && Ld_572 >= 0.5) {
         ObjectCreate("Venom_2_Eyesig", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
         ObjectSetText("Venom_2_Eyesig", "¥", 15, "Wingdings", color_196);
         ObjectSet("Venom_2_Eyesig", OBJPROP_CORNER, 0);
         ObjectSet("Venom_2_Eyesig", OBJPROP_XDISTANCE, 265);
         ObjectSet("Venom_2_Eyesig", OBJPROP_YDISTANCE, y_568);
         ObjectCreate("Venom_2_Eyeprice", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
         ObjectSetText("Venom_2_Eyeprice", dbl2str_580, 12, "Arial Narrow", Gold);
         ObjectSet("Venom_2_Eyeprice", OBJPROP_CORNER, 0);
         ObjectSet("Venom_2_Eyeprice", OBJPROP_XDISTANCE, 287);
         ObjectSet("Venom_2_Eyeprice", OBJPROP_YDISTANCE, y_568);
      } else {
         ObjectDelete("Venom_2_Eyesig");
         ObjectDelete("Venom_2_Eyeprice");
      }
      ObjectCreate("Venom_2_Eyehi", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_2_Eyehi", "¥", 15, "Wingdings", DarkSlateGray);
      ObjectSet("Venom_2_Eyehi", OBJPROP_CORNER, 0);
      ObjectSet("Venom_2_Eyehi", OBJPROP_XDISTANCE, 265);
      ObjectSet("Venom_2_Eyehi", OBJPROP_YDISTANCE, 85);
      ObjectCreate("Venom_2_Eyelo", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_2_Eyelo", "¥", 15, "Wingdings", DarkSlateGray);
      ObjectSet("Venom_2_Eyelo", OBJPROP_CORNER, 0);
      ObjectSet("Venom_2_Eyelo", OBJPROP_XDISTANCE, 265);
      ObjectSet("Venom_2_Eyelo", OBJPROP_YDISTANCE, 102);
      if (Bid > ima_64 && Bid > ima_72 && ima_64 > ima_72) {
         Ld_612 = (Bid - ima_64) / point_280;
         dbl2str_620 = DoubleToStr(Ld_612, 0);
         y_608 = 85;
         Li_644 = TRUE;
      }
      if (Bid > ima_64 && Bid > ima_72 && ima_72 > ima_64) {
         Ld_612 = (Bid - ima_72) / point_280;
         dbl2str_620 = DoubleToStr(Ld_612, 0);
         y_608 = 85;
         Li_644 = TRUE;
      }
      if (Bid > ima_64 && Bid > ima_72 && ima_72 == ima_64) {
         Ld_612 = (Bid - ima_72) / point_280;
         dbl2str_620 = DoubleToStr(Ld_612, 0);
         y_608 = 85;
         Li_644 = TRUE;
      }
      if (Bid < ima_64 && Bid < ima_72 && ima_64 < ima_72) {
         Ld_612 = (ima_64 - Bid) / point_280;
         dbl2str_620 = DoubleToStr(Ld_612, 0);
         y_608 = 102;
         Li_644 = TRUE;
      }
      if (Bid < ima_64 && Bid < ima_72 && ima_72 < ima_64) {
         Ld_612 = (ima_72 - Bid) / point_280;
         dbl2str_620 = DoubleToStr(Ld_612, 0);
         y_608 = 102;
         Li_644 = TRUE;
      }
      if (Bid < ima_64 && Bid < ima_72 && ima_72 == ima_64) {
         Ld_612 = (ima_72 - Bid) / point_280;
         dbl2str_620 = DoubleToStr(Ld_612, 0);
         y_608 = 102;
         Li_644 = TRUE;
      }
      if (ima_64 > ima_72 && Bid < ima_64 && Bid > ima_72) {
         dbl2str_628 = DoubleToStr((ima_64 - Bid) / point_280, 0);
         dbl2str_636 = DoubleToStr((Bid - ima_72) / point_280, 0);
         Li_644 = FALSE;
      }
      if (ima_64 < ima_72 && Bid > ima_64 && Bid < ima_72) {
         dbl2str_628 = DoubleToStr((ima_72 - Bid) / point_280, 0);
         dbl2str_636 = DoubleToStr((Bid - ima_64) / point_280, 0);
         Li_644 = FALSE;
      }
      if (Li_644 == FALSE) {
         ObjectCreate("Venom_3_Up_Range", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
         ObjectSetText("Venom_3_Up_Range", "( " + dbl2str_628 + " )", 12, "Arial Narrow", Gray);
         ObjectSet("Venom_3_Up_Range", OBJPROP_CORNER, 0);
         ObjectSet("Venom_3_Up_Range", OBJPROP_XDISTANCE, 387);
         ObjectSet("Venom_3_Up_Range", OBJPROP_YDISTANCE, 85);
         ObjectCreate("Venom_3_Down_Range", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
         ObjectSetText("Venom_3_Down_Range", "( " + dbl2str_636 + " )", 12, "Arial Narrow", Gray);
         ObjectSet("Venom_3_Down_Range", OBJPROP_CORNER, 0);
         ObjectSet("Venom_3_Down_Range", OBJPROP_XDISTANCE, 387);
         ObjectSet("Venom_3_Down_Range", OBJPROP_YDISTANCE, 102);
      } else {
         ObjectDelete("Venom_3_Up_Range");
         ObjectDelete("Venom_3_Down_Range");
      }
      if (Li_644 == TRUE && Ld_612 >= 0.5) {
         ObjectCreate("Venom_3_Eyesig", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
         ObjectSetText("Venom_3_Eyesig", "¥", 15, "Wingdings", color_200);
         ObjectSet("Venom_3_Eyesig", OBJPROP_CORNER, 0);
         ObjectSet("Venom_3_Eyesig", OBJPROP_XDISTANCE, 365);
         ObjectSet("Venom_3_Eyesig", OBJPROP_YDISTANCE, y_608);
         ObjectCreate("Venom_3_Eyeprice", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
         ObjectSetText("Venom_3_Eyeprice", dbl2str_620, 12, "Arial Narrow", Gold);
         ObjectSet("Venom_3_Eyeprice", OBJPROP_CORNER, 0);
         ObjectSet("Venom_3_Eyeprice", OBJPROP_XDISTANCE, 387);
         ObjectSet("Venom_3_Eyeprice", OBJPROP_YDISTANCE, y_608);
      } else {
         ObjectDelete("Venom_3_Eyesig");
         ObjectDelete("Venom_3_Eyeprice");
      }
      ObjectCreate("Venom_3_Eyehi", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_3_Eyehi", "¥", 15, "Wingdings", DarkSlateGray);
      ObjectSet("Venom_3_Eyehi", OBJPROP_CORNER, 0);
      ObjectSet("Venom_3_Eyehi", OBJPROP_XDISTANCE, 365);
      ObjectSet("Venom_3_Eyehi", OBJPROP_YDISTANCE, 85);
      ObjectCreate("Venom_3_Eyelo", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_3_Eyelo", "¥", 15, "Wingdings", DarkSlateGray);
      ObjectSet("Venom_3_Eyelo", OBJPROP_CORNER, 0);
      ObjectSet("Venom_3_Eyelo", OBJPROP_XDISTANCE, 365);
      ObjectSet("Venom_3_Eyelo", OBJPROP_YDISTANCE, 102);
      if (Bid > ima_96 && Bid > ima_104 && ima_96 > ima_104) {
         Ld_652 = (Bid - ima_96) / point_280;
         dbl2str_660 = DoubleToStr(Ld_652, 0);
         y_648 = 85;
         Li_684 = TRUE;
      }
      if (Bid > ima_96 && Bid > ima_104 && ima_104 > ima_96) {
         Ld_652 = (Bid - ima_104) / point_280;
         dbl2str_660 = DoubleToStr(Ld_652, 0);
         y_648 = 85;
         Li_684 = TRUE;
      }
      if (Bid > ima_96 && Bid > ima_104 && ima_104 == ima_96) {
         Ld_652 = (Bid - ima_104) / point_280;
         dbl2str_660 = DoubleToStr(Ld_652, 0);
         y_648 = 85;
         Li_684 = TRUE;
      }
      if (Bid < ima_96 && Bid < ima_104 && ima_96 < ima_104) {
         Ld_652 = (ima_96 - Bid) / point_280;
         dbl2str_660 = DoubleToStr(Ld_652, 0);
         y_648 = 102;
         Li_684 = TRUE;
      }
      if (Bid < ima_96 && Bid < ima_104 && ima_104 < ima_96) {
         Ld_652 = (ima_104 - Bid) / point_280;
         dbl2str_660 = DoubleToStr(Ld_652, 0);
         y_648 = 102;
         Li_684 = TRUE;
      }
      if (Bid < ima_96 && Bid < ima_104 && ima_104 == ima_96) {
         Ld_652 = (ima_104 - Bid) / point_280;
         dbl2str_660 = DoubleToStr(Ld_652, 0);
         y_648 = 102;
         Li_684 = TRUE;
      }
      if (ima_96 > ima_104 && Bid < ima_96 && Bid > ima_104) {
         dbl2str_668 = DoubleToStr((ima_96 - Bid) / point_280, 0);
         dbl2str_676 = DoubleToStr((Bid - ima_104) / point_280, 0);
         Li_684 = FALSE;
      }
      if (ima_96 < ima_104 && Bid > ima_96 && Bid < ima_104) {
         dbl2str_668 = DoubleToStr((ima_104 - Bid) / point_280, 0);
         dbl2str_676 = DoubleToStr((Bid - ima_96) / point_280, 0);
         Li_684 = FALSE;
      }
      if (Li_684 == FALSE) {
         ObjectCreate("Venom_4_Up_Range", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
         ObjectSetText("Venom_4_Up_Range", "( " + dbl2str_668 + " )", 12, "Arial Narrow", Gray);
         ObjectSet("Venom_4_Up_Range", OBJPROP_CORNER, 0);
         ObjectSet("Venom_4_Up_Range", OBJPROP_XDISTANCE, 487);
         ObjectSet("Venom_4_Up_Range", OBJPROP_YDISTANCE, 85);
         ObjectCreate("Venom_4_Down_Range", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
         ObjectSetText("Venom_4_Down_Range", "( " + dbl2str_676 + " )", 12, "Arial Narrow", Gray);
         ObjectSet("Venom_4_Down_Range", OBJPROP_CORNER, 0);
         ObjectSet("Venom_4_Down_Range", OBJPROP_XDISTANCE, 487);
         ObjectSet("Venom_4_Down_Range", OBJPROP_YDISTANCE, 102);
      } else {
         ObjectDelete("Venom_4_Up_Range");
         ObjectDelete("Venom_4_Down_Range");
      }
      if (Li_684 == TRUE && Ld_652 >= 0.5) {
         ObjectCreate("Venom_4_Eyesig", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
         ObjectSetText("Venom_4_Eyesig", "¥", 15, "Wingdings", color_204);
         ObjectSet("Venom_4_Eyesig", OBJPROP_CORNER, 0);
         ObjectSet("Venom_4_Eyesig", OBJPROP_XDISTANCE, 465);
         ObjectSet("Venom_4_Eyesig", OBJPROP_YDISTANCE, y_648);
         ObjectCreate("Venom_4_Eyeprice", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
         ObjectSetText("Venom_4_Eyeprice", dbl2str_660, 12, "Arial Narrow", Gold);
         ObjectSet("Venom_4_Eyeprice", OBJPROP_CORNER, 0);
         ObjectSet("Venom_4_Eyeprice", OBJPROP_XDISTANCE, 487);
         ObjectSet("Venom_4_Eyeprice", OBJPROP_YDISTANCE, y_648);
      } else {
         ObjectDelete("Venom_4_Eyesig");
         ObjectDelete("Venom_4_Eyeprice");
      }
      ObjectCreate("Venom_4_Eyehi", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_4_Eyehi", "¥", 15, "Wingdings", DarkSlateGray);
      ObjectSet("Venom_4_Eyehi", OBJPROP_CORNER, 0);
      ObjectSet("Venom_4_Eyehi", OBJPROP_XDISTANCE, 465);
      ObjectSet("Venom_4_Eyehi", OBJPROP_YDISTANCE, 85);
      ObjectCreate("Venom_4_Eyelo", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_4_Eyelo", "¥", 15, "Wingdings", DarkSlateGray);
      ObjectSet("Venom_4_Eyelo", OBJPROP_CORNER, 0);
      ObjectSet("Venom_4_Eyelo", OBJPROP_XDISTANCE, 465);
      ObjectSet("Venom_4_Eyelo", OBJPROP_YDISTANCE, 102);
      if (Bid > ima_128 && Bid > ima_136 && ima_128 > ima_136) {
         Ld_692 = (Bid - ima_128) / point_280;
         dbl2str_700 = DoubleToStr(Ld_692, 0);
         y_688 = 85;
         Li_724 = TRUE;
      }
      if (Bid > ima_128 && Bid > ima_136 && ima_136 > ima_128) {
         Ld_692 = (Bid - ima_136) / point_280;
         dbl2str_700 = DoubleToStr(Ld_692, 0);
         y_688 = 85;
         Li_724 = TRUE;
      }
      if (Bid > ima_128 && Bid > ima_136 && ima_136 == ima_128) {
         Ld_692 = (Bid - ima_136) / point_280;
         dbl2str_700 = DoubleToStr(Ld_692, 0);
         y_688 = 85;
         Li_724 = TRUE;
      }
      if (Bid < ima_128 && Bid < ima_136 && ima_128 < ima_136) {
         Ld_692 = (ima_128 - Bid) / point_280;
         dbl2str_700 = DoubleToStr(Ld_692, 0);
         y_688 = 102;
         Li_724 = TRUE;
      }
      if (Bid < ima_128 && Bid < ima_136 && ima_136 < ima_128) {
         Ld_692 = (ima_136 - Bid) / point_280;
         dbl2str_700 = DoubleToStr(Ld_692, 0);
         y_688 = 102;
         Li_724 = TRUE;
      }
      if (Bid < ima_128 && Bid < ima_136 && ima_136 == ima_128) {
         Ld_692 = (ima_136 - Bid) / point_280;
         dbl2str_700 = DoubleToStr(Ld_692, 0);
         y_688 = 102;
         Li_724 = TRUE;
      }
      if (ima_128 > ima_136 && Bid < ima_128 && Bid > ima_136) {
         dbl2str_708 = DoubleToStr((ima_128 - Bid) / point_280, 0);
         dbl2str_716 = DoubleToStr((Bid - ima_136) / point_280, 0);
         Li_724 = FALSE;
      }
      if (ima_128 < ima_136 && Bid > ima_128 && Bid < ima_136) {
         dbl2str_708 = DoubleToStr((ima_136 - Bid) / point_280, 0);
         dbl2str_716 = DoubleToStr((Bid - ima_128) / point_280, 0);
         Li_724 = FALSE;
      }
      if (Li_724 == FALSE) {
         ObjectCreate("Venom_5_Up_Range", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
         ObjectSetText("Venom_5_Up_Range", "( " + dbl2str_708 + " )", 12, "Arial Narrow", Gray);
         ObjectSet("Venom_5_Up_Range", OBJPROP_CORNER, 0);
         ObjectSet("Venom_5_Up_Range", OBJPROP_XDISTANCE, 587);
         ObjectSet("Venom_5_Up_Range", OBJPROP_YDISTANCE, 85);
         ObjectCreate("Venom_5_Down_Range", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
         ObjectSetText("Venom_5_Down_Range", "( " + dbl2str_716 + " )", 12, "Arial Narrow", Gray);
         ObjectSet("Venom_5_Down_Range", OBJPROP_CORNER, 0);
         ObjectSet("Venom_5_Down_Range", OBJPROP_XDISTANCE, 587);
         ObjectSet("Venom_5_Down_Range", OBJPROP_YDISTANCE, 102);
      } else {
         ObjectDelete("Venom_5_Up_Range");
         ObjectDelete("Venom_5_Down_Range");
      }
      if (Li_724 == TRUE && Ld_692 >= 0.5) {
         ObjectCreate("Venom_5_Eyesig", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
         ObjectSetText("Venom_5_Eyesig", "¥", 15, "Wingdings", color_208);
         ObjectSet("Venom_5_Eyesig", OBJPROP_CORNER, 0);
         ObjectSet("Venom_5_Eyesig", OBJPROP_XDISTANCE, 565);
         ObjectSet("Venom_5_Eyesig", OBJPROP_YDISTANCE, y_688);
         ObjectCreate("Venom_5_Eyeprice", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
         ObjectSetText("Venom_5_Eyeprice", dbl2str_700, 12, "Arial Narrow", Gold);
         ObjectSet("Venom_5_Eyeprice", OBJPROP_CORNER, 0);
         ObjectSet("Venom_5_Eyeprice", OBJPROP_XDISTANCE, 587);
         ObjectSet("Venom_5_Eyeprice", OBJPROP_YDISTANCE, y_688);
      } else {
         ObjectDelete("Venom_5_Eyesig");
         ObjectDelete("Venom_5_Eyeprice");
      }
      ObjectCreate("Venom_5_Eyehi", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_5_Eyehi", "¥", 15, "Wingdings", DarkSlateGray);
      ObjectSet("Venom_5_Eyehi", OBJPROP_CORNER, 0);
      ObjectSet("Venom_5_Eyehi", OBJPROP_XDISTANCE, 565);
      ObjectSet("Venom_5_Eyehi", OBJPROP_YDISTANCE, 85);
      ObjectCreate("Venom_5_Eyelo", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_5_Eyelo", "¥", 15, "Wingdings", DarkSlateGray);
      ObjectSet("Venom_5_Eyelo", OBJPROP_CORNER, 0);
      ObjectSet("Venom_5_Eyelo", OBJPROP_XDISTANCE, 565);
      ObjectSet("Venom_5_Eyelo", OBJPROP_YDISTANCE, 102);
      if (Bid > ima_160 && Bid > ima_168 && ima_160 > ima_168) {
         Ld_732 = (Bid - ima_160) / point_280;
         dbl2str_740 = DoubleToStr(Ld_732, 0);
         y_728 = 85;
         Li_764 = TRUE;
      }
      if (Bid > ima_160 && Bid > ima_168 && ima_168 > ima_160) {
         Ld_732 = (Bid - ima_168) / point_280;
         dbl2str_740 = DoubleToStr(Ld_732, 0);
         y_728 = 85;
         Li_764 = TRUE;
      }
      if (Bid > ima_160 && Bid > ima_168 && ima_168 == ima_160) {
         Ld_732 = (Bid - ima_168) / point_280;
         dbl2str_740 = DoubleToStr(Ld_732, 0);
         y_728 = 85;
         Li_764 = TRUE;
      }
      if (Bid < ima_160 && Bid < ima_168 && ima_160 < ima_168) {
         Ld_732 = (ima_160 - Bid) / point_280;
         dbl2str_740 = DoubleToStr(Ld_732, 0);
         y_728 = 102;
         Li_764 = TRUE;
      }
      if (Bid < ima_160 && Bid < ima_168 && ima_168 < ima_160) {
         Ld_732 = (ima_168 - Bid) / point_280;
         dbl2str_740 = DoubleToStr(Ld_732, 0);
         y_728 = 102;
         Li_764 = TRUE;
      }
      if (Bid < ima_160 && Bid < ima_168 && ima_168 == ima_160) {
         Ld_732 = (ima_168 - Bid) / point_280;
         dbl2str_740 = DoubleToStr(Ld_732, 0);
         y_728 = 102;
         Li_764 = TRUE;
      }
      if (ima_160 > ima_168 && Bid < ima_160 && Bid > ima_168) {
         dbl2str_748 = DoubleToStr((ima_160 - Bid) / point_280, 0);
         dbl2str_756 = DoubleToStr((Bid - ima_168) / point_280, 0);
         Li_764 = FALSE;
      }
      if (ima_160 < ima_168 && Bid > ima_160 && Bid < ima_168) {
         dbl2str_748 = DoubleToStr((ima_168 - Bid) / point_280, 0);
         dbl2str_756 = DoubleToStr((Bid - ima_160) / point_280, 0);
         Li_764 = FALSE;
      }
      if (Li_764 == FALSE) {
         ObjectCreate("Venom_6_Up_Range", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
         ObjectSetText("Venom_6_Up_Range", "( " + dbl2str_748 + " )", 12, "Arial Narrow", Gray);
         ObjectSet("Venom_6_Up_Range", OBJPROP_CORNER, 0);
         ObjectSet("Venom_6_Up_Range", OBJPROP_XDISTANCE, 687);
         ObjectSet("Venom_6_Up_Range", OBJPROP_YDISTANCE, 85);
         ObjectCreate("Venom_6_Down_Range", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
         ObjectSetText("Venom_6_Down_Range", "( " + dbl2str_756 + " )", 12, "Arial Narrow", Gray);
         ObjectSet("Venom_6_Down_Range", OBJPROP_CORNER, 0);
         ObjectSet("Venom_6_Down_Range", OBJPROP_XDISTANCE, 687);
         ObjectSet("Venom_6_Down_Range", OBJPROP_YDISTANCE, 102);
      } else {
         ObjectDelete("Venom_6_Up_Range");
         ObjectDelete("Venom_6_Down_Range");
      }
      if (Li_764 == TRUE && Ld_732 >= 0.5) {
         ObjectCreate("Venom_6_Eyesig", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
         ObjectSetText("Venom_6_Eyesig", "¥", 15, "Wingdings", color_212);
         ObjectSet("Venom_6_Eyesig", OBJPROP_CORNER, 0);
         ObjectSet("Venom_6_Eyesig", OBJPROP_XDISTANCE, 665);
         ObjectSet("Venom_6_Eyesig", OBJPROP_YDISTANCE, y_728);
         ObjectCreate("Venom_6_Eyeprice", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
         ObjectSetText("Venom_6_Eyeprice", dbl2str_740, 12, "Arial Narrow", Gold);
         ObjectSet("Venom_6_Eyeprice", OBJPROP_CORNER, 0);
         ObjectSet("Venom_6_Eyeprice", OBJPROP_XDISTANCE, 687);
         ObjectSet("Venom_6_Eyeprice", OBJPROP_YDISTANCE, y_728);
      } else {
         ObjectDelete("Venom_6_Eyesig");
         ObjectDelete("Venom_6_Eyeprice");
      }
      ObjectCreate("Venom_6_Eyehi", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_6_Eyehi", "¥", 15, "Wingdings", DarkSlateGray);
      ObjectSet("Venom_6_Eyehi", OBJPROP_CORNER, 0);
      ObjectSet("Venom_6_Eyehi", OBJPROP_XDISTANCE, 665);
      ObjectSet("Venom_6_Eyehi", OBJPROP_YDISTANCE, 85);
      ObjectCreate("Venom_6_Eyelo", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_6_Eyelo", "¥", 15, "Wingdings", DarkSlateGray);
      ObjectSet("Venom_6_Eyelo", OBJPROP_CORNER, 0);
      ObjectSet("Venom_6_Eyelo", OBJPROP_XDISTANCE, 665);
      ObjectSet("Venom_6_Eyelo", OBJPROP_YDISTANCE, 102);
      var_name_768 = "start_saat" + Symbol();
      Li_unused_776 = GlobalVariableGet(var_name_768);
      var_name_780 = "venom_signal_buy" + Symbol();
      var_name_788 = "venom_signal_sell" + Symbol();
      bool_796 = IsConnected();
      if (bool_796 == TRUE) {
         if (Li_304 == 6 && Li_308 == 6 && Li_312 == 6 && Li_316 == 6 && Li_320 == 6 && Li_324 == 6 && hour_1128 > 6 && hour_1128 < 16) GlobalVariableSet(var_name_780, 6);
         if (Li_304 == -6 && Li_308 == -6 && Li_312 == -6 && Li_316 == -6 && Li_320 == -6 && Li_324 == -6 && hour_1128 > 6 && hour_1128 < 16) GlobalVariableSet(var_name_788, -6);
      }
      if (Venom_Alert == TRUE && bool_796 == TRUE) {
         digits_800 = MarketInfo(Symbol(), MODE_DIGITS);
         if (Li_304 == 6 && Li_308 == 6 && Li_312 == 6 && Li_316 == 6 && Li_320 == 6 && Li_324 == 6 && hour_1128 > 6 && hour_1128 < 16) Alert(Symbol() + "    BUY!!!   " + DoubleToStr(Bid, digits_800));
         if (Li_304 == -6 && Li_308 == -6 && Li_312 == -6 && Li_316 == -6 && Li_320 == -6 && Li_324 == -6 && hour_1128 > 6 && hour_1128 < 16) Alert(Symbol() + "    SELL!!!   " + DoubleToStr(Bid, digits_800));
      }
      ima_808 = iMA(NULL, PERIOD_M1, 16, 0, MODE_SMA, PRICE_CLOSE, 0);
      ibands_816 = iBands(NULL, PERIOD_M1, 16, 1, 0, PRICE_CLOSE, MODE_UPPER, 0);
      ibands_824 = iBands(NULL, PERIOD_M1, 16, 1, 0, PRICE_CLOSE, MODE_LOWER, 0);
      ibands_832 = iBands(NULL, PERIOD_M1, 16, 3, 0, PRICE_CLOSE, MODE_UPPER, 0);
      ibands_840 = iBands(NULL, PERIOD_M1, 16, 3, 0, PRICE_CLOSE, MODE_LOWER, 0);
      ima_848 = iMA(NULL, PERIOD_M5, 16, 0, MODE_SMA, PRICE_CLOSE, 0);
      ibands_856 = iBands(NULL, PERIOD_M5, 16, 1, 0, PRICE_CLOSE, MODE_UPPER, 0);
      ibands_864 = iBands(NULL, PERIOD_M5, 16, 1, 0, PRICE_CLOSE, MODE_LOWER, 0);
      ibands_872 = iBands(NULL, PERIOD_M5, 16, 3, 0, PRICE_CLOSE, MODE_UPPER, 0);
      ibands_880 = iBands(NULL, PERIOD_M5, 16, 3, 0, PRICE_CLOSE, MODE_LOWER, 0);
      ima_888 = iMA(NULL, PERIOD_M15, 16, 0, MODE_SMA, PRICE_CLOSE, 0);
      ibands_896 = iBands(NULL, PERIOD_M15, 16, 1, 0, PRICE_CLOSE, MODE_UPPER, 0);
      ibands_904 = iBands(NULL, PERIOD_M15, 16, 1, 0, PRICE_CLOSE, MODE_LOWER, 0);
      ibands_912 = iBands(NULL, PERIOD_M15, 16, 3, 0, PRICE_CLOSE, MODE_UPPER, 0);
      ibands_920 = iBands(NULL, PERIOD_M15, 16, 3, 0, PRICE_CLOSE, MODE_LOWER, 0);
      ima_928 = iMA(NULL, PERIOD_M30, 16, 0, MODE_SMA, PRICE_CLOSE, 0);
      ibands_936 = iBands(NULL, PERIOD_M30, 16, 1, 0, PRICE_CLOSE, MODE_UPPER, 0);
      ibands_944 = iBands(NULL, PERIOD_M30, 16, 1, 0, PRICE_CLOSE, MODE_LOWER, 0);
      ibands_952 = iBands(NULL, PERIOD_M30, 16, 3, 0, PRICE_CLOSE, MODE_UPPER, 0);
      ibands_960 = iBands(NULL, PERIOD_M30, 16, 3, 0, PRICE_CLOSE, MODE_LOWER, 0);
      ima_968 = iMA(NULL, PERIOD_H1, 16, 0, MODE_SMA, PRICE_CLOSE, 0);
      ibands_976 = iBands(NULL, PERIOD_H1, 16, 1, 0, PRICE_CLOSE, MODE_UPPER, 0);
      ibands_984 = iBands(NULL, PERIOD_H1, 16, 1, 0, PRICE_CLOSE, MODE_LOWER, 0);
      ibands_992 = iBands(NULL, PERIOD_H1, 16, 3, 0, PRICE_CLOSE, MODE_UPPER, 0);
      ibands_1000 = iBands(NULL, PERIOD_H1, 16, 3, 0, PRICE_CLOSE, MODE_LOWER, 0);
      ima_1008 = iMA(NULL, PERIOD_H4, 16, 0, MODE_SMA, PRICE_CLOSE, 0);
      ibands_1016 = iBands(NULL, PERIOD_H4, 16, 1, 0, PRICE_CLOSE, MODE_UPPER, 0);
      ibands_1024 = iBands(NULL, PERIOD_H4, 16, 1, 0, PRICE_CLOSE, MODE_LOWER, 0);
      ibands_1032 = iBands(NULL, PERIOD_H4, 16, 3, 0, PRICE_CLOSE, MODE_UPPER, 0);
      ibands_1040 = iBands(NULL, PERIOD_H4, 16, 3, 0, PRICE_CLOSE, MODE_LOWER, 0);
      if (Bid > ima_808 && Bid <= ibands_816) {
         color_1048 = Lime;
         text_1072 = "Ÿ";
      }
      if (Bid > ibands_816 && Bid < ibands_832) {
         color_1048 = Lime;
         text_1072 = "l";
      }
      if (Bid >= ibands_832) {
         color_1048 = DarkGreen;
         text_1072 = "l";
      }
      if (Bid < ima_808 && Bid >= ibands_824) {
         color_1048 = Red;
         text_1072 = "Ÿ";
      }
      if (Bid < ibands_824 && Bid > ibands_840) {
         color_1048 = Red;
         text_1072 = "l";
      }
      if (Bid <= ibands_840) {
         color_1048 = Maroon;
         text_1072 = "l";
      }
      if (Bid > ima_848 && Bid <= ibands_856) {
         color_1052 = Lime;
         text_1080 = "Ÿ";
      }
      if (Bid > ibands_856 && Bid < ibands_872) {
         color_1052 = Lime;
         text_1080 = "l";
      }
      if (Bid >= ibands_872) {
         color_1052 = DarkGreen;
         text_1080 = "l";
      }
      if (Bid < ima_848 && Bid >= ibands_864) {
         color_1052 = Red;
         text_1080 = "Ÿ";
      }
      if (Bid < ibands_864 && Bid > ibands_880) {
         color_1052 = Red;
         text_1080 = "l";
      }
      if (Bid <= ibands_880) {
         color_1052 = Maroon;
         text_1080 = "l";
      }
      if (Bid > ima_888 && Bid <= ibands_896) {
         color_1056 = Lime;
         text_1088 = "Ÿ";
      }
      if (Bid > ibands_896 && Bid < ibands_912) {
         color_1056 = Lime;
         text_1088 = "l";
      }
      if (Bid >= ibands_912) {
         color_1056 = DarkGreen;
         text_1088 = "l";
      }
      if (Bid < ima_888 && Bid >= ibands_904) {
         color_1056 = Red;
         text_1088 = "Ÿ";
      }
      if (Bid < ibands_904 && Bid > ibands_920) {
         color_1056 = Red;
         text_1088 = "l";
      }
      if (Bid <= ibands_920) {
         color_1056 = Maroon;
         text_1088 = "l";
      }
      if (Bid > ima_928 && Bid <= ibands_936) {
         color_1060 = Lime;
         text_1096 = "Ÿ";
      }
      if (Bid > ibands_936 && Bid < ibands_952) {
         color_1060 = Lime;
         text_1096 = "l";
      }
      if (Bid >= ibands_952) {
         color_1060 = DarkGreen;
         text_1096 = "l";
      }
      if (Bid < ima_928 && Bid >= ibands_944) {
         color_1060 = Red;
         text_1096 = "Ÿ";
      }
      if (Bid < ibands_944 && Bid > ibands_960) {
         color_1060 = Red;
         text_1096 = "l";
      }
      if (Bid <= ibands_960) {
         color_1060 = Maroon;
         text_1096 = "l";
      }
      if (Bid > ima_968 && Bid <= ibands_976) {
         color_1064 = Lime;
         text_1104 = "Ÿ";
      }
      if (Bid > ibands_976 && Bid < ibands_992) {
         color_1064 = Lime;
         text_1104 = "l";
      }
      if (Bid >= ibands_992) {
         color_1064 = DarkGreen;
         text_1104 = "l";
      }
      if (Bid < ima_968 && Bid >= ibands_984) {
         color_1064 = Red;
         text_1104 = "Ÿ";
      }
      if (Bid < ibands_984 && Bid > ibands_1000) {
         color_1064 = Red;
         text_1104 = "l";
      }
      if (Bid <= ibands_1000) {
         color_1064 = Maroon;
         text_1104 = "l";
      }
      if (Bid > ima_1008 && Bid <= ibands_1016) {
         color_1068 = Lime;
         text_1112 = "Ÿ";
      }
      if (Bid > ibands_1016 && Bid < ibands_1032) {
         color_1068 = Lime;
         text_1112 = "l";
      }
      if (Bid >= ibands_1032) {
         color_1068 = DarkGreen;
         text_1112 = "l";
      }
      if (Bid < ima_1008 && Bid >= ibands_1024) {
         color_1068 = Red;
         text_1112 = "Ÿ";
      }
      if (Bid < ibands_1024 && Bid > ibands_1040) {
         color_1068 = Red;
         text_1112 = "l";
      }
      if (Bid <= ibands_1040) {
         color_1068 = Maroon;
         text_1112 = "l";
      }
      ObjectCreate("Venom_1_Box", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_1_Box", text_1072, 30, "Wingdings", color_1048);
      ObjectSet("Venom_1_Box", OBJPROP_CORNER, 0);
      ObjectSet("Venom_1_Box", OBJPROP_XDISTANCE, 180);
      ObjectSet("Venom_1_Box", OBJPROP_YDISTANCE, 126);
      ObjectCreate("Venom_2_Box", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_2_Box", text_1080, 30, "Wingdings", color_1052);
      ObjectSet("Venom_2_Box", OBJPROP_CORNER, 0);
      ObjectSet("Venom_2_Box", OBJPROP_XDISTANCE, 280);
      ObjectSet("Venom_2_Box", OBJPROP_YDISTANCE, 126);
      ObjectCreate("Venom_3_Box", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_3_Box", text_1088, 30, "Wingdings", color_1056);
      ObjectSet("Venom_3_Box", OBJPROP_CORNER, 0);
      ObjectSet("Venom_3_Box", OBJPROP_XDISTANCE, 380);
      ObjectSet("Venom_3_Box", OBJPROP_YDISTANCE, 126);
      ObjectCreate("Venom_4_Box", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_4_Box", text_1096, 30, "Wingdings", color_1060);
      ObjectSet("Venom_4_Box", OBJPROP_CORNER, 0);
      ObjectSet("Venom_4_Box", OBJPROP_XDISTANCE, 480);
      ObjectSet("Venom_4_Box", OBJPROP_YDISTANCE, 126);
      ObjectCreate("Venom_5_Box", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_5_Box", text_1104, 30, "Wingdings", color_1064);
      ObjectSet("Venom_5_Box", OBJPROP_CORNER, 0);
      ObjectSet("Venom_5_Box", OBJPROP_XDISTANCE, 580);
      ObjectSet("Venom_5_Box", OBJPROP_YDISTANCE, 126);
      ObjectCreate("Venom_6_Box", OBJ_LABEL, WindowFind("Third Wave FX VENOM (" + Symbol() + ")"), 0, 0);
      ObjectSetText("Venom_6_Box", text_1112, 30, "Wingdings", color_1068);
      ObjectSet("Venom_6_Box", OBJPROP_CORNER, 0);
      ObjectSet("Venom_6_Box", OBJPROP_XDISTANCE, 680);
      ObjectSet("Venom_6_Box", OBJPROP_YDISTANCE, 126);
   }
   return (0);
}