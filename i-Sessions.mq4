//+----------------------------------------------------------------------------+
//|                                                            i-Sessions.mq4  |
//|                                                                            |
//|                                                    ��� ����� �. aka KimIV  |
//|                                                       http://www.kimiv.ru  |
//|                                                                            |
//|  16.11.2005  ��������� �������� ������.                                    |
//|  04.06.2008  ���������� ������ ����� ������� ���� � ������.                |
//|  25.10.2008  ��������� ���������: Style - ����� ����� �������� �           |
//|              FillBack - ������� ��������.                                  |
//+----------------------------------------------------------------------------+
#property copyright "��� ����� �. aka KimIV"
#property link      "http://www.kimiv.ru"

#property indicator_chart_window

//------- ������� ��������� ���������� ----------------------------------------+
extern int    NumberOfDays = 5;             // ���������� ����
extern string AsiaBegin    = "01:00";       // �������� ��������� ������
extern string AsiaEnd      = "10:00";       // �������� ��������� ������
extern color  AsiaColor    = Goldenrod;     // ���� ��������� ������
extern string EurBegin     = "07:00";       // �������� ����������� ������
extern string EurEnd       = "16:00";       // �������� ����������� ������
extern color  EurColor     = Tan;           // ���� ����������� ������
extern string USABegin     = "14:00";       // �������� ������������ ������
extern string USAEnd       = "23:00";       // �������� ������������ ������
extern color  USAColor     = Pink;          // ���� ������������ ������
extern int    Style        = 2;             // ����� ����� ��������
extern bool   FillBack     = True;          // �������� �������
extern bool   ShowPrice    = True;          // ���������� ������� ������
extern color  clFont       = Blue;          // ���� ������
extern int    SizeFont     = 8;             // ������ ������
extern int    OffSet       = 10;            // ��������


//+----------------------------------------------------------------------------+
//|  Custom indicator initialization function                                  |
//+----------------------------------------------------------------------------+
void init() {
  DeleteObjects();
  for (int i=0; i<NumberOfDays; i++) {
    CreateObjects("AS"+i, AsiaColor);
    CreateObjects("EU"+i, EurColor);
    CreateObjects("US"+i, USAColor);
  }
  Comment("");
}

//+----------------------------------------------------------------------------+
//|  Custor indicator deinitialization function                                |
//+----------------------------------------------------------------------------+
void deinit() {
  DeleteObjects();
  Comment("");
}

//+----------------------------------------------------------------------------+
//|  �������� �������� ����������                                              |
//|  ���������:                                                                |
//|    no - ������������ �������                                               |
//|    cl - ���� �������                                                       |
//+----------------------------------------------------------------------------+
void CreateObjects(string no, color cl) {
  ObjectCreate(no, OBJ_RECTANGLE, 0, 0,0, 0,0);
  ObjectSet(no, OBJPROP_STYLE, Style);
  ObjectSet(no, OBJPROP_COLOR, cl);
  ObjectSet(no, OBJPROP_BACK, FillBack);
}

//+----------------------------------------------------------------------------+
//|  �������� �������� ����������                                              |
//+----------------------------------------------------------------------------+
void DeleteObjects() {
  for (int i=0; i<NumberOfDays; i++) {
    ObjectDelete("AS"+i);
    ObjectDelete("EU"+i);
    ObjectDelete("US"+i);
  }
  ObjectDelete("ASup");
  ObjectDelete("ASdn");
  ObjectDelete("EUup");
  ObjectDelete("EUdn");
  ObjectDelete("USup");
  ObjectDelete("USdn");
}

//+----------------------------------------------------------------------------+
//|  Custom indicator iteration function                                       |
//+----------------------------------------------------------------------------+
void start() {
  datetime dt=CurTime();

  for (int i=0; i<NumberOfDays; i++) {
    if (ShowPrice && i==0) {
      DrawPrices(dt, "AS", AsiaBegin, AsiaEnd);
      DrawPrices(dt, "EU", EurBegin, EurEnd);
      DrawPrices(dt, "US", USABegin, USAEnd);
    }
    DrawObjects(dt, "AS"+i, AsiaBegin, AsiaEnd);
    DrawObjects(dt, "EU"+i, EurBegin, EurEnd);
    DrawObjects(dt, "US"+i, USABegin, USAEnd);
    dt-=24*60*60;
    while (TimeDayOfWeek(dt)<1 || TimeDayOfWeek(dt)>5) dt-=24*60*60;
  }
}

//+----------------------------------------------------------------------------+
//|  ���������� �������� �� �������                                            |
//|  ���������:                                                                |
//|    dt - ���� ��������� ���                                                 |
//|    no - ������������ �������                                               |
//|    tb - ����� ������ ������                                                |
//|    te - ����� ��������� ������                                             |
//+----------------------------------------------------------------------------+
void DrawObjects(datetime dt, string no, string tb, string te) {
  datetime t1, t2;
  double   p1, p2;
  int      b1, b2;

  t1=StrToTime(TimeToStr(dt, TIME_DATE)+" "+tb);
  t2=StrToTime(TimeToStr(dt, TIME_DATE)+" "+te);
  b1=iBarShift(NULL, 0, t1);
  b2=iBarShift(NULL, 0, t2);
  p1=High[Highest(NULL, 0, MODE_HIGH, b1-b2+1, b2)];
  p2=Low [Lowest (NULL, 0, MODE_LOW , b1-b2+1, b2)];
  ObjectSet(no, OBJPROP_TIME1 , t1);
  ObjectSet(no, OBJPROP_PRICE1, p1);
  ObjectSet(no, OBJPROP_TIME2 , t2);
  ObjectSet(no, OBJPROP_PRICE2, p2);
}

//+----------------------------------------------------------------------------+
//|  ���������� ������� ����� �� �������                                       |
//|  ���������:                                                                |
//|    dt - ���� ��������� ���                                                 |
//|    no - ������������ �������                                               |
//|    tb - ����� ������ ������                                                |
//|    te - ����� ��������� ������                                             |
//+----------------------------------------------------------------------------+
void DrawPrices(datetime dt, string no, string tb, string te) {
  datetime t1, t2;
  double   p1, p2;
  int      b1, b2;

  t1=StrToTime(TimeToStr(dt, TIME_DATE)+" "+tb);
  t2=StrToTime(TimeToStr(dt, TIME_DATE)+" "+te);
  b1=iBarShift(NULL, 0, t1);
  b2=iBarShift(NULL, 0, t2);
  p1=High[Highest(NULL, 0, MODE_HIGH, b1-b2, b2)];
  p2=Low [Lowest (NULL, 0, MODE_LOW , b1-b2, b2)];

  if (ObjectFind(no+"up")<0) ObjectCreate(no+"up", OBJ_TEXT, 0, 0,0);
  ObjectSet(no+"up", OBJPROP_TIME1   , t2);
  ObjectSet(no+"up", OBJPROP_PRICE1  , p1+(OffSet+SizeFont)*Point);
  ObjectSet(no+"up", OBJPROP_COLOR   , clFont);
  ObjectSet(no+"up", OBJPROP_FONTSIZE, SizeFont);
  ObjectSetText(no+"up", DoubleToStr(p1+Ask-Bid, Digits));

  if (ObjectFind(no+"dn")<0) ObjectCreate(no+"dn", OBJ_TEXT, 0, 0,0);
  ObjectSet(no+"dn", OBJPROP_TIME1   , t2);
  ObjectSet(no+"dn", OBJPROP_PRICE1  , p2-OffSet*Point);
  ObjectSet(no+"dn", OBJPROP_COLOR   , clFont);
  ObjectSet(no+"dn", OBJPROP_FONTSIZE, SizeFont);
  ObjectSetText(no+"dn", DoubleToStr(p2, Digits));
}
//+----------------------------------------------------------------------------+

