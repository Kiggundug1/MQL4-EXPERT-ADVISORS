
#property copyright "Copyright © 2008,  MF3"
#property link ""
// indicator settings 
#property indicator_chart_window
#property indicator_buffers 2
#property indicator_color1 DeepSkyBlue
#property indicator_color2 Blue


double gd10084[];
double gd10088[];
int gi10092[];
int gi76 = 5;
int gi80 = 60;


int init()
{
string ls1;


SetIndexStyle( 0, DRAW_ARROW, STYLE_SOLID, 0 );
SetIndexArrow( 0, 171 );
SetIndexBuffer( 0, gd10084 );
SetIndexEmptyValue( 0, 0.0 );
SetIndexStyle( 1, DRAW_ARROW, STYLE_SOLID, 0 );
SetIndexArrow( 1, 171 );
SetIndexBuffer( 1, gd10088 );
SetIndexEmptyValue( 1, 0.0 );
if (Period() > gi80)
{
  return( 0 );
}

ArrayCopySeries( gi10092, MODE_TIME, Symbol(), gi80 );
return( 0 );
}

int deinit()
{


return( 0 );
}

int start()
{
int li1, li2, li3, li4, li5, li6;
double ld1;
string ls1;



li1 = IndicatorCounted();
li2 = 300;
if (li1 < 0) return( (-1) );
if (li1 > 0) li1 = li1-1;
li2 = (Bars - li1);
for (li4 = 0;(li4 < li2);li4 = li4+1) 
{  if (Time[li4] >= gi10092[0]) {
     li3 = 0;
  }
  else {
     li3 = ArrayBsearch( gi10092, Time[(li4 - 1)], 0, 0, 2 );
   if (Period() <= gi80) li3 = li3+1;
  }

  for (li5 = li3;(li5 < (li3 + 100));li5 = li5+1) 
  {    ld1 = iCustom( 0, gi80, "ZigZag", gi76, 5, 3, 0, (li5 + 1) );
    if (ld1 != 0.0) break;
  }
  if (iClose( 0, 0, (li4 + 1) ) <= ld1) {
     gd10088[li4] =ld1;
  }
  else {
     gd10088[li4] = 0.0;
  }

  if (iClose( 0, 0, (li4 + 1) ) >= ld1) {
     gd10084[li4] =ld1;
  }
  else {
     gd10084[li4] = 0.0;
  }

  WindowRedraw();
}
return( 0 );
}


