string gs_76 = "";
string gs_84 = "";

int init() {
   gs_84 = Symbol();
   return (0);
}

int deinit() {
   return (0);
}

int start() {
   double l_ask_0 = MarketInfo(Symbol(), MODE_ASK);
   double l_bid_8 = MarketInfo(Symbol(), MODE_BID);
   double ld_16 = l_bid_8 + (l_ask_0 - l_bid_8) / 2.0;
   log("" + ld_16);
   return (0);
}

void log(string as_0) {
   int li_12 = TimeLocal();
   li_12 -= 18000;
   string ls_16 = "";
   ls_16 = "" + TimeYear(li_12);
   ls_16 = ls_16 + "-" + TimeMonth(li_12);
   ls_16 = ls_16 + "-" + TimeDay(li_12);
   int l_file_8 = FileOpen(gs_76 + "\\" + "log__" + StringSubstr(gs_84, 0, 6) + "_" + ls_16 + ".csv", FILE_CSV|FILE_WRITE|FILE_READ, ';');
   if (l_file_8 > 0) {
      FileSeek(l_file_8, 0, SEEK_END);
      FileWrite(l_file_8, ls_16 + " " + TimeHour(li_12) + ":" + TimeMinute(li_12) + ":" + TimeSeconds(li_12), as_0);
      FileClose(l_file_8);
   }
}
