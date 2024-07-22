
#property indicator_chart_window

extern color Line_1_barsColor  = Yellow;//
extern int   Line_1_barsStyle = 2;
extern int   Line_1_barsWidth = 1;

extern bool  Draw_as_Background=TRUE;

int init(){return(0);}
int deinit(){
ObjectDelete ("1_bars"); 
return(0);}

int start(){
ObjectDelete("1_bars");
ObjectCreate("1_bars",OBJ_VLINE,0,Time[1],Bid);
ObjectSet   ("1_bars",OBJPROP_COLOR,Line_1_barsColor);
ObjectSet   ("1_bars",OBJPROP_STYLE,Line_1_barsStyle);
ObjectSet   ("1_bars",OBJPROP_WIDTH,Line_1_barsWidth);
ObjectSet   ("1_bars",OBJPROP_BACK,Draw_as_Background);


return(0);}
//+------------------------------------------------------------------+