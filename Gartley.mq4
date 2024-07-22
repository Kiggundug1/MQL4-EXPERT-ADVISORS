#property copyright "xxxx"
#property link      "http"

#property stacksize 16384
#property indicator_chart_window

#property indicator_buffers 6
#property indicator_color1 Magenta
#property indicator_color2 Green
#property indicator_color3 DeepSkyBlue
#property indicator_color4 LightSkyBlue
#property indicator_color5 LemonChiffon
#property indicator_color6 OrangeRed

int xIndi=11;
int mnBs=8;
int mnSz=55;
int xDev=5;
int xBckstp=3;
int GrssPd=1440;
double mnPct=0;
int xPnt=11;
bool xStlZZ=true;
int xFibSttcNm=2;
int xFibTpe=1;
string xFibTpeFr="0,0.382,0.618,0.786,1,1.272,1.618";
color xFibD=Sienna;
color xFibS=Teal;
int xPPWthBs=0;
int xHddn=1;
int xFrctl=7;
int xFrctlNd=7;
int xFibChce=2;
double xDlt=0.04;
int xDltTp=2;
int xSzTxt=7;
color xLn=DarkBlue;
color xLn886=Purple;
color xNtFib=SlateGray;
color xPsnt=Yellow;
color xGart886=GreenYellow;
color clrPPttrn;
int mxDpt=33;
int mnDpt=3;
bool DirOfsrchMxMn=true;
int mxBToD=15;
bool RngForPntD=true;
color xClrRngForPntD=Red;
double xDltGart=0.09;
color xClrPttrns=Blue;
double xCD=0.886;
int xPtchfrkDin=0;
int xPtchfrkSttic=0;
int xPtchfrkStticNm=3;
color xLnPtchfrkD=MediumSlateBlue;
color xLnPtchfrkS=MediumBlue;
color xPtchfrkStticColor=CLR_NONE;
int xPtchfrkStl=1;
bool xFibFnExp=true;
color xFibFnD=Sienna;
color xFibFanS=Teal;
color xFibFnMdinDinClr=CLR_NONE;
color xFibFnMdinStticClr=CLR_NONE;
color xFibTm1C=Teal;
color xFibTm2C=Sienna;
color xPivZnDinClr=CLR_NONE;
color xPivZnStticClr=CLR_NONE;
bool xPivZnFrmwrk=false;
bool xRLn=true;
bool xRLnBz=true;
datetime xDtTmPtchfrk_1=D'15.06.1989 00:00';
datetime xDtTmPtchfrk_2=D'08.03.1995 00:00';
datetime xDtTmPtchfrk_3=D'26.10.2000 00:00';
int xCM_0_1A_2B_Din=0,ExtCM_0_1A_2B_Static=0;
double  xCM_FibDin=0.618,ExtCM_FiboStatic=0.618;
color xFibFnClr=CLR_NONE;
int xFibFnNm=0;
int xFibExp=0;
color xFibExpClr=Yellow;
color xVLDinClr=CLR_NONE;
color xVLSttcClr=CLR_NONE;
int xVLSttcNm=0;
int xArcDinNm=0;
int xArcSttcNm=0;
color xArcDinClr=Sienna;
color xArcSttcClr=Teal;
double xArcDinScl= 0;
double xArcSttcScl=0;
bool chHL_PkDet_or_vts=true;
int nbOfBs=1000;
int nbOfVTS=13;
int nbOfVTS1=1;
color xObClr=CLR_NONE;
int xObStl=1;
int xObWdt=0;
bool ZZHiLo=true;
bool xBck=true;
int xCmplkt=0;
double zz[];
double zzL[];
double zzH[];
double nen_ZZ[];
double fi[];
string fitxt[];
string fitxt100[];
int Szfi=0,Szfi_1=0;
color xLn_;
int mnBsSv,mnBsX;
double nb[64];
string nbtxt[64];
int nbFib[64];
int nbPsvnt[64];
int nbGart[64];
int nbMx[64];
int nbGilQual[64];
int nbGilGeo[64];
int nbGilHarm[64];
int nbGilArthmc[64];
int nbGilGldnMn[64];
int nbSq[64];
int nbCb[64];
int nbRect[64];
int nbX[64];
string nameOb,nameObtxt,save;
bool desc_b=false;
string PPWthBs,desc;
int afr[]={0,0,0,0,0,0,0,0,0,0};
double afrl[]={0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0},afrh[]={0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0},afrx[]={0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0};
double opnTF[]={0.0,0.0,0.0,0.0,0.0},clsTF[]={0.0,0.0,0.0,0.0,0.0},loTF[]={0.0,0.0,0.0,0.0,0.0},hiTF[]={0.0,0.0,0.0,0.0,0.0};
double cls_TF=0;
string TF[]={"MN","W1","D1","H4","H1","m30","m15","m5","m1"};
string Period_tf;
bool afrm=true;
double ExtHL;
double HL,HLp,kk,kj,Angl;
double LoPrm,HiPrm,LoLst,HiLst;
int nmLoPrm,nmHiPrm,nmLoLst,nmHiLst,k,k1,k2,ki,kiPRZ=0,cntLo1,cntHi1,pos,pos1;
string txtkk;
int tmFr1nw;
int cntFr;
int cntbEnd=0,TmbNd;
int nmB=0;
int nmOb;
bool flgFrNw=false;
bool flgGart=false;
int prTF;
bool Dmo;
double int_to_d=0,int_to_d1=0,int_to_d2=0;
int cntd_bs,cbi,iBr;
double ASBr;
double ha[],la[],hi,li,si,sip,di,hm,lm,ham[],lam[],him,lim,lLst=0,hLst=0;
int fs=0,fsp,countBar;
int ai,aip,bi,bip,ai0,aip0,bi0,bip0;
datetime tai,tbi,taip,tbip,ti;
bool fh=false,fl=false,fcnt0;
double lLst_m=0,hLst_m=0;
int cntbX;
int cntbl,cntbh;
bool hi_nen;
bool init_zz=true;
int mFib[]={0,0},mPtch[]={0,0,0},mFn[]={0,0},mExp[]={0,0,0},mVL[]={0,0,0},mArcS[]={0,0},mArcD[]={0,0};
int mPtchTm[]={0,0,0};
int mPtchTmSv;
double mPtchCn[]={0.0,0.0,0.0};
double ms[2];
string vBllBr="";
string vNmPttrn="";
int mxPk,vPtOnOff,vPtNw=0;
double hB,lB;
datetime tiZZ;
bool FlgForD=true;
datetime TmForDmn=0;
datetime TmForDmx=0;
double LvlForDmn=0;
double LvlForDmx=0;
static int Ndb=0;
static double Ndpr=0;

double CrossUp[];
double CrossDown[];
double prevtime;
double Range,AvgRange;

//+------------------------------------------------------------------+
//| Custom indicator initialization function                         |
//+------------------------------------------------------------------+

int init()
{
   string aa,aa1;int aa2,i;mnBsSv=mnBs;
   IndicatorBuffers(8);
   if(xStlZZ){SetIndexStyle(0,DRAW_SECTION);}
   else {SetIndexStyle(0,DRAW_ARROW);SetIndexArrow(0,159);}
   SetIndexLabel(0,"ZUP"+xCmplkt+" (zz"+xIndi+")");
   if(chHL_PkDet_or_vts)
   {
      SetIndexLabel(1,"ZUP"+xCmplkt+" zz"+xIndi+" H_PeakDet");
      SetIndexLabel(3,"ZUP"+xCmplkt+" zz"+xIndi+" H_chHL");
      SetIndexLabel(4,"ZUP"+xCmplkt+" zz"+xIndi+" L_chHL");
   }
   else
   {
      SetIndexLabel(1,"ZUP"+xCmplkt+" zz"+xIndi+" H_vts");
      SetIndexLabel(3,"ZUP"+xCmplkt+" zz"+xIndi+" H_vts1");
      SetIndexLabel(4,"ZUP"+xCmplkt+" zz"+xIndi+" L_vts1");
   }
   SetIndexBuffer(0,zz);
   SetIndexBuffer(6,zzL);
   SetIndexBuffer(7,zzH);

   SetIndexStyle(1,DRAW_LINE,STYLE_DOT);
   SetIndexBuffer(1,ham);

   SetIndexStyle(3,DRAW_LINE,STYLE_DOT);
   SetIndexStyle(4,DRAW_LINE,STYLE_DOT);
   SetIndexBuffer(3,ha);
   SetIndexBuffer(4,la);

   //SetIndexStyle(2,DRAW_ARROW,EMPTY,2);
   //SetIndexArrow(2,233);
   SetIndexBuffer(2,CrossUp);
   //SetIndexStyle(5,DRAW_ARROW,EMPTY,2);
   //SetIndexArrow(5,234);
   SetIndexBuffer(5,CrossDown);
   
   SetIndexEmptyValue(0,0.0);
   SetIndexEmptyValue(1,0.0);
   SetIndexEmptyValue(2,0.0);
   SetIndexEmptyValue(3,0.0);
   SetIndexEmptyValue(4,0.0);
   SetIndexEmptyValue(5,0.0);
   SetIndexEmptyValue(6,0.0);
   SetIndexEmptyValue(7,0.0);

   if(xIndi<6||xIndi>10)
   {
      switch (Period())
      {
         case 1:{Period_tf=TF[8];break;}case 5:{Period_tf=TF[7];break;}case 15:{Period_tf=TF[6];break;}case 30:{Period_tf=TF[5];break;}
         case 60:{Period_tf=TF[4];break;}case 240:{Period_tf=TF[3];break;}case 1440:{Period_tf=TF[2];break;}case 10080:{Period_tf=TF[1];break;}
         case 43200:{Period_tf=TF[0];break;}
      }
   }
   else
      switch (GrssPd)
      {
         case 1:{Period_tf=TF[8];break;}case 5:{Period_tf=TF[7];break;}case 15:{Period_tf=TF[6];break;}case 30:{Period_tf=TF[5];break;}
         case 60:{Period_tf=TF[4];break;}case 240:{Period_tf=TF[3];break;}case 1440:{Period_tf=TF[2];break;}case 10080:{Period_tf=TF[1];break;}
         case 43200:{Period_tf=TF[0];break;}
      }
   if(xIndi==1)if(mnSz!=0)di=mnSz*Point/2;
   if(xIndi==2){di=mnSz*Point;countBar=mnBs;}
   if(xIndi==3){countBar=mnBs;}
   if(xIndi>5&&xIndi<11&&GrssPd>Period())
   {
      if(GrssPd==43200&&Period()==10080)mxBToD=mxBToD*5;else mxBToD=mxBToD*GrssPd/Period();
   }
   if(xIndi<6 ||xIndi>10)GrssPd=Period();if(xFibTpe<0)xFibTpe=0;if(xFibTpe>2)xFibTpe=2;
   if(xFibTpe==2)
   {
      i=-1;aa2=0;
      while (aa2>=0)
      {
         aa2=StringFind(xFibTpeFr,",",i+1);
         if(aa2>=0)
           {i=aa2;Szfi++;}
         else
         {
            if(StringLen(xFibTpeFr)-i>0)
            {
               if(StrToDouble(StringSubstr(xFibTpeFr,i+1))>0)Szfi++;
               arrResize(Szfi);aa1=xFibTpeFr;
               for(i=0;i<Szfi;i++)
               {
                  aa2=StringFind(aa1,",",0);fitxt[i]=StringTrimLeft(StringTrimRight(StringSubstr(aa1,0,aa2)));fi[i]=StrToDouble(fitxt[i]);
                  if(fi[i]<1)fitxt[i]=StringSubstr(fitxt[i],1);
                  fitxt100[i]=DoubleToStr(100*fi[i],1);
                  if(aa2>=0)aa1=StringSubstr(aa1,aa2+1);
               }
            }
         }
      }
   }
   if(xDlt<=0)xDlt=0.001;if(xDlt>1)xDlt=0.999;if(xHddn<0)xHddn=0;if(xHddn>5)xHddn=5;
   if(xDltTp<0)xDltTp=0;if(xDltTp>3)xDltTp=3;if(xFibChce<0)xFibChce=0;if(xFibChce>11)xFibChce=11;
   if(xFrctlNd>0)
   {
      if(xFrctlNd<1)xFrctlNd=1;
   }
   if(xPtchfrkSttic>4)xPtchfrkSttic=4;if(xPtchfrkDin>4)xPtchfrkDin=4;
   if(xCM_0_1A_2B_Din<0)xCM_0_1A_2B_Din=0;if(xCM_0_1A_2B_Din>5)xCM_0_1A_2B_Din=5;
   if(ExtCM_0_1A_2B_Static<0)ExtCM_0_1A_2B_Static=0;if(ExtCM_0_1A_2B_Static>5)ExtCM_0_1A_2B_Static=5;
   if(xCM_FibDin<0)xCM_FibDin=0;if(xCM_FibDin>1)xCM_FibDin=1;
   if(ExtCM_FiboStatic<0)ExtCM_FiboStatic=0;if(ExtCM_FiboStatic>1)ExtCM_FiboStatic=1;
   if(xPtchfrkStticNm<3)xPtchfrkStticNm=3;if(xFibSttcNm<2)xFibSttcNm=2;
   if(xFibSttcNm>9){aa=DoubleToStr(xFibSttcNm,0);aa1=StringSubstr(aa,0,1);mFib[0]=StrToInteger(aa1);aa1=StringSubstr(aa,1,1);mFib[1]=StrToInteger(aa1);}
   else{mFib[0]=xFibSttcNm;mFib[1]=xFibSttcNm-1;}
   if(xFibFnNm<1)xFibFnNm=1;
   if(xFibFnNm>9)
   {
      aa=DoubleToStr(xFibFnNm,0);aa1=StringSubstr(aa,0,1);mFn[0]=StrToInteger(aa1);aa1=StringSubstr(aa,1,1);mFn[1]=StrToInteger(aa1);
   }
   else
   {
      mFn[0]=xFibFnNm;mFn[1]=xFibFnNm-1;
   }
   if(xPtchfrkStticNm>99)
   {
      aa=DoubleToStr(xPtchfrkStticNm,0);aa1=StringSubstr(aa,0,1);mPtch[0]=StrToInteger(aa1);aa1=StringSubstr(aa,1,1);
      mPtch[1]=StrToInteger(aa1);aa1=StringSubstr(aa,2,1);mPtch[2]=StrToInteger(aa1);
   }
   else
   {
      mPtch[0]=xPtchfrkStticNm;mPtch[1]=xPtchfrkStticNm-1;mPtch[2]=xPtchfrkStticNm-2;
   }
   if(xFibExp<2)xFibExp=0;
   if(xFibExp>0)
   {
      if(xFibExp>99)
      {
         aa=DoubleToStr(xFibExp,0);aa1=StringSubstr(aa,0,1);mExp[0]=StrToInteger(aa1);aa1=StringSubstr(aa,1,1);
         mExp[1]=StrToInteger(aa1);aa1=StringSubstr(aa,2,1);mExp[2]=StrToInteger(aa1);
      }
      else
      {
         mExp[0]=xFibExp;mExp[1]=xFibExp-1;mExp[2]=xFibExp-2;
      }
   }
   if(xVLSttcNm>0)
   {
      if(xVLSttcNm<2)xVLSttcNm=2;
      if(xVLSttcNm>99)
      {
         aa=DoubleToStr(xVLSttcNm,0);aa1=StringSubstr(aa,0,1);mVL[0]=StrToInteger(aa1);aa1=StringSubstr(aa,1,1);
         mVL[1]=StrToInteger(aa1);aa1=StringSubstr(aa,2,1);mVL[2]=StrToInteger(aa1);
      }
      else
      {
         mVL[0]=xVLSttcNm;mVL[1]=xVLSttcNm-1;mVL[2]=xVLSttcNm-2;
      }
   }
   if(xArcSttcNm>0)
   {
      if(xArcSttcNm<2)xArcSttcNm=2;if(xArcSttcNm<12&&xArcSttcNm>9)xArcSttcNm=9;
      if(xArcSttcNm>=12)
      {
         aa=DoubleToStr(xArcSttcNm,0);aa1=StringSubstr(aa,1,1);mArcS[0]=StrToInteger(aa1);aa1=StringSubstr(aa,0,1);mArcS[1]=StrToInteger(aa1);
         if(mArcS[0]==0){xArcSttcNm=0;mArcS[1]=0;}
      }
      else
      {
         mArcS[1]=xArcSttcNm;mArcS[0]=xArcSttcNm-1;
      }
   }
   if(xArcDinNm>0)
   {
      if(xArcDinNm>90)xArcSttcNm=90;
      if(xArcDinNm>9)
      {
         aa=DoubleToStr(xArcDinNm,0);aa1=StringSubstr(aa,1,1);mArcD[0]=StrToInteger(aa1);aa1=StringSubstr(aa,0,1);mArcD[1]=StrToInteger(aa1);
         if(mArcD[0]>0)mArcD[0]=0;
      }
      else
      {
         mArcD[1]=0;mArcD[0]=xArcDinNm;
      }
   }
   if(ExtCM_0_1A_2B_Static==4||xCM_0_1A_2B_Din==4)
   {
      for(i=Bars-1;i>-1;i--)
      {
         ASBr=ASBr + iHigh(NULL,GrssPd,i)-iLow(NULL,GrssPd,i)+ Point;
      }
      ASBr=ASBr/Bars;
   }
   array_();prTF=Period();Dmo=IsDemo();delete_objects1();
   return(0);
}

int deinit()
{
   int i;delete_objects_dinamic();delete_objects3();

   ObjectDelete("fiboS" + xCmplkt+"_");
   ObjectDelete("fiboFanS" + xCmplkt+"_");
   ObjectDelete("RLineS" + xCmplkt+"_");
   ObjectDelete("pitchforkS" + xCmplkt+"_");
   ObjectDelete("pmedianaS" + xCmplkt+"_");
   ObjectDelete("1-2pmedianaS" + xCmplkt+"_");
   ObjectDelete("fiboTime1" + xCmplkt+"_");ObjectDelete("fiboTime2" + xCmplkt+"_");
   ObjectDelete("UTL" + xCmplkt+"_");ObjectDelete("LTL" + xCmplkt+"_");
   ObjectDelete("UWL" + xCmplkt+"_");ObjectDelete("LWL" + xCmplkt+"_");
   ObjectDelete("ISL_S" + xCmplkt+"_");
   ObjectDelete("CL" + xCmplkt+"_");
   ObjectDelete("PivotZoneS" + xCmplkt+"_");
   ObjectDelete("FanMedianaStatic" + xCmplkt+"_");
   ObjectDelete("FiboFan" + xCmplkt+"_");
   ObjectDelete("FiboArcS" + xCmplkt+"_");

   Comment("");
   for(i=0;i<7;i++)
   {
      nameOb="VLS"+i+" " + xCmplkt+"_";ObjectDelete(nameOb);
   }
   return(0);
}

int start()
{
   if((xIndi==6||xIndi==7||xIndi==8||xIndi==10)&&Period()>GrssPd)
   {
      for(iBr=Bars-1;iBr>0;iBr--){zzL[iBr]=0.0;zzH[iBr]=0.0;zz[iBr]=0.0;nen_ZZ[iBr]=0.0;}
      init_zz=true;
      return;
   }
   cntd_bs=IndicatorCounted();
   if(prTF!=Period())
   {
      delete_objects1();prTF=Period();
   }
   if(Dmo!=IsDemo())
   {
      delete_objects1();Dmo=IsDemo();cntd_bs=0;
   }
   if(Bars-IndicatorCounted()>2)
   {
      cbi=Bars-1;tiZZ=0;
      for(iBr=cbi;iBr>0;iBr--){zzL[iBr]=0.0;zzH[iBr]=0.0;zz[iBr]=0.0;nen_ZZ[iBr]=0.0;}
      init_zz=true;afrm=true;delete_objects_dinamic();delete_objects3();
   }
   else cbi=Bars-IndicatorCounted()+1;
   if(lB<=iLow(NULL,GrssPd,0)&&hB>=iHigh(NULL,GrssPd,0)&&tiZZ==iTime(NULL,GrssPd,0))return(0);
   else
   {
      lB=iLow(NULL,GrssPd,0);hB=iHigh(NULL,GrssPd,0);tiZZ=iTime(NULL,GrssPd,0);
      switch (xIndi)
      {
         case 0:{ZigZag_();break;}case 1:{ang_AZZ_();break;}case 2:{Ensign_ZZ();break;}case 3:{Ensign_ZZ();break;}
         case 4:{ZigZag_tauber();break;}case 5:{GannSwing();break;}case 6:{nenZigZag();break;}case 7:{nenZigZag();break;}
         case 8:{nenZigZag();break;}case 10:{nenZigZag();break;}
         case 11:
         {
            ZigZag_();
            if(vPtOnOff==1&&vPtNw==0)
            {
               afrm=true;delete_objects_dinamic();vPtNw=1;flgGart=true;cntd_bs=0;mnBsSv=mnBsX;
            }
            else if(vPtOnOff==0&&vPtNw==1)
            {
               afrm=true;delete_objects_dinamic();vPtNw=0;flgGart=true;cntd_bs=0;FlgForD=true;mnBsSv=mnBsX;
            }
            else if(mnBsSv!=mnBsX)
            {
               afrm=true;delete_objects_dinamic();vPtNw=1;flgGart=true;cntd_bs=0;mnBsSv=mnBsX;
            }
            break;
         } 
         case 12:{ZZTalex(mnBs);break;}
         case 13:{ZigZag_SQZZ();break;}      
      }
   }
   if(xHddn<5)
   {
      if(!chHL_PkDet_or_vts){i_vts();i_vts1();}matriza();
   }
   if(xHddn>0&&xHddn<5)
   {
      if(Bars-cntd_bs>2||flgFrNw)
      {
         if(cntbEnd==0)
         {
            if(xFrctlNd>0)
            {
               k=xFrctlNd;
               for(pos=0;pos<Bars&&k>0;pos++)
               { 
                  if(zz[pos]>0&&zzH[pos]>0){cntbEnd=pos;TmbNd=Time[pos];k--;}
               }
            }
            else 
            {
               cntbEnd=Bars-3;TmbNd=Time[Bars-3];
            }
         }
         else
         {
            cntbEnd=iBarShift(Symbol(),Period(),TmbNd);
         }
      }
      if(Bars-cntd_bs<3)
      {
         for(pos1=0;pos1<Bars;pos1++)
         {
            if(zz[pos1]>0.0&&(zzH[pos1]==zz[pos1]||zzL[pos1]==zz[pos1]))
            {
               tmFr1nw=Time[pos1];
               break;
            }
         }
         pos=iBarShift(Symbol(),Period(),afr[0]);
         if((zzH[pos1]>0&&afrl[0]>0)||(zzL[pos1]>0&&afrh[0]>0))
         {
            xPtchfrkSttic=0;xFibExp=0;xFibFnNm=0;
         }
         if(tmFr1nw!=afr[0])
         {
            flgFrNw=true;
            if(pos>=pos1)nmB=pos;else nmB=pos1;
            afrm=true;
         }
         if(afrh[0]>0&&zz[pos]==0.0)
         {
            flgFrNw=true;
            if(nmB<pos)nmB=pos;
            afrm=true;
         }
         if(afrl[0]>0&&zz[pos]==0.0)
         {
            flgFrNw=true;
            if(nmB<pos)nmB=pos;
            afrm=true;
         }
         if(afrh[0]-High[pos]!=0&&afrh[0]>0)
         {
            flgFrNw=true;nmB=0;delete_objects2(afr[0]);afrh[0]=High[pos];
            if(xPtchfrkDin>0)screenPitchforkD();if(xVLDinClr>0)VLD();if(mVL[2]==0&&xVLSttcNm>0)VLS();
            if(xPtchfrkSttic>0)
            {
               if(mPtch[2]==0)screenPitchforkS();
            }
            if(mExp[2]==0&&xFibExp>0)FiboExpansion();if(mFn[1]==0&&xFibFnNm>0&&xFibFnClr>0)screenFiboFan();
            if(xArcDinNm>0)screenFiboArcD();if(xArcSttcNm>0)screenFiboArcS();
         }
         if(afrl[0]-Low[pos]!=0&&afrl[0]>0)
         {
            flgFrNw=true;nmB=0;delete_objects2(afr[0]);afrl[0]=Low[pos];
            if(xVLDinClr>0)VLD();if(mVL[2]==0&&xVLSttcNm>0)VLS();
            if(xPtchfrkSttic>0)
            {
               if(mPtch[2]==0)screenPitchforkS();
            }
            if(mExp[2]==0&&xFibExp>0)FiboExpansion();if(mFn[1]==0&&xFibFnNm>0&&xFibFnClr>0)screenFiboFan();
            if(xArcDinNm>0)screenFiboArcD();if(xArcSttcNm>0)screenFiboArcS();
         }
         cntbEnd=iBarShift(Symbol(),Period(),TmbNd);
         for(k=0;k<5;k++)
         {
            if(afrh[k]>0)
            {
               pos=iBarShift(Symbol(),Period(),afr[k]);
               if(zz[pos]==0)
               {
                  flgFrNw=true;
                  if(pos>nmB)nmB=pos;
                  afrm=true;nmHiPrm=pos;nmHiLst=0;HiLst=0.0;
                  for(k1=pos+1;k1<=cntbEnd;k1++)
                  {
                     if(zzH[k1]>0)
                     {
                        if(ZZHiLo)HiLst=High[k1];else HiLst=zzH[k1];
                        nmHiLst=k1;nameOb="_" + xCmplkt + "ph" + Time[nmHiPrm] + "_" + Time[nmHiLst];
                        nmOb=ObjectFind(nameOb);
                        if(nmOb>-1)
                        {
                           ObjectDelete(nameOb);
                           nameObtxt="_" + xCmplkt + "phtxt" + Time[nmHiPrm] + "_" + Time[nmHiLst];
                           ObjectDelete(nameObtxt);
                        }
                     }
                  }
               }
            }
            if(afrl[k]>0)
            {
               pos=iBarShift(Symbol(),Period(),afr[k]);
               if(zz[pos]==0)
               {
                  flgFrNw=true;
                  if(pos>nmB)nmB=pos;
                  afrm=true;nmLoPrm=pos;nmLoLst=0;LoLst=10000000;
                  for(k1=pos+1;k1<=cntbEnd;k1++)
                  {
                     if(zzL[k1]>0)
                     {
                        if(ZZHiLo)LoLst=Low[k1];else LoLst=zzL[k1];
                        nmLoLst=k1;nameOb="_" + xCmplkt + "pl" + Time[nmLoPrm] + "_" + Time[nmLoLst];
                        nmOb=ObjectFind(nameOb);
                        if(nmOb>-1)
                        {
                           ObjectDelete(nameOb);
                           nameObtxt="_" + xCmplkt + "pltxt" + Time[nmLoPrm] + "_" + Time[nmLoLst];
                           ObjectDelete(nameObtxt);
                        }
                     }
                  }
               }
            }
         }
         matriza ();
      }
      cntFractal();
      if(Bars-cntd_bs>2)
      {
         nmLoPrm=0;nmLoLst=0;nmHiPrm=0;nmHiLst=0;LoPrm=0.0;LoLst=0.0;HiPrm=0.0;HiLst=0.0;Angl=-100;
         if(flgFrNw&&!flgGart)cntFr=1;
         else cntFr=xFrctl;
         for(k=0;(k<Bars-1&&cntHi1>0&&cntFr>0);k++)
         {
            if(zzL[k]>0.0&&(zzL[k]<LoPrm||LoPrm==0.0)&&HiPrm>0&&zzL[k]==zz[k])
            {
               if(ZZHiLo)LoPrm=Low[k];else LoPrm=zzL[k];
               nmLoPrm=k;
            }
            if(zzH[k]>0.0&&zzH[k]==zz[k])
            {
               if(HiPrm>0)
               {
                  if(ZZHiLo)HiLst=High[k];else HiLst=zzH[k];
                  nmHiLst=k;HL=HiLst-LoPrm;kj=(HiPrm-HiLst)*1000/(nmHiLst-nmHiPrm);
                  if(HL>0&&(Angl>=kj||Angl==-100))
                  {
                     Angl=kj;HLp=HiPrm-LoPrm;k1=MathCeil((nmHiPrm+nmHiLst)/2);kj=HLp/HL;
                     if(xPPWthBs==0)PPWthBs="";
                     else if(xPPWthBs==1)PPWthBs=" ("+(nmHiLst-nmHiPrm)+")";
                     else if(xPPWthBs==2)PPWthBs=" ("+(nmHiLst-nmLoPrm)+"-"+(nmLoPrm-nmHiPrm)+")";
                     else if(xPPWthBs==3)
                     {
                        int_to_d1=(nmLoPrm-nmHiPrm);int_to_d2=(nmHiLst-nmLoPrm);int_to_d=int_to_d1/int_to_d2;PPWthBs=" ("+DoubleToStr(int_to_d,2)+")";
                     }
                     else if(xPPWthBs==4)
                      {
                        int_to_d1=(Time[nmLoPrm]-Time[nmHiPrm]);int_to_d2=(Time[nmHiLst]-Time[nmLoPrm]);int_to_d=int_to_d1/int_to_d2;PPWthBs=" ("+DoubleToStr(int_to_d,2)+")";
                     }
                     else if(xPPWthBs==5)
                     {
                        int_to_d1=(nmLoPrm-nmHiPrm)*(High[nmHiPrm]-Low[nmLoPrm]);int_to_d2=(nmHiLst-nmLoPrm)*(High[nmHiLst]-Low[nmLoPrm]);
                        int_to_d=int_to_d1/int_to_d2;PPWthBs=" ("+DoubleToStr(int_to_d,2)+")";
                     }
                     else if(xPPWthBs==7)
                     {
                        int_to_d1=((High[nmHiLst]-Low[nmLoPrm])/Point)/(nmHiLst-nmLoPrm);int_to_d2=((High[nmHiPrm]-Low[nmLoPrm])/Point)/(nmLoPrm-nmHiPrm);
                        PPWthBs=" ("+DoubleToStr(int_to_d1,3)+"/"+DoubleToStr(int_to_d2,3)+")";
                     }
                     xLn_=xLn;
                     if(kj>0.1&&kj<9.36)
                     {
                        kk=kj;k2=1;Pesavento_patterns();
                        if(k2<0)
                        {
                          xLn_=xLn886;
                          if(xHddn!=4)
                          {
                             nameOb="_" + xCmplkt + "phtxt" + Time[nmHiPrm] + "_" + Time[nmHiLst];
                             ObjectCreate(nameOb,OBJ_TEXT,0,Time[k1],(HiPrm+HiLst)/2);
                             if(xPPWthBs==6)
                             {
                                int_to_d=MathAbs((kk-kj)/kk)*100;
                                PPWthBs=" ("+DoubleToStr((LoPrm+(HiLst-LoPrm)*kk-HiPrm)/Point,0)+"/"+DoubleToStr(int_to_d,2)+"%)";
                             }
                             desc=txtkk;
                             ObjectSetText(nameOb,txtkk+PPWthBs,xSzTxt,"Arial",clrPPttrn);
                             if(xPPWthBs==6)PPWthBs="";
                          }
                        }
                        else
                        {
                           if(xHddn==1||xHddn==4)
                           {
                              nameOb="_" + xCmplkt + "phtxt" + Time[nmHiPrm] + "_" + Time[nmHiLst];
                              ObjectCreate(nameOb,OBJ_TEXT,0,Time[k1],(HiPrm+HiLst)/2);
                              desc=DoubleToStr(kk,3);
                              if(xDltTp==3)
                              {
                                 ObjectSetText(nameOb,""+DoubleToStr(kk,3)+PPWthBs,xSzTxt,"Arial",clrPPttrn);
                              }
                              else
                              {
                                 ObjectSetText(nameOb,""+DoubleToStr(kk,2)+PPWthBs,xSzTxt,"Arial",clrPPttrn);
                              }
                           }
                        }
                        if((xHddn==2&&k2<0)||xHddn!=2)
                        {
                           nameOb="_" + xCmplkt + "ph" + Time[nmHiPrm] + "_" + Time[nmHiLst];
                           ObjectCreate(nameOb,OBJ_TREND,0,Time[nmHiLst],HiLst,Time[nmHiPrm],HiPrm);
                           if(desc_b)ObjectSetText(nameOb,"ZUP"+xCmplkt+" zz"+xIndi+" PPesavento "+"Line High "+desc);
                           ObjectSet(nameOb,OBJPROP_RAY,false);
                           ObjectSet(nameOb,OBJPROP_STYLE,STYLE_DOT);
                           ObjectSet(nameOb,OBJPROP_COLOR,xLn_);
                           ObjectSet(nameOb,OBJPROP_BACK,xBck);
                        }
                     }
                  }
               }
               else 
               {
                  if(ZZHiLo)HiPrm=High[k];else HiPrm=zzH[k];
                  nmHiPrm=k;
               }
            }
            if(k>cntbEnd)
            {
                k=nmHiPrm+1;cntHi1--;cntFr--;nmLoPrm=0;nmLoLst=0;nmHiPrm=0;nmHiLst=0;LoPrm=0.0;LoLst=0.0;HiPrm=0.0;HiLst=0.0;Angl=-100;
            }
         }
         nmLoPrm=0;nmLoLst=0;nmHiPrm=0;nmHiLst=0;LoPrm=0.0;LoLst=0.0;HiPrm=0.0;HiLst=0.0;Angl=-100;
         if(flgFrNw&&!flgGart)cntFr=1;
         else cntFr=xFrctl;
         flgFrNw=false;flgGart=false;
         for(k=0;(k<Bars-1&&cntLo1>0&&cntFr>0);k++)
         {
            if(zzH[k]>HiPrm&&LoPrm>0)
            {
               if(ZZHiLo)HiPrm=High[k];else HiPrm=zzH[k];
               nmHiPrm=k;
            }
            if(zzL[k]>0.0&&zzL[k]==zz[k])
            {
               if(LoPrm>0)
               {
                  if(ZZHiLo)LoLst=Low[k];else LoLst=zzL[k];
                  nmLoLst=k;HL=HiPrm-LoLst;kj=(LoPrm-LoLst)*1000/(nmLoLst-nmLoPrm);
                  if(HL>0&&(Angl<=kj||Angl==-100))
                  {
                     Angl=kj;HLp=HiPrm-LoPrm;k1=MathCeil((nmLoPrm+nmLoLst)/2);kj=HLp/HL;
                     if(xPPWthBs==0)PPWthBs="";
                     else if(xPPWthBs==1)PPWthBs=" ("+(nmLoLst-nmLoPrm)+")";
                     else if(xPPWthBs==2)PPWthBs=" ("+(nmLoLst-nmHiPrm)+"-"+(nmHiPrm-nmLoPrm)+")";
                     else if(xPPWthBs==3)
                     {
                        int_to_d1=(nmHiPrm-nmLoPrm);int_to_d2=(nmLoLst-nmHiPrm);int_to_d=int_to_d1/int_to_d2;PPWthBs=" ("+DoubleToStr(int_to_d,2)+")";
                     }
                     else if(xPPWthBs==4)
                     {
                        int_to_d1=(Time[nmHiPrm]-Time[nmLoPrm]);int_to_d2=(Time[nmLoLst]-Time[nmHiPrm]);
                        int_to_d=int_to_d1/int_to_d2;PPWthBs=" ("+DoubleToStr(int_to_d,2)+")";
                     }
                     else if(xPPWthBs==5)
                     {
                        int_to_d1=(nmHiPrm-nmLoPrm)*(High[nmHiPrm]-Low[nmLoPrm]);int_to_d2=(nmLoLst-nmHiPrm)*(High[nmHiPrm]-Low[nmLoLst]);
                        int_to_d=int_to_d1/int_to_d2;PPWthBs=" ("+DoubleToStr(int_to_d,2)+")";
                     }
                     else if(xPPWthBs==7)
                     {
                        int_to_d1=((High[nmHiPrm]-Low[nmLoLst])/Point)/(nmLoLst-nmHiPrm);int_to_d2=((High[nmHiPrm]-Low[nmLoPrm])/Point)/(nmHiPrm-nmLoPrm);
                        PPWthBs=" ("+DoubleToStr(int_to_d1,3)+"/"+DoubleToStr(int_to_d2,3)+")";
                     }
                     xLn_=xLn;
                     if(kj>0.1&&kj<9.36)
                     {
                        kk=kj;k2=1;Pesavento_patterns();
                        if(k2<0)
                        {
                           xLn_=xLn886;
                           if(xHddn!=4)                 
                           {
                              nameOb="_" + xCmplkt + "pltxt" + Time[nmLoPrm] + "_" + Time[nmLoLst];
                              ObjectCreate(nameOb,OBJ_TEXT,0,Time[k1],(LoPrm+LoLst)/2);
                              if(xPPWthBs==6)
                              {
                                 int_to_d=MathAbs((kk-kj)/kk)*100;PPWthBs=" ("+DoubleToStr((HiPrm-(HiPrm-LoLst)*kk-LoPrm)/Point,0)+"/"+DoubleToStr(int_to_d,2)+"%)";
                              }
                              desc=txtkk;
                              ObjectSetText(nameOb,txtkk+PPWthBs,xSzTxt,"Arial",clrPPttrn);
                              if(xPPWthBs==6)PPWthBs="";
                           }
                        }
                        else
                        { 
                           if(xHddn==1||xHddn==4)
                           {
                              nameOb="_" + xCmplkt + "pltxt" + Time[nmLoPrm] + "_" + Time[nmLoLst];
                              ObjectCreate(nameOb,OBJ_TEXT,0,Time[k1],(LoPrm+LoLst)/2);
                              desc=DoubleToStr(kk,3);
                              if(xDltTp==3)
                              {
                                 ObjectSetText(nameOb,""+DoubleToStr(kk,3)+PPWthBs,xSzTxt,"Arial",clrPPttrn);
                              }
                              else
                              {
                                 ObjectSetText(nameOb,""+DoubleToStr(kk,2)+PPWthBs,xSzTxt,"Arial",clrPPttrn);
                              }
                           }
                        }
                        if((xHddn==2&&k2<0)||xHddn!=2)
                        {
                           nameOb="_" + xCmplkt + "pl" + Time[nmLoPrm] + "_" + Time[nmLoLst];
                           ObjectCreate(nameOb,OBJ_TREND,0,Time[nmLoLst],LoLst,Time[nmLoPrm],LoPrm);
                           if(desc_b)ObjectSetText(nameOb,"ZUP"+xCmplkt+" zz"+xIndi+" PPesavento "+"Line Low "+desc);
                           ObjectSet(nameOb,OBJPROP_RAY,false);
                           ObjectSet(nameOb,OBJPROP_STYLE,STYLE_DOT);
                           ObjectSet(nameOb,OBJPROP_COLOR,xLn_);
                           ObjectSet(nameOb,OBJPROP_BACK,xBck);
                        }
                     }
                  }
               }
               else
               {
                  nmLoPrm=k;
                  if(ZZHiLo)LoPrm=Low[k];else LoPrm=zzL[k];
               }
             }
             if(k>cntbEnd)
             {
                k=nmLoPrm+1;cntLo1--;cntFr--;nmLoPrm=0;nmLoLst=0;nmHiPrm=0;nmHiLst=0;
                LoPrm=0.0;LoLst=0.0;HiPrm=0.0;HiLst=0.0;Angl=-100;
             }
         }
      }
   }
}

void cntFractal()
{
   int pos;cntLo1=0;cntHi1=0;
   if(flgFrNw&&!flgGart)
   {
      for(pos=0;pos<=nmB;pos++)
      {
         if(zzL[pos]>0.0){cntLo1++;}if(zzH[pos]>0.0){cntHi1++;}    
      }
      nmB=0;cntd_bs=Bars-4;
   }
   else
   {
      if(flgGart){cntd_bs=0;}
      for(pos=0;pos<=cntbEnd;pos++)
      {
         if(zzL[pos]>0.0){cntLo1++;}if(zzH[pos]>0.0){cntHi1++;}
      }
   }
}

void matriza()
{
   if(afrm)
   {
      afrm=false;int pos,k;k=0;
      for(pos=0;pos<Bars&&k<10;pos++)
      {
         if(zz[pos]>0)
         {
            afrx[k]=zz[pos];afr[k]=Time[pos];
            if(zz[pos]==zzL[pos])
            {
               if(ZZHiLo)afrl[k]=Low[pos];
               else
               {
                  if(k==0)afrl[k]=Low[pos];else afrl[k]=zzL[pos];
               }
               afrh[k]=0.0;
            }
            if(zz[pos]==zzH[pos])
            {
               if(ZZHiLo)afrh[k]=High[pos];
               else
               {
                  if(k==0)afrh[k]=High[pos];else afrh[k]=zzH[pos];
               }
               afrl[k]=0.0;
            }
            k++;
         }
      }
      if(xPtchfrkSttic>0)
      {
         if(mPtch[2]>0){screenPitchforkS();xPtchfrkSttic=0;}if(mPtch[2]==0)screenPitchforkS();
      }
      if(xPtchfrkDin>0)screenPitchforkD();
      if(xFibExp>0)
      {
         if(mExp[2]>0){FiboExpansion();xFibExp=0;}if(mExp[2]==0)FiboExpansion();
      }
      if(xFibFnNm>0&&xFibFnClr>0)
      {
         if(mFn[1]>0){screenFiboFan();xFibFnNm=0;}if(mFn[1]==0)screenFiboFan();
      }
      if(xVLSttcClr>0)
      {
         if(mVL[2]>0){xVLSttcNm=0;VLS();}if(mVL[2]==0)VLS();
      }
      if(xVLDinClr>0){VLD();}if(xArcDinNm>0)screenFiboArcD();if(xArcSttcNm>0){screenFiboArcS();xArcSttcNm=0;}
   }
}

void VLS()
{
   VL(mVL[0],mVL[1],mVL[2],xVLSttcClr,"VLS");
}

void VLD()
{
   VL(2,1,0,xVLDinClr,"VLD");
}

void VL(int na,int nb,int nc,color color_line,string vl)
{
   double line_pesavento[7]={0.236,0.382,0.447,0.5,0.618,0.786,0.886},line_fibo[7]={0.236,0.382,0.455,0.5,0.545,0.618,0.764};
   int c_bar1,c_bar2,i;double H_L,mediana,tangens,cena;
   c_bar1=iBarShift(Symbol(),Period(),afr[na])-iBarShift(Symbol(),Period(),afr[nb]);
   c_bar2=iBarShift(Symbol(),Period(),afr[nb])-iBarShift(Symbol(),Period(),afr[nc]);
   if(afrl[na]>0)
   {
     H_L=afrh[nb]-afrl[nc];
     for(i=0;i<7;i++)
     {
        if(xFibTpe==1)
        {
           mediana=line_pesavento[i]*H_L+afrl[nc];tangens=(mediana-afrl[na])/(c_bar1+(1-line_pesavento[i])*c_bar2);
           cena=c_bar2*line_pesavento[i]*tangens+mediana;nameOb=vl+i+" " + xCmplkt+"_";
           ObjectDelete(nameOb);
           ObjectCreate(nameOb,OBJ_TREND,0,afr[na],afrl[na],afr[nc],cena);
           ObjectSetText(nameOb,"ZUP"+xCmplkt+" zz"+xIndi+" "+vl+" "+DoubleToStr(line_pesavento[i]*100,1)+"");
           ObjectSet(nameOb,OBJPROP_COLOR,color_line);
        }
        else
        {
           mediana=line_fibo[i]*H_L+afrl[nc];tangens=(mediana-afrl[na])/(c_bar1+(1-line_fibo[i])*c_bar2);
           cena=c_bar2*line_fibo[i]*tangens+mediana;nameOb=vl+i+" " + xCmplkt+"_";
           ObjectDelete(nameOb);
           ObjectCreate(nameOb,OBJ_TREND,0,afr[na],afrl[na],afr[nc],cena);
           ObjectSetText(nameOb,"ZUP"+xCmplkt+" zz"+xIndi+" "+vl+" "+DoubleToStr(line_fibo[i]*100,1)+"");
           ObjectSet(nameOb,OBJPROP_COLOR,color_line);
        }
     }
   }
   else
   {
     H_L=afrh[nc]-afrl[nb];
     for(i=0;i<7;i++)
     {
        if(xFibTpe==1)
        {
           mediana=afrh[nc]-line_pesavento[i]*H_L;tangens=(afrh[na]-mediana)/(c_bar1+(1-line_pesavento[i])*c_bar2);
           cena=mediana-c_bar2*line_pesavento[i]*tangens;nameOb=vl+i+" " + xCmplkt+"_";
           ObjectDelete(nameOb);
           ObjectCreate(nameOb,OBJ_TREND,0,afr[na],afrh[na],afr[nc],cena);
           ObjectSetText(nameOb,"ZUP"+xCmplkt+" zz"+xIndi+" "+vl+" "+DoubleToStr(line_pesavento[i]*100,1)+"");
           ObjectSet(nameOb,OBJPROP_COLOR,color_line);
        }
        else
        {
           mediana=afrh[nc]-line_fibo[i]*H_L;tangens=(afrh[na]-mediana)/(c_bar1+(1-line_fibo[i])*c_bar2);
           cena=mediana-c_bar2*line_fibo[i]*tangens;nameOb=vl+i+" " + xCmplkt+"_";
           ObjectDelete(nameOb);
           ObjectCreate(nameOb,OBJ_TREND,0,afr[na],afrh[na],afr[nc],cena);
           ObjectSetText(nameOb,"ZUP"+xCmplkt+" zz"+xIndi+" "+vl+" "+DoubleToStr(line_fibo[i]*100,1)+"");
           ObjectSet(nameOb,OBJPROP_COLOR,color_line);
        }
     }
  }
}

void screenPitchforkS()
{
   int i,k1,n,nbase1,nbase2;double a1,b1,c1,ab1,bc1,ab2,bc2,tangens,n1,cl1,ch1,cena;datetime ta1,tb1,tc1,tab2,tbc2,tcl1,tch1;
   bool fo1=false,fo2=false;int pitch_time[]={0,0,0};double pitch_cena[]={0,0,0};double TLine,m618=0.618,m382=0.382;
   int mirror1,mirror2;
   mPtchTm[0]=afr[mPtch[0]];mPtchTm[1]=afr[mPtch[1]];mPtchTm[2]=afr[mPtch[2]];

   if(afrl[mPtch[0]]>0)
   {
      cena=afrl[mPtch[0]];mPtchCn[0]=afrl[mPtch[0]];mPtchCn[1]=afrh[mPtch[1]];mPtchCn[2]=afrl[mPtch[2]];
      if(ExtCM_0_1A_2B_Static==1)
      {
         cena=mPtchCn[0]+(mPtchCn[1]-mPtchCn[0])*ExtCM_FiboStatic;
      }
      else if(ExtCM_0_1A_2B_Static==4)
      {
         mPtchTmSv=mPtchTm[0];mPtchTm[0]=mPtchTm[1];
         if(maxGipotenuza4(mPtchTm,mPtchCn))
         {
            cena=mPtchCn[1]-(mPtchCn[1]-mPtchCn[2])*m618;
         }
         else
         {
            cena=mPtchCn[1]-(mPtchCn[1]-mPtchCn[2])*m382;
         }
      }
      else if(ExtCM_0_1A_2B_Static==5)
      {
         mPtchTmSv=mPtchTm[0];mPtchTm[0]=mPtchTm[1];
         if(maxGipotenuza5(mPtchTm,mPtchCn))
         {
            cena=mPtchCn[1]-(mPtchCn[1]-mPtchCn[2])*m618;
         }
         else
         {
            cena=mPtchCn[1]-(mPtchCn[1]-mPtchCn[2])*m382;
         }
      }
      else if(ExtCM_0_1A_2B_Static>1)
      {
         if(ExtCM_0_1A_2B_Static==2)mPtchTm[0]=mPtchTm[1];
         cena=mPtchCn[1]-(mPtchCn[1]-mPtchCn[2])*ExtCM_FiboStatic;
      }
   }
   else
   {
      cena=afrh[mPtch[0]];mPtchCn[0]=afrh[mPtch[0]];mPtchCn[1]=afrl[mPtch[1]];mPtchCn[2]=afrh[mPtch[2]];
      if(ExtCM_0_1A_2B_Static==1)
      {
         cena=mPtchCn[0]-(mPtchCn[0]-mPtchCn[1])*ExtCM_FiboStatic;
      }
      else if(ExtCM_0_1A_2B_Static==4)
      {
         mPtchTmSv=mPtchTm[0];mPtchTm[0]=mPtchTm[1];
         if(maxGipotenuza4(mPtchTm,mPtchCn))
         {
            cena=mPtchCn[1]+(mPtchCn[2]-mPtchCn[1])*m618;
         }
         else
         {
            cena=mPtchCn[1]+(mPtchCn[2]-mPtchCn[1])*m382;
         }
      }
      else if(ExtCM_0_1A_2B_Static==5)
      {
         mPtchTmSv=mPtchTm[0];
         mPtchTm[0]=mPtchTm[1];
         if(maxGipotenuza5(mPtchTm,mPtchCn))
         {
            cena=mPtchCn[1]+(mPtchCn[2]-mPtchCn[1])*m618;
         }
         else
         {
            cena=mPtchCn[1]+(mPtchCn[2]-mPtchCn[1])*m382;
         }
      }
      else if(ExtCM_0_1A_2B_Static>1)
      {
         if(ExtCM_0_1A_2B_Static==2)mPtchTm[0]=mPtchTm[1];
         cena=mPtchCn[1]+(mPtchCn[2]-mPtchCn[1])*ExtCM_FiboStatic;
      }
   }
   mPtchCn[0]=cena;nameOb="pmedianaS" + xCmplkt+"_";
   ObjectDelete(nameOb);
   coordinaty_1_2_mediany_AP(mPtchCn[0],mPtchCn[1],mPtchCn[2],mPtchTm[0],mPtchTm[1],mPtchTm[2],tab2,tbc2,ab1,bc1);pitch_time[0]=tab2;pitch_cena[0]=ab1;
   if(xPtchfrkSttic==2)
   {
      ObjectCreate(nameOb,OBJ_TREND,0,tab2,ab1,tbc2,bc1);
      ObjectSet(nameOb,OBJPROP_STYLE,STYLE_DASH);
      ObjectSet(nameOb,OBJPROP_COLOR,xLnPtchfrkS);
      ObjectSet(nameOb,OBJPROP_BACK,xBck);
      nameOb="1-2pmedianaS" + xCmplkt+"_";
      ObjectDelete(nameOb);
      ObjectCreate(nameOb,OBJ_TEXT,0,tab2,ab1+3*Point);
      ObjectSetText(nameOb,"+1/2 ML",9,"Arial",xLnPtchfrkS);
   }   
   nameOb="pitchforkS" + xCmplkt+"_";
   ObjectDelete(nameOb);
   if(xPtchfrkSttic!=4)
   {
      pitch_time[0]=mPtchTm[0];pitch_cena[0]=mPtchCn[0];
      if(xPtchfrkSttic==3)pitch_cena[0]=ab1;
   }
   pitch_time[1]=mPtchTm[1];pitch_cena[1]=mPtchCn[1];pitch_time[2]=mPtchTm[2];pitch_cena[2]=mPtchCn[2];
   ObjectCreate(nameOb,OBJ_PITCHFORK,0,pitch_time[0],pitch_cena[0],pitch_time[1],pitch_cena[1],pitch_time[2],pitch_cena[2]);
   if(xPtchfrkStl<5)
   {
      ObjectSet(nameOb,OBJPROP_STYLE,xPtchfrkStl);
   }
   else if(xPtchfrkStl<11)
   {
      ObjectSet(nameOb,OBJPROP_WIDTH,xPtchfrkStl-5);
   }
   ObjectSet(nameOb,OBJPROP_COLOR,xLnPtchfrkS);
   ObjectSet(nameOb,OBJPROP_BACK,xBck);
   if(xFibFnMdinStticClr>0)
   {
      coordinaty_mediany_AP(pitch_cena[0],pitch_cena[1],pitch_cena[2],pitch_time[0],pitch_time[1],pitch_time[2],tb1,b1);
      nameOb="FanMedianaStatic" + xCmplkt+"_";
      ObjectDelete(nameOb);
      ObjectSet(nameOb,OBJPROP_COLOR,CLR_NONE);
      ObjectCreate(nameOb,OBJ_FIBOFAN,0,pitch_time[0],pitch_cena[0],tb1,b1);
      ObjectSet(nameOb,OBJPROP_LEVELSTYLE,STYLE_DASH);
      ObjectSet(nameOb,OBJPROP_LEVELCOLOR,xFibFnMdinStticClr);
      ObjectSet(nameOb,OBJPROP_BACK,xBck);
      if(xFibTpe==0)
      {
         screenFibo_st();
      }
      else if(xFibTpe==1)
      {
         screenFibo_Pesavento();
      }
      else if(xFibTpe==2)
      {
         ObjectSet(nameOb,OBJPROP_FIBOLEVELS,Szfi);
         for(i=0;i<Szfi;i++)
         {
            ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+i,fi[i]);
            ObjectSetFiboDescription(nameOb,i,fitxt100[i]);
         }
      }
   }
   if(xPivZnStticClr>0&&xPtchfrkSttic<4)PivotZone(pitch_time,pitch_cena,xPivZnStticClr,"PivotZoneS");
   if(xPtchfrkStticColor>0)
   {
      n1=iBarShift(Symbol(),Period(),pitch_time[0])-(iBarShift(Symbol(),Period(),pitch_time[1])+iBarShift(Symbol(),Period(),pitch_time[2]))/2.0;
      TLine=pitch_cena[1]-iBarShift(Symbol(),Period(),pitch_time[1])*(pitch_cena[0]-(pitch_cena[2]+pitch_cena[1])/2)/n1;
      nameOb="CL" + xCmplkt+"_";
      ObjectDelete(nameOb);
      ObjectCreate(nameOb,OBJ_CHANNEL,0,pitch_time[1],pitch_cena[1],Time[0],TLine,pitch_time[2],pitch_cena[2]);
      ObjectSet(nameOb,OBJPROP_BACK,true);
      ObjectSet(nameOb,OBJPROP_COLOR,xPtchfrkStticColor);
   }
   if(xRLn)
   {
      n=iBarShift(Symbol(),Period(),pitch_time[0])-(iBarShift(Symbol(),Period(),pitch_time[1])+iBarShift(Symbol(),Period(),pitch_time[2]))/2.0;
      nbase1=iBarShift(Symbol(),Period(),mPtchTm[1]);nbase2=iBarShift(Symbol(),Period(),mPtchTm[2]);
      if(nbase1+n<=Bars)
      {
         mirror1=1;mirror2=0;ta1=Time[nbase1+n];tb1=Time[nbase2+n];tc1=mPtchTm[1];
         a1=(pitch_cena[0]-(mPtchCn[1]+mPtchCn[2])/2)+mPtchCn[1];
         b1=(pitch_cena[0]-(mPtchCn[1]+mPtchCn[2])/2)+mPtchCn[2];c1=mPtchCn[1];
      }
      else
      {
         mirror1=-1;mirror2=-1;ta1=mPtchTm[2];tb1=mPtchTm[1];tc1=Time[nbase2+n];
         a1=mPtchCn[2];b1=mPtchCn[1];c1=(pitch_cena[0]-(mPtchCn[1]+mPtchCn[2])/2)+mPtchCn[2];
      }
      nameOb="RLineS" + xCmplkt+"_";
      ObjectDelete(nameOb);
      ObjectCreate(nameOb,OBJ_FIBOCHANNEL,0,ta1,a1,tb1,b1,tc1,c1);
      ObjectSet(nameOb,OBJPROP_LEVELCOLOR,xLnPtchfrkS);
      if(xRLnBz)
      {
         ObjectSet(nameOb,OBJPROP_COLOR,CLR_NONE);
      }
      else
      {
         ObjectSet(nameOb,OBJPROP_COLOR,xLnPtchfrkS);
      }
      fiboRL(nameOb,mirror1,mirror2);
   }
}

void screenPitchforkD()
{
   int i,k1,n,nbase1,nbase2;double a1,b1,c1,ab1,bc1,ab2,bc2,d,n1,cena,m618=0.618,m382=0.382,tangens;
   datetime ta1,tb1,tc1,tab2,tbc2;bool fo1=false,fo2=false;int pitch_time[]={0,0,0};
   double pitch_cena[]={0,0,0};int mirror1,mirror2;

   mPtchTm[0]=afr[2];mPtchTm[1]=afr[1];mPtchTm[2]=afr[0];mPtchCn[0]=afrx[2];mPtchCn[1]=afrx[1];mPtchCn[2]=afrx[0];cena=afrx[2];

   if(afrl[2]>0)
   {
      if(xCM_0_1A_2B_Din==1)
      {
         cena=mPtchCn[0]+(mPtchCn[1]-mPtchCn[0])*xCM_FibDin;
      }
      else if(xCM_0_1A_2B_Din==4)
      {
         mPtchTmSv=mPtchTm[0];mPtchTm[0]=mPtchTm[1];
         if(maxGipotenuza4(mPtchTm,mPtchCn))
         {
            cena=mPtchCn[1]-(mPtchCn[1]-mPtchCn[2])*m618;
         }
         else
         {
            cena=mPtchCn[1]-(mPtchCn[1]-mPtchCn[2])*m382;
         }
      }
      else if(xCM_0_1A_2B_Din==5)
      {
         mPtchTmSv=mPtchTm[0];mPtchTm[0]=mPtchTm[1];
         if(maxGipotenuza5(mPtchTm,mPtchCn))
         {
            cena=mPtchCn[1]-(mPtchCn[1]-mPtchCn[2])*m618;
         }
         else
         {
            cena=mPtchCn[1]-(mPtchCn[1]-mPtchCn[2])*m382;
         }
      }
      else if(xCM_0_1A_2B_Din>1)
      {
         if(xCM_0_1A_2B_Din==2)mPtchTm[0]=mPtchTm[1];
         cena=mPtchCn[1]-(mPtchCn[1]-mPtchCn[2])*xCM_FibDin;
      }
   }
   else
   {
      if(xCM_0_1A_2B_Din==1)
      {
         cena=mPtchCn[0]-(mPtchCn[0]-mPtchCn[1])*xCM_FibDin;
      }
      else if(xCM_0_1A_2B_Din==4)
      {
         mPtchTmSv=mPtchTm[0];mPtchTm[0]=mPtchTm[1];
         if(maxGipotenuza4(mPtchTm,mPtchCn))
         {
            cena=mPtchCn[1]+(mPtchCn[2]-mPtchCn[1])*m618;
         }
         else
         {
            cena=mPtchCn[1]+(mPtchCn[2]-mPtchCn[1])*m382;
         }
      }
      else if(xCM_0_1A_2B_Din==5)
      {
         mPtchTmSv=mPtchTm[0];mPtchTm[0]=mPtchTm[1];
         if(maxGipotenuza5(mPtchTm,mPtchCn))
         {
            cena=mPtchCn[1]+(mPtchCn[2]-mPtchCn[1])*m618;
         }
         else
         {
            cena=mPtchCn[1]+(mPtchCn[2]-mPtchCn[1])*m382;
         }
      }
      else if(xCM_0_1A_2B_Din>1)
      {
         if(xCM_0_1A_2B_Din==2)mPtchTm[0]=mPtchTm[1];
         cena=mPtchCn[1]+(mPtchCn[2]-mPtchCn[1])*xCM_FibDin;
      }
   }

   mPtchCn[0]=cena;coordinaty_1_2_mediany_AP(mPtchCn[0],mPtchCn[1],mPtchCn[2],mPtchTm[0],mPtchTm[1],mPtchTm[2],tab2,tbc2,ab1,bc1);
   pitch_time[0]=tab2;pitch_cena[0]=ab1;nameOb="pmedianaD" + xCmplkt+"_";
   ObjectDelete(nameOb);
   if(xPtchfrkDin==2)
   {
      ObjectCreate(nameOb,OBJ_TREND,0,tab2,ab1,tbc2,bc1);
      ObjectSet(nameOb,OBJPROP_STYLE,STYLE_DASH);
      ObjectSet(nameOb,OBJPROP_COLOR,xLnPtchfrkD);
      ObjectSet(nameOb,OBJPROP_BACK,xBck);
      nameOb="1-2pmedianaD" + xCmplkt+"_";
      ObjectDelete(nameOb);
      ObjectCreate(nameOb,OBJ_TEXT,0,tab2,ab1+3*Point);
      ObjectSetText(nameOb,"+1/2 ML",9,"Arial",xLnPtchfrkD);
   }
   nameOb="pitchforkD" + xCmplkt+"_";
   ObjectDelete(nameOb);
   if(xPtchfrkDin!=4)
   {
      pitch_time[0]=mPtchTm[0];pitch_cena[0]=mPtchCn[0];
      if(xPtchfrkDin==3)pitch_cena[0]=ab1;
   }
   pitch_time[1]=mPtchTm[1];pitch_cena[1]=mPtchCn[1];pitch_time[2]=mPtchTm[2];pitch_cena[2]=mPtchCn[2];
   ObjectCreate(nameOb,OBJ_PITCHFORK,0,pitch_time[0],pitch_cena[0],pitch_time[1],pitch_cena[1],pitch_time[2],pitch_cena[2]);
   if(xPtchfrkStl<5)
   {
      ObjectSet(nameOb,OBJPROP_STYLE,xPtchfrkStl);
   }
   else if(xPtchfrkStl<11)
   {
      ObjectSet(nameOb,OBJPROP_WIDTH,xPtchfrkStl-5);
   }
   ObjectSet(nameOb,OBJPROP_COLOR,xLnPtchfrkD);
   ObjectSet(nameOb,OBJPROP_BACK,xBck);
   if(xPivZnDinClr>0&&xPtchfrkDin<4)PivotZone(pitch_time,pitch_cena,xPivZnDinClr,"PivotZoneD");
   if(xFibFnMdinDinClr>0)
   {
      coordinaty_mediany_AP(pitch_cena[0],pitch_cena[1],pitch_cena[2],pitch_time[0],pitch_time[1],pitch_time[2],tb1,b1);
      nameOb="FanMedianaDinamic" + xCmplkt+"_";
      ObjectDelete(nameOb);
      ObjectCreate(nameOb,OBJ_FIBOFAN,0,pitch_time[0],pitch_cena[0],tb1,b1);
      ObjectSet(nameOb,OBJPROP_LEVELSTYLE,STYLE_DASH);
      ObjectSet(nameOb,OBJPROP_LEVELCOLOR,xFibFnMdinDinClr);
      ObjectSet(nameOb,OBJPROP_BACK,xBck);
      if(xFibTpe==0)
      {
         screenFibo_st();
      }
      else if(xFibTpe==1)
      {
         screenFibo_Pesavento();
      }
      else if(xFibTpe==2)
      {
         ObjectSet(nameOb,OBJPROP_FIBOLEVELS,Szfi);
         for(i=0;i<Szfi;i++)
         {
            ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+i,fi[i]);
            ObjectSetFiboDescription(nameOb,i,fitxt100[i]);
         }
      }
   }
   if(xRLn)
   {
      n=iBarShift(Symbol(),Period(),pitch_time[0])-(iBarShift(Symbol(),Period(),pitch_time[1])+iBarShift(Symbol(),Period(),pitch_time[2]))/2.0;
      nbase1=iBarShift(Symbol(),Period(),pitch_time[1]);nbase2=iBarShift(Symbol(),Period(),pitch_time[2]);
      if(nbase1+n<=Bars)
      {
         mirror1=1;mirror2=0;ta1=Time[nbase1+n];tb1=Time[nbase2+n];tc1=mPtchTm[1];
         a1=(pitch_cena[0]-(mPtchCn[1]+mPtchCn[2])/2)+mPtchCn[1];b1=(pitch_cena[0]-(mPtchCn[1]+mPtchCn[2])/2)+mPtchCn[2];c1=mPtchCn[1];
      }
      else
      {
         mirror1=-1;mirror2=-1;ta1=mPtchTm[2];tb1=mPtchTm[1];tc1=Time[nbase2+n];
         a1=mPtchCn[2];b1=mPtchCn[1];c1=(pitch_cena[0]-(mPtchCn[1]+mPtchCn[2])/2)+mPtchCn[2];
      }
      nameOb="RLineD" + xCmplkt+"_";
      ObjectDelete(nameOb);
      ObjectCreate(nameOb,OBJ_FIBOCHANNEL,0,ta1,a1,tb1,b1,tc1,c1);
      ObjectSet(nameOb,OBJPROP_LEVELCOLOR,xLnPtchfrkD);
      if(xRLnBz)
      {
         ObjectSet(nameOb,OBJPROP_COLOR,CLR_NONE);
      }
      else
      {
         ObjectSet(nameOb,OBJPROP_COLOR,xLnPtchfrkD);
      }
      fiboRL(nameOb,mirror1,mirror2);
   }
}

void fiboRL(string nameOb,int mirror1,int mirror2)
{
    ObjectSet(nameOb,OBJPROP_LEVELSTYLE,STYLE_DOT);
    ObjectSet(nameOb,OBJPROP_RAY,false);
    ObjectSet(nameOb,OBJPROP_BACK,xBck);

    if(xFibTpe==1)
    {
       ObjectSet(nameOb,OBJPROP_FIBOLEVELS,15);

       ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+0,mirror2+mirror1*0.382);
       ObjectSetFiboDescription(nameOb,0," RL 38.2");

       ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+1,mirror2+mirror1*0.5);
       ObjectSetFiboDescription(nameOb,1," RL 50.0");

       ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+2,mirror2+mirror1*0.618);
       ObjectSetFiboDescription(nameOb,2," RL 61.8");

       ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+3,mirror2+mirror1*0.707);
       ObjectSetFiboDescription(nameOb,3," RL 70.7");

       ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+4,mirror2+mirror1*0.786);
       ObjectSetFiboDescription(nameOb,4," RL 78.6");

       ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+5,mirror2+mirror1*0.886);
       ObjectSetFiboDescription(nameOb,5," RL 88.6");

       ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+6,mirror2+mirror1*1.0);
       ObjectSetFiboDescription(nameOb,6," RL 100.0");

       ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+7,mirror2+mirror1*1.128);
       ObjectSetFiboDescription(nameOb,7," RL 112.8");

       ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+8,mirror2+mirror1*1.272);
       ObjectSetFiboDescription(nameOb,8," RL 127.2");

       ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+9,mirror2+mirror1*1.414);
       ObjectSetFiboDescription(nameOb,9," RL 141.4");

       ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+10,mirror2+mirror1*1.618);
       ObjectSetFiboDescription(nameOb,10," RL 161.8");

       ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+11,mirror2+mirror1*2.0);
       ObjectSetFiboDescription(nameOb,11," RL 200.0");

       ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+12,mirror2+mirror1*2.414);
       ObjectSetFiboDescription(nameOb,12," RL 241.4");

       ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+13,mirror2+mirror1*2.618);
       ObjectSetFiboDescription(nameOb,13," RL 261.8");

       ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+14,mirror2+mirror1*4.0);
       ObjectSetFiboDescription(nameOb,14," RL 400.0");

    }
    else
    {
       ObjectSet(nameOb,OBJPROP_FIBOLEVELS,12);

       ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+0,mirror2+mirror1*0.236);
       ObjectSetFiboDescription(nameOb,0," RL 23.6");

       ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+1,mirror2+mirror1*0.382);
       ObjectSetFiboDescription(nameOb,1," RL 38.2");

       ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+2,mirror2+mirror1*0.5);
       ObjectSetFiboDescription(nameOb,2," RL 50.0");

       ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+3,mirror2+mirror1*0.618);
       ObjectSetFiboDescription(nameOb,3," RL 61.8");

       ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+4,mirror2+mirror1*0.764);
       ObjectSetFiboDescription(nameOb,4," RL 76.4");

       ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+5,mirror2+mirror1*0.854);
       ObjectSetFiboDescription(nameOb,5," RL 85.4");

       ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+6,mirror2+mirror1*1.0);
       ObjectSetFiboDescription(nameOb,6," RL 100.0");

       ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+7,mirror2+mirror1*1.236);
       ObjectSetFiboDescription(nameOb,7," RL 123.6");

       ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+8,mirror2+mirror1*1.618);
       ObjectSetFiboDescription(nameOb,8," RL 161.8");

       ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+9,mirror2+mirror1*2.0);
       ObjectSetFiboDescription(nameOb,9," RL 200");

       ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+10,mirror2+mirror1*2.618);
       ObjectSetFiboDescription(nameOb,10," RL 261.8");

       ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+11,mirror2+mirror1*4.0);
       ObjectSetFiboDescription(nameOb,11," RL 400.0");
    }
}

void coordinaty_1_2_mediany_AP(double A_1,double B_2,double C_3,datetime T_1,datetime T_2,datetime T_3,datetime& tAB2,datetime& tBC2,double& AB2,double& BC2)
{
   double tangens;int n1,n2,n3,nab2,nbc2;
   n1=iBarShift(Symbol(),Period(),T_1);n2=iBarShift(Symbol(),Period(),T_2);n3=iBarShift(Symbol(),Period(),T_3);
   tangens=(C_3-A_1)/(n1-n3);nab2=MathCeil((n1+n2)/2.0);nbc2=MathCeil((n2+n3)/2.0);
   AB2=(A_1 + B_2)/2-(nab2-(n1+n2)/2.0)*tangens;BC2=(B_2 + C_3)/2-(nbc2-(n2+n3)/2.0)*tangens;
   tAB2=Time[nab2];tBC2=Time[nbc2];
}

void coordinaty_mediany_AP(double A_1,double B_2,double C_3,datetime T_1,datetime T_2,datetime T_3,datetime& tB1,double& B1)
{
   double tangens;int n1,n2,n3,nbc2;
   n1=iBarShift(Symbol(),Period(),T_1);n2=iBarShift(Symbol(),Period(),T_2);n3=iBarShift(Symbol(),Period(),T_3);
   tangens=(A_1-(C_3+B_2)/2)/(n1-(n3+n2)/2.0);nbc2=MathCeil((n2+n3)/2.0);
   B1=(B_2 + C_3)/2-((n2+n3)/2.0-nbc2)*tangens;tB1=Time[nbc2];
}

bool maxGipotenuza4(datetime pitch_time1[],double pitch_cena1[])
{
   double k2,k3;datetime k4,k5;
   k2=MathAbs(pitch_cena1[0]-pitch_cena1[1])/ASBr;k3=MathAbs(pitch_cena1[1]-pitch_cena1[2])/ASBr;
   k4=iBarShift(NULL,GrssPd,mPtchTmSv)-iBarShift(NULL,GrssPd,pitch_time1[1]);
   k5=iBarShift(NULL,GrssPd,pitch_time1[1])-iBarShift(NULL,GrssPd,pitch_time1[2]);
   if(k2*k2+k4*k4>k3*k3+k5*k5)return(true);else return(false);
}

bool maxGipotenuza5(datetime pitch_time1[],double pitch_cena1[])
{
   double k2,k3;datetime k4,k5;
   k2=MathAbs(pitch_cena1[0]-pitch_cena1[1])/Point;k3=MathAbs(pitch_cena1[1]-pitch_cena1[2])/Point;
   k4=iBarShift(NULL,GrssPd,mPtchTmSv)-iBarShift(NULL,GrssPd,pitch_time1[1]);
   k5=iBarShift(NULL,GrssPd,pitch_time1[1])-iBarShift(NULL,GrssPd,pitch_time1[2]);
   if(k2*k2+k4*k4>k3*k3+k5*k5)return(true);else return(false);
}

void PivotZone(datetime pitch_time1[],double pitch_cena1[],color PivotZoneColor,string name)
{
   datetime ta1,tb1;
   double a1,b1,d,n1;
   int m,m1,m2;

   ta1=pitch_time1[2];a1=pitch_cena1[2];
   m1=iBarShift(Symbol(),Period(),pitch_time1[0])-iBarShift(Symbol(),Period(),pitch_time1[1]);
   m2=iBarShift(Symbol(),Period(),pitch_time1[1])-iBarShift(Symbol(),Period(),pitch_time1[2]);
   m=iBarShift(Symbol(),Period(),pitch_time1[2]);
   n1=iBarShift(Symbol(),Period(),pitch_time1[0])-(iBarShift(Symbol(),Period(),pitch_time1[1])+iBarShift(Symbol(),Period(),pitch_time1[2]))/2.0;
   d=(pitch_cena1[0]-(pitch_cena1[1]+pitch_cena1[2])/2.0)/n1;

   if(m1>m2)
   {
      if(m1>m)
      {
         tb1=Time[0]+(m1-m)*Period()*60;
      }
      else
      {
         tb1=Time[iBarShift(Symbol(),Period(),pitch_time1[2])-m1];
      }
      b1=pitch_cena1[0]-d*(2*m1+m2);
   }
   else
   {
      if(m2>m)
      {
         tb1=Time[0]+(m2-m)*Period()*60;
      }
      else
      {
         tb1=Time[iBarShift(Symbol(),Period(),pitch_time1[2])-m2];
      }
      b1=pitch_cena1[0]-d*(2*m2+m1);
   }
   nameOb=name + xCmplkt+"_";
   ObjectDelete(nameOb);
   ObjectCreate(nameOb,OBJ_RECTANGLE,0,ta1,a1,tb1,b1);
   ObjectSetText(nameOb,"PZ "+Period_tf+"+"+TimeToStr(tb1,TIME_DATE|TIME_MINUTES));
   ObjectSet(nameOb,OBJPROP_BACK,xPivZnFrmwrk);
   ObjectSet(nameOb,OBJPROP_COLOR,PivotZoneColor);
}

void screenFiboFan()
{
   int i;double a1,b1;a1=afrx[mFn[0]];b1=afrx[mFn[1]];nameOb="FiboFan" + xCmplkt+"_";
   ObjectDelete(nameOb);
   ObjectCreate(nameOb,OBJ_FIBOFAN,0,afr[mFn[0]],a1,afr[mFn[1]],b1);
   ObjectSet(nameOb,OBJPROP_LEVELSTYLE,STYLE_DASH);
   ObjectSet(nameOb,OBJPROP_LEVELCOLOR,xFibFnClr);
   ObjectSet(nameOb,OBJPROP_BACK,xBck);
   ObjectSet(nameOb,OBJPROP_COLOR,xObClr);
   ObjectSet(nameOb,OBJPROP_STYLE,xObStl);
   ObjectSet(nameOb,OBJPROP_WIDTH,xObWdt);
   if(xFibTpe==0)
   {
      screenFibo_st();
   }
   else if(xFibTpe==1)
   {
      screenFibo_Pesavento();
   }
   else if(xFibTpe==2)
   {
      ObjectSet(nameOb,OBJPROP_FIBOLEVELS,Szfi);
      for(i=0;i<Szfi;i++)
      {
         ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+i,fi[i]);
         ObjectSetFiboDescription(nameOb,i,fitxt100[i]);
      }
   }
}

void screenFibo_st()
{
   double fi_1[]={0.236,0.382,0.5,0.618,0.764,0.854,1.0,1.618,2.618};
   string fitxt100_1[]={"23.6","38.2","50.0","61.8","76.4","85.4","100.0","161.8","2.618"};
   int i;Szfi_1=9;
   ObjectSet(nameOb,OBJPROP_FIBOLEVELS,Szfi_1);
   for(i=0;i<Szfi_1;i++)
   {
      ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+i,fi_1[i]);
      ObjectSetFiboDescription(nameOb,i,fitxt100_1[i]);
   }
}

void screenFibo_Pesavento()
{
   double fi_1[]={0.382,0.5,0.618,0.786,0.886,1.0,1.272,1.618,2.0,2.618};
   string fitxt100_1[]={"38.2","50.0","61.8","78.6","88.6","100.0","127.2","161.8","200.0","2.618"};
   int i;Szfi_1=10;
   ObjectSet(nameOb,OBJPROP_FIBOLEVELS,Szfi_1);
   for(i=0;i<Szfi_1;i++)
   {
      ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+i,fi_1[i]);
      ObjectSetFiboDescription(nameOb,i,fitxt100_1[i]);
   }
}

void screenFiboArcS()
{
   double fibo_0,fibo_100,AutoScale;
   fibo_0=afrx[mArcS[0]];fibo_100=afrx[mArcS[1]];
   if(xArcSttcScl>0)
   {
      AutoScale=xArcSttcScl;
   }
   else
   {
      AutoScale=(MathAbs(fibo_0-fibo_100)/Point)/MathAbs(iBarShift(Symbol(),Period(),afr[mArcS[1]])-iBarShift(Symbol(),Period(),afr[mArcS[0]]));
   }
   nameOb="FiboArcS" + xCmplkt+"_";
   ObjectDelete(nameOb);
   ObjectCreate(nameOb,OBJ_FIBOARC,0,afr[mArcS[0]],fibo_0,afr[mArcS[1]],fibo_100);
   fiboArc(AutoScale,xArcSttcClr);
}

void screenFiboArcD()
{
   double fibo_0,fibo_100,AutoScale;
   fibo_0=afrx[mArcD[0]];fibo_100=afrx[mArcD[1]];
   if(xArcDinScl>0)
   {
      AutoScale=xArcDinScl;
   }
   else
   {
      AutoScale=(MathAbs(fibo_0-fibo_100)/Point)/MathAbs(iBarShift(Symbol(),Period(),afr[mArcD[1]])-iBarShift(Symbol(),Period(),afr[mArcD[0]]));
   }
   nameOb="FiboArcD" + xCmplkt+"_";
   ObjectDelete(nameOb);
   ObjectCreate(nameOb,OBJ_FIBOARC,0,afr[mArcD[0]],fibo_0,afr[mArcD[1]],fibo_100);
   fiboArc(AutoScale,xArcDinClr);
}

void fiboArc(double AutoScale,color ArcColor)
{
   ObjectSet(nameOb,OBJPROP_SCALE,AutoScale);
   ObjectSet(nameOb,OBJPROP_BACK,xBck);
   ObjectSet(nameOb,OBJPROP_COLOR,xObClr);
   ObjectSet(nameOb,OBJPROP_STYLE,xObStl);
   ObjectSet(nameOb,OBJPROP_WIDTH,xObWdt);
   ObjectSet(nameOb,OBJPROP_ELLIPSE,true);
   ObjectSet(nameOb,OBJPROP_LEVELCOLOR,ArcColor);

   if(xFibTpe==0)
   {
      fiboArc_st();
   }
   else if(xFibTpe==1)
   {
      fiboArc_Pesavento();
   }
   else if(xFibTpe==2)
   {
      fiboArc_custom();
   }
}

void fiboArc_st()
{
   double fi_1[]={0.0,0.146,0.236,0.382,0.5,0.618,0.764,0.854,1.0,1.236,1.618,2.0,2.618,3.0,4.236,4.618};
   string fitxt100_1[]={"0.0","14.6","23.6","38.2","50.0","61.8","76.4","85.4","100.0","123.6","161.8","200.0","261.8","300.0","423.6","461.8"};
   int i;Szfi_1=16;
   ObjectSet(nameOb,OBJPROP_FIBOLEVELS,Szfi_1);
   for(i=0;i<Szfi_1;i++)
   {
      ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+i,fi_1[i]);
      ObjectSetFiboDescription(nameOb,i,fitxt100_1[i]);
   }
}

void fiboArc_Pesavento()
{
   double fi_1[]={0.0,0.146,0.236,0.382,0.5,0.618,0.786,0.886,1.0,1.272,1.618,2.0,2.618,3.0,4.236,4.618};
   string fitxt100_1[]={"0.0","14.6","23.6","38.2","50.0","61.8","78.6","88.6","100.0","127.2","161.8","200.0","261.8","300.0","423.6","461.8"};
   int i;Szfi_1=16;

   ObjectSet(nameOb,OBJPROP_FIBOLEVELS,Szfi_1);
   for(i=0;i<Szfi_1;i++)
   {
      ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+i,fi_1[i]);
      ObjectSetFiboDescription(nameOb,i,fitxt100_1[i]);
   }
}

void fiboArc_custom()
{
   int i;
   ObjectSet(nameOb,OBJPROP_FIBOLEVELS,Szfi);
   for(i=0;i<Szfi;i++)
   {
      ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+i,fi[i]);
      ObjectSetFiboDescription(nameOb,i,fitxt100[i]);
   }
}

void FiboExpansion()
{
   if(xFibExp>1)
   {
      int i;double znach1,znach2,fi_1[];nameOb="fiboExpansion" + xCmplkt+"_";
      ObjectDelete(nameOb);
      if(afrl[mExp[0]]>0)
      {
         ObjectCreate(nameOb,OBJ_EXPANSION,0,afr[mExp[0]],afrl[mExp[0]],afr[mExp[1]],afrh[mExp[1]],afr[mExp[2]],afrl[mExp[2]]);
         znach1=afrh[mExp[1]]-afrl[mExp[0]];znach2=afrl[mExp[2]];
      }
      else
      {
         ObjectCreate(nameOb,OBJ_EXPANSION,0,afr[mExp[0]],afrh[mExp[0]],afr[mExp[1]],afrl[mExp[1]],afr[mExp[2]],afrh[mExp[2]]);
         znach1=-(afrh[mExp[0]]-afrl[mExp[1]]);znach2=afrh[mExp[2]];
      }
      ObjectSet(nameOb,OBJPROP_COLOR,xObClr);
      ObjectSet(nameOb,OBJPROP_STYLE,xObStl);
      ObjectSet(nameOb,OBJPROP_WIDTH,xObWdt);
      ObjectSet(nameOb,OBJPROP_LEVELCOLOR,xFibExpClr);
      ObjectSet(nameOb,OBJPROP_LEVELSTYLE,STYLE_DOT);
      ObjectSet(nameOb,OBJPROP_BACK,xBck);
      if(xFibTpe==0)
      {
         FiboExpansion_st(znach1,znach2);
      }
      else if(xFibTpe==1)
      {
         FiboExpansion_Pesavento(znach1,znach2);
      }
      else if(xFibTpe==2)
      {
         ObjectSet(nameOb,OBJPROP_FIBOLEVELS,Szfi);
         for(i=0;i<Szfi;i++)
         {
            ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+i,fi[i]);
            ObjectSetFiboDescription(nameOb,i,"FE "+fitxt100[i]+" "+DoubleToStr(znach1*fi[i]+znach2,Digits)+"-"+Period_tf);
         }
      }
   }
}

void FiboExpansion_st(double znach1,double znach2)
{
   int i;
   double fi_1[]={0.236,0.382,0.5,0.618,0.764,0.854,1.0,1.236,1.618,2.0,2.618};
   string tf="-"+Period_tf,fitxt100_1[]={"23.6","38.2","50.0","61.8","76.4","85.4","100.0","123.6","161.8","200.0","261.8"};
   Szfi_1=11;
   ObjectSet(nameOb,OBJPROP_FIBOLEVELS,Szfi_1);
   for(i=0;i<Szfi_1;i++)
   {
      ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+i,fi_1[i]);
      ObjectSetFiboDescription(nameOb,i,"FE "+fitxt100_1[i]+" "+DoubleToStr(znach1*fi_1[i]+znach2,Digits)+tf);
   }
}

void FiboExpansion_Pesavento(double znach1,double znach2)
{
   int i;
   double fi_1[]={0.382,0.5,0.618,0.707,0.786,0.886,1.0,1.272,1.414,1.618,2.0,2.618,3.0,4.236,4.618};
   string tf="-"+Period_tf,fitxt100_1[]={"38.2","50.0","61.8","70.7","78.6","88.6","100.0","127.2","141.4","161.8","200.0","261.8","300.0","423.6","461.8"};
   Szfi_1=15;
   ObjectSet(nameOb,OBJPROP_FIBOLEVELS,Szfi_1);
   for(i=0;i<Szfi_1;i++)
   {
      ObjectSet(nameOb,OBJPROP_FIRSTLEVEL+i,fi_1[i]);
      ObjectSetFiboDescription(nameOb,i,"FE "+fitxt100_1[i]+" "+DoubleToStr(znach1*fi_1[i]+znach2,Digits)+tf);
   }
}

void delete_objects1()
{
   int i;string txt;
   for(i=ObjectsTotal();i>=0;i--)
   {
      txt=ObjectName(i);
      if(StringFind(txt,"_" + xCmplkt + "pl")>-1)ObjectDelete (txt);
      if(StringFind(txt,"_" + xCmplkt + "ph")>-1)ObjectDelete (txt);
   }
}

void delete_objects2(string txt1)
{
   int i;string txt;
   for(i=ObjectsTotal();i>=0;i--)
   {
      txt=ObjectName(i);
      if(StringFind(txt,txt1)>-1)ObjectDelete (txt);
   }
}

void delete_objects3()
{
   int i;string txt;
   for(i=ObjectsTotal();i>=0;i--)
   {
      txt=ObjectName(i);
      if(StringFind(txt,"_"+xCmplkt+"Triangle")>-1)ObjectDelete (txt);
   }
   if(RngForPntD>0)
   {
      FlgForD=true;
      ObjectDelete("_"+xCmplkt+"PointD");
   }
}

void delete_objects_dinamic()
{
   int i;delete_objects1();
   ObjectDelete("fiboD" + xCmplkt+"_");
   ObjectDelete("fiboFanD" + xCmplkt+"_");
   ObjectDelete("RLineD" + xCmplkt+"_");
   ObjectDelete("pitchforkD" + xCmplkt+"_");
   ObjectDelete("ISL_D" + xCmplkt+"_");
   ObjectDelete("pmedianaD" + xCmplkt+"_");
   ObjectDelete("1-2pmedianaD" + xCmplkt+"_");
   ObjectDelete("fiboExpansion" + xCmplkt+"_");
   ObjectDelete("PivotZoneD" + xCmplkt+"_");
   ObjectDelete("FanMedianaDinamic" + xCmplkt+"_");
   ObjectDelete("FiboArcD" + xCmplkt+"_");
   for(i=0;i<7;i++)
   {
      nameOb="VLD"+i+" " + xCmplkt+"_";
      ObjectDelete(nameOb);
   }
}

void ZigZag_()
{
   int pos,back,lasthighpos,lastlowpos;double val,res;double curlow,curhigh,lasthigh,lastlow;
   int vDepth=0;int Depth;bool endCyklDirection=true;
   if(xIndi==11)
   {
      bool endCykl=false;
      Depth=mnDpt;
   }
   else
   {
      Depth=mnBs;mnDpt=mnBs;mxDpt=mnBs;
   }
   if(DirOfsrchMxMn)vDepth=mxDpt;else vDepth=mnDpt;
   while (endCyklDirection)
   {
      if(xIndi==11)
      {
         for(pos=Bars-1;pos>=0;pos--)
         {
            zz[pos]=0;zzL[pos]=0;zzH[pos]=0;
         }
         if(DirOfsrchMxMn)
         {
            if(vDepth<mnDpt){vDepth=mnBs;endCykl=true;}
         }
         else
         {
            if(vDepth>mxDpt){vDepth=mnBs;endCykl=true;}
         }
         Depth=vDepth;
         if(DirOfsrchMxMn)
         {
            vDepth--;
         }
         else
         {
            vDepth++;
         }
      }
      else
      {
         endCyklDirection=false;
      }
      mnBsX=Depth;
      for(pos=Bars-Depth;pos>=0;pos--)
      {
         val=Low[iLowest(NULL,0,MODE_LOW,Depth,pos)];
         if(val==lastlow)val=0.0;
         else 
         { 
            lastlow=val;
            if((Low[pos]-val)>(xDev*Point))val=0.0;
            else
            {
               for(back=1;back<=xBckstp;back++)
               {
                  res=zzL[pos+back];
                  if((res!=0)&&(res>val))zzL[pos+back]=0.0;
               }
            }
         } 
         if(Low[pos]==val)zzL[pos]=val;
         val=High[iHighest(NULL,0,MODE_HIGH,Depth,pos)];
         if(val==lasthigh)val=0.0;
         else 
         {
            lasthigh=val;
            if((val-High[pos])>(xDev*Point))val=0.0;
            else
            {
               for(back=1;back<=xBckstp;back++)
               {
                  res=zzH[pos+back];
                  if((res!=0)&&(res<val))zzH[pos+back]=0.0;
               } 
            }
         }
         if(High[pos]==val)zzH[pos]=val;
      }
      lasthigh=-1;lasthighpos=-1;lastlow=-1;lastlowpos=-1;
      for(pos=Bars-Depth;pos>=0;pos--)
      {
         curlow=zzL[pos];curhigh=zzH[pos];
         if((curlow==0)&&(curhigh==0))continue;
         if(curhigh!=0)
         {
            if(lasthigh>0)
            {
               if(lasthigh<curhigh)zzH[lasthighpos]=0;
               else zzH[pos]=0;
            }
            if(lasthigh<curhigh||lasthigh<0)
            {
               lasthigh=curhigh;lasthighpos=pos;
            }
            lastlow=-1;
         }
         if(curlow!=0)
         {
            if(lastlow>0)
            {
               if(lastlow>curlow)zzL[lastlowpos]=0;
               else zzL[pos]=0;
            }
            if((curlow<lastlow)||(lastlow<0))
            {
               lastlow=curlow;lastlowpos=pos;
            } 
            lasthigh=-1;
         }
      }
      for(pos=Bars-1;pos>=0;pos--)
      {
         zz[pos]=zzL[pos];
         if(pos>=Bars-Depth){zzH[pos]=0.0;zzL[pos]=0.0;zz[pos]=0.0;}
         else
         {
            res=zzH[pos];
            if(res!=0.0)
            {
               zz[pos]=res;
            }
         }
      }
      NoGorb(Depth);
      if(xIndi==11)
      {
         if(endCykl)
         {
            return(0);
         }
         _Gartley("xIndi=11_" + Depth+"/"+xDev+"/"+xBckstp);
         if(vPtOnOff==1)return(0);
      }
   }
}

void NoGorb(int Depth)
{
   double vel1,vel2,vel3,vel4;int bar1,bar2,bar3,bar4;int count;
   for(int bar=Bars-Depth;bar>=0;bar--)
   {
      if(zz[bar]!=0)
      {
         count++;vel4=vel3;bar4=bar3;vel3=vel2;bar3=bar2;vel2=vel1;bar2=bar1;vel1=zz[bar];bar1=bar;
         if(count<3)continue;if((vel3<vel2)&&(vel2<vel1)){zz[bar2]=0;zzL[bar2]=0;zzH[bar2]=0;bar=bar3+1;}
         if((vel3>vel2)&&(vel2>vel1)){zz[bar2]=0;zzL[bar2]=0;zzH[bar2]=0;bar=bar3+1;}if((vel2==vel1)&&(vel1!=0 )){zz[bar1]=0;zzL[bar1]=0;zzH[bar1]=0;bar=bar3+1;}
      }
   } 
}

void _Gartley(string _Depth)
{
   int j,k;
   double min_DeltaGartley=(1-xDltGart);double max_DeltaGartley=(1 + xDltGart);double vl0382=min_DeltaGartley * 0.382;double vh05=max_DeltaGartley * 0.5;
   double vl0618=min_DeltaGartley * 0.618;double vh0618=max_DeltaGartley * 0.618;double vl0786=min_DeltaGartley * 0.786;double vh0786=max_DeltaGartley * 0.786;
   double vl0886=min_DeltaGartley * 0.886;double vh0886=max_DeltaGartley * 0.886;double vl1128=min_DeltaGartley * 1.128;double vl1272=min_DeltaGartley * 1.272;
   double vl1618=min_DeltaGartley * 1.618;double vh1618=max_DeltaGartley * 1.618;double vl2236=min_DeltaGartley * 2.236;double vh2236=max_DeltaGartley * 2.236;
   double vh2618=max_DeltaGartley * 2.618;double vh3618=max_DeltaGartley * 3.618;
   int aXABCD[6];double retXD;double retXB;double retBD;double retAC;double XA,BC;
   double vDelta0=0.000001;int vNull=0;int X=1,A=2,B=3,C=4,D=5;int aNumBarPeak[];
   string nameOb1,nameOb2;string vBull="Bullish";string vBear="Bearish";string vGartley="Gartley";string vBat="Bat";string vButterfly="Butterfly";string vCrab="Crab";
   vPtOnOff=0;vBllBr="";vNmPttrn="";mxPk=0;
   for(pos=Bars-1;pos>=0;pos--)
   {
      if(zz[pos]>0)mxPk++;
   }
   ArrayResize(aNumBarPeak,mxPk);
   delete_objects3();pos=0;j=0;
   while((pos<Bars)&&(j<mxPk))
   {
      if(zz[pos] != 0)
      {
         aNumBarPeak[j]=pos;j++;
      }
      pos++;
   }
   if(j<mxPk)aNumBarPeak[j]=-1;else aNumBarPeak[mxPk]=-1;
   aXABCD[D]=aNumBarPeak[0];k=0;
   while((k<j)&&(k<mxPk)&&(aNumBarPeak[k]>-1)&&(aXABCD[D]<mxBToD+2))
   {
      aXABCD[X]=aNumBarPeak[k+4];aXABCD[A]=aNumBarPeak[k+3];aXABCD[B]=aNumBarPeak[k+2];aXABCD[C]=aNumBarPeak[k+1];aXABCD[D]=aNumBarPeak[k+0];
      if((zz[aXABCD[A]]>zz[aXABCD[C]])&&(zz[aXABCD[C]]>zz[aXABCD[B]])&&(zz[aXABCD[B]]>zz[aXABCD[X]])&&(zz[aXABCD[X]]>zz[aXABCD[D]])
      &&((zz[aXABCD[C]]-zzL[aXABCD[D]])>=(zz[aXABCD[A]]-zz[aXABCD[B]])* xCD))
      {
         vBllBr=vBull;
      }
      else if((zz[aXABCD[A]]>zz[aXABCD[C]])&&(zz[aXABCD[C]]>zz[aXABCD[B]])&&(zz[aXABCD[B]]>zz[aXABCD[D]])&&(zz[aXABCD[D]]>zz[aXABCD[X]])
      &&((zz[aXABCD[C]]-zz[aXABCD[D]])>=(zz[aXABCD[2]]-zz[aXABCD[B]])* xCD))
      {
         vBllBr=vBull;
      }
      else if((zz[aXABCD[X]]>zz[aXABCD[D]])&&(zz[aXABCD[D]]>zz[aXABCD[B]])&&(zz[aXABCD[B]]>zz[aXABCD[C]])&&(zz[aXABCD[C]]>zz[aXABCD[A]])
      &&((zz[aXABCD[D]]-zz[aXABCD[C]])>=(zz[aXABCD[B]]-zz[aXABCD[A]])* xCD))
      {
         vBllBr=vBear;
      }
      else if((zz[aXABCD[D]]>zz[aXABCD[X]])&&(zz[aXABCD[X]]>zz[aXABCD[B]])&&(zz[aXABCD[B]]>zz[aXABCD[C]])&&(zz[aXABCD[C]]>zz[aXABCD[A]])
      &&((zz[aXABCD[D]]-zz[aXABCD[C]])>=(zz[aXABCD[B]]-zz[aXABCD[A]])* xCD))
      {
         vBllBr=vBear;
      }
      if(vBllBr!="")
      {
         if(vBllBr== vBull)
         {
            retXB=(zz[aXABCD[A]]-zz[aXABCD[B]])/(zz[aXABCD[A]]-zz[aXABCD[X]] + vDelta0);retXD=(zz[aXABCD[A]]-zz[aXABCD[D]])/(zz[aXABCD[A]]-zz[aXABCD[X]] + vDelta0);
            retBD=(zz[aXABCD[C]]-zz[aXABCD[D]])/(zz[aXABCD[C]]-zz[aXABCD[B]] + vDelta0);retAC=(zz[aXABCD[C]]-zz[aXABCD[B]])/(zz[aXABCD[A]]-zz[aXABCD[B]] + vDelta0);
            if(RngForPntD>0&&FlgForD)
            {
               XA=zz[aXABCD[A]]-zz[aXABCD[X]];BC=zz[aXABCD[C]]-zz[aXABCD[B]];
            }
         }
         else if(vBllBr== vBear)
         {
            retXB=(zz[aXABCD[B]]-zz[aXABCD[A]])/(zz[aXABCD[X]]-zz[aXABCD[A]] + vDelta0);retXD=(zz[aXABCD[D]]-zz[aXABCD[A]])/(zz[aXABCD[X]]-zz[aXABCD[A]] + vDelta0);
            retBD=(zz[aXABCD[D]]-zz[aXABCD[C]])/(zz[aXABCD[B]]-zz[aXABCD[C]] + vDelta0);retAC=(zz[aXABCD[B]]-zz[aXABCD[C]])/(zz[aXABCD[B]]-zz[aXABCD[A]] + vDelta0);
            if(RngForPntD>0&&FlgForD)
            {
               XA=zz[aXABCD[X]]-zz[aXABCD[A]];BC=zz[aXABCD[B]]-zz[aXABCD[C]];
            }
         }
         if((retAC>=vl0382)&&(retAC<=vh0886)&&(retXD>=vl0618)&&(retXD<=vh0786)&&(retBD>=vl1128)&&(retBD<=vh2236)&&(retXB>=vl0382)&&(retXB<=vh0618))
         {
            vNmPttrn=vGartley;
            if(RngForPntD>0&&FlgForD)
            {
               if(vBllBr== vBull)
               {
                  LvlForDmn=MathMax(zz[aXABCD[A]]-XA*vh0786,zz[aXABCD[C]]-BC*vh2236);LvlForDmx=MathMin(zz[aXABCD[A]]-XA*vl0618,zz[aXABCD[C]]-BC*vl1128);
               }
               else if(vBllBr== vBear)
               {
                  LvlForDmn=MathMax(zz[aXABCD[A]]+XA*vl0618,zz[aXABCD[C]]+BC*vl1128);LvlForDmx=MathMin(zz[aXABCD[A]]+XA*vh0786,zz[aXABCD[C]]+BC*vh2236);
               }
            }
         }
         else if((retAC>=vl0382)&&(retAC<=vh0886)&&(retXD>=vl1272)&&(retXD<=vh1618)&&(retBD>=vl1272)&&(retBD<=vh2618)&&(retXB>=vl0618)&&(retXB<=vh0886))
         {
            vNmPttrn=vButterfly;
            if(RngForPntD>0&&FlgForD)
            {
               if(vBllBr== vBull)
               {
                  LvlForDmn=MathMax(zz[aXABCD[A]]-XA*vh1618,zz[aXABCD[C]]-BC*vh2618);LvlForDmx=MathMin(zz[aXABCD[A]]-XA*vl1272,zz[aXABCD[C]]-BC*vl1272);
               }
               else if(vBllBr== vBear)
               {
                  LvlForDmn=MathMax(zz[aXABCD[A]]+XA*vl1272,zz[aXABCD[C]]+BC*vl1272);LvlForDmx=MathMin(zz[aXABCD[A]]+XA*vh1618,zz[aXABCD[C]]+BC*vh2618);
               }
            }
         }
         else if((retAC>=vl0382)&&(retAC<=vh0886)&&(retXD>=vl1618)&&(retXD<=vh1618)&&(retBD>=vl2236)&&(retBD<=vh3618)&&(retXB>=vl0382)&&(retXB<=vh0618))
         {
            vNmPttrn=vCrab;
            if(RngForPntD>0&&FlgForD)
            {
               if(vBllBr== vBull)
               {
                  LvlForDmn=MathMax(zz[aXABCD[A]]-XA*vh1618,zz[aXABCD[C]]-BC*vh3618);LvlForDmx=MathMin(zz[aXABCD[A]]-XA*vl1618,zz[aXABCD[C]]-BC*vl2236);
               }
               else if(vBllBr== vBear)
               {
                  LvlForDmn=MathMax(zz[aXABCD[A]]+XA*vl1618,zz[aXABCD[C]]+BC*vl2236);LvlForDmx=MathMin(zz[aXABCD[A]]+XA*vh1618,zz[aXABCD[C]]+BC*vh3618);
               }
            }
         }
         else if((retAC>=vl0382)&&(retAC<=vh0886)&&(retXD>=vl0886)&&(retXD<=vh0886)&&(retBD>=vl1272)&&(retBD<=vh2618)&&(retXB>=vl0382)&&(retXB<=vh0618))
         {
            vNmPttrn=vBat;
            if(RngForPntD>0&&FlgForD)
            {
               if(vBllBr== vBull)
               {
                  LvlForDmn=MathMax(zz[aXABCD[A]]-XA*vh0886,zz[aXABCD[C]]-BC*vh2618);LvlForDmx=MathMin(zz[aXABCD[A]]-XA*vl0886,zz[aXABCD[C]]-BC*vl1272);
               }
               else if(vBllBr== vBear)
               {
                  LvlForDmn=MathMax(zz[aXABCD[A]]+XA*vl0886,zz[aXABCD[C]]+BC*vl1272);LvlForDmx=MathMin(zz[aXABCD[A]]+XA*vh0886,zz[aXABCD[C]]+BC*vh2618);
               }
            }
         }
      }
      if((vNmPttrn!="")&&(aXABCD[D]<mxBToD+2))
      {
         nameOb1="_"+xCmplkt+"Triangle1_"+_Depth + "_"+aXABCD[D]+"";
         ObjectDelete(nameOb1);
         nameOb2="_"+xCmplkt+"Triangle2_"+_Depth + "_"+aXABCD[D]+"";
         ObjectDelete(nameOb2);
         vPtOnOff=1;
         if(vBllBr== vBull)
         {
            ObjectCreate(nameOb1,OBJ_TRIANGLE,0,Time[aXABCD[X]],zz[aXABCD[X]],Time[aXABCD[B]],zz[aXABCD[B]],Time[aXABCD[A]],zz[aXABCD[A]]);
            ObjectSet(nameOb1,OBJPROP_COLOR,xClrPttrns);
            ObjectCreate(nameOb2,OBJ_TRIANGLE,0,Time[aXABCD[B]],zz[aXABCD[B]],Time[aXABCD[D]],zz[aXABCD[D]],Time[aXABCD[C]],zz[aXABCD[C]]);
            ObjectSet(nameOb2,OBJPROP_COLOR,xClrPttrns);
         }
         else
         {
            ObjectCreate(nameOb1,OBJ_TRIANGLE,0,Time[aXABCD[X]],zz[aXABCD[X]],Time[aXABCD[B]],zz[aXABCD[B]],Time[aXABCD[A]],zz[aXABCD[A]]);
            ObjectSet(nameOb1,OBJPROP_COLOR,xClrPttrns);
            ObjectCreate(nameOb2,OBJ_TRIANGLE,0,Time[aXABCD[B]],zz[aXABCD[B]],Time[aXABCD[D]],zz[aXABCD[D]],Time[aXABCD[C]],zz[aXABCD[C]]);
            ObjectSet(nameOb2,OBJPROP_COLOR,xClrPttrns);
         }
         if(RngForPntD>0)
         {
            if(FlgForD)
            {
               for(j=aXABCD[D];j<aXABCD[C]-1;j++)
               {
                  if(vBllBr==vBull)
                  {
                     if(LvlForDmx>=Low[j])TmForDmx=Time[j];
                  }
                  else if(vBllBr==vBear)
                  {
                     if(LvlForDmn<=High[j])TmForDmn=Time[j];
                  }
               }
               if(vBllBr==vBull)
               {
                  TmForDmn=TmForDmx+((LvlForDmx-LvlForDmn)/((zz[aXABCD[C]]-zz[aXABCD[D]])/(aXABCD[C]-aXABCD[D]+1)))*Period()*60;
               }
               else if(vBllBr==vBear)
               {
                  TmForDmx=TmForDmn+((LvlForDmx-LvlForDmn)/((zz[aXABCD[D]]-zz[aXABCD[C]])/(aXABCD[C]-aXABCD[D]+1)))*Period()*60;
               }
               nameOb="_"+xCmplkt+"PointD";
               ObjectCreate(nameOb,OBJ_RECTANGLE,0,TmForDmn,LvlForDmn,TmForDmx,LvlForDmx);
               ObjectSet(nameOb,OBJPROP_BACK,false);
               ObjectSet(nameOb,OBJPROP_COLOR,xClrRngForPntD);
               
               //Comment("\nLvlForDmn         =  " + DoubleToStr(LvlForDmn,4),
               //        "\nLvlForDmx         =  " + DoubleToStr(LvlForDmx,4));
               
               if(vBllBr!=""&&vBllBr==vBull)
               {
                  CrossUp[1]=Low[1]-Point*10;
               }
       
               if(vBllBr!=""&&vBllBr==vBear)
               {
                  CrossDown[1]=High[1]+Point*10;
               }
               
               if((CrossUp[0]>2000) && (CrossDown[0]>2000)){prevtime=0;}
            }
         }
         return(0);
      }
      else 
      {
         vBllBr="";vNmPttrn="";
      }
      k++;
   }
}

void ang_AZZ_()
{
   int i,n;
   for(i=cbi;i>=0;i--)
   {
      if(ti!=Time[i]){fsp=fs;sip=si;} ti=Time[i];if(mnSz==0&&mnPct!=0)di=mnPct*Close[i]/2/100;
      if(High[i]>=si+di&&Low[i]<si-di)
      {
         if(High[i]-si>=si-Low[i])si=High[i]-di;if(High[i]-si<si-Low[i])si=Low[i]+di;
      } 
      else
      {
         if(High[i]>=si+di)si=High[i]-di;if(Low[i]<=si-di)si=Low[i]+di;
      }
      if(i>Bars-2){si=(High[i]+Low[i])/2;}if(si>sip)fs=1;if(si<sip)fs=2;
      if(fs==1&&fsp==2)
      {
         hm=High[i];zz[bi]=Low[bi];zzL[bi]=Low[bi];aip=ai;taip=Time[ai];ai=i;tai=Time[i];fsp=fs;
      }
      if(fs==2&&fsp==1)
      {
         lm=Low[i];zz[ai]=High[ai];zzH[ai]=High[ai];bip=bi;tbip=Time[bi];bi=i;tbi=Time[i];fsp=fs;
      }
      if(fs==1&&High[i]>hm){hm=High[i];ai=i;tai=Time[i];}
      if(fs==2&&Low[i]<lm){lm=Low[i];bi=i;tbi=Time[i];}
      if(i==0)
      {
         ai0=iBarShift(Symbol(),Period(),tai);bi0=iBarShift(Symbol(),Period(),tbi);
         aip0=iBarShift(Symbol(),Period(),taip);bip0=iBarShift(Symbol(),Period(),tbip);
         if(fs==1){for(n=bi0-1;n>ai0;n--){zzH[n]=0;zz[n]=0;} zz[ai0]=High[ai0];zzH[ai0]=High[ai0];zzL[ai0]=0;}         
         if(fs==2){for(n=ai0-1;n>bi0;n--){zzL[n]=0;zz[n]=0;} zz[bi0]=Low[bi0];zzL[bi0]=Low[bi0];zzH[bi0]=0;}
      }
   }
}

void Ensign_ZZ()
{
   int i,n;
   for(i=cbi;i>=0;i--)
   {
      if(lLst==0){lLst=Low[i];hLst=High[i];if(xIndi==3)di=hLst-lLst;}
      if(fs==0)
      {
         if(lLst<Low[i]&&hLst<High[i]){fs=1;hLst=High[i];si=High[i];ai=i;tai=Time[i];if(xIndi==3)di=High[i]-Low[i];}
         if(lLst>Low[i]&&hLst>High[i]){fs=2;lLst=Low[i];si=Low[i];bi=i;tbi=Time[i];if(xIndi==3)di=High[i]-Low[i];}
      }
      if(ti!=Time[i])
      {
         ti=Time[i];ai0=iBarShift(Symbol(),Period(),tai);bi0=iBarShift(Symbol(),Period(),tbi);fcnt0=false;
         if((fh||fl)&&countBar>0){countBar--;if(i==0&&countBar==0)fcnt0=true;}
         if(fs==1)
         {
            if(hLst>High[i]&&!fh)fh=true;
            if(i==0)
            {
               if(Close[i+1]<lLst&&fh){fs=2;countBar=mnBs;fh=false;}if(countBar==0&&si-di>Low[i+1]&&High[i+1]<hLst&&ai0>i+1&&fh&&!fcnt0){fs=2;countBar=mnBs;fh=false;}
               if(fs==2)
               {
                  zz[ai0]=High[ai0];zzH[ai0]=High[ai0];lLst=Low[i+1];
                  if(xIndi==3)di=High[i+1]-Low[i+1];
                  si=Low[i+1];bip=bi0;tbip=Time[bi0];bi=i+1;tbi=Time[i+1];
               }
            }
            else
            {
               if(Close[i]<lLst&&fh){fs=2;countBar=mnBs;fh=false;}if(countBar==0&&si-di>Low[i]&&High[i]<hLst&&fh){fs=2;countBar=mnBs;fh=false;}
               if(fs==2)
               {
                  zz[ai]=High[ai];zzH[ai]=High[ai];lLst=Low[i];
                  if(xIndi==3)di=High[i]-Low[i];
                  si=Low[i];bip=bi;tbip=Time[bi];bi=i;tbi=Time[i];
               }
            }
         }
         else
         {
            if(lLst<Low[i]&&!fl)fl=true;
            if(i==0)
            {
               if(Close[i+1]>hLst&&fl){fs=1;countBar=mnBs;fl=false;}if(countBar==0&&si+di<High[i+1]&&Low[i+1]>lLst&&bi0>i+1&&fl&&!fcnt0){fs=1;countBar=mnBs;fl=false;}
               if(fs==1)
               {
                  zz[bi0]=Low[bi0];zzL[bi0]=Low[bi0];hLst=High[i+1];
                  if(xIndi==3)di=High[i+1]-Low[i+1];
                  si=High[i+1];aip=ai0;taip=Time[ai0];ai=i+1;tai=Time[i+1];
               }
            }
            else
            {
               if(Close[i]>hLst&&fl){fs=1;countBar=mnBs;fl=false;}if(countBar==0&&si+di<High[i]&&Low[i]>lLst&&fl){fs=1;countBar=mnBs;fl=false;}
               if(fs==1)
               {
                  zz[bi]=Low[bi];zzL[bi]=Low[bi];hLst=High[i];
                  if(xIndi==3)di=High[i]-Low[i];
                  si=High[i];aip=ai;taip=Time[ai];ai=i;tai=Time[i];
               }
            }
         }
      } 
      if(fs==1&&High[i]>si){ai=i;tai=Time[i];hLst=High[i];si=High[i];countBar=mnBs;fh=false;if(xIndi==3)di=High[i]-Low[i];}
      if(fs==2&&Low[i]<si){bi=i;tbi=Time[i];lLst=Low[i];si=Low[i];countBar=mnBs;fl=false;if(xIndi==3)di=High[i]-Low[i];}
      if(i==0)
      {
         ai0=iBarShift(Symbol(),Period(),tai);bi0=iBarShift(Symbol(),Period(),tbi);
         aip0=iBarShift(Symbol(),Period(),taip);bip0=iBarShift(Symbol(),Period(),tbip);
         if(fs==1){for(n=bi0-1;n>=0;n--){zzH[n]=0;zz[n]=0;} zz[ai0]=High[ai0];zzH[ai0]=High[ai0];zzL[ai0]=0;}         
         if(fs==2){for(n=ai0-1;n>=0;n--){zzL[n]=0;zz[n]=0;} zz[bi0]=Low[bi0];zzL[bi0]=Low[bi0];zzH[bi0]=0;}
      }
   }
}

void ZigZag_tauber()
{
   int pos,back,lasthighpos,lastlowpos;double val,res;double curlow,curhigh,lasthigh,lastlow;
   GetHigh(0,Bars,0.0,0);lasthigh=-1;lasthighpos=-1;lastlow=-1;lastlowpos=-1;
   for(pos=Bars;pos>=0;pos--)
   {
      curlow=zzL[pos];curhigh=zzH[pos];
      if((curlow==0)&&(curhigh==0))continue;
      if(curhigh!=0)
      {
         if(lasthigh>0)
         {
            if(lasthigh<curhigh)zzH[lasthighpos]=0;
            else zzH[pos]=0;
         }
         if(lasthigh<curhigh||lasthigh<0)
         {
           lasthigh=curhigh;lasthighpos=pos;
         }
         lastlow=-1;
      }
      if(curlow!=0)
      {
         if(lastlow>0)
         {
            if(lastlow>curlow)zzL[lastlowpos]=0;
            else zzL[pos]=0;
         }
         if((curlow<lastlow)||(lastlow<0))
         {
            lastlow=curlow;lastlowpos=pos;
         } 
         lasthigh=-1;
      }
   }
   for(pos=Bars-1;pos>=0;pos--)
   {
      zz[pos]=zzL[pos];res=zzH[pos];
      if(res!=0.0)zz[pos]=res;
   }
}

void GetHigh(int start,int end,double price,int step)
{
   int count=end-start;if(count<=0)return;
   int i=iHighest(NULL,0,MODE_HIGH,count+1,start);double val=High[i];
   if((val-price)>(mnSz*Point))
   { 
      zzH[i]=val;
      if(i==start){GetLow(start+step,end-step,val,1-step);if(zzL[start-1]>0)zzL[start]=0;return;}     
      if(i==end){GetLow(start+step,end-step,val,1-step);if(zzL[end+1]>0)zzL[end]=0;return;} 
      GetLow(start,i-1,val,0);GetLow(i+1,end,val,0);
   }
}

void GetLow(int start,int end,double price,int step)
{
   int count=end-start;if(count<=0)return;
   int i=iLowest(NULL,0,MODE_LOW,count+1,start);double val=Low[i];
   if((price-val)>(mnSz*Point))
   {
      zzL[i]=val;
      if(i==start){GetHigh(start+step,end-step,val,1-step);if(zzH[start-1]>0)zzH[start]=0;return;}     
      if(i==end){GetHigh(start+step,end-step,val,1-step);if(zzH[end+1]>0)zzH[end]=0;return;}   
      GetHigh(start,i-1,val,0);GetHigh(i+1,end,val,0);
   }
}

void GannSwing()
{
   int i,n,fs_tend=0;
   for(i=cbi;i>=0;i--)
   {
      if(lLst==0){lLst=Low[i];hLst=High[i];ai=i;bi=i;}
      if(ti!=Time[i])
      {
         ti=Time[i];
         if(lLst_m==0&&hLst_m==0)
         {
            if(lLst>Low[i]&&hLst<High[i])
            {
               lLst=Low[i];hLst=High[i];lLst_m=Low[i];hLst_m=High[i];cntbX++;
               if(fs==1){cntbl=cntbX;ai=i;tai=Time[i];}
               else if(fs==2){cntbh=cntbX;bi=i;tbi=Time[i];}
               else {cntbl++;cntbh++;}
            }
            else if(lLst<=Low[i]&&hLst<High[i])
            {
               lLst_m=0;hLst_m=High[i];cntbl=0;cntbX=0;
               if(fs!=1)cntbh++;
               else {lLst=Low[i];hLst=High[i];lLst_m=0;hLst_m=0;ai=i;tai=Time[i];}
            }
            else if(lLst>Low[i]&&hLst>=High[i])
            {
               lLst_m=Low[i];hLst_m=0;cntbh=0;cntbX=0;
               if(fs!=2)cntbl++;
               else {lLst=Low[i];hLst=High[i];lLst_m=0;hLst_m=0;bi=i;tbi=Time[i];}
            }
         }
         else if(lLst_m>0&&hLst_m>0)
         {
            if(lLst_m>Low[i]&&hLst_m<High[i])
            {
               lLst=Low[i];hLst=High[i];lLst_m=Low[i];hLst_m=High[i];cntbX++;
               if(fs==1){cntbl=cntbX;ai=i;tai=Time[i];}
               else if(fs==2){cntbh=cntbX;bi=i;tbi=Time[i];}
               else {cntbl++;cntbh++;}
            }
            else if(lLst_m<=Low[i]&&hLst_m<High[i])
            {
               lLst_m=0;hLst_m=High[i];cntbl=0;cntbX=0;
               if(fs!=1)cntbh++;
               else {lLst=Low[i];hLst=High[i];lLst_m=0;hLst_m=0;ai=i;tai=Time[i];}
            }
            else if(lLst_m>Low[i]&&hLst_m>=High[i])
            {
               lLst_m=Low[i];hLst_m=0;cntbh=0;cntbX=0;
               if(fs!=2)cntbl++;
               else {lLst=Low[i];hLst=High[i];lLst_m=0;hLst_m=0;bi=i;tbi=Time[i];}
            }
         }
         else if(lLst_m>0)
         {
            if(lLst_m>Low[i]&&hLst<High[i])
            {
               lLst=Low[i];hLst=High[i];lLst_m=Low[i];hLst_m=High[i];cntbX++;
               if(fs==1){cntbl=cntbX;ai=i;tai=Time[i];}
               else if(fs==2){cntbh=cntbX;bi=i;tbi=Time[i];}
               else {cntbl++;cntbh++;}
            }
            else if(lLst_m<=Low[i]&&hLst<High[i])
            {
               lLst_m=0;hLst_m=High[i];cntbl=0;cntbX=0;
               if(fs!=1)cntbh++;
               else {lLst=Low[i];hLst=High[i];lLst_m=0;hLst_m=0;ai=i;tai=Time[i];}
            }
            else if(lLst_m>Low[i]&&hLst>=High[i])
            {
               lLst_m=Low[i];hLst_m=0;cntbh=0;cntbX=0;
               if(fs!=2)cntbl++;
               else {lLst=Low[i];hLst=High[i];lLst_m=0;hLst_m=0;bi=i;tbi=Time[i];}
            }
         }
         else if(hLst_m>0)
         {
            if(lLst>Low[i]&&hLst_m<High[i])
            {
               lLst=Low[i];hLst=High[i];lLst_m=Low[i];hLst_m=High[i];cntbX++;
               if(fs==1){cntbl=cntbX;ai=i;tai=Time[i];}
               else if(fs==2){cntbh=cntbX;bi=i;tbi=Time[i];}
               else {cntbl++;cntbh++;}
            }
            else if(lLst<=Low[i]&&hLst_m<High[i])
            {
               lLst_m=0;hLst_m=High[i];cntbl=0;cntbX=0;
               if(fs!=1)cntbh++;
               else {lLst=Low[i];hLst=High[i];lLst_m=0;hLst_m=0;ai=i;tai=Time[i];}
            }
            else if(lLst>Low[i]&&hLst_m>=High[i])
            {
               lLst_m=Low[i];hLst_m=0;cntbh=0;cntbX=0;
               if(fs!=2)cntbl++;
               else {lLst=Low[i];hLst=High[i];lLst_m=0;hLst_m=0;bi=i;tbi=Time[i];}
            }
         }
         if(fs==0)
         {
            if(lLst<lLst_m&&hLst>hLst_m)
            {
               lLst=Low[i];hLst=High[i];ai=i;bi=i;cntbl=0;cntbh=0;cntbX=0;
            }
            if(cntbh>cntbl&&cntbh>cntbX&&cntbh>mnBs)
            {
               lLst=Low[i];hLst=High[i];lLst_m=0;hLst_m=0;fs=1;cntbh=0;cntbl=0;cntbX=0;zz[bi]=Low[bi];zzL[bi]=Low[bi];zzH[bi]=0;ai=i;tai=Time[i];
            }
            else if(cntbl>cntbh&&cntbl>cntbX&&cntbl>mnBs)
            {
               lLst=Low[i];hLst=High[i];lLst_m=0;hLst_m=0;fs=2;cntbl=0;cntbh=0;cntbX=0;zz[ai]=High[ai];zzH[ai]=High[ai];zzL[ai]=0;bi=i;tbi=Time[i];
            }
         }
         else
         {
            if(lLst_m==0&&hLst_m==0)
            {
               cntbl=0;cntbh=0;cntbX=0;
            }
            if(fs==1)
            {
               if(cntbl>cntbh&&cntbl>cntbX&&cntbl>mnBs)
               {
                  ai0=iBarShift(Symbol(),Period(),tai);bi0=iBarShift(Symbol(),Period(),tbi);fs=2;cntbl=0;
                  zz[ai]=High[ai];zzH[ai]=High[ai];zzL[ai]=0;bi=i;tbi=Time[i];lLst=Low[i];hLst=High[i];lLst_m=0;hLst_m=0;
                  for(n=0;cntbX<mnBs;n++)
                  {
                     if(lLst<Low[i+n+1]&&hLst>High[i+n+1]){cntbX++;cntbh++;lLst=Low[i+n+1];hLst=High[i+n+1];hLst_m=High[i];}
                     else break;
                  }
                  lLst=Low[i];hLst=High[i];
               }
            }
            if(fs==2)
            {
               if(cntbh>cntbl&&cntbh>cntbX&&cntbh>mnBs)
               {
                  ai0=iBarShift(Symbol(),Period(),tai);bi0=iBarShift(Symbol(),Period(),tbi);fs=1;cntbh=0;
                  zz[bi]=Low[bi];zzL[bi]=Low[bi];zzH[bi]=0;ai=i;tai=Time[i];lLst=Low[i];hLst=High[i];lLst_m=0;hLst_m=0;
                  for(n=0;cntbX<mnBs;n++)
                  {
                     if(lLst<Low[i+n+1]&&hLst>High[i+n+1]){cntbX++;cntbl++;lLst=Low[i+n+1];hLst=High[i+n+1];lLst_m=Low[i];}
                     else break;
                  }
                  lLst=Low[i];hLst=High[i];
               }
            }
         } 
      } 
      if(i==0)
      {
         if(hLst<High[i]&&fs==1)
         {
            ai=i;tai=Time[i];zz[ai]=High[ai];zzH[ai]=High[ai];zzL[ai]=0;
         }
         else if(lLst>Low[i]&&fs==2)
         {
            bi=i;tbi=Time[i];zz[bi]=Low[bi];zzL[bi]=Low[bi];zzH[bi]=0;
         }
         ai0=iBarShift(Symbol(),Period(),tai);bi0=iBarShift(Symbol(),Period(),tbi);
         if(bi0>1)if(fs==1){for(n=bi0-1;n>=0;n--){zzH[n]=0.0;zz[n]=0.0;}zz[ai0]=High[ai0];zzH[ai0]=High[ai0];zzL[ai0]=0.0;}         
         if(ai0>1)if(fs==2){for(n=ai0-1;n>=0;n--){zzL[n]=0.0;zz[n]=0.0;}zz[bi0]=Low[bi0];zzL[bi0]=Low[bi0];zzH[bi0]=0.0;}
         if(ti<Time[1])i=2;
      }
   }
}

void nenZigZag()
 {
  if(cbi>0)
    {
     datetime nen_time=iTime(NULL,GrssPd,0);
     int i=0,j=0;
     double nen_dt=0,last_j=0,last_nen=0;
     int limit,big_limit,bigpos=0;

     if(init_zz)
       {
        limit=Bars-1;
        big_limit=iBars(NULL,GrssPd)-1;
       }
     else
       {
        limit=iBarShift(NULL,0,afr[2]);
        big_limit=iBarShift(NULL,GrssPd,afr[2]);
       }

     while (bigpos<big_limit&&i<limit)
       {
        if(Time[i]>=nen_time)
          {
           if(xIndi==6)nen_ZZ[i]=iCustom(NULL,GrssPd,"ZigZag_new_nen3",mnBs,xDev,xBckstp,0,bigpos);
           else if(xIndi==7)nen_ZZ[i]=iCustom(NULL,GrssPd,"DT_ZZ",mnBs,0,bigpos);
           else if(xIndi==8)nen_ZZ[i]=iCustom(NULL,GrssPd,"CZigZag",mnBs,xDev,0,bigpos);
           else if(xIndi==10)nen_ZZ[i]=iCustom(NULL,GrssPd,"Swing_ZZ",mnBs,0,bigpos);
           i++;
          }
        else {bigpos++;nen_time=iTime(NULL,GrssPd,bigpos);}
       }

     if(init_zz)
       {
        double i1=0,i2=0;
        init_zz=false;

        for(i=limit;i>0;i--)
          {
           if(nen_ZZ[i]>0)
             {
              if(i1==0)i1=nen_ZZ[i];
              else if(i1>0&&i1!=nen_ZZ[i])i2=nen_ZZ[i];
              if(i2>0)
                {
                 if(i1>i2)hi_nen=true;
                 else hi_nen=false;
                 break;
                }
             }
          }
       }
     else
       {
        if(afrl[2]>0)hi_nen=false;else hi_nen=true;
       }

     for(i=limit;i>=0;i--)
       {
        {zz[i]=0;zzH[i]=0;zzL[i]=0;}

        if(nen_ZZ[i]>0)
          {
           if(nen_dt>0&&nen_dt!=nen_ZZ[i])
             {
              if(hi_nen){hi_nen=false;zzH[j]=last_nen;}
              else {hi_nen=true;zzL[j]=last_nen;}
              last_j=0;nen_dt=0;zz[j]=last_nen;
             }

           if(hi_nen)
             {
              nen_dt=nen_ZZ[i];
              if(last_j<High[i]){j=i;last_j=High[i];last_nen=nen_ZZ[i];}
             }
           else
             {
              nen_dt=nen_ZZ[i];
              if(last_j==0){j=i;last_j=Low[i];last_nen=nen_ZZ[i];}if(last_j>Low[i]){j=i;last_j=Low[i];last_nen=nen_ZZ[i];}
             }

           if(nen_dt>0&&i==0)
             {
              zz[j]=last_nen;
              if(hi_nen)zzH[j]=last_nen;else zzL[j]=last_nen;
             }
          }
        else
          {
           if(last_j>0)
             {
              if(hi_nen){hi_nen=false;zzH[j]=last_nen;}
              else {hi_nen=true;zzL[j]=last_nen;}
              last_j=0;nen_dt=0;zz[j]=last_nen;
             }
          }
       }
     }
 }
 
void ZZTalex(int n)
{
   int i,j,k,zzblow,zzbhigh,cbar,cbar1,cbar2,EP,Mbar[];
   double curpr,Mprice[];
   bool flag,fd;

   for(i=0;i<=Bars-1;i++)
   {zz[i]=0.0;zzL[i]=0.0;zzH[i]=0.0;}

   EP=xPnt;zzblow=iLowest(NULL,0,MODE_LOW,n,0);zzbhigh=iHighest(NULL,0,MODE_HIGH,n,0);
   if(zzblow<zzbhigh){cbar=zzblow;curpr=Low[zzblow];}if(zzblow>zzbhigh){cbar=zzbhigh;curpr=High[zzbhigh];}
   if(zzblow==zzbhigh){cbar=zzblow;curpr=funk1(zzblow,n);}

   ArrayResize(Mbar,xPnt);
   ArrayResize(Mprice,xPnt);
   j=0;Ndpr=curpr;Ndb=cbar;Mbar[j]=cbar;Mprice[j]=curpr;EP--;
   if(curpr==Low[cbar])flag=true;
   else flag=false;
   fl=flag;i=cbar+1;
   while(EP>0)
   {
      if(flag)
      {
         while(i<=Bars-1)
         {
            cbar1=iHighest(NULL,0,MODE_HIGH,n,i);cbar2=iHighest(NULL,0,MODE_HIGH,n,cbar1);
            if(cbar1==cbar2){cbar=cbar1;curpr=High[cbar];flag=false;i=cbar+1;j++;break;}
            else i=cbar2;
         }
         Mbar[j]=cbar;Mprice[j]=curpr;EP--;
      }
      if(EP==0)break;
      if(!flag)
      {
         while(i<=Bars-1)
         {
            cbar1=iLowest(NULL,0,MODE_LOW,n,i);cbar2=iLowest(NULL,0,MODE_LOW,n,cbar1);
            if(cbar1==cbar2){cbar=cbar1;curpr=Low[cbar];flag=true;i=cbar+1;j++;break;}
            else i=cbar2;
         }
         Mbar[j]=cbar;Mprice[j]=curpr;EP--;
      }
   }
   if(Mprice[0]==Low[Mbar[0]])fd=true;else fd=false;
   for(k=0;k<=xPnt-1;k++)
   {
      if(k==0)
      {
         if(fd==true)
         {
            Mbar[k]=iLowest(NULL,0,MODE_LOW,Mbar[k+1]-Mbar[k],Mbar[k]);Mprice[k]=Low[Mbar[k]];Ndb=mnBs;
         }
         if(fd==false)
         {
            Mbar[k]=iHighest(NULL,0,MODE_HIGH,Mbar[k+1]-Mbar[k],Mbar[k]);Mprice[k]=High[Mbar[k]];Ndb=mnBs;
         }
      }
      if(k<xPnt-2)
      {
         if(fd==true)
         {
            Mbar[k+1]=iHighest(NULL,0,MODE_HIGH,Mbar[k+2]-Mbar[k]-1,Mbar[k]+1);Mprice[k+1]=High[Mbar[k+1]];
         }
         if(fd==false)
         {
            Mbar[k+1]=iLowest(NULL,0,MODE_LOW,Mbar[k+2]-Mbar[k]-1,Mbar[k]+1);Mprice[k+1]=Low[Mbar[k+1]];
         }
      }
      if(fd==true)fd=false;else fd=true;
      zz[Mbar[k]]=Mprice[k];
      if(k==0)
      {
         if(Mprice[k]>Mprice[k+1])
         {
            zzH[Mbar[k]]=Mprice[k];
         }
         else
         {
            zzL[Mbar[k]]=Mprice[k];
         }
      }
      else
      {
         if(Mprice[k]>Mprice[k-1])
         {
            zzH[Mbar[k]]=Mprice[k];
         }
         else
         {
            zzL[Mbar[k]]=Mprice[k];
         }
      }
   }
}
 
double div(double a,double b){if(MathAbs(b)*10000>MathAbs(a))return(a*1.0/b);else return(0);}
double ray_value(double B1,double P1,double B2,double P2,double AAA){return(P1+(AAA -B1)*div(P2-P1,B2-B1));}
datetime bar2time(int b){int t,TFsec=Period()*60;if(b<0)t=Time[0]-(b)*TFsec;else if(b>(Bars-1))t=Time[Bars-1]-(b-Bars+1)*TFsec;else t=Time[b];return(t);}
int time2bar(datetime t){int b,t0=Time[0],TFsec=Period()*60;if(t>t0)b=(t0-t)/TFsec;else if(t<Time[Bars-2])b=(Bars-2)+(Time[Bars-2]-t)/TFsec;else b=iBarShift(0,0,t);return(b);}

void ZigZag_SQZZ(bool zzFill=true)
{
   static int act_time=0,H1=10000,L1=10000,H2=10000,H3=10000,H4=10000,L2=10000,L3=10000,L4=10000;
	static double H1p=-1,H2p=-1,H3p=-1,H4p=-1,L1p=10000,L2p=10000,L3p=10000,L4p=10000;
	int mnm=1,tb,sH,sL,sX,i,a,barz,b,c,ii,H,L;double val,x,Lp,Hp,k=0.;if(Bars<100)return;if(1==2)bar2time(0);
	barz=Bars-4;int bb=barz;
	if(mnBs==0)mnBs=mnSz;if(mnSz==0)mnSz=mnBs*3;tb=MathSqrt(mnSz*mnBs);
	mnm=tb;a=time2bar(act_time);b=barz;
	if(a>=0&&a<tb)
	{
		ii=a;a--;L1+=a;H1+=a;L2+=a;H2+=a;L3+=a;H3+=a;
		if(!zzFill)
		{
			for(i=barz;i>=a;i--){zzH[i]=zzH[i-a];zzL[i]=zzL[i-a];}
			for(;i>=0;i--){zzH[i]=0;zzL[i]=0;}
		}
	}
	else
	{
		ii=barz;H1=ii+1;L1=ii;H2=ii+3;L2=ii+2;L2p=Low[L2];H2p=High[H2];L1p=Low[L1];H1p=High[H1];H3=H2;H3p=H2p;L3=L2;L3p=L2p;	
	}
	act_time=Time[1];
	for(c=0;ii>=0;c++,ii--)
	{
		H=ii;L=ii;Hp=High[H];Lp=Low[L];
		if(H2<L2)
		{
			if(Hp>=H1p)
			{
			   H1=H;H1p=Hp;
				if(H1p>H2p)
				{
					zzH[H2]=0;H1=H;H1p=Hp;H2=H1;H2p=H1p;L1=H1;L1p=H1p;zzH[H2]=H2p;
				}
			}
			else
			if(Lp<=L1p)
			{
			   L1=L;L1p=Lp;x=ray_value(L2,L2p,H2+(L2-H3)*0.5,H2p+(L2p-H3p)*0.5,L1);
				if(L1p<=L2p || tb*tb*Point<(H2p-L1p)*(H2-L1))
				{
					L4=L3;L4p=L3p;L3=L2;L3p=L2p;L2=L1;L2p=L1p;H1=L1;H1p=L1p;zzL[L2]=L2p;
				}
			}
		}
		if(L2<H2)
		{
			if(Lp<=L1p)
			{
			   L1=L;L1p=Lp;
				if(L1p<=L2p)
				{
					zzL[L2]=0;L1=L;L1p=Lp;L2=L1;L2p=L1p;H1=L1;H1p=L1p;zzL[L2]=L2p;
				}
			}
			else
			if(Hp>=H1p)
			{
			   H1=H;H1p=Hp;x=ray_value(H2,H2p,L2+0.5*(H2-L3),L2p+0.5*(H2p-L3p),H1);
				if( H1p>=H2p || tb*tb*Point<(H1p-L2p)*(L2-H1))
				{
					H4=H3;H4p=H3p;H3=H2;H3p=H2p;H2=H1;H2p=H1p;L1=H1;L1p=H1p;zzH[H2]=H2p;
				}
			}
		}
	}
	for(ii=bb-1;ii>=0;ii--)zz[ii]=MathMax(zzL[ii],zzH[ii]);
}

double funk1(int zzblow,int ExtDepth)
{
   double pr;
   int fblow,fbhigh;

   fblow=iLowest(NULL,0,MODE_LOW,ExtDepth,zzblow);fbhigh=iHighest(NULL,0,MODE_HIGH,ExtDepth,zzblow);
   if(fblow>fbhigh)pr=High[zzblow];if(fblow<fbhigh)pr=Low[zzblow];
   if(fblow==fbhigh)
   {
      fblow=iLowest(NULL,0,MODE_LOW,2*ExtDepth,zzblow);fbhigh=iHighest(NULL,0,MODE_HIGH,2*ExtDepth,zzblow);
      if(fblow>fbhigh)pr=High[zzblow];if(fblow<fbhigh)pr=Low[zzblow];
      if(fblow==fbhigh)
      {
         fblow=iLowest(NULL,0,MODE_LOW,3*ExtDepth,zzblow);fbhigh=iHighest(NULL,0,MODE_HIGH,3*ExtDepth,zzblow);
         if(fblow>fbhigh)pr=High[zzblow];if(fblow<fbhigh)pr=Low[zzblow];
      }
   }
   return(pr);
}

void i_vts()
{
   int LoopBegin,sh;
 	if(nbOfBs==0)LoopBegin=Bars-1;
   else LoopBegin=nbOfBs-1;
   LoopBegin=MathMin(Bars-25,LoopBegin);
   for(sh=LoopBegin;sh>=0;sh--)
   {
      GetValueVTS("",0,nbOfVTS,sh);ha[sh]=ms[0];la[sh]=ms[1];
   }
}

void i_vts1()
{
   int LoopBegin,sh;
 	if(nbOfBs==0)LoopBegin=Bars-1;
   else LoopBegin=nbOfBs-1;
   LoopBegin=MathMin(Bars-25,LoopBegin);
   for(sh=LoopBegin;sh>=0;sh--)
   {
      GetValueVTS("",0,nbOfVTS1,sh);ham[sh]=ms[0];lam[sh]=ms[1];
   }
}

void GetValueVTS(string sym,int tf,int ng,int nb)
{
   if(sym=="")sym=Symbol();
   double f1,f2,s1,s2;

   f1=iClose(sym,tf,nb)-3*iATR(sym,tf,10,nb);f2=iClose(sym,tf,nb)+3*iATR(sym,tf,10,nb);
   for(int i=1;i<=ng;i++)
   {
      s1=iClose(sym,tf,nb+i)-3*iATR(sym,tf,10,nb+i);s2=iClose(sym,tf,nb+i)+3*iATR(sym,tf,10,nb+i);
      if(f1<s1)f1=s1;if(f2>s2)f2=s2;
   }
   ms[0]=f2;ms[1]=f1;
}
  
void arrResize(int size)
{
   ArrayResize(fi,size);
   ArrayResize(fitxt,size);
   ArrayResize(fitxt100,size);
}
  
void array_()
{
   for(int i=0;i<65;i++)
   {
      nbFib[i]=0;nbPsvnt[i]=0;nbGart[i]=0;nbGilQual[i]=0;nbGilGeo[i]=0;nbGilHarm[i]=0;
      nbGilArthmc[i]=0;nbGilGldnMn[i]=0;nbSq[i]=0;nbCb[i]=0;nbRect[i]=0;nbX[i]=0;
   }

   nb[0]=0.111;nbtxt[0]=".111";nbCb[0]=1;
   nb[1]=0.125;nbtxt[1]=".125";nbMx[1]=1;nbGilHarm[1]=1;
   nb[2]=0.146;nbtxt[2]=".146";nbFib[2]=1;nbGilGeo[2]=1;
   nb[3]=0.167;nbtxt[3]=".167";nbGilArthmc[3]=1;
   nb[4]=0.177;nbtxt[4]=".177";nbGilHarm[4]=1;nbSq[4]=1;
   nb[5]=0.186;nbtxt[5]=".186";nbGilGeo[5]=1;
   nb[6]=0.192;nbtxt[6]=".192";nbCb[6]=1;
   nb[7]=0.2;nbtxt[7]=".2";nbRect[7]=1;
   nb[8]=0.236;nbtxt[8]=".236";nbFib[8]=1;nbMx[8]=1;nbGilGeo[8]=1;nbGilGldnMn[8]=1;
   nb[9]=0.25;nbtxt[9]=".25";nbPsvnt[9]=1;nbGilQual[9]=1;nbGilHarm[9]=1;nbSq[9]=1;
   nb[10]=0.3;nbtxt[10]=".3";nbGilGeo[10]=1;nbGilGldnMn[10]=1;
   nb[11]=0.333;nbtxt[11]=".333";nbGilArthmc[11]=1;nbCb[11]=1;
   nb[12]=0.354;nbtxt[12]=".354";nbGilHarm[12]=1;nbSq[12]=1;
   nb[13]=0.382;nbtxt[13]=".382";nbFib[13]=1;nbPsvnt[13]=1;nbGart[13]=1;nbGilQual[13]=1;nbGilGeo[13]=1;
   nb[14]=0.447;nbtxt[14]=".447";nbGart[14]=1;nbRect[14]=1;
   nb[15]=0.486;nbtxt[15]=".486";nbGilGeo[15]=1;nbGilGldnMn[15]=1;
   nb[16]=0.5;nbtxt[16]=".5";nbFib[16]=1;nbPsvnt[16]=1;nbGart[16]=1;nbGilQual[16]=1;nbGilHarm[16]=1;nbSq[16]=1;
   nb[17]=0.526;nbtxt[17]=".526";nbGilGeo[17]=1;
   nb[18]=0.577;nbtxt[18]=".577";nbGilArthmc[18]=1;nbCb[18]=1;
   nb[19]=0.618;nbtxt[19]=".618";nbFib[19]=1;nbPsvnt[19]=1;nbGart[19]=1;nbGilQual[19]=1;nbGilGeo[19]=1;nbGilGldnMn[19]=1;
   nb[20]=0.667;nbtxt[20]=".667";nbGilQual[20]=1;nbGilArthmc[20]=1;
   nb[21]=0.707;nbtxt[21]=".707";nbPsvnt[21]=1;nbGart[21]=1;nbGilHarm[21]=1;nbSq[21]=1;
   nb[22]=0.764;nbtxt[22]=".764";nbFib[22]=1;
   nb[23]=0.786;nbtxt[23]=".786";nbPsvnt[23]=1;nbGart[23]=1;nbGilQual[23]=1;nbGilGeo[23]=1;nbGilGldnMn[23]=1;
   nb[24]=0.809;nbtxt[24]=".809";nbX[24]=1;
   nb[25]=0.841;nbtxt[25]=".841";nbPsvnt[25]=1;
   nb[26]=0.854;nbtxt[26]=".854";nbFib[26]=1;nbMx[26]=1;
   nb[27]=0.874;nbtxt[27]=".874";nbX[27]=1;
   nb[28]=0.886;nbtxt[28]=".886";nbGart[28]=1;
   nb[29]=1.0;nbtxt[29]="1.";nbFib[29]=1;nbPsvnt[29]=1;nbGart[29]=1;nbGilQual[29]=1;nbGilGeo[29]=1;
   nb[30]=1.128;nbtxt[30]="1.128";nbPsvnt[30]=1;nbGart[30]=1;
   nb[31]=1.236;nbtxt[31]="1.236";nbFib[31]=1;
   nb[32]=1.272;nbtxt[32]="1.272";nbPsvnt[32]=1;nbGart[32]=1;nbGilQual[32]=1;nbGilGeo[32]=1;nbGilGldnMn[32]=1;
   nb[33]=1.309;nbtxt[33]="1.309";nbX[33]=1;
   nb[34]=1.414;nbtxt[34]="1.414";nbPsvnt[34]=1;nbGart[34]=1;nbGilHarm[34]=1;nbSq[34]=1;
   nb[35]=1.5;nbtxt[35]="1.5";nbGilArthmc[35]=1;
   nb[36]=1.618;nbtxt[36]="1.618";nbFib[36]=1;nbPsvnt[36]=1;nbGart[36]=1;nbGilQual[36]=1;nbGilGeo[36]=1;nbGilGldnMn[36]=1;
   nb[37]=1.732;nbtxt[37]="1.732";nbMx[37]=1;nbGilQual[37]=1;nbGilArthmc[37]=1;nbCb[37]=1;
   nb[38]=1.75;nbtxt[38]="1.75";nbGilQual[38]=1;
   nb[39]=1.902;nbtxt[39]="1.902";nbMx[39]=1;nbGilGeo[39]=1;
   nb[40]=2.0;nbtxt[40]="2.";nbPsvnt[40]=1;nbGart[40]=1;nbGilQual[40]=1;nbGilHarm[40]=1;nbSq[40]=1;
   nb[41]=2.058;nbtxt[41]="2.058";nbGilGeo[41]=1;nbGilGldnMn[41]=1;
   nb[42]=2.236;nbtxt[42]="2.236";nbGart[42]=1;nbGilQual[42]=1;nbRect[42]=1;
   nb[43]=2.288;nbtxt[43]="2.288";nbX[43]=1;
   nb[44]=2.5;nbtxt[44]="2.5";nbGilQual[44]=1;
   nb[45]=2.618;nbtxt[45]="2.618";nbPsvnt[45]=1;nbGart[45]=1;nbGilQual[45]=1;nbGilGeo[45]=1;nbGilGldnMn[45]=1;
   nb[46]=2.828;nbtxt[46]="2.828";nbGilHarm[46]=1;nbSq[46]=1;
   nb[47]=3.0;nbtxt[47]="3.0";nbGilQual[47]=1;nbGilArthmc[47]=1;nbCb[47]=1;
   nb[48]=3.142;nbtxt[48]="3.142";nbGart[48]=1;
   nb[49]=3.236;nbtxt[49]="3.236";nbX[49]=1;
   nb[50]=3.33;nbtxt[50]="3.33";nbGilQual[50]=1;nbGilGeo[50]=1;nbGilGldnMn[50]=1;nbX[50]=1;
   nb[51]=3.464;nbtxt[51]="3.464";nbX[51]=1;
   nb[52]=3.618;nbtxt[52]="3.618";nbGart[52]=1;
   nb[53]=4.0;nbtxt[53]="4.";nbPsvnt[53]=1;nbGilHarm[53]=1;nbSq[53]=1;
   nb[54]=4.236;nbtxt[54]="4.236";nbFib[54]=1;nbGilQual[54]=1;nbGilGeo[54]=1;nbX[54]=1;
   nb[55]=4.472;nbtxt[55]="4.472";nbX[55]=1;
   nb[56]=5.0;nbtxt[56]="5.";nbRect[56]=1;
   nb[57]=5.2;nbtxt[57]="5.2";nbCb[57]=1;
   nb[58]=5.388;nbtxt[58]="5.388";nbGilGeo[58]=1;
   nb[59]=5.657;nbtxt[59]="5.657";nbGilHarm[59]=1;nbSq[59]=1;
   nb[60]=6.0;nbtxt[60]="6.";nbGilArthmc[60]=1;
   nb[61]=6.854;nbtxt[61]="6.854";nbGilQual[61]=1;nbGilGeo[61]=1;
   nb[62]=8.0;nbtxt[62]="8.";nbGilHarm[62]=1;
   nb[63]=9.0;nbtxt[63]="9.";nbCb[63]=1;
}

void Pesavento_patterns()
{
   if(xFibTpe==1)
   {
      switch (xFibChce)
      {
         case 0:{srch_nb(nbPsvnt,xPsnt);break;}case 1:{srch_nb(nbGart,xGart886);break;}case 2:{srch_nb(nbGart,xGart886);break;}
         case 3:{srch_nb(nbGilQual,xPsnt);break;}case 4:{srch_nb(nbGilGeo,xPsnt);break;}case 5:{srch_nb(nbGilHarm,xPsnt);break;}
         case 6:{srch_nb(nbGilArthmc,xPsnt);break;}case 7:{srch_nb(nbGilGldnMn,xPsnt);break;}case 8:{srch_nb(nbSq,xPsnt);break;}
         case 9:{srch_nb(nbCb,xPsnt);break;}case 10:{srch_nb(nbRect,xPsnt);break;}case 11:{srch_nb(nbX,xPsnt);break;}
      }
   }
   else
   {
      srch_nb(nbFib,xPsnt);
   }
}

void srch_nb(int arr[],color cPattern)
{
   int ki;
   clrPPttrn=xNtFib;
   if(xFibChce!=2)
   {
      if(xDltTp==2)for(ki=kiPRZ;ki<=63;ki++)
      {
         if(arr[ki]>0)
         {
            if(MathAbs((nb[ki]-kj)/nb[ki])<=xDlt)
            {kk=nb[ki];txtkk=nbtxt[ki];k2=-1;clrPPttrn=cPattern;break;}
         }
      }
      if(xDltTp==1)for(ki=kiPRZ;ki<=63;ki++)
      {
         if(arr[ki]>0)
         {
            if(MathAbs(nb[ki]-kj)<=xDlt)
            {kk=nb[ki];txtkk=nbtxt[ki];k2=-1;clrPPttrn=cPattern;break;}
         }
      }
   }
   else
   {
      if(xDltTp==2)for(ki=kiPRZ;ki<=63;ki++)
      {
         if(arr[ki]>0)
         {
            if(MathAbs((nb[ki]-kj)/nb[ki])<=xDlt)
            {kk=nb[ki];txtkk=nbtxt[ki];k2=-1;clrPPttrn=cPattern;break;}
         }
         else if(nbMx[ki]>0)
         if(MathAbs((nb[ki]-kj)/nb[ki])<=xDlt)
         {kk=nb[ki];txtkk=nbtxt[ki];k2=-1;clrPPttrn=xPsnt;break;}
      }
      if(xDltTp==1)for(ki=kiPRZ;ki<=63;ki++)
      {
         if(arr[ki]>0)
         {
            if(MathAbs(nb[ki]-kj)<=xDlt)
            {kk=nb[ki];txtkk=nbtxt[ki];k2=-1;clrPPttrn=cPattern;break;}
         }
         else if(nbMx[ki]>0)
         if(MathAbs(nb[ki]-kj)<=xDlt)
         {kk=nb[ki];txtkk=nbtxt[ki];k2=-1;clrPPttrn=xPsnt;break;}
      }
   }
}