#property copyright "Copyright © 2009, xux99"
#property link      "http://www.forexfactory.com/showthread.php?t=202556"

extern string    Entry_and_exit_conditions="----------------------------------------------------------------------";
extern string    DSSBressert                      = "1100";
extern double    DSSBressertLevel                 = 0;
extern string    NonLagMA                         = "0000";
extern string    PriceChannelStop                 = "0000";
extern string    COGDirection                     = "0000";
extern string    COGDistance                      = "0000";
extern double    COGPercent                       = 50;
extern bool      OppositeSignalExit               = false;
extern string    Order_settings="----------------------------------------------------------------------";
extern int       MaxOrders                        = 3;
extern int       MagicNumber                      = 700000;
extern string    TradeComment                     = "Uranus";
extern bool      ClassicSL                        = true;
extern bool      HighLowSL                        = false;
extern int       BarsBack                         = 3;
extern double    MinimumSLPips                    = 0;
extern double    StopLossPips                     = 20;
extern double    StopLossAtrMultiplier            = 0;
extern double    VisibleSL                        = 0;
extern double    TakeProfitPips1                  = 20;
extern double    TakeProfitPips2                  = 0;
extern double    TakeProfitAtrMultiplier1         = 0;
extern double    TakeProfitAtrMultiplier2         = 0;
extern double    VisibleTP                        = 0;
extern double    BreakEvenPips                    = 0;
extern double    BreakEvenAtrMultiplier           = 0;
extern double    LockPips                         = 0;
extern double    LockAtrMultiplier                = 0;
extern double    TrailingStopPips                 = 0;
extern double    TrailingStopAtrMultiplier        = 0;
extern double    TrailingStopStartPips            = 0;
extern double    TrailingStepPips                 = 0;
extern double    Slippage                         = 4;
extern double    MaxSpread                        = 0;
extern bool      CloseIfProfit                    = false;
extern bool      Hedge                            = false;
extern double    MinOrdersDistance                = 0;
extern bool      NewHighLow                       = false;
extern string    CandleTimeFrame                  = "0";
extern bool      ScreenShots                      = false;
extern int       Alerts                           = 0;
extern string    AlertSound                       = "alert.wav";
extern color     LongColour                       = 7451452;
extern color     ShortColour                      = 6053069;
extern string    Trading_hours_settings="----------------------------------------------------------------------";
extern string    TradingSession1                  = "00002400";
extern string    TradingSession2                  = "00000000";
extern string    TradingSession3                  = "00000000";
extern bool      NewsFilter                       = false;
extern int       MinutesBeforeNews                = 10;
extern int       MinutesAfterNews                 = 10;
extern string    FridayCloseHour                  = "2250";
extern string    Money_management_settings="----------------------------------------------------------------------";
extern double    Lots                             = 0.1;
extern double    PartialClose1                    = 100;
extern double    PartialClose2                    = 0;
extern double    PartialClose3                    = 0;
extern bool      MoneyManagement                  = false;
extern double    LeveragePercent                  = 1.0;
extern double    LotPercent                       = 0;
extern int       StartProgression                 = 3;
extern int       MaxProgression                   = 5;
extern double    CloseAllProfit                   = 0;
extern double    CloseAllLoss                     = 0;
extern bool      CloseOneDirection                = false;
extern string    ATR_settings="----------------------------------------------------------------------";
extern double    ATRPeriod                        = 14;
extern string    DSS_Bressert_settings="----------------------------------------------------------------------";
extern int       EMA_period                       = 8;
extern int       Stochastic_period                = 13;
extern string    NonLagMA_settings="----------------------------------------------------------------------";
extern int       Price                            = 0;
extern int       Length                           = 15; 
extern int       Displace                         = 0;
extern double    PctFilter                        = 0;
extern double    Deviation                        = 0;
extern string    PriceChannelStop_settings="----------------------------------------------------------------------";
extern int       ChannelPeriod                    = 9;
extern double    Risk                             = 0.30;
extern int       Signal                           = 1;
extern int       Line                             = 1;
extern int       Nbars                            = 1000;
extern string    Center_of_Gravity_settings="----------------------------------------------------------------------";
extern int       bars_back                        = 125;
extern int       m                                = 2;
extern int       i                                = 0;
extern double    kstd                             = 2.0;
extern int       sName                            = 1102;
extern string    FFCal_settings="----------------------------------------------------------------------";
extern bool      IncludeHigh 	                    = true;
extern bool      IncludeMedium                    = true;
extern bool      IncludeLow                       = false;
extern bool      IncludeSpeaks                    = true;
extern bool		  ReportAllForUSD		              = false; 	

// Variables ***********************************************************************************************************
double Vardouble[40][40],Temp[40][40],Ind[40][9][9],Distance[19],OProfit[200][9],PartialClose[19],Timi[9],d0,d1,d2,d3,d4,d5,d6,d7,d8,d9;
int Varint[40][40],In[40][200],Trade[19],Arrow[3],OTicket[200][9],OOTime[200][9],OCTime[200][9],OType[200][9],MinutesUntilNextEvent,MinutesAfterPrevEvent,mult,tf,i0,i1,i2,i3,i4,i5,i6,i7,i8,i9,i10,i11,i12,t0,t1,t2,t3,t4,t5,t6,t7,t8,t9,e1,e2,z0,z1,z2,k0;
int TF[]={0,1,5,15,30,60,240,1440,10080,43200};
bool Varbool[40][40],EntrySignal[9][40][9],ExitSignal[9][40][9],Dot[9][40][10],TradingTime[19];
string Varstring[40][40],Str[40][40],ScreenComment[420],Screen[9][40][420],OComment[200][9],gvoso[200][9],gvosc[200][9],gvoti[200][9],gvopc[200][20],gvosl[200][9],gvotp[200][9],gvova[20][9];
string TimeFrame[]={"0","M1","M5","M15","M30","H1","H4","D1","W1","MN"};
datetime OTime[19];

// Initialization ***************************************************************************************************************
int init()
{Varint[0][0]=(MarketInfo(Symbol(),MODE_LOTSTEP)==0.01)*2+(MarketInfo(Symbol(),MODE_LOTSTEP)==0.1);
mult=(Digits==3 || Digits==5)*10+(Digits==2 || Digits==4); TF[0]=Period(); 
tf=(Period()==1)+(Period()==5)*2+(Period()==15)*3+(Period()==30)*4+(Period()==60)*5+(Period()==240)*6+(Period()==1440)*7+(Period()==10080)*8+(Period()==43200)*9;

if (!ClassicSL && !HighLowSL) {StopLossPips=0; StopLossAtrMultiplier=0;}
if (ClassicSL || BarsBack<=0) {HighLowSL=false;}
if (StopLossPips==0 && StopLossAtrMultiplier==0) {ClassicSL=false;}
if (StopLossPips>0 && StopLossAtrMultiplier>0) {StopLossPips=0;}
if (BreakEvenPips>0 && BreakEvenAtrMultiplier>0) {BreakEvenPips=0;}
if (LockPips>0 && LockAtrMultiplier>0) {LockPips=0;}
if (TrailingStopPips>0 && TrailingStopAtrMultiplier>0) {TrailingStopPips=0;}
if (TakeProfitAtrMultiplier1>0 && TakeProfitAtrMultiplier2>0) {TakeProfitPips1=0; TakeProfitPips2=0;}
if (TakeProfitPips1>0 && TakeProfitPips2>0) {TakeProfitAtrMultiplier1=0; TakeProfitAtrMultiplier2=0;}
if (TakeProfitPips2<TakeProfitPips1 && TakeProfitPips2>0)
{Temp[0][1]=TakeProfitPips1; Temp[0][2]=TakeProfitPips2; TakeProfitPips1=Temp[0][2]; TakeProfitPips2=Temp[0][1];}
if (TakeProfitPips1==0 && TakeProfitPips2>0) {TakeProfitPips1=TakeProfitPips2; TakeProfitPips2=0;}
if (TakeProfitAtrMultiplier2<TakeProfitAtrMultiplier1 && TakeProfitAtrMultiplier2>0)
{Temp[0][1]=TakeProfitAtrMultiplier1; Temp[0][2]=TakeProfitAtrMultiplier2; TakeProfitAtrMultiplier1=Temp[0][2]; TakeProfitAtrMultiplier2=Temp[0][1];}
if (TakeProfitAtrMultiplier1==0 && TakeProfitAtrMultiplier2>0) {TakeProfitAtrMultiplier1=TakeProfitAtrMultiplier2; TakeProfitAtrMultiplier2=0;}
Varint[0][3]=(TakeProfitPips1>0)+(TakeProfitPips2>0)+(TakeProfitAtrMultiplier1>0)+(TakeProfitAtrMultiplier2>0);

Slippage=NormalizeDouble(mult*Slippage,0);
Distance[1]=NormalizeDouble(Point*mult,Digits);
Distance[2]=NormalizeDouble(VisibleTP*Point*mult,Digits);
Distance[3]=NormalizeDouble(VisibleSL*Point*mult,Digits);
Distance[4]=NormalizeDouble(TakeProfitPips1*Point*mult,Digits);
Distance[5]=NormalizeDouble(TakeProfitPips2*Point*mult,Digits);
Distance[6]=NormalizeDouble(StopLossPips*Point*mult,Digits);
Distance[7]=NormalizeDouble(MinimumSLPips*Point*mult,Digits);
Distance[8]=NormalizeDouble(BreakEvenPips*Point*mult,Digits);
Distance[9]=NormalizeDouble(LockPips*Point*mult,Digits);
Distance[10]=NormalizeDouble(TrailingStopPips*Point*mult,Digits);
Distance[11]=NormalizeDouble(TrailingStopStartPips*Point*mult,Digits);
Distance[12]=NormalizeDouble(TrailingStepPips*Point*mult,Digits);
Distance[13]=NormalizeDouble(MinOrdersDistance*Point*mult,Digits);
Distance[15]=NormalizeDouble(MaxSpread*Point*mult,Digits);
Arrow[1]=LongColour; Arrow[2]=ShortColour; MaxOrders=MathMin(MaxOrders,99); MaxOrders=MathMax(MaxOrders,1);
Lots=MathMin(MathMax(NormalizeDouble(Lots,Varint[0][0]),MarketInfo(Symbol(),MODE_MINLOT)),MarketInfo(Symbol(),MODE_MAXLOT));
Varstring[30][1]=StringSubstr(Symbol(),0,6);
TradeComment=StringConcatenate(TradeComment," ",Varstring[30][1]," ",TimeFrame[tf]);
e1=6; e2=7; Str[1][1]=DSSBressert; Str[2][1]="0010";
if (DSSBressertLevel>0) {Str[2][1]=StringConcatenate(StringSubstr(DSSBressert,0,1),"01",StringSubstr(DSSBressert,3,3));}
Str[3][1]=NonLagMA; Str[4][1]=PriceChannelStop; Str[5][1]=COGDirection; Str[6][1]=COGDistance;
i1=1; while(i1<=e1) {i2=1; while(i2<=3) {Varint[i1][i2]=StrToInteger(StringSubstr(Str[i1][1],i2-1,1)); Varint[i1][i2]*=(Varint[i1][i2]<=2); i2++;} i1++;}
i1=1; while(i1<=e1) {i2=1; while(i2<=4) {i3=1; while(i3<=2)
{i4=(i2<=2)*i3+(i2==4)*2; i5=(i2<=3)*i2+(i2==4)*3; Dot[2-i3][i1][i2]=(Varint[i1][i5]==i4 && !(i2>=3 && !Dot[2-i3][i1][1])); 
i3++;} i2++;} i1++;}
i1=1; while(i1<=e1) {Str[0][0]=StringSubstr(Str[i1][1],3,3); Varint[i1][5]=0;
i2=0; while(i2<=9 && Varint[i1][5]==0) {Varint[i1][5]=(Str[0][0]==TimeFrame[i2] && (Varint[i1][1]>0 || Varint[i1][2]>0))*TF[i2]; i2++;} 
Varint[i1][5]+=(Varint[i1][5]==0)*Period(); i1++;}
Varint[0][5]=Period(); Varint[0][6]=Period(); i1=1; while(i1<=e1) {Varint[0][5]=MathMin(Varint[0][5],Varint[i1][5]); i1++;}
Varint[0][6]=0; i1=0; while(i1<=9 && Varint[0][6]==0) {Varint[0][6]=(CandleTimeFrame==TimeFrame[i1])*TF[i1]; i1++;}
i1=1; while(i1<=2) {i2=3; while(i2<=4) {i3=1; while(i3<=e1+1)
{Dot[i1-1][0][i2]=(Dot[i1-1][0][i2] || Dot[i1-1][i3][i2]); 
Dot[i1-1][0][i2-2]=(Dot[i1-1][0][i2-2] || Dot[i1-1][i3][i2-2]); 
i3++;} i2++;} i1++;}
i1=1; while(i1<=2) {i2=1; while(i2<=e1+1) {Dot[i1-1][i2][7]=(Dot[i1-1][i2][1] || Dot[i1-1][i2][2]); i2++;} i1++;}
Dot[0][1][8]=(StopLossAtrMultiplier>0 || TakeProfitAtrMultiplier1>0 || TakeProfitAtrMultiplier2>0 || BreakEvenAtrMultiplier>0 || LockAtrMultiplier>0 || TrailingStopAtrMultiplier>0);
Dot[0][2][8]=Dot[0][1][7]; Dot[1][2][8]=(Dot[0][1][7] || Dot[1][1][7]);
Dot[0][3][8]=Dot[0][3][7]; Dot[1][3][8]=(Dot[0][3][7] || Dot[1][3][7]);
Dot[0][4][8]=Dot[0][4][7]; Dot[1][4][8]=(Dot[0][4][7] || Dot[1][4][7]);
Dot[0][5][8]=Dot[0][5][7]; Dot[1][5][8]=(Dot[0][5][7] || Dot[1][5][7]);
Dot[0][6][8]=Dot[0][6][7]; Dot[1][6][8]=(Dot[0][6][7] || Dot[1][6][7]);
Dot[0][e2][2]=OppositeSignalExit; Dot[1][e2][2]=OppositeSignalExit;
Dot[0][1][9]=true; Dot[0][3][9]=true; Dot[0][4][9]=true; Dot[0][5][9]=true; Dot[0][6][9]=true;

PartialClose[1]=PartialClose1; PartialClose[2]=PartialClose2; PartialClose[3]=PartialClose3;
if (PartialClose[1]>=100) {PartialClose[1]=100; PartialClose[2]=0; PartialClose[3]=0;}
if (PartialClose[2]>=100) {PartialClose[2]=100; PartialClose[3]=0;}
if (PartialClose[3]>=100) {PartialClose[3]=100;} PartialClose[4]=100;
if (PartialClose[1]+PartialClose[2]>100) {PartialClose[2]=100-PartialClose[1]; PartialClose[3]=0;}
if (PartialClose[2]+PartialClose[3]>100) {PartialClose[3]=100-PartialClose[2];}
if (PartialClose[1]+PartialClose[3]>100) {PartialClose[3]=100-PartialClose[1]-PartialClose[2]; PartialClose[3]*=(PartialClose[3]>0);}
if (PartialClose[2]>0) {PartialClose[2]/=(100-PartialClose[1])*0.01;}
if (PartialClose[3]>0) {PartialClose[3]/=(100-PartialClose[1]-PartialClose[2])*0.01;}
Str[0][1]=TradingSession1; Str[0][2]=TradingSession2; Str[0][3]=TradingSession3;
i1=1; while(i1<=3) {if (Str[0][i1]=="00002400") {i2=1; while(i2<=3) {Str[0][i2]="00002400"; i2++;}}
if (StringSubstr(Str[0][i1],0,2)=="24") {Str[0][i1]="00000000";}
if (StrToInteger(StringSubstr(Str[0][i1],0,2))>24 || StrToInteger(StringSubstr(Str[0][i1],4,2))>24) {Str[0][i1]="00000000";} 
if (StringSubstr(Str[0][i1],0,4)==StringSubstr(Str[0][i1],4,4)) {Str[0][i1]="00000000";} i1++;}
TradingTime[9]=(Str[0][1]!="00002400"); i1=1; while(i1<=3) {i2=1; while(i2<=2)
{Varstring[i1][i2]=StringConcatenate(StringSubstr(Str[0][i1],(i2-1)*4,2),":",StringSubstr(Str[0][i1],(i2-1)*4+2,2));
i2++;} i1++;}
Varstring[1][3]=StringConcatenate(StringSubstr(FridayCloseHour,0,2),":",StringSubstr(FridayCloseHour,2,2));
if (TradingTime[9]) {Screen[0][0][3]="Trading hours "; i1=1; while(i1<=3)
{if (Str[0][i1]!="00000000") {Screen[0][0][3]=StringConcatenate(Screen[0][0][3],Varstring[i1][1]," to ",Varstring[i1][2],", ");}
i1++;}} Screen[0][0][3]=StringSubstr(Screen[0][0][3],0,StringLen(Screen[0][0][3])-2);
i1=0; while(i1<=200) {i2=0; while(i2<=40) 
{gvosl[i1][i2]=StringConcatenate(Symbol(),MagicNumber,"osl",i1,i2); 
gvotp[i1][i2]=StringConcatenate(Symbol(),MagicNumber,"otp",i1,i2); 
gvoti[i1][i2]=StringConcatenate(Symbol(),MagicNumber,"oti",i1,i2);
gvoso[i1][i2]=StringConcatenate(Symbol(),MagicNumber,"oso",i1,i2); 
gvosc[i1][i2]=StringConcatenate(Symbol(),MagicNumber,"osc",i1,i2);
gvopc[i1][i2]=StringConcatenate(Symbol(),MagicNumber,"opc",i1,i2);
gvova[i1][i2]=StringConcatenate(Symbol(),MagicNumber,"ova",i1,i2);        
i2++;} i1++;}
if (IsTesting()) {ScreenShots=false; Alerts=0; NewsFilter=false;
i1=0; while(i1<=200) {GlobalVariableDel(gvoti[i1][0]); i1++;}}
i1=0; while(i1<=20+(Hedge+1)*2*MaxOrders) {ScreenComment[i1]=StringConcatenate("Comment",i1); ObjectCreate(ScreenComment[i1],23,0,0,0); 
if (i1!=3) {Screen[0][0][i1]="";} i1++;}
Screen[0][30][1]="DSS Bressert"; Screen[0][30][3]="NonLagMA"; Screen[0][30][4]="PriceChannelStop";
Screen[0][30][e2]="opposite signal"; Screen[0][30][31]="take profit";
Screen[0][30][32]="stop loss"; Screen[0][30][33]="Friday close";
Screen[0][31][1]=" profit is "; Screen[0][31][2]=" loss is ";
Screen[0][31][3]="Long order"; Screen[0][31][4]="Short order";
TradingTime[1]=true; TradingTime[3]=true; TradingTime[4]=true; 
OTime[2]=0; OTime[4]=0; OTime[10]=0; StartProgression=MathMax(StartProgression,2); 
MaxProgression=MathMax(MaxProgression,2); MaxProgression=MathMin(MaxProgression,99);
Varbool[0][0]=(!IsTesting() || IsVisualMode());
Varbool[0][2]=(TrailingStopPips>0 || TrailingStopAtrMultiplier>0);
Varbool[0][3]=(BreakEvenPips>0 || BreakEvenAtrMultiplier>0);
return(0);}

int deinit() {return(0);}

int start()
{// Entry and exit signals **************************************************************************************
if (OTime[1]!=iTime(Symbol(),Varint[0][5],0)) {OTime[1]=iTime(Symbol(),Varint[0][5],0);
i1=1; while(i1<=3) {i2=0; while(i2<=7)
{if (Dot[1][2][8] && i2>=1 && i2<=2) 
{Ind[i1][i2][2]=iCustom(Symbol(),Varint[1][5],"DSS Bressert",EMA_period,Stochastic_period,i2,i1);}
if (Dot[1][3][8] && i2==0) 
{Ind[i1][i2][3]=iCustom(Symbol(),Varint[3][5],"NonLagMA_v7.1",Price,Length,Displace,PctFilter,1,1,Deviation,i2,i1);}
if (Dot[1][4][8] && i2>=0 && i2<=3) 
{Ind[i1][i2][4]=iCustom(Symbol(),Varint[4][5],"PriceChannel_Stop_v1.2",ChannelPeriod,Risk,Signal,Line,0,0,1,Nbars,i2,i1);}
if (Dot[1][5][8] && i2>=0 && i2<=2) 
{Ind[i1][i2][5]=iCustom(Symbol(),Varint[5][5],"Center of Gravity",false,"","","",false,0,bars_back,m,i,kstd,sName,i2,i1);}
if (Dot[1][6][8] && i2>=0 && i2<=2) 
{Ind[i1][i2][6]=iCustom(Symbol(),Varint[6][5],"Center of Gravity",false,"","","",false,0,bars_back,m,i,kstd,sName,i2,i1);}
i2++;} i1++;}

i1=1; while(i1<=2) {i5=3-2*i1; i2=1; while(i2<=2)
{EntrySignal[i2][1][i1]=(Ind[i2][i1][2]>0);
EntrySignal[i2][2][i1]=(i5*((2-i1)*100-Ind[i2][i1][2])-DSSBressertLevel>0);
EntrySignal[i2][3][i1]=(i5*(Ind[i2][0][3]-Ind[i2+1][0][3])>0);
EntrySignal[i2][4][i1]=(Ind[i2][i1-1][4]>0 || Ind[i2][i1+1][4]>0);
EntrySignal[i2][5][i1]=(i5*(Ind[i2][0][5]-Ind[i2+1][0][5])>0);
EntrySignal[i2][6][i1]=(i5*(Ind[i2][0][6]-Close[i2])>COGPercent*0.01*MathAbs(Ind[i2][0][6]-Ind[i2][3-i1][6]));
i2++;} i1++;}

i1=1; while (i1<=2) {i3=1; while (i3<=2) 
{EntrySignal[i1][0][i3+2]=(Dot[i1-1][0][1] && (Dot[i1-1][0][3] || Dot[i1-1][0][4])); 
EntrySignal[i1][0][i3]=true; Temp[i1][i3]=0; Temp[i1][i3+2]=0; i2=1; while (i2<=e1)
{EntrySignal[i1][i2][i3+2]=(EntrySignal[i1][i2][i3] || !Dot[i1-1][i2][1] || (!Dot[i1-1][i2][3] && !Dot[i1-1][i2][4]));
Temp[i1][i3]+=((!EntrySignal[i1][i2][i3] && Dot[i1-1][i2][1] && Dot[i1-1][i2][3]) || !Dot[i1-1][0][3]);
Temp[i1][i3+2]+=(EntrySignal[i1][i2][i3] && Dot[i1-1][i2][1] && Dot[i1-1][i2][4] && Dot[i1-1][0][4]);
EntrySignal[i1][i2][i3]=(EntrySignal[i1][i2][i3] || !Dot[1][i2][1]); 
EntrySignal[i1][0][i3]*=EntrySignal[i1][i2][i3]; EntrySignal[i1][0][i3+2]*=EntrySignal[i1][i2][i3+2];
i2++;} 
EntrySignal[i1][0][i3+2]=(EntrySignal[i1][0][i3+2] || Temp[i1][i3]==0 || Temp[i1][i3+2]>0); i3++;} i1++;}

i1=1; while (i1<=2) {i5=3-2*i1;
ExitSignal[1][1][i1]=(Ind[1][3-i1][2]>0);
ExitSignal[1][3][i1]=(i5*(Ind[2][0][3]-Ind[1][0][3])>0);
ExitSignal[1][4][i1]=(Ind[1][2-i1][4]>0 || Ind[1][4-i1][4]>0);
ExitSignal[1][5][i1]=(i5*(Ind[2][0][5]-Ind[1][0][5])>0);
ExitSignal[1][6][i1]=(i5*(Close[1]-Ind[1][0][6])>COGPercent*0.01*MathAbs(Ind[1][0][6]-Ind[1][i1][6]));
i1++;}

i1=1; while (i1<=2) {ExitSignal[1][0][i1]=false; i2=1; while (i2<=e2-1)
{ExitSignal[1][i2][i1]=(ExitSignal[1][i2][i1] && Dot[1][i2][2]); 
ExitSignal[1][0][i1]=(ExitSignal[1][0][i1] || ExitSignal[1][i2][i1]); i2++;} i1++;}

}

i2=0; while(i2<=7)
{if (Dot[0][1][8] && i2==0) {Ind[0][i2][1]=iATR(Symbol(),0,ATRPeriod,0);}
if (Dot[0][2][8] && i2>=1 && i2<=2) 
{Ind[0][i2][2]=iCustom(Symbol(),Varint[1][5],"DSS Bressert",EMA_period,Stochastic_period,i2,0);}
if (Dot[0][3][8] && i2==0) 
{Ind[0][i2][3]=iCustom(Symbol(),Varint[3][5],"NonLagMA_v7.1",Price,Length,Displace,PctFilter,1,1,Deviation,i2,0);}
if (Dot[0][4][8] && i2>=0 && i2<=3) 
{Ind[0][i2][4]=iCustom(Symbol(),Varint[4][5],"PriceChannel_Stop_v1.2",ChannelPeriod,Risk,Signal,Line,0,0,1,Nbars,i2,0);}
if (Dot[0][5][8] && i2>=0 && i2<=2) 
{Ind[0][i2][5]=iCustom(Symbol(),Varint[5][5],"Center of Gravity",false,"","","",false,0,bars_back,m,i,kstd,sName,i2,0);
Ind[1][i2][5]=iCustom(Symbol(),Varint[5][5],"Center of Gravity",false,"","","",false,0,bars_back,m,i,kstd,sName,i2,1);}
if (Dot[0][6][8] && i2>=0 && i2<=2) 
{Ind[0][i2][6]=iCustom(Symbol(),Varint[6][5],"Center of Gravity",false,"","","",false,0,bars_back,m,i,kstd,sName,i2,0);}
i2++;}
i1=1; while (i1<=2)
{i5=3-2*i1; EntrySignal[0][1][i1]=(Ind[0][i1][2]>0);
EntrySignal[0][2][i1]=(i5*((2-i1)*100-Ind[0][i1][2])-DSSBressertLevel>0);
EntrySignal[0][3][i1]=(i5*(Ind[0][0][3]-Ind[1][0][3])>0);
EntrySignal[0][4][i1]=(Ind[0][i1-1][4]>0 || Ind[0][i1+1][4]>0);
EntrySignal[0][5][i1]=(i5*(Ind[0][0][5]-Ind[1][0][5])>0);
EntrySignal[0][6][i1]=(i5*(Ind[0][0][6]-Bid)>COGPercent*0.01*MathAbs(Ind[0][0][6]-Ind[0][3-i1][6]));
i1++;}

i1=1; while (i1<=2) {EntrySignal[0][0][i1]=true; i2=1; while (i2<=e1)
{EntrySignal[0][i2][i1]=(EntrySignal[0][i2][i1] || !Dot[0][i2][1]); EntrySignal[0][0][i1]*=(EntrySignal[0][i2][i1]);
i2++;} i1++;}

EntrySignal[0][0][1]*=(EntrySignal[1][0][1] && !EntrySignal[1][0][3] && !EntrySignal[2][0][3]);
EntrySignal[0][0][2]*=(EntrySignal[1][0][2] && !EntrySignal[1][0][4] && !EntrySignal[2][0][4]);

i1=1; while (i1<=2)
{ExitSignal[0][0][i1]=false; ExitSignal[0][30][i1]=false; ExitSignal[0][e2][i1]=false; i5=3-2*i1;
if (Trade[i1]>0)
{ExitSignal[0][1][i1]=(Ind[0][3-i1][2]>0);
ExitSignal[0][3][i1]=(i5*(Ind[1][0][3]-Ind[0][0][3])>0);
ExitSignal[0][4][i1]=(Ind[0][2-i1][4]>0 || Ind[0][4-i1][4]>0);
ExitSignal[0][5][i1]=(i5*(Ind[1][0][5]-Ind[0][0][5])>0);
ExitSignal[0][6][i1]=(i5*(Bid-Ind[0][0][6])>COGPercent*0.01*MathAbs(Ind[0][0][6]-Ind[0][i1][6]));
ExitSignal[0][e2][i1]=EntrySignal[0][0][3-i1];
i2=1; while (i2<=e2)
{ExitSignal[0][i2][i1]=(ExitSignal[1][i2][i1] || (ExitSignal[0][i2][i1] && Dot[0][i2][2])); 
ExitSignal[0][0][i1]=(ExitSignal[0][0][i1] || ExitSignal[0][i2][i1]); 
ExitSignal[0][30][i1]=(ExitSignal[0][30][i1] || (ExitSignal[0][i2][i1] && Dot[0][i2][9])); i2++;} 
ExitSignal[0][0][i1]=(ExitSignal[0][0][i1] || ExitSignal[1][0][i1]);} i1++;}

// Order management ************************************************************************************************                                              
i1=0; while (i1<=4) {Trade[i1]=0; i1++;} i1=1; while (i1<=Varint[0][2]) {OTicket[i1][0]=0; i1++;}
Varint[0][2]=0; OProfit[0][1]=0; OProfit[0][2]=0;
i9=OrdersTotal()-1; while(i9>=0)
{if (OrderSelect(i9,SELECT_BY_POS,MODE_TRADES) && OrderSymbol()==Symbol() && OrderMagicNumber()==MagicNumber)
{i0=OrderType()+1; Timi[1]=Bid; Timi[2]=Ask; z0=(i0==1)-(i0==2); 
FindSeat(OrderTicket()); VisibleTPSL(); Trade[i0]++; Trade[i0+2]+=(OrderOpenTime()>=iTime(Symbol(),Varint[0][6],0));
OComment[k0][0]=OrderComment(); OType[k0][0]=i0; OOTime[k0][0]=OrderOpenTime(); OTicket[k0][0]=OrderTicket();
OProfit[k0][0]=OrderProfit()+OrderSwap()+OrderCommission(); OProfit[0][i0]+=OProfit[k0][0];

// Stop loss calculation ***********************************************************************************************
if (ClassicSL || HighLowSL)
{Temp[1][0]=Distance[6]+StopLossAtrMultiplier*Ind[0][0][1];
if (GlobalVariableGet(gvosl[k0][0])==0)
{if (ClassicSL) {Temp[1][1]=OrderOpenPrice();}
if (HighLowSL) 
{Temp[1][1]=(i0==1)*Low[iLowest(Symbol(),0,1,BarsBack,1)]+(i0==2)*High[iHighest(Symbol(),0,2,BarsBack,1)];  
if (z0*(OrderOpenPrice()-Temp[1][1])+Temp[1][0]<Distance[7]) {Temp[1][1]=OrderOpenPrice(); Temp[1][0]=Distance[7];}}
GlobalVariableSet(gvosl[k0][0],NormalizeDouble(Temp[1][1]-z0*Temp[1][0],Digits));}}

// Break even ***********************************************************************************************************                                                 
if (Varbool[0][3])
{Temp[0][1]=Distance[8]+BreakEvenAtrMultiplier*Ind[0][0][1]; Temp[0][2]=Distance[9]+LockAtrMultiplier*Ind[0][0][1];
if (z0*(Timi[i0]-OrderOpenPrice())-Temp[0][1]>=0 && (z0*(OrderOpenPrice()-GlobalVariableGet(gvosl[k0][0]))+Temp[0][2]>0 || GlobalVariableGet(gvosl[k0][0])==0))      
{GlobalVariableSet(gvosl[k0][0],NormalizeDouble(OrderOpenPrice()+z0*Temp[0][2],Digits));}}

// Trailing stop ******************************************************************************************************** 
if (Varbool[0][2]) {Temp[0][0]=Distance[10]+TrailingStopAtrMultiplier*Ind[0][0][1];
if (z0*(Timi[i0]-OrderOpenPrice())-Temp[0][0]>=0 && z0*(Timi[i0]-OrderOpenPrice())-Distance[11]>=0 && (z0*(Timi[i0]-GlobalVariableGet(gvosl[k0][0]))-Temp[0][0]-Distance[12]>=0 || GlobalVariableGet(gvosl[k0][0])==0))
{GlobalVariableSet(gvosl[k0][0],NormalizeDouble(Timi[i0]-z0*Temp[0][0],Digits));}}

// Order close at signal ***************************************************************************************
if (GlobalVariableGet(gvopc[k0][8])==OrderTicket() && !IsTradeContextBusy()) 
{if (OrderClose(OrderTicket(),GlobalVariableGet(gvopc[k0][7]),Timi[i0],Slippage,Arrow[i0]))
{if (GlobalVariableGet(gvopc[k0][7])!=OrderLots()) {FindSeat(0-OrderTicket());}}}
ExitSignal[0][31][i0]=(CalcTP()>0 && z0*(Timi[i0]-GlobalVariableGet(gvotp[k0][0]))>=0);
ExitSignal[0][32][i0]=(GlobalVariableGet(gvosl[k0][0])>0 && z0*(GlobalVariableGet(gvosl[k0][0])-Timi[i0])>=0);
ExitSignal[0][33][i0]=(!TradingTime[3]);
ExitSignal[0][30][i0+2]=(ExitSignal[0][30][i0] && GlobalVariableGet(gvopc[k0][4])==0 && Time[0]>OOTime[k0][0] && (OProfit[k0][0]>=0 || !CloseIfProfit));
ExitSignal[0][e2][i0+2]=(ExitSignal[0][e2][i0] && (OProfit[k0][0]>=0 || !CloseIfProfit));
if (ExitSignal[0][31][i0] || ExitSignal[0][32][i0] || ExitSignal[0][33][i0] || ExitSignal[0][e2][i0+2] || ExitSignal[0][30][i0+2])
{if (ExitSignal[0][33][i0]) {ExitSignal[0][32][i0]=false; ExitSignal[0][31][i0]=false; ExitSignal[0][30][i0+2]=false; ExitSignal[0][e2][i0+2]=false;}
if (ExitSignal[0][32][i0] || ExitSignal[0][31][i0]) {ExitSignal[0][30][i0+2]=false; ExitSignal[0][e2][i0+2]=false;}
if (ExitSignal[0][e2][i0+2]) {ExitSignal[0][30][i0+2]=false;}

i6=GlobalVariableGet(gvopc[k0][1])+1; GlobalVariableSet(gvopc[k0][1],i6);
i7=ExitSignal[0][e2][i0+2]*e2+ExitSignal[0][31][i0]*31+ExitSignal[0][32][i0]*32+ExitSignal[0][33][i0]*33; 
if (ExitSignal[0][30][i0+2]) 
{GlobalVariableSet(gvopc[k0][4],1); i7=0; i1=1; while(i1<=e2-1 && i7==0) 
{i7=(ExitSignal[0][i1][i0] && Dot[0][i1][9])*i1; i1++;}}
if (ExitSignal[0][31][i0]) 
{i5=GlobalVariableGet(gvopc[k0][3])+1; GlobalVariableSet(gvopc[k0][3],i5); GlobalVariableSet(gvotp[k0][0],0);}

GlobalVariableSet(gvopc[k0][10+i6],i7); if (PartialClose[i6]>0)
{Temp[0][0]=MathMax(MarketInfo(Symbol(),MODE_MINLOT),NormalizeDouble(OrderLots()*PartialClose[i6]*0.01,Varint[0][0]));
Temp[0][0]=MathMin(Temp[0][0],OrderLots());}
if (ExitSignal[0][e2][i0+2] || ExitSignal[0][32][i0] || ExitSignal[0][33][i0]) {Temp[0][0]=OrderLots();}
if (Temp[0][0]>0) {if (OrderClose(OrderTicket(),Temp[0][0],Timi[i0],Slippage,Arrow[i0]))
{if (Temp[0][0]!=OrderLots()) {FindSeat(0-OrderTicket());}}
GlobalVariableSet(gvopc[k0][8],OrderTicket()); GlobalVariableSet(gvopc[k0][7],Temp[0][0]);}}

} i9--;}
Trade[0]=Trade[1]+Trade[2];
// Close all trades ****************************************************************************************
i1=1; while(i1<=2)
{i7=CloseOneDirection*i1; Temp[0][0]=OProfit[0][i1]+(!CloseOneDirection)*OProfit[0][3-i1];
i6=(CloseAllLoss<=MathAbs(Temp[0][0]*100/AccountBalance()) && Temp[0][0]<0 && CloseAllLoss>0); 
i6+=(CloseAllProfit<=Temp[0][0]*100/AccountBalance() && CloseAllProfit>0); 
if (i6>0) {CloseAll(i7);} i1++;}

// Order opening at signal ****************************************************************************************
if (TradingHours()) {i1=1; while(i1<=2)
{if (EntrySignal[0][0][i1] && (Trade[3-i1]==0 || Hedge) && Trade[i1]<MaxOrders && Trade[i1+2]==0 && Distance[15]>=(Distance[15]>0)*(Ask-Bid))
{if (CandleOrder(i1) && OrderDistance(i1)) {RefreshRates(); Timi[1]=Bid; Timi[2]=Ask;
OrderSend(Symbol(),i1-1,CalcLots(i1),Timi[3-i1],Slippage,0,0,TradeComment,MagicNumber,0,Arrow[i1]);}}
i1++;}}
ScreenAlerts(); ScreenInfo(); return(0);}
//Functions *********************************************************************************************************************

bool TradingHours()
{if (TimeCurrent()>OTime[4] && NewsFilter)
{MinutesUntilNextEvent=iCustom(Symbol(),0,"FFCal",IncludeHigh,IncludeMedium,IncludeLow,IncludeSpeaks,true,0,true,-1,-1,ReportAllForUSD,1,1);
MinutesAfterPrevEvent=iCustom(Symbol(),0,"FFCal",IncludeHigh,IncludeMedium,IncludeLow,IncludeSpeaks,true,0,true,-1,-1,ReportAllForUSD,1,0);
if (MinutesUntilNextEvent!=99999 || MinutesAfterPrevEvent!=99999)
{OTime[2]=iTime(Symbol(),1,0)-(MinutesAfterPrevEvent-MinutesAfterNews)*60;
OTime[3]=iTime(Symbol(),1,0)+(MinutesUntilNextEvent-MinutesBeforeNews)*60;
OTime[4]=iTime(Symbol(),1,0)+(MinutesUntilNextEvent+MinutesAfterNews)*60;}}
TradingTime[2]=(TimeCurrent()>OTime[2] && (TimeCurrent()<OTime[3] || TimeCurrent()>OTime[4]));
if (TradingTime[9] && TimeCurrent()>=OTime[10])
{TradingTime[1]=false; t1=1; while(t1<=3 && !TradingTime[1])
{In[t1][1]=StrToTime(Varstring[t1][1]); In[t1][2]=StrToTime(Varstring[t1][2]);
In[t1][1]-=(In[t1][2]<In[t1][1] && TimeCurrent()<In[t1][2])*86400;
In[t1][2]+=(In[t1][2]<In[t1][1] && TimeCurrent()>=In[t1][2])*86400;
TradingTime[1]=(TimeCurrent()>=In[t1][1] && TimeCurrent()<In[t1][2]); OTime[10]=In[t1][2]; t1++;}
if (!TradingTime[1]) {OTime[10]=StrToTime("24:00"); t1=1; while(t1<=3)
{t5=In[t1][1]; if (t5>TimeCurrent() && t5<OTime[10]) {OTime[10]=t5;} t1++;}}}
TradingTime[3]=!(DayOfWeek()==5 && TimeCurrent()>=StrToTime(Varstring[1][3]) && Varstring[1][3]!=":");
t5=(TradingTime[1] && TradingTime[2] && TradingTime[3]); return(t5);}

bool CandleOrder(int t8)
{t5=0; t9=OrdersHistoryTotal()-1; while(t9>=0 && t5==0)
{t5+=(OrderSelect(t9,SELECT_BY_POS,MODE_HISTORY) && OrderSymbol()==Symbol() && OrderMagicNumber()==MagicNumber && OrderType()==t8-1 && OrderOpenTime()>=iTime(Symbol(),Varint[0][6],0));
t9--;} return(1-t5);}

double CalcLots(int t8)
{d1=Lots; if (MoneyManagement)
{d1=NormalizeDouble(AccountEquity()*LeveragePercent/((MarketInfo(Symbol(),MODE_LOTSIZE)==100000)*100000+(MarketInfo(Symbol(),MODE_LOTSIZE)==10000)*10000),Varint[0][0]);}
if (Trade[t8]==0) {GlobalVariableSet(gvova[1][t8],0);}
if (LotPercent!=0) {t7=GlobalVariableGet(gvova[1][t8]);  
if (t7>0)
{t3=(t7-StartProgression+2); t3=(t3>0)*MathMin(t3,MaxProgression-StartProgression+1);
d2=GlobalVariableGet(gvova[2][t8]);
d1=NormalizeDouble(d2*(1+t3*LotPercent*0.01),Varint[0][0]);}}
d1=MathMin(MathMax(d1,MarketInfo(Symbol(),MODE_MINLOT)),MarketInfo(Symbol(),MODE_MAXLOT));
if (Trade[t8]==0) {GlobalVariableSet(gvova[2][t8],d1);}
return(d1);}

double CalcTP()
{if (Varint[0][3]>0)
{if (GlobalVariableGet(gvotp[k0][5])==0)
{Temp[0][1]=Distance[4]+TakeProfitAtrMultiplier1*Ind[0][0][1]; Temp[0][2]=0;
if (Distance[4]>0 && Distance[5]>0) {Temp[0][1]=Distance[4]; Temp[0][2]=Distance[5];}
if (TakeProfitAtrMultiplier1>0 && TakeProfitAtrMultiplier2>0) 
{Temp[0][1]=TakeProfitAtrMultiplier1*Ind[0][0][1]; Temp[0][2]=TakeProfitAtrMultiplier2*Ind[0][0][1];}
if (Distance[4]>0 && TakeProfitAtrMultiplier1>0)
{Temp[0][3]=Distance[4]; Temp[0][4]=TakeProfitAtrMultiplier1*Ind[0][0][1];
Temp[0][1]=MathMin(Temp[0][3],Temp[0][4]); Temp[0][2]=MathMax(Temp[0][3],Temp[0][4]);}
GlobalVariableSet(gvotp[k0][1],Temp[0][1]); GlobalVariableSet(gvotp[k0][2],Temp[0][2]); GlobalVariableSet(gvotp[k0][5],1);}
if (GlobalVariableGet(gvotp[k0][0])==0 && GlobalVariableGet(gvopc[k0][3])<Varint[0][3])
{t7=GlobalVariableGet(gvopc[k0][3])+1;
GlobalVariableSet(gvotp[k0][0],NormalizeDouble(OrderOpenPrice()+z0*GlobalVariableGet(gvotp[k0][t7]),Digits));}}
return(GlobalVariableGet(gvotp[k0][0]));}

bool OrderDistance(int t8)
{t2=1; if (Distance[13]>0 || NewHighLow) {d1=0; t3=0; t4=0; t5=0; t9=OrdersTotal()-1; while(t9>=0)
{if (OrderSelect(t9,SELECT_BY_POS,MODE_TRADES) && OrderSymbol()==Symbol() && OrderMagicNumber()==MagicNumber && OrderType()+1==t8 && OrderOpenTime()>t3)
{t3=OrderOpenTime(); d1=OrderOpenPrice();} t9--;}
RefreshRates(); Timi[1]=Bid; Timi[2]=Ask; t5=3-2*t8; t2=(MathAbs(d1-Timi[3-t8])>=Distance[13] || Distance[13]==0 || d1==0);
t2*=(t5*(d1-Timi[3-t8])>0 || !NewHighLow || d1==0);}
return(t2);}

void FindSeat(int t7)
{if (t7>0)
{k0=0; t1=1; while (t1<=200 && k0==0) {k0=(t7==GlobalVariableGet(gvoti[t1][0]))*t1; t1++;}

if (k0==0) {t5=OrderType()+1; t3=0; t9=OrdersTotal()-1; while(t9>=0)
{if (OrderSelect(t9,SELECT_BY_POS,MODE_TRADES) && OrderSymbol()==Symbol() && OrderMagicNumber()==MagicNumber)
{t3++; In[0][t3]=OrderTicket();} t9--;}
t1=1; while (t1<=200 && k0==0) {t4=0; t2=1; while (t2<=t3 && t4==0)
{t4=(In[0][t2]==GlobalVariableGet(gvoti[t1][0])); t2++;}
k0=(t4==0)*t1; t1++;} if (k0>0) {Variables(k0,t5); GlobalVariableSet(gvoti[k0][0],t7);}} 
Varint[0][2]=MathMax(k0,Varint[0][2]);}

if (t7<0) {t7=0-t7; t3=0; Str[0][0]=StringConcatenate("#",t7);
t9=OrdersTotal()-1; while(t9>=0 && t3==0)
{if (OrderSelect(t9,SELECT_BY_POS,MODE_TRADES) && OrderSymbol()==Symbol() && OrderMagicNumber()==MagicNumber && OrderComment()!=TradeComment)
{t3=(StringFind(OrderComment(),Str[0][0],0)>=0)*OrderTicket();} t9--;}
GlobalVariableSet(gvoti[k0][0],t3);} 
OrderSelect(t7,SELECT_BY_TICKET);}

void Variables(int t8,int t6)
{GlobalVariableSet(gvosl[t8][0],0); 
t1=0; while (t1<=20) {GlobalVariableSet(gvopc[t8][t1],0); GlobalVariableSet(gvotp[t8][t1],0); t1++;}
if (LotPercent!=0) {t1=GlobalVariableGet(gvova[1][t6]); GlobalVariableSet(gvova[1][t6],t1+1);}}

void VisibleTPSL()
{if (OTicket[k0][1]!=OrderTicket())
{OTicket[k0][1]=OrderTicket(); if (OrderStopLoss()==0 && OrderTakeProfit()==0 && (Distance[2]>0 || Distance[3]>0))
{Temp[0][1]=OrderOpenPrice()-z0*Distance[3]; 
Temp[0][3]=Timi[i0]-z0*(Distance[1]+MarketInfo(Symbol(),MODE_STOPLEVEL)*Point);
Temp[0][5]=NormalizeDouble((Distance[3]>0)*MathMin(Temp[0][1],Temp[0][3]),Digits);
if (i0==2) {Temp[0][5]=NormalizeDouble((Distance[3]>0)*MathMax(Temp[0][1],Temp[0][3]),Digits);}
Temp[0][2]=OrderOpenPrice()+z0*Distance[2];
Temp[0][4]=Timi[i0]+z0*(Distance[1]+MarketInfo(Symbol(),MODE_STOPLEVEL)*Point);
Temp[0][6]=NormalizeDouble((Distance[2]>0)*MathMax(Temp[0][2],Temp[0][4]),Digits);
if (i0==2) {Temp[0][6]=NormalizeDouble((Distance[2]>0)*MathMin(Temp[0][2],Temp[0][4]),Digits);}
if (!OrderModify(OrderTicket(),OrderOpenPrice(),Temp[0][5],Temp[0][6],0,Arrow[i0]))
{OTicket[k0][1]=0;}}}}

void CloseAll(int t8) 
{t9=OrdersTotal()-1; while(t9>=0)
{if (OrderSelect(t9,SELECT_BY_POS,MODE_TRADES) && OrderSymbol()==Symbol() && OrderMagicNumber()==MagicNumber && (OrderType()+1==t8 || t8==0))
{t0=OrderType()+1; RefreshRates(); Timi[1]=Bid; Timi[2]=Ask;
if (!OrderClose(OrderTicket(),OrderLots(),Timi[t0],Slippage,Arrow[t0])) {t9++;}} t9--;}}

void ScreenAlerts()
{if (ScreenShots || Alerts>0)
{t1=1; while(t1<=Varint[0][2]) {t6=OTicket[t1][0]; t2=OType[t1][0];
if (OTicket[t1][0]>0 && OComment[t1][0]==TradeComment && GlobalVariableGet(gvoso[t1][0])!=OTicket[t1][0]) 
{if (ScreenShots) {WindowScreenShot(StringConcatenate(TimeFrame[tf],Varstring[30][1],t6,"Open.gif"),800,600,-1,-1,-1);}
GlobalVariableSet(gvoso[t1][0],t6); GlobalVariableSet(gvosc[t1][0],t6); OrderAlert(1,t2,t6);}
t7=GlobalVariableGet(gvosc[t1][0]);
if ((OTicket[t1][0]>0 && OComment[t1][0]!=TradeComment && t7!=OTicket[t1][0] && t7!=0) || (OTicket[t1][0]==0 && t7!=0))
{if (ScreenShots) {WindowScreenShot(StringConcatenate(TimeFrame[tf],Varstring[30][1],t7,"Close.gif"),800,600,-1,-1,-1);}
GlobalVariableSet(gvosc[t1][0],OTicket[t1][0]); OrderAlert(2,t2,t7);} t1++;}}}

void OrderAlert(int t3,int t4,int t5)
{if ((Alerts==1 || Alerts==3) && t3==1) {Alert(StringConcatenate(Screen[0][31][t4+2]," #",t5," has been opened"));
if (AlertSound!="") {PlaySound(AlertSound);}}
if ((Alerts==2 || Alerts==3) && t3==2) {Alert(StringConcatenate(Screen[0][31][t4+2]," #",t5," has been closed"));
if (AlertSound!="") {PlaySound(AlertSound);}}}

void ScreenInfo()
{if (Varbool[0][0])
{if (TradingTime[9]) {Screen[0][0][2]=StringConcatenate("Server time ",TimeToStr(TimeCurrent(),2));
Screen[0][0][4]="We are outside trading hours"; if (TradingTime[1]) {Screen[0][0][4]="We are inside trading hours";}}
if (NewsFilter) {Screen[0][0][5]="We are outside news period";
if (!TradingTime[2]) {Screen[0][0][5]="We are inside news period";}
if (MinutesUntilNextEvent==99999 && MinutesAfterPrevEvent==99999)
{Screen[0][0][5]="No news data received from FFCal indicator";}}
t1=7; while(t1<=11+(Hedge+1)*2*MaxOrders) {Screen[0][0][t1]=""; t1++;}

if ((CloseAllProfit>0 || CloseAllLoss>0) && Trade[1]+Trade[2]>0)
{d1=(OProfit[0][1]+OProfit[0][2])*100/AccountBalance(); t1=(d1<0);
Screen[0][0][8]=StringConcatenate("Total",Screen[0][31][t1+1],DoubleToStr(d1,2),"%");
if (CloseOneDirection) {Screen[0][0][8]=""; t1=1; while(t1<=2)
{if (Trade[t1]>0) {d1=OProfit[0][t1]*100/AccountBalance();
Screen[0][0][8]=StringConcatenate(Screen[0][0][8],Screen[0][31][t1+2],"s",Screen[0][31][(d1<0)+1],DoubleToStr(d1,2),"% ,");}
t1++;}
Screen[0][0][8]=StringSubstr(Screen[0][0][8],0,StringLen(Screen[0][0][8])-2);}}

t8=9; t1=1; while(t1<=Varint[0][2] && Trade[0]>0) 
{if (OTicket[t1][0]>0)
{t8+=2; t5=OType[t1][0]; t3=(GlobalVariableGet(gvotp[t1][0])>0); t4=(GlobalVariableGet(gvosl[t1][0])>0);
Screen[0][0][t8]=StringConcatenate(Screen[0][31][2+t5]," #",OTicket[t1][0]," take profit ",DoubleToStr(GlobalVariableGet(gvotp[t1][0]),t3*Digits),", stop loss ",DoubleToStr(GlobalVariableGet(gvosl[t1][0]),t4*Digits));
Screen[0][0][t8+1]=""; if (OComment[t1][0]!=TradeComment) {t2=1; while(t2<=4) {t6=GlobalVariableGet(gvopc[t1][10+t2]);
if (t6>0) {Screen[0][0][t8+1]=StringConcatenate(Screen[0][0][t8+1],Screen[0][30][t6],", ");} t2++;}
Screen[0][0][t8+1]=StringConcatenate("Exits: ",Screen[0][0][t8+1]); 
Screen[0][0][t8+1]=StringSubstr(Screen[0][0][t8+1],0,StringLen(Screen[0][0][t8+1])-2);}} t1++;}

t2=12; t1=1; while(t1<=11+(Hedge+1)*2*MaxOrders) 
{ObjectSetText(ScreenComment[t1],Screen[0][0][t1],8,"Verdana",White); ObjectSet(ScreenComment[t1],OBJPROP_CORNER,0); 
ObjectSet(ScreenComment[t1],OBJPROP_XDISTANCE,2); ObjectSet(ScreenComment[t1],OBJPROP_YDISTANCE,t2);
if (Screen[0][0][t1]!="") {t2+=10;} t1++;} }}


