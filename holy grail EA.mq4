/ / + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - + / /  
 / / )       _ _ _ _     _     _     _ _ _ _     _ _ _ _     _ _ _ _     _ _ _ _     _ _     _ _         _ _             _ _ _     _ _ _ _ _     _ _     _ _       ( / /  
 / / )     (   _ _ _ ) (   \ /   ) (     _   \ (     _   \ (   _ _ _ ) (   _ _ _ ) (     \ /     )     / _ _ \         /   _ _ ) (     _     ) (     \ /     )     ( / /  
 / / )       ) _ _ )     )     (     ) ( _ )   ) )       /   ) _ _ )     ) _ _ )     )         (     / ( _ _ ) \     (   ( _ _     ) ( _ ) (     )         (       ( / /  
 / / )     ( _ _ )     ( _ / \ _ ) ( _ _ _ _ / ( _ ) \ _ ) ( _ _ _ _ ) ( _ _ _ _ ) ( _ / \ / \ _ ) ( _ _ ) ( _ _ ) ( ) \ _ _ _ ) ( _ _ _ _ _ ) ( _ / \ / \ _ )     ( / /  
 / / )       h t t p : / / f x d r e e m a . c o m                                                             C o p y r i g h t   2 0 1 7 ,   f x D r e e m a     ( / /  
 / / + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - + / /  
 # p r o p e r t y   c o p y r i g h t   " "  
 # p r o p e r t y   l i n k             " h t t p s : / / f x d r e e m a . c o m "  
 # p r o p e r t y   s t r i c t  
  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 / /   + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +   / /  
 / /   |                                               I N P U T   P A R A M E T E R S ,   G L O B A L   V A R I A B L E S ,   C O N S T A N T S ,   I M P O R T S   a n d   I N C L U D E S                                                 |   / /  
 / /   |                                             S y s t e m   a n d   C u s t o m   v a r i a b l e s   a n d   o t h e r   d e f i n i t i o n s   u s e d   i n   t h e   p r o j e c t                                               |   / /  
 / /   + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +   / /  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
  
 / / V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V / /  
 / /   S y s t e m   c o n s t a n t s   ( p r o j e c t   s e t t i n g s )   / /  
 / / ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ / /  
 / / - -  
 # d e f i n e   P R O J E C T _ I D   " m t 4 - 6 5 3 1 "  
 / / - -  
 / /   P o i n t   F o r m a t   R u l e s  
 # d e f i n e   P O I N T _ F O R M A T _ R U L E S   " 0 . 0 0 1 = 0 . 0 1 , 0 . 0 0 0 0 1 = 0 . 0 0 0 1 , 0 . 0 0 0 0 0 1 = 0 . 0 0 0 1 "   / /   t h i s   i s   d e s e r i a l i z e d   i n   a   s p e c i a l   f u n c t i o n   l a t e r  
 # d e f i n e   E N A B L E _ S P R E A D _ M E T E R   t r u e  
 # d e f i n e   E N A B L E _ S T A T U S   t r u e  
 / / - -  
 / /   E v e n t s   O n / O f f  
 # d e f i n e   E N A B L E _ E V E N T _ T I C K   1   / /   e n a b l e   " T i c k "   e v e n t  
 # d e f i n e   E N A B L E _ E V E N T _ T R A D E   0   / /   e n a b l e   " T r a d e "   e v e n t  
 # d e f i n e   E N A B L E _ E V E N T _ T I M E R   0   / /   e n a b l e   " T i m e r "   e v e n t  
 / / - -  
 / /   V i r t u a l   S t o p s  
 # d e f i n e   V I R T U A L _ S T O P S _ E N A B L E D   0   / /   e n a b l e   v i r t u a l   s t o p s  
 # d e f i n e   V I R T U A L _ S T O P S _ T I M E O U T   0   / /   v i r t u a l   s t o p s   t i m e o u t  
 # d e f i n e   U S E _ E M E R G E N C Y _ S T O P S   " n o "   / /   " y e s "   t o   u s e   e m e r g e n c y   ( h a r d   s t o p s )   w h e n   v i r t u a l   s t o p s   a r e   i n   u s e .   " a l w a y s "   t o   u s e   E M E R G E N C Y _ S T O P S _ A D D   a s   e m e r g e n c y   s t o p s   w h e n   t h e r e   i s   n o   v i r t u a l   s t o p .  
 # d e f i n e   E M E R G E N C Y _ S T O P S _ R E L   0   / /   u s e   0   t o   d i s a b l e   h a r d   s t o p s   w h e n   v i r t u a l   s t o p s   a r e   e n a b l e d .   U s e   a   v a l u e   > = 0   t o   a u t o m a t i c a l l y   s e t   h a r d   s t o p s   w i t h   v i r t u a l .   E x a m p l e :   i f   2   i s   u s e d ,   t h e n   h a r d   s t o p s   w i l l   b e   2   t i m e s   b i g g e r   t h a n   v i r t u a l   o n e s .  
 # d e f i n e   E M E R G E N C Y _ S T O P S _ A D D   0   / /   a d d   p i p s   t o   r e l a t i v e   s i z e   o f   e m e r g e n c y   s t o p s   ( h a r d   s t o p s )  
 / / - -  
 / /   S e t t i n g s   f o r   e v e n t s  
 # d e f i n e   O N _ T R A D E _ R E A L T I M E   0   / /  
 # d e f i n e   O N _ T I M E R _ P E R I O D   6 0   / /   T i m e r   e v e n t   p e r i o d   ( i n   s e c o n d s )  
  
 / / V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V / /  
 / /   S y s t e m   c o n s t a n t s   ( p r e d e f i n e d   c o n s t a n t s )   / /  
 / / ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ / /  
 / / - -  
 # d e f i n e   T L O B J P R O P _ T I M E 1   8 0 1  
 # d e f i n e   O B J P R O P _ T L _ P R I C E _ B Y _ S H I F T   8 0 2  
 # d e f i n e   O B J P R O P _ T L _ S H I F T _ B Y _ P R I C E   8 0 3  
 # d e f i n e   O B J P R O P _ F I B O V A L U E   8 0 4  
 # d e f i n e   O B J P R O P _ F I B O P R I C E V A L U E   8 0 5  
 # d e f i n e   O B J P R O P _ B A R S H I F T 1   8 0 7  
 # d e f i n e   O B J P R O P _ B A R S H I F T 2   8 0 8  
 # d e f i n e   O B J P R O P _ B A R S H I F T 3   8 0 9  
 # d e f i n e   S E L _ C U R R E N T   0  
 # d e f i n e   S E L _ I N I T I A L   1  
  
 / / V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V / /  
 / /   E n u m e r a t i o n s ,   I m p o r t s ,   C o n s t a n t s ,   V a r i a b l e s   / /  
 / / ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ / /  
  
 / / - -  
 / /   E n u m e r a t i o n s   b y   C u s t o m   I n d i c a t o r s  
  
  
  
  
  
  
 / / - -  
 / /   C o n s t a n t s   ( I n p u t   P a r a m e t e r s )  
 i n p u t   i n t   M a g i c S t a r t   =   6 5 3 1 ;   / /   M a g i c   N u m b e r ,   k i n d   o f . . .  
 c l a s s   c  
 {  
 	 	 p u b l i c :  
 	 s t a t i c   i n t   M a g i c S t a r t ;  
 } ;  
 i n t   c : : M a g i c S t a r t ;  
  
  
 / / - -  
 / /   V a r i a b l e s   ( G l o b a l   V a r i a b l e s )  
 c l a s s   v  
 {  
 	 	 p u b l i c :  
 } ;  
  
  
  
 / / - -  
 / /   E x t e r n s   ( G l o b a l   V a r i a b l e s )  
 i n p u t   d o u b l e   i n p 4 _ V o l u m e B l o c k P e r c e n t   =   9 ;  
 i n p u t   d o u b l e   i n p 4 _ S t o p L o s s P i p s   =   1 0 ;  
 i n p u t   d o u b l e   i n p 5 _ V o l u m e B l o c k P e r c e n t   =   9 ;  
 i n p u t   d o u b l e   i n p 5 _ S t o p L o s s P i p s   =   1 0 ;  
 i n p u t   d o u b l e   i n p 1 0 _ O n P r o f i t P i p s   =   3 0 ;  
 i n p u t   d o u b l e   i n p 1 1 _ t S t o p P i p s   =   4 0 ;  
 i n p u t   d o u b l e   i n p 1 1 _ t S t e p P i p s   =   1 0 ;  
 c l a s s   _ e x t e r n s  
 {  
 	 	 p u b l i c :  
 	 s t a t i c   d o u b l e   i n p 4 _ V o l u m e B l o c k P e r c e n t ;  
 	 s t a t i c   d o u b l e   i n p 4 _ S t o p L o s s P i p s ;  
 	 s t a t i c   d o u b l e   i n p 5 _ V o l u m e B l o c k P e r c e n t ;  
 	 s t a t i c   d o u b l e   i n p 5 _ S t o p L o s s P i p s ;  
 	 s t a t i c   d o u b l e   i n p 1 0 _ O n P r o f i t P i p s ;  
 	 s t a t i c   d o u b l e   i n p 1 1 _ t S t o p P i p s ;  
 	 s t a t i c   d o u b l e   i n p 1 1 _ t S t e p P i p s ;  
 } ;  
 d o u b l e   _ e x t e r n s : : i n p 4 _ V o l u m e B l o c k P e r c e n t   =   i n p 4 _ V o l u m e B l o c k P e r c e n t ;  
 d o u b l e   _ e x t e r n s : : i n p 4 _ S t o p L o s s P i p s   =   i n p 4 _ S t o p L o s s P i p s ;  
 d o u b l e   _ e x t e r n s : : i n p 5 _ V o l u m e B l o c k P e r c e n t   =   i n p 5 _ V o l u m e B l o c k P e r c e n t ;  
 d o u b l e   _ e x t e r n s : : i n p 5 _ S t o p L o s s P i p s   =   i n p 5 _ S t o p L o s s P i p s ;  
 d o u b l e   _ e x t e r n s : : i n p 1 0 _ O n P r o f i t P i p s   =   i n p 1 0 _ O n P r o f i t P i p s ;  
 d o u b l e   _ e x t e r n s : : i n p 1 1 _ t S t o p P i p s   =   i n p 1 1 _ t S t o p P i p s ;  
 d o u b l e   _ e x t e r n s : : i n p 1 1 _ t S t e p P i p s   =   i n p 1 1 _ t S t e p P i p s ;  
  
  
  
 / / V V V V V V V V V V V V V V V V V V V V V V V V V / /  
 / /   S y s t e m   g l o b a l   v a r i a b l e s   / /  
 / / ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ / /  
 / / - -  
 i n t   F X D _ C U R R E N T _ F U N C T I O N _ I D   =   0 ;  
 d o u b l e   F X D _ M I L S _ I N I T _ E N D         =   0 ;  
 i n t   F X D _ T I C K S _ F R O M _ S T A R T         =   0 ;  
 i n t   F X D _ M O R E _ S H I F T                     =   0 ;  
 b o o l   F X D _ D R A W _ S P R E A D _ I N F O       =   f a l s e ;  
 b o o l   F X D _ F I R S T _ T I C K _ P A S S E D     =   f a l s e ;  
 b o o l   F X D _ B R E A K                             =   f a l s e ;  
 b o o l   F X D _ C O N T I N U E                       =   f a l s e ;  
 b o o l   F X D _ C H A R T _ I S _ O F F L I N E       =   f a l s e ;  
 b o o l   F X D _ O N T I M E R _ T A K E N             =   f a l s e ;  
 b o o l   F X D _ O N T I M E R _ T A K E N _ I N _ M I L L I S E C O N D S   =   f a l s e ;  
 d o u b l e   F X D _ O N T I M E R _ T A K E N _ T I M E   =   0 ;  
 b o o l   U S E _ V I R T U A L _ S T O P S   =   V I R T U A L _ S T O P S _ E N A B L E D ;  
 s t r i n g   F X D _ C U R R E N T _ S Y M B O L       =   " " ;  
 i n t   F X D _ B L O C K S _ C O U N T                 =   1 1 ;  
 d a t e t i m e   F X D _ T I C K S K I P _ U N T I L   =   0 ;  
  
 / / -   f o r   u s e   i n   O n C h a r t ( )   e v e n t  
 s t r u c t   f x d _ o n c h a r t  
 {  
 	 i n t   i d ;  
 	 l o n g   l p a r a m ;  
 	 d o u b l e   d p a r a m ;  
 	 s t r i n g   s p a r a m ;  
 } ;  
 f x d _ o n c h a r t   F X D _ O N C H A R T ;  
  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 / /   + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +   / /  
 / /   |                                                                                                   E V E N T   F U N C T I O N S                                                                                                     |   / /  
 / /   |                                                       T h e s e   a r e   t h e   m a i n   f u n c t i o n s   t h a t   c o n t r o l s   t h e   w h o l e   p r o j e c t                                                       |   / /  
 / /   + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +   / /  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
  
 / / V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V / /  
 / /   T h i s   f u n c t i o n   i s   e x e c u t e d   o n c e   w h e n   t h e   p r o g r a m   s t a r t s   / /  
 / / ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ / /  
 i n t   O n I n i t ( )  
 {  
  
 	 / /   I n i t i a t e   C o n s t a n t s  
 	 c : : M a g i c S t a r t   =   M a g i c S t a r t ;  
  
  
  
  
 	 / /   I n i t i a t e   E x t e r n s  
 	 _ e x t e r n s : : i n p 4 _ V o l u m e B l o c k P e r c e n t   =   i n p 4 _ V o l u m e B l o c k P e r c e n t ;  
 	 _ e x t e r n s : : i n p 4 _ S t o p L o s s P i p s   =   i n p 4 _ S t o p L o s s P i p s ;  
 	 _ e x t e r n s : : i n p 5 _ V o l u m e B l o c k P e r c e n t   =   i n p 5 _ V o l u m e B l o c k P e r c e n t ;  
 	 _ e x t e r n s : : i n p 5 _ S t o p L o s s P i p s   =   i n p 5 _ S t o p L o s s P i p s ;  
 	 _ e x t e r n s : : i n p 1 0 _ O n P r o f i t P i p s   =   i n p 1 0 _ O n P r o f i t P i p s ;  
 	 _ e x t e r n s : : i n p 1 1 _ t S t o p P i p s   =   i n p 1 1 _ t S t o p P i p s ;  
 	 _ e x t e r n s : : i n p 1 1 _ t S t e p P i p s   =   i n p 1 1 _ t S t e p P i p s ;  
  
  
  
 	 / /   d o   o r   d o   n o t   n o t   i n i t i l i a l i z e   o n   r e l o a d  
 	 i f   ( U n i n i t i a l i z e R e a s o n ( )   ! =   0 )  
 	 {  
 	 	 i f   ( U n i n i t i a l i z e R e a s o n ( )   = =   R E A S O N _ C H A R T C H A N G E )  
 	 	 {  
 	 	 	 / /   i f   t h e   s y m b o l   i s   t h e   s a m e ,   d o   n o t   r e l o a d ,   o t h e r w i s e   c o n t i n u e   b e l o w  
 	 	 	 i f   ( F X D _ C U R R E N T _ S Y M B O L   = =   S y m b o l ( ) )   { r e t u r n   I N I T _ S U C C E E D E D ; }  
 	 	 }  
 	 	 e l s e  
 	 	 {  
 	 	 	 r e t u r n   I N I T _ S U C C E E D E D ;  
 	 	 }  
 	 }  
 	 F X D _ C U R R E N T _ S Y M B O L   =   S y m b o l ( ) ;  
  
  
  
  
  
 	 C o m m e n t ( " " ) ;  
 	 f o r   ( i n t   i = O b j e c t s T o t a l ( C h a r t I D ( ) ) ;   i > = 0 ;   i - - )  
 	 {  
 	 	 s t r i n g   n a m e   =   O b j e c t N a m e ( C h a r t I D ( ) ,   i ) ;  
 	 	 i f   ( S t r i n g S u b s t r ( n a m e , 0 , 8 )   = =   " f x d _ c m n t " )   { O b j e c t D e l e t e ( C h a r t I D ( ) ,   n a m e ) ; }  
 	 }  
 	 C h a r t R e d r a w ( ) ;  
  
  
  
 	 / / - -   d i s a b l e   v i r t u a l   s t o p s   i n   o p t i m i z a t i o n ,   b e c a u s e   g r a p h i c a l   o b j e c t s   d o e s   n o t   w o r k  
 	 / /   h t t p : / / d o c s . m q l 4 . c o m / r u n t i m e / t e s t i n g  
 	 i f   ( M Q L I n f o I n t e g e r ( M Q L _ O P T I M I Z A T I O N ) )   {  
 	 	 U S E _ V I R T U A L _ S T O P S   =   f a l s e ;  
 	 }  
  
 	 / / - -   s e t   i n i t i a l   l o c a l   a n d   s e r v e r   t i m e  
 	 T i m e A t S t a r t ( " s e t " ) ;  
  
 	 / / - -   s e t   i n i t i a l   b a l a n c e  
 	 A c c o u n t B a l a n c e A t S t a r t ( ) ;  
  
 	 / / - -   d r a w   t h e   i n i t i a l   s p r e a d   i n f o   m e t e r  
 	 i f   ( E N A B L E _ S P R E A D _ M E T E R   = =   f a l s e )   {  
 	 	 F X D _ D R A W _ S P R E A D _ I N F O   =   f a l s e ;  
 	 }  
 	 e l s e   {  
 	 	 F X D _ D R A W _ S P R E A D _ I N F O   =   ! ( M Q L I n f o I n t e g e r ( M Q L _ T E S T E R )   & &   ! M Q L I n f o I n t e g e r ( M Q L _ V I S U A L _ M O D E ) ) ;  
 	 }  
 	 i f   ( F X D _ D R A W _ S P R E A D _ I N F O )   D r a w S p r e a d I n f o ( ) ;  
  
 	 / / - -   d r a w   i n i t i a l   s t a t u s  
 	 i f   ( E N A B L E _ S T A T U S )   D r a w S t a t u s ( " w a i t i n g   f o r   t i c k . . . " ) ;  
  
 	 / / - -   w o r k i n g   w i t h   o f f l i n e   c h a r t s  
 	 i f   ( M Q L I n f o I n t e g e r ( M Q L _ P R O G R A M _ T Y P E )   = =   P R O G R A M _ E X P E R T )  
 	 {  
 	 	 F X D _ C H A R T _ I S _ O F F L I N E   =   C h a r t G e t I n t e g e r ( 0 ,   C H A R T _ I S _ O F F L I N E ) ;  
 	 }  
  
 	 i f   ( M Q L I n f o I n t e g e r ( M Q L _ P R O G R A M _ T Y P E )   ! =   P R O G R A M _ S C R I P T )  
 	 {  
 	 	 i f   ( F X D _ C H A R T _ I S _ O F F L I N E   = =   t r u e   | |   ( E N A B L E _ E V E N T _ T R A D E   = =   1   & &   O N _ T R A D E _ R E A L T I M E   = =   1 ) )  
 	 	 {  
 	 	 	 F X D _ O N T I M E R _ T A K E N   =   t r u e ;  
 	 	 	 E v e n t S e t M i l l i s e c o n d T i m e r ( 1 ) ;  
 	 	 }  
 	 	 i f   ( E N A B L E _ E V E N T _ T I M E R )   {  
 	 	 	 O n T i m e r S e t ( O N _ T I M E R _ P E R I O D ) ;  
 	 	 }  
 	 }  
  
  
 	 / / - -   I n i t i a l i z e   b l o c k s   c l a s s e s  
 	 A r r a y R e s i z e ( _ b l o c k s _ ,   1 1 ) ;  
  
 	 _ b l o c k s _ [ 0 ]   =   n e w   B l o c k 0 ( ) ;  
 	 _ b l o c k s _ [ 1 ]   =   n e w   B l o c k 1 ( ) ;  
 	 _ b l o c k s _ [ 2 ]   =   n e w   B l o c k 2 ( ) ;  
 	 _ b l o c k s _ [ 3 ]   =   n e w   B l o c k 3 ( ) ;  
 	 _ b l o c k s _ [ 4 ]   =   n e w   B l o c k 4 ( ) ;  
 	 _ b l o c k s _ [ 5 ]   =   n e w   B l o c k 5 ( ) ;  
 	 _ b l o c k s _ [ 6 ]   =   n e w   B l o c k 6 ( ) ;  
 	 _ b l o c k s _ [ 7 ]   =   n e w   B l o c k 7 ( ) ;  
 	 _ b l o c k s _ [ 8 ]   =   n e w   B l o c k 8 ( ) ;  
 	 _ b l o c k s _ [ 9 ]   =   n e w   B l o c k 9 ( ) ;  
 	 _ b l o c k s _ [ 1 0 ]   =   n e w   B l o c k 1 0 ( ) ;  
  
 	 / /   f i l l   t h e   l o o k u p   t a b l e  
 	 A r r a y R e s i z e ( f x d B l o c k s L o o k u p T a b l e ,   A r r a y S i z e ( _ b l o c k s _ ) ) ;  
 	 f o r   ( i n t   i = 0 ;   i < A r r a y S i z e ( _ b l o c k s _ ) ;   i + + )  
 	 {  
 	 	 f x d B l o c k s L o o k u p T a b l e [ i ]   =   _ b l o c k s _ [ i ] . _ _ b l o c k _ u s e r _ n u m b e r ;  
 	 }  
  
 	 / /   f i l l   t h e   l i s t   o f   i n b o u n d   b l o c k s   f o r   e a c h   B l o c k C a l l s   i n s t a n c e  
 	 f o r   ( i n t   i = 0 ;   i < A r r a y S i z e ( _ b l o c k s _ ) ;   i + + )  
 	 {  
 	 	 _ b l o c k s _ [ i ] . _ _ a n n o u n c e T h i s B l o c k ( ) ;  
 	 }  
  
 	 / /   L i s t   o f   i n i t i a l l y   d i s a b l e d   b l o c k s  
 	 i n t   d i s a b l e d _ b l o c k s _ l i s t [ ]   =   { } ;  
 	 f o r   ( i n t   l   =   0 ;   l   <   A r r a y S i z e ( d i s a b l e d _ b l o c k s _ l i s t ) ;   l + + )   {  
 	 	 _ b l o c k s _ [ d i s a b l e d _ b l o c k s _ l i s t [ l ] ] . _ _ d i s a b l e d   =   t r u e ;  
 	 }  
  
  
  
 	 F X D _ M I L S _ I N I T _ E N D           =   ( d o u b l e ) G e t T i c k C o u n t ( ) ;  
 	 F X D _ F I R S T _ T I C K _ P A S S E D   =   f a l s e ;   / /   r e s e t   i s   n e e d e d   w h e n   c h a n g i n g   i n p u t s  
  
 	 r e t u r n ( I N I T _ S U C C E E D E D ) ;  
 }  
  
 / / V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V / /  
 / /   T h i s   f u n c t i o n   i s   e x e c u t e d   o n   e v e r y   i n c o m i n g   t i c k   / /  
 / / ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ / /  
 v o i d   O n T i c k ( )  
 {  
 	 F X D _ T I C K S _ F R O M _ S T A R T + + ;  
  
 	 i f   ( E N A B L E _ S T A T U S   & &   F X D _ T I C K S _ F R O M _ S T A R T   = =   1 )   D r a w S t a t u s ( " w o r k i n g " ) ;  
  
 	 / / - -   s p e c i a l   s y s t e m   a c t i o n s  
 	 i f   ( F X D _ D R A W _ S P R E A D _ I N F O )   D r a w S p r e a d I n f o ( ) ;  
 	 T i c k s D a t a ( " " ) ;   / /   C o l l e c t   t i c k s   ( i f   n e e d e d )  
 	 T i c k s P e r S e c o n d ( f a l s e ,   t r u e ) ;   / /   C o l l e c t   t i c k s   p e r   s e c o n d  
  
 	 i f   ( O r d e r s T o t a l ( ) )   / /   t h i s   m a k e s   t h i n g s   f a s t e r  
 	 {  
 	 	 i f   ( U S E _ V I R T U A L _ S T O P S )   { V i r t u a l S t o p s D r i v e r ( ) ; }  
 	 	 E x p i r a t i o n D r i v e r ( ) ;  
 	 	 O C O D r i v e r ( ) ;   / /   C h e c k   a n d   c l o s e   O C O   o r d e r s  
 	 }  
 	 i f   ( E N A B L E _ E V E N T _ T R A D E )   { O n T r a d e L i s t e n e r ( ) ; }  
  
 	 F e e d S t a t i s t i c s ( ) ;  
  
  
 	 / /   s k i p   t i c k s  
 	 i f   ( T i m e L o c a l ( )   <   F X D _ T I C K S K I P _ U N T I L )   { r e t u r n ; }  
  
 	 / / - -   r u n   b l o c k s  
 	 i n t   b l o c k s _ t o _ r u n [ ]   =   { 0 } ;  
 	 f o r   ( i n t   i = 0 ;   i < A r r a y S i z e ( b l o c k s _ t o _ r u n ) ;   i + + )   {  
 	 	 _ b l o c k s _ [ b l o c k s _ t o _ r u n [ i ] ] . r u n ( ) ;  
 	 }  
  
  
 	 r e t u r n ;  
 }  
  
  
  
 / / V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V / /  
 / /   T h i s   f u n c t i o n   i s   e x e c u t e d   o n   t r a d e   e v e n t s   -   o p e n ,   c l o s e ,   m o d i f y   / /  
 / / ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ / /  
 v o i d   E v e n t T r a d e ( )  
 {  
  
  
 	 O n T r a d e Q u e u e ( - 1 ) ;  
 }  
  
 / / V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V / /  
 / /   T h i s   f u n c t i o n   i s   e x e c u t e d   o n   a   p e r i o d   b a s i s   / /  
 / / ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ / /  
 v o i d   O n T i m e r ( )  
 {  
 	 / / - -   t o   s i m u l a t e   t i c k s   i n   o f f l i n e   c h a r t s ,   T i m e r   i s   u s e d   i n s t e a d   o f   i n f i n i t e   l o o p  
 	 / / - -   t h e   n e x t   f u n c t i o n   c h e c k s   f o r   c h a n g e s   i n   p r i c e   a n d   c a l l s   O n T i c k ( )   m a n u a l l y  
 	 i f   ( F X D _ C H A R T _ I S _ O F F L I N E   & &   R e f r e s h R a t e s ( ) )   {  
 	 	 O n T i c k ( ) ;  
 	 }  
 	 i f   ( O N _ T R A D E _ R E A L T I M E   = =   1 )   {  
 	 	 O n T r a d e L i s t e n e r ( ) ;  
 	 }  
  
 	 s t a t i c   d a t e t i m e   t 0   =   0 ;  
 	 d a t e t i m e   t   =   0 ;  
 	 b o o l   o k   =   f a l s e ;  
  
 	 i f   ( F X D _ O N T I M E R _ T A K E N )  
 	 {  
 	 	 i f   ( F X D _ O N T I M E R _ T A K E N _ T I M E   >   0 )  
 	 	 {  
 	 	 	 i f   ( F X D _ O N T I M E R _ T A K E N _ I N _ M I L L I S E C O N D S   = =   t r u e )  
 	 	 	 {  
 	 	 	 	 t   =   G e t T i c k C o u n t ( ) ;  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 t   =   T i m e L o c a l ( ) ;  
 	 	 	 }  
 	 	 	 i f   ( ( t   -   t 0 )   > =   F X D _ O N T I M E R _ T A K E N _ T I M E )  
 	 	 	 {  
 	 	 	 	 t 0   =   t ;  
 	 	 	 	 o k   =   t r u e ;  
 	 	 	 }  
 	 	 }  
  
 	 	 i f   ( o k   = =   f a l s e )   {  
 	 	 	 r e t u r n ;  
 	 	 }  
 	 }  
  
 }  
  
  
 / / V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V / /  
 / /   T h i s   f u n c t i o n   i s   e x e c u t e d   w h e n   c h a r t   e v e n t   h a p p e n s   / /  
 / / ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ / /  
 v o i d   O n C h a r t E v e n t (  
 	 c o n s t   i n t   i d ,                   / /   E v e n t   I D  
 	 c o n s t   l o n g &   l p a r a m ,       / /   P a r a m e t e r   o f   t y p e   l o n g   e v e n t  
 	 c o n s t   d o u b l e &   d p a r a m ,   / /   P a r a m e t e r   o f   t y p e   d o u b l e   e v e n t  
 	 c o n s t   s t r i n g &   s p a r a m     / /   P a r a m e t e r   o f   t y p e   s t r i n g   e v e n t s  
 )  
 {  
 	 / / - -   w r i t e   p a r a m e t e r   t o   t h e   s y s t e m   g l o b a l   v a r i a b l e s  
 	 F X D _ O N C H A R T . i d           =   i d ;  
 	 F X D _ O N C H A R T . l p a r a m   =   l p a r a m ;  
 	 F X D _ O N C H A R T . d p a r a m   =   d p a r a m ;  
 	 F X D _ O N C H A R T . s p a r a m   =   s p a r a m ;  
  
  
 	 r e t u r n ;  
 }  
  
 / / V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V V / /  
 / /   T h i s   f u n c t i o n   i s   e x e c u t e d   o n c e   w h e n   t h e   p r o g r a m   e n d s   / /  
 / / ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ ^ / /  
 v o i d   O n D e i n i t ( c o n s t   i n t   r e a s o n )  
 {  
 	 i n t   r e s o n   =   U n i n i t i a l i z e R e a s o n ( ) ;  
 	 i f   ( r e s o n   = =   R E A S O N _ C H A R T C H A N G E   | |   r e s o n   = =   R E A S O N _ P A R A M E T E R S   | |   r e a s o n   = =   R E A S O N _ T E M P L A T E )   { r e t u r n ; }  
  
 	 / / - -   i f   T i m e r   w a s   s e t ,   k i l l   i t   h e r e  
 	 E v e n t K i l l T i m e r ( ) ;  
  
 	 i f   ( E N A B L E _ S T A T U S )   D r a w S t a t u s ( " s t o p p e d " ) ;  
 	 i f   ( E N A B L E _ S P R E A D _ M E T E R )   D r a w S p r e a d I n f o ( ) ;  
  
  
  
 	 i f   ( M Q L I n f o I n t e g e r ( M Q L _ T E S T E R ) )   {  
 	 	 P r i n t ( " B a c k t e s t e d   i n   " + D o u b l e T o S t r i n g ( ( G e t T i c k C o u n t ( ) - F X D _ M I L S _ I N I T _ E N D ) / 1 0 0 0 ,   2 ) + "   s e c o n d s " ) ;  
 	 	 d o u b l e   t c   =   G e t T i c k C o u n t ( ) - F X D _ M I L S _ I N I T _ E N D ;  
 	 	 i f   ( t c   >   0 )  
 	 	 {  
 	 	 	 P r i n t ( " A v e r a g e   t i c k s   p e r   s e c o n d :   " + D o u b l e T o S t r i n g ( F X D _ T I C K S _ F R O M _ S T A R T / t c ,   0 ) ) ;  
 	 	 }  
 	 }  
  
 	 i f   ( M Q L I n f o I n t e g e r ( M Q L _ P R O G R A M _ T Y P E )   = =   P R O G R A M _ E X P E R T )  
 	 {  
 	 	 s w i t c h ( U n i n i t i a l i z e R e a s o n ( ) )  
 	 	 {  
 	 	 	 c a s e   R E A S O N _ P R O G R A M           :   P r i n t ( " E x p e r t   A d v i s o r   s e l f   t e r m i n a t e d " ) ;   b r e a k ;  
 	 	 	 c a s e   R E A S O N _ R E M O V E             :   P r i n t ( " E x p e r t   A d v i s o r   r e m o v e d   f r o m   t h e   c h a r t " ) ;   b r e a k ;  
 	 	 	 c a s e   R E A S O N _ R E C O M P I L E       :   P r i n t ( " E x p e r t   A d v i s o r h a s   b e e n   r e c o m p i l e d " ) ;   b r e a k ;  
 	 	 	 c a s e   R E A S O N _ C H A R T C H A N G E   :   P r i n t ( " S y m b o l   o r   c h a r t   p e r i o d   h a s   b e e n   c h a n g e d " ) ;   b r e a k ;  
 	 	 	 c a s e   R E A S O N _ C H A R T C L O S E     :   P r i n t ( " C h a r t   h a s   b e e n   c l o s e d " ) ;   b r e a k ;  
 	 	 	 c a s e   R E A S O N _ P A R A M E T E R S     :   P r i n t ( " I n p u t   p a r a m e t e r s   h a v e   b e e n   c h a n g e d   b y   a   u s e r " ) ;   b r e a k ;  
 	 	 	 c a s e   R E A S O N _ A C C O U N T           :   P r i n t ( " A n o t h e r   a c c o u n t   h a s   b e e n   a c t i v a t e d   o r   r e c o n n e c t i o n   t o   t h e   t r a d e   s e r v e r   h a s   o c c u r r e d   d u e   t o   c h a n g e s   i n   t h e   a c c o u n t   s e t t i n g s " ) ;   b r e a k ;  
 	 	 	 c a s e   R E A S O N _ T E M P L A T E         :   P r i n t ( " A   n e w   t e m p l a t e   h a s   b e e n   a p p l i e d " ) ;   b r e a k ;  
 	 	 	 c a s e   R E A S O N _ I N I T F A I L E D     :   P r i n t ( " O n I n i t ( )   h a n d l e r   h a s   r e t u r n e d   a   n o n z e r o   v a l u e " ) ;   b r e a k ;  
 	 	 	 c a s e   R E A S O N _ C L O S E               :   P r i n t ( " T e r m i n a l   h a s   b e e n   c l o s e d " ) ;   b r e a k ;  
 	 	 }  
 	 }  
  
 	 / /   d e l e t e   d y n a m i c   p o i n t e r s  
 	 f o r   ( i n t   i = 0 ;   i < A r r a y S i z e ( _ b l o c k s _ ) ;   i + + )  
 	 {  
 	 	 d e l e t e   _ b l o c k s _ [ i ] ;  
 	 	 _ b l o c k s _ [ i ]   =   N U L L ;  
 	 }  
 	 A r r a y R e s i z e ( _ b l o c k s _ ,   0 ) ;  
  
 	 r e t u r n ;  
 }  
  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 / /   + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +   / /  
 / /   | 	                                                                                   C l a s s e s   o f   b l o c k s                                                                                                         |   / /  
 / /   |                             C l a s s e s   t h a t   c o n t a i n   t h e   a c t u a l   c o d e   o f   t h e   b l o c k s   a n d   t h e i r   i n p u t   p a r a m e t e r s   a s   w e l l                               |   / /  
 / /   + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +   / /  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
  
 / * *  
 	 T h e   b a s e   c l a s s   f o r   a l l   b l o c k   c a l l s  
       * /  
 c l a s s   B l o c k C a l l s  
 {  
 	 p u b l i c :  
 	 	 b o o l   _ _ d i s a b l e d ;   / /   w h e t h e r   o r   n o t   t h e   b l o c k   i s   d i s a b l e d  
  
 	 	 s t r i n g   _ _ b l o c k _ u s e r _ n u m b e r ;  
                 i n t   _ _ b l o c k _ n u m b e r ;  
 	 	 i n t   _ _ b l o c k _ w a i t i n g ;  
 	 	 i n t   _ _ p a r e n t _ n u m b e r ;  
 	 	 i n t   _ _ i n b o u n d _ b l o c k s [ ] ;  
 	 	 i n t   _ _ o u t b o u n d _ b l o c k s [ ] ;  
 	 	 v o i d   _ _ a d d I n b o u n d B l o c k ( i n t   i d   =   0 )   {  
 	 	 	 i n t   s i z e   =   A r r a y S i z e ( _ _ i n b o u n d _ b l o c k s ) ;  
 	 	 	 f o r   ( i n t   i   =   0 ;   i   <   s i z e ;   i + + )   {  
 	 	 	 	 i f   ( _ _ i n b o u n d _ b l o c k s [ i ]   = =   i d )   {  
 	 	 	 	 	 r e t u r n ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	 	 A r r a y R e s i z e ( _ _ i n b o u n d _ b l o c k s ,   s i z e   +   1 ) ;  
 	 	 	 _ _ i n b o u n d _ b l o c k s [ s i z e ]   =   i d ;  
 	 	 }  
  
 	 	 / * *  
 	 	       A n n o u n c e   t h i s   b l o c k   t o   t h e   l i s t   o f   i n b o u n d   c o n n e c t i o n s   o f   a l l   t h e   b l o c k s   t o   w h i c h   t h i s   b l o c k   i s   c o n n e c t e d   t o  
 	 	       * /  
 	 	 v o i d   _ _ a n n o u n c e T h i s B l o c k ( )  
 	 	 {  
 	 	       / /   a d d   t h e   c u r r e n t   b l o c k   n u m b e r   t o   t h e   l i s t   o f   i n b o u n d   b l o c k s  
 	 	       / /   f o r   e a c h   o u t b o u n d   b l o c k   t h a t   i s   p r o v i d e d  
 	 	 	 f o r   ( i n t   i   =   0 ;   i   <   A r r a y S i z e ( _ _ o u t b o u n d _ b l o c k s ) ;   i + + )  
 	 	 	 {  
 	 	 	 	 i n t   b l o c k   =   _ _ o u t b o u n d _ b l o c k s [ i ] ;   / /   o u t b o u n d   b l o c k   n u m b e r  
 	 	 	 	 i n t   s i z e     =   A r r a y S i z e ( _ b l o c k s _ [ b l o c k ] . _ _ i n b o u n d _ b l o c k s ) ;   / /   t h e   s i z e   o f   i t s   i n b o u n d   l i s t  
  
 	 	 	 	 / /   s k i p   i f   t h e   c u r r e n t   b l o c k   w a s   a l r e a d y   a d d e d  
 	 	 	 	 f o r   ( i n t   j   =   0 ;   j   <   s i z e ;   j + + )   {  
 	 	 	 	 	 i f   ( _ b l o c k s _ [ b l o c k ] . _ _ i n b o u n d _ b l o c k s [ j ]   = =   _ _ b l o c k _ n u m b e r )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 r e t u r n ;  
 	 	 	 	 	 }  
 	 	 	 	 }  
  
 	 	 	 	 / /   a d d   t h e   c u r r e n t   b l o c k   n u m b e r   t o   t h e   l i s t   o f   i n b o u n d   b l o c k s   o f   t h e   o t h e r   b l o c k  
 	 	 	 	 A r r a y R e s i z e ( _ b l o c k s _ [ b l o c k ] . _ _ i n b o u n d _ b l o c k s ,   s i z e   +   1 ) ;  
 	 	 	 	 _ b l o c k s _ [ b l o c k ] . _ _ i n b o u n d _ b l o c k s [ s i z e ]   =   _ _ b l o c k _ n u m b e r ;  
 	 	 	 }  
 	 	 }  
  
 	 	 / /   t h i s   i s   h e r e ,   b e c a u s e   i t   i s   u s e d   i n   t h e   " r u n "   f u n c t i o n  
 	 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )   =   0 ;  
  
 	 	 / * *  
 	 	 	 I n   t h e   d e r i v e d   c l a s s   t h i s   m e t h o d   s h o u l d   b e   u s e d   t o   s e t   d y n a m i c   p a r a m e t e r s   o r   o t h e r   s t u f f   b e f o r e   t h e   m a i n   e x e c u t e .  
 	 	 	 T h i s   m e t h o d   i s   a u t o m a t i c a l l y   c a l l e d   w i t h i n   t h e   m a i n   " r u n "   m e t h o d   b e l o w ,   b e f o r e   t h e   e x e c u t i o n   o f   t h e   m a i n   c l a s s .  
 	 	 	 * /  
 	 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )   { r e t u r n ; } ;  
 	 	 b o o l   _ b e f o r e E x e c u t e E n a b l e d ;   / /   f o r   s p e e d  
  
 	 	 / * *  
 	 	 	 S a m e   a s   _ b e f o r e E x e c u t e _ ,   b u t   t o   w o r k   a f t e r   t h e   e x e c u t e   m e t h o d .  
 	 	 	 * /  
 	 	 v i r t u a l   v o i d   _ a f t e r E x e c u t e _ ( )   { r e t u r n ; } ;  
 	 	 b o o l   _ a f t e r E x e c u t e E n a b l e d ;   / /   f o r   s p e e d  
  
 	 	 / * *  
 	 	 	 T h i s   i s   t h e   m e t h o d   t h a t   i s   u s e d   t o   r u n   t h e   b l o c k  
 	 	 	 * /  
 	 	 v i r t u a l   v o i d   r u n ( i n t   _ p a r e n t _ = 0 )   {  
 	 	 	 _ _ p a r e n t _ n u m b e r   =   _ p a r e n t _ ;  
 	 	 	 i f   ( _ _ d i s a b l e d   | |   F X D _ B R E A K )   { r e t u r n ; }  
 	 	 	 F X D _ C U R R E N T _ F U N C T I O N _ I D   =   _ _ b l o c k _ n u m b e r ;  
  
 	 	 	 i f   ( _ b e f o r e E x e c u t e E n a b l e d )   { _ b e f o r e E x e c u t e _ ( ) ; }  
 	 	 	 _ e x e c u t e _ ( ) ;  
 	 	 	 i f   ( _ a f t e r E x e c u t e E n a b l e d )   { _ a f t e r E x e c u t e _ ( ) ; }  
  
 	 	 	 i f   ( _ _ b l o c k _ w a i t i n g   & &   F X D _ C U R R E N T _ F U N C T I O N _ I D   = =   _ _ b l o c k _ n u m b e r )   { f x d W a i t . A c c u m u l a t e ( F X D _ C U R R E N T _ F U N C T I O N _ I D ) ; }  
 	 	 }  
 } ;  
  
 B l o c k C a l l s   * _ b l o c k s _ [ ] ;  
  
  
 / /   " O n c e   p e r   t i c k "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 >  
 c l a s s   M D L _ O n c e P e r T i c k :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   S Y M B O L ;  
 	 / *   S t a t i c   P a r a m e t e r s   * /  
 	 d o u b l e   a 0 , b 0 , t 0 ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ O n c e P e r T i c k ( )  
 	 {  
 	 	 S Y M B O L   =   C u r r e n t S y m b o l ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 d o u b l e   a = S y m b o l A s k ( S Y M B O L ) ;  
 	 	 d o u b l e   b = S y m b o l B i d ( S Y M B O L ) ;  
 	 	 d o u b l e   t = M a r k e t I n f o ( S Y M B O L , M O D E _ T I M E ) ;  
 	 	  
 	 	 i f   ( t ! = t 0   | |   a ! = a 0   | |   b ! = b 0 )   { t 0 = t ;   a 0 = a ;   b 0 = b ;   _ c a l l b a c k _ ( 1 ) ; }   e l s e   { _ c a l l b a c k _ ( 0 ) ; }  
 	 }  
 } ;  
  
 / /   " C o n d i t i o n "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   _ T 1 _ , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   _ T 3 _ , t y p e n a m e   T 4 >  
 c l a s s   M D L _ C o n d i t i o n :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   L o ;   v i r t u a l   _ T 1 _   _ L o _ ( ) { r e t u r n ( _ T 1 _ ) 0 ; }  
 	 T 2   c o m p a r e ;  
 	 T 3   R o ;   v i r t u a l   _ T 3 _   _ R o _ ( ) { r e t u r n ( _ T 3 _ ) 0 ; }  
 	 T 4   c r o s s w i d t h ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ C o n d i t i o n ( )  
 	 {  
 	 	 c o m p a r e   =   " > " ;  
 	 	 c r o s s w i d t h   =   1 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 b o o l   o 1 = f a l s e ,   o 2 = f a l s e ;   / /   o u t p u t   1   a n d   o u t p u t   2  
 	 	 i n t   c r o s s o v e r   =   0 ;  
 	 	 i f   ( c o m p a r e   = =   " x > "   | |   c o m p a r e   = =   " x < " )   { c r o s s o v e r   =   1 ; }  
 	 	  
 	 	 f o r   ( i n t   i = 0 ;   i < = c r o s s o v e r ;   i + + )  
 	 	 {  
 	 	       / /   i = 0   -   n o r m a l   p a s s ,   i = 1   -   c r o s s o v e r   p a s s  
 	 	  
 	 	       / /   L e f t   o p e r a n d   o f   t h e   c o n d i t i o n  
 	 	       F X D _ M O R E _ S H I F T   =   i * c r o s s w i d t h ;  
 	 	       _ T 1 _   l o   =   _ L o _ ( ) ;  
 	 	       i f   ( M a t h A b s ( l o )   = =   E M P T Y _ V A L U E )   { r e t u r n ; }  
 	 	        
 	 	       / /   R i g h t   o p e r a n d   o f   t h e   c o n d i t i o n  
 	 	       F X D _ M O R E _ S H I F T   =   i * c r o s s w i d t h ;  
 	 	       _ T 3 _   r o   =   _ R o _ ( ) ;  
 	 	       i f   ( M a t h A b s ( r o )   = =   E M P T Y _ V A L U E )   { r e t u r n ; }  
 	 	        
 	 	       / /   C o n d i t i o n s  
 	 	       i f   ( c o m p a r e ( c o m p a r e ,   l o ,   r o ) )   { i f ( i = = 0 ) { o 1 = t r u e ; } } e l s e { i f ( i = = 0 ) { o 2 = t r u e ; } e l s e { o 2 = f a l s e ; } }  
 	 	       i f   ( c r o s s o v e r = = 1 )   { i f   ( c o m p a r e ( c o m p a r e ,   r o ,   l o ) )   { i f ( i = = 0 ) { o 2 = t r u e ; } } e l s e { i f ( i = = 1 ) { o 1 = f a l s e ; } } }  
 	 	 }  
 	 	  
 	 	 F X D _ M O R E _ S H I F T   =   0 ;   / /   r e s e t  
 	 	  
 	 	 / /   O u t p u t s  
 	 	 i f   ( o 1 = = t r u e )   { _ c a l l b a c k _ ( 1 ) ; }   e l s e   i f   ( o 2 = = t r u e )   { _ c a l l b a c k _ ( 0 ) ; }  
 	 }  
 } ;  
  
 / /   " S e l l   n o w "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   T 7 , t y p e n a m e   T 8 , t y p e n a m e   T 9 , t y p e n a m e   _ T 9 _ , t y p e n a m e   T 1 0 , t y p e n a m e   T 1 1 , t y p e n a m e   T 1 2 , t y p e n a m e   T 1 3 , t y p e n a m e   T 1 4 , t y p e n a m e   T 1 5 , t y p e n a m e   T 1 6 , t y p e n a m e   T 1 7 , t y p e n a m e   T 1 8 , t y p e n a m e   T 1 9 , t y p e n a m e   T 2 0 , t y p e n a m e   T 2 1 , t y p e n a m e   T 2 2 , t y p e n a m e   T 2 3 , t y p e n a m e   T 2 4 , t y p e n a m e   T 2 5 , t y p e n a m e   T 2 6 , t y p e n a m e   T 2 7 , t y p e n a m e   T 2 8 , t y p e n a m e   T 2 9 , t y p e n a m e   T 3 0 , t y p e n a m e   T 3 1 , t y p e n a m e   T 3 2 , t y p e n a m e   T 3 3 , t y p e n a m e   T 3 4 , t y p e n a m e   T 3 5 , t y p e n a m e   _ T 3 5 _ , t y p e n a m e   T 3 6 , t y p e n a m e   _ T 3 6 _ , t y p e n a m e   T 3 7 , t y p e n a m e   _ T 3 7 _ , t y p e n a m e   T 3 8 , t y p e n a m e   T 3 9 , t y p e n a m e   T 4 0 , t y p e n a m e   T 4 1 , t y p e n a m e   _ T 4 1 _ , t y p e n a m e   T 4 2 , t y p e n a m e   _ T 4 2 _ , t y p e n a m e   T 4 3 , t y p e n a m e   _ T 4 3 _ , t y p e n a m e   T 4 4 , t y p e n a m e   T 4 5 , t y p e n a m e   T 4 6 , t y p e n a m e   T 4 7 , t y p e n a m e   T 4 8 , t y p e n a m e   _ T 4 8 _ , t y p e n a m e   T 4 9 , t y p e n a m e   T 5 0 , t y p e n a m e   T 5 1 >  
 c l a s s   M D L _ S e l l N o w :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   O r d e r s G r o u p ;  
 	 T 2   S Y M B O L ;  
 	 T 3   V o l u m e M o d e ;  
 	 T 4   V o l u m e S i z e ;  
 	 T 5   V o l u m e S i z e R i s k ;  
 	 T 6   V o l u m e R i s k ;  
 	 T 7   V o l u m e P e r c e n t ;  
 	 T 8   V o l u m e B l o c k P e r c e n t ;  
 	 T 9   d V o l u m e S i z e ;   v i r t u a l   _ T 9 _   _ d V o l u m e S i z e _ ( ) { r e t u r n ( _ T 9 _ ) 0 ; }  
 	 T 1 0   F i x e d R a t i o U n i t S i z e ;  
 	 T 1 1   F i x e d R a t i o D e l t a ;  
 	 T 1 2   m m M g I n i t i a l L o t s ;  
 	 T 1 3   m m M g M u l t i p l y O n L o s s ;  
 	 T 1 4   m m M g M u l t i p l y O n P r o f i t ;  
 	 T 1 5   m m M g A d d L o t s O n L o s s ;  
 	 T 1 6   m m M g A d d L o t s O n P r o f i t ;  
 	 T 1 7   m m M g R e s e t O n L o s s ;  
 	 T 1 8   m m M g R e s e t O n P r o f i t ;  
 	 T 1 9   m m 1 3 2 6 I n i t i a l L o t s ;  
 	 T 2 0   m m 1 3 2 6 R e v e r s e ;  
 	 T 2 1   m m F i b o I n i t i a l L o t s ;  
 	 T 2 2   m m D a l e m b e r t I n i t i a l L o t s ;  
 	 T 2 3   m m D a l e m b e r t R e v e r s e ;  
 	 T 2 4   m m L a b o u c h e r e I n i t i a l L o t s ;  
 	 T 2 5   m m L a b o u c h e r e L i s t ;  
 	 T 2 6   m m L a b o u c h e r e R e v e r s e ;  
 	 T 2 7   m m S e q B a s e L o t s ;  
 	 T 2 8   m m S e q O n L o s s ;  
 	 T 2 9   m m S e q O n P r o f i t ;  
 	 T 3 0   m m S e q R e v e r s e ;  
 	 T 3 1   V o l u m e U p p e r L i m i t ;  
 	 T 3 2   S t o p L o s s M o d e ;  
 	 T 3 3   S t o p L o s s P i p s ;  
 	 T 3 4   S t o p L o s s P e r c e n t T P ;  
 	 T 3 5   d l S t o p L o s s ;   v i r t u a l   _ T 3 5 _   _ d l S t o p L o s s _ ( ) { r e t u r n ( _ T 3 5 _ ) 0 ; }  
 	 T 3 6   d p S t o p L o s s ;   v i r t u a l   _ T 3 6 _   _ d p S t o p L o s s _ ( ) { r e t u r n ( _ T 3 6 _ ) 0 ; }  
 	 T 3 7   d d S t o p L o s s ;   v i r t u a l   _ T 3 7 _   _ d d S t o p L o s s _ ( ) { r e t u r n ( _ T 3 7 _ ) 0 ; }  
 	 T 3 8   T a k e P r o f i t M o d e ;  
 	 T 3 9   T a k e P r o f i t P i p s ;  
 	 T 4 0   T a k e P r o f i t P e r c e n t S L ;  
 	 T 4 1   d l T a k e P r o f i t ;   v i r t u a l   _ T 4 1 _   _ d l T a k e P r o f i t _ ( ) { r e t u r n ( _ T 4 1 _ ) 0 ; }  
 	 T 4 2   d p T a k e P r o f i t ;   v i r t u a l   _ T 4 2 _   _ d p T a k e P r o f i t _ ( ) { r e t u r n ( _ T 4 2 _ ) 0 ; }  
 	 T 4 3   d d T a k e P r o f i t ;   v i r t u a l   _ T 4 3 _   _ d d T a k e P r o f i t _ ( ) { r e t u r n ( _ T 4 3 _ ) 0 ; }  
 	 T 4 4   E x p M o d e ;  
 	 T 4 5   E x p D a y s ;  
 	 T 4 6   E x p H o u r s ;  
 	 T 4 7   E x p M i n u t e s ;  
 	 T 4 8   d E x p ;   v i r t u a l   _ T 4 8 _   _ d E x p _ ( ) { r e t u r n ( _ T 4 8 _ ) 0 ; }  
 	 T 4 9   S l i p p a g e ;  
 	 T 5 0   M y C o m m e n t ;  
 	 T 5 1   A r r o w C o l o r S e l l ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ S e l l N o w ( )  
 	 {  
 	 	 O r d e r s G r o u p   =   " " ;  
 	 	 S Y M B O L   =   C u r r e n t S y m b o l ( ) ;  
 	 	 V o l u m e M o d e   =   " f i x e d " ;  
 	 	 V o l u m e S i z e   =   0 . 1 ;  
 	 	 V o l u m e S i z e R i s k   =   5 0 ;  
 	 	 V o l u m e R i s k   =   2 . 5 ;  
 	 	 V o l u m e P e r c e n t   =   1 0 0 ;  
 	 	 V o l u m e B l o c k P e r c e n t   =   3 ;  
 	 	 F i x e d R a t i o U n i t S i z e   =   0 . 0 1 ;  
 	 	 F i x e d R a t i o D e l t a   =   2 0 ;  
 	 	 m m M g I n i t i a l L o t s   =   0 . 1 ;  
 	 	 m m M g M u l t i p l y O n L o s s   =   2 ;  
 	 	 m m M g M u l t i p l y O n P r o f i t   =   1 ;  
 	 	 m m M g A d d L o t s O n L o s s   =   0 ;  
 	 	 m m M g A d d L o t s O n P r o f i t   =   0 ;  
 	 	 m m M g R e s e t O n L o s s   =   0 ;  
 	 	 m m M g R e s e t O n P r o f i t   =   1 ;  
 	 	 m m 1 3 2 6 I n i t i a l L o t s   =   0 . 1 ;  
 	 	 m m 1 3 2 6 R e v e r s e   =   f a l s e ;  
 	 	 m m F i b o I n i t i a l L o t s   =   0 . 1 ;  
 	 	 m m D a l e m b e r t I n i t i a l L o t s   =   0 . 1 ;  
 	 	 m m D a l e m b e r t R e v e r s e   =   f a l s e ;  
 	 	 m m L a b o u c h e r e I n i t i a l L o t s   =   0 . 1 ;  
 	 	 m m L a b o u c h e r e L i s t   =   " 1 , 2 , 3 , 4 , 5 , 6 " ;  
 	 	 m m L a b o u c h e r e R e v e r s e   =   f a l s e ;  
 	 	 m m S e q B a s e L o t s   =   0 . 1 ;  
 	 	 m m S e q O n L o s s   =   " 3 , 2 , 6 " ;  
 	 	 m m S e q O n P r o f i t   =   " 1 " ;  
 	 	 m m S e q R e v e r s e   =   f a l s e ;  
 	 	 V o l u m e U p p e r L i m i t   =   0 ;  
 	 	 S t o p L o s s M o d e   =   " f i x e d " ;  
 	 	 S t o p L o s s P i p s   =   5 0 ;  
 	 	 S t o p L o s s P e r c e n t T P   =   1 0 0 ;  
 	 	 T a k e P r o f i t M o d e   =   " f i x e d " ;  
 	 	 T a k e P r o f i t P i p s   =   5 0 ;  
 	 	 T a k e P r o f i t P e r c e n t S L   =   1 0 0 ;  
 	 	 E x p M o d e   =   " G T C " ;  
 	 	 E x p D a y s   =   0 ;  
 	 	 E x p H o u r s   =   1 ;  
 	 	 E x p M i n u t e s   =   0 ;  
 	 	 S l i p p a g e   =   4 ;  
 	 	 M y C o m m e n t   =   " S h o r t   t r a d e " ;  
 	 	 A r r o w C o l o r S e l l   =   R e d ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 S e t S y m b o l ( S Y M B O L ) ;  
 	 	  
 	 	 / / - -   s t o p s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 d o u b l e   s l l = 0 ,   s l p = 0 ,   t p l = 0 ,   t p p = 0 ;  
 	 	  
 	 	           i f   ( S t o p L o s s M o d e = = " f i x e d " )                 { s l p = S t o p L o s s P i p s ; }  
 	 	 e l s e   i f   ( S t o p L o s s M o d e = = " d y n a m i c P i p s " )     { s l p = _ d p S t o p L o s s _ ( ) ; }  
 	 	 e l s e   i f   ( S t o p L o s s M o d e = = " d y n a m i c D i g i t s " ) { s l p = t o P i p s ( _ d d S t o p L o s s _ ( ) , S Y M B O L ) ; }  
 	 	 e l s e   i f   ( S t o p L o s s M o d e = = " d y n a m i c L e v e l " )   { s l l = _ d l S t o p L o s s _ ( ) ; }  
 	 	  
 	 	           i f   ( T a k e P r o f i t M o d e = = " f i x e d " )                   { t p p = T a k e P r o f i t P i p s ; }  
 	 	 e l s e   i f   ( T a k e P r o f i t M o d e = = " d y n a m i c P i p s " )       { t p p = _ d p T a k e P r o f i t _ ( ) ; }  
 	 	 e l s e   i f   ( T a k e P r o f i t M o d e = = " d y n a m i c D i g i t s " )   { t p p = t o P i p s ( _ d d T a k e P r o f i t _ ( ) , S Y M B O L ) ; }  
 	 	 e l s e   i f   ( T a k e P r o f i t M o d e = = " d y n a m i c L e v e l " )     { t p l = _ d l T a k e P r o f i t _ ( ) ; }  
 	 	  
 	 	 i f   ( S t o p L o s s M o d e   = =   " p e r c e n t T P " )   {  
 	 	       i f   ( t p p   >   0 )   { s l p   =   t p p * S t o p L o s s P e r c e n t T P / 1 0 0 ; }  
 	 	       i f   ( t p l   >   0 )   { s l p   =   t o P i p s ( M a t h A b s ( S y m b o l A s k ( S Y M B O L )   -   t p l ) ,   S Y M B O L ) * S t o p L o s s P e r c e n t T P / 1 0 0 ; }  
 	 	 }  
 	 	 i f   ( T a k e P r o f i t M o d e   = =   " p e r c e n t S L " )   {  
 	 	       i f   ( s l p   >   0 )   { t p p   =   s l p * T a k e P r o f i t P e r c e n t S L / 1 0 0 ; }  
 	 	       i f   ( s l l   >   0 )   { t p p   =   t o P i p s ( M a t h A b s ( S y m b o l A s k ( S Y M B O L )   -   s l l ) ,   S Y M B O L ) * T a k e P r o f i t P e r c e n t S L / 1 0 0 ; }  
 	 	 }  
 	 	  
 	 	 / / - -   l o t s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 d o u b l e   l o t s = 0 ;  
 	 	 d o u b l e   p r e _ s l l = s l l ;   i f   ( p r e _ s l l = = 0 )   { p r e _ s l l = S y m b o l B i d ( S Y M B O L ) ; }  
 	 	 d o u b l e   p r e _ s l _ p i p s = t o P i p s ( ( p r e _ s l l + t o D i g i t s ( s l p , S Y M B O L ) ) - S y m b o l B i d ( S Y M B O L ) ) ;  
 	 	  
 	 	           i f   ( V o l u m e M o d e = = " f i x e d " )                           { l o t s = D y n a m i c L o t s ( V o l u m e M o d e ,   V o l u m e S i z e ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " b l o c k - e q u i t y " )             { l o t s = D y n a m i c L o t s ( V o l u m e M o d e ,   V o l u m e B l o c k P e r c e n t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " b l o c k - b a l a n c e " )           { l o t s = D y n a m i c L o t s ( V o l u m e M o d e ,   V o l u m e B l o c k P e r c e n t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " b l o c k - f r e e m a r g i n " )     { l o t s = D y n a m i c L o t s ( V o l u m e M o d e ,   V o l u m e B l o c k P e r c e n t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " e q u i t y " )                         { l o t s = D y n a m i c L o t s ( V o l u m e M o d e ,   V o l u m e P e r c e n t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " b a l a n c e " )                       { l o t s = D y n a m i c L o t s ( V o l u m e M o d e ,   V o l u m e P e r c e n t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " f r e e m a r g i n " )                 { l o t s = D y n a m i c L o t s ( V o l u m e M o d e ,   V o l u m e P e r c e n t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " e q u i t y R i s k " )                 { l o t s = D y n a m i c L o t s ( V o l u m e M o d e ,   V o l u m e R i s k ,   p r e _ s l _ p i p s ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " b a l a n c e R i s k " )               { l o t s = D y n a m i c L o t s ( V o l u m e M o d e ,   V o l u m e R i s k ,   p r e _ s l _ p i p s ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " f r e e m a r g i n R i s k " )         { l o t s = D y n a m i c L o t s ( V o l u m e M o d e ,   V o l u m e R i s k ,   p r e _ s l _ p i p s ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " f i x e d R i s k " )                   { l o t s = D y n a m i c L o t s ( V o l u m e M o d e ,   V o l u m e S i z e R i s k ,   p r e _ s l _ p i p s ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " f i x e d R a t i o " )                 { l o t s = D y n a m i c L o t s ( V o l u m e M o d e ,   F i x e d R a t i o U n i t S i z e ,   F i x e d R a t i o D e l t a ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " d y n a m i c " )                       { l o t s = A l i g n L o t s ( _ d V o l u m e S i z e _ ( ) ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " 1 3 2 6 " )                             { l o t s = B e t 1 3 2 6 ( ( i n t ) O r d e r s G r o u p ,   S Y M B O L ,   m m 1 3 2 6 I n i t i a l L o t s ,   m m 1 3 2 6 R e v e r s e ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " f i b o n a c c i " )                   { l o t s = B e t F i b o n a c c i ( ( i n t ) O r d e r s G r o u p ,   S Y M B O L ,   m m F i b o I n i t i a l L o t s ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " d a l e m b e r t " )                   { l o t s = B e t D a l e m b e r t ( ( i n t ) O r d e r s G r o u p ,   S Y M B O L ,   m m D a l e m b e r t I n i t i a l L o t s ,   m m D a l e m b e r t R e v e r s e ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " l a b o u c h e r e " )                 { l o t s = B e t L a b o u c h e r e ( ( i n t ) O r d e r s G r o u p ,   S Y M B O L ,   m m L a b o u c h e r e I n i t i a l L o t s ,   m m L a b o u c h e r e L i s t ,   m m L a b o u c h e r e R e v e r s e ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " m a r t i n g a l e " )                 { l o t s = B e t M a r t i n g a l e ( ( i n t ) O r d e r s G r o u p ,   S Y M B O L ,   m m M g I n i t i a l L o t s ,   m m M g M u l t i p l y O n L o s s ,   m m M g M u l t i p l y O n P r o f i t ,   m m M g A d d L o t s O n L o s s ,   m m M g A d d L o t s O n P r o f i t ,   m m M g R e s e t O n L o s s ,   m m M g R e s e t O n P r o f i t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " s e q u e n c e " )                     { l o t s = B e t S e q u e n c e ( ( i n t ) O r d e r s G r o u p ,   S Y M B O L ,   m m S e q B a s e L o t s ,   m m S e q O n L o s s ,   m m S e q O n P r o f i t ,   m m S e q R e v e r s e ) ; }  
 	 	  
 	 	 l o t s   =   A l i g n L o t s ( l o t s ,   0 ,   V o l u m e U p p e r L i m i t ) ;  
 	 	  
 	 	 d a t e t i m e   e x p   =   E x p i r a t i o n T i m e ( E x p M o d e , E x p D a y s , E x p H o u r s , E x p M i n u t e s , _ d E x p _ ( ) ) ;  
 	 	  
 	 	 / / - -   s e n d   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 i n t   t i c k e t = S e l l N o w ( S Y M B O L ,   l o t s ,   s l l ,   t p l ,   s l p ,   t p p ,   S l i p p a g e ,   ( M a g i c S t a r t + ( i n t ) O r d e r s G r o u p ) ,   M y C o m m e n t ,   A r r o w C o l o r S e l l ,   e x p ) ;  
 	 	  
 	 	 i f   ( t i c k e t > 0 )   { _ c a l l b a c k _ ( 1 ) ; }   e l s e   { _ c a l l b a c k _ ( 0 ) ; }  
 	 }  
 } ;  
  
 / /   " B u y   n o w "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   T 7 , t y p e n a m e   T 8 , t y p e n a m e   T 9 , t y p e n a m e   _ T 9 _ , t y p e n a m e   T 1 0 , t y p e n a m e   T 1 1 , t y p e n a m e   T 1 2 , t y p e n a m e   T 1 3 , t y p e n a m e   T 1 4 , t y p e n a m e   T 1 5 , t y p e n a m e   T 1 6 , t y p e n a m e   T 1 7 , t y p e n a m e   T 1 8 , t y p e n a m e   T 1 9 , t y p e n a m e   T 2 0 , t y p e n a m e   T 2 1 , t y p e n a m e   T 2 2 , t y p e n a m e   T 2 3 , t y p e n a m e   T 2 4 , t y p e n a m e   T 2 5 , t y p e n a m e   T 2 6 , t y p e n a m e   T 2 7 , t y p e n a m e   T 2 8 , t y p e n a m e   T 2 9 , t y p e n a m e   T 3 0 , t y p e n a m e   T 3 1 , t y p e n a m e   T 3 2 , t y p e n a m e   T 3 3 , t y p e n a m e   T 3 4 , t y p e n a m e   T 3 5 , t y p e n a m e   _ T 3 5 _ , t y p e n a m e   T 3 6 , t y p e n a m e   _ T 3 6 _ , t y p e n a m e   T 3 7 , t y p e n a m e   _ T 3 7 _ , t y p e n a m e   T 3 8 , t y p e n a m e   T 3 9 , t y p e n a m e   T 4 0 , t y p e n a m e   T 4 1 , t y p e n a m e   _ T 4 1 _ , t y p e n a m e   T 4 2 , t y p e n a m e   _ T 4 2 _ , t y p e n a m e   T 4 3 , t y p e n a m e   _ T 4 3 _ , t y p e n a m e   T 4 4 , t y p e n a m e   T 4 5 , t y p e n a m e   T 4 6 , t y p e n a m e   T 4 7 , t y p e n a m e   T 4 8 , t y p e n a m e   _ T 4 8 _ , t y p e n a m e   T 4 9 , t y p e n a m e   T 5 0 , t y p e n a m e   T 5 1 >  
 c l a s s   M D L _ B u y N o w :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   O r d e r s G r o u p ;  
 	 T 2   S Y M B O L ;  
 	 T 3   V o l u m e M o d e ;  
 	 T 4   V o l u m e S i z e ;  
 	 T 5   V o l u m e S i z e R i s k ;  
 	 T 6   V o l u m e R i s k ;  
 	 T 7   V o l u m e P e r c e n t ;  
 	 T 8   V o l u m e B l o c k P e r c e n t ;  
 	 T 9   d V o l u m e S i z e ;   v i r t u a l   _ T 9 _   _ d V o l u m e S i z e _ ( ) { r e t u r n ( _ T 9 _ ) 0 ; }  
 	 T 1 0   F i x e d R a t i o U n i t S i z e ;  
 	 T 1 1   F i x e d R a t i o D e l t a ;  
 	 T 1 2   m m M g I n i t i a l L o t s ;  
 	 T 1 3   m m M g M u l t i p l y O n L o s s ;  
 	 T 1 4   m m M g M u l t i p l y O n P r o f i t ;  
 	 T 1 5   m m M g A d d L o t s O n L o s s ;  
 	 T 1 6   m m M g A d d L o t s O n P r o f i t ;  
 	 T 1 7   m m M g R e s e t O n L o s s ;  
 	 T 1 8   m m M g R e s e t O n P r o f i t ;  
 	 T 1 9   m m 1 3 2 6 I n i t i a l L o t s ;  
 	 T 2 0   m m 1 3 2 6 R e v e r s e ;  
 	 T 2 1   m m F i b o I n i t i a l L o t s ;  
 	 T 2 2   m m D a l e m b e r t I n i t i a l L o t s ;  
 	 T 2 3   m m D a l e m b e r t R e v e r s e ;  
 	 T 2 4   m m L a b o u c h e r e I n i t i a l L o t s ;  
 	 T 2 5   m m L a b o u c h e r e L i s t ;  
 	 T 2 6   m m L a b o u c h e r e R e v e r s e ;  
 	 T 2 7   m m S e q B a s e L o t s ;  
 	 T 2 8   m m S e q O n L o s s ;  
 	 T 2 9   m m S e q O n P r o f i t ;  
 	 T 3 0   m m S e q R e v e r s e ;  
 	 T 3 1   V o l u m e U p p e r L i m i t ;  
 	 T 3 2   S t o p L o s s M o d e ;  
 	 T 3 3   S t o p L o s s P i p s ;  
 	 T 3 4   S t o p L o s s P e r c e n t T P ;  
 	 T 3 5   d l S t o p L o s s ;   v i r t u a l   _ T 3 5 _   _ d l S t o p L o s s _ ( ) { r e t u r n ( _ T 3 5 _ ) 0 ; }  
 	 T 3 6   d p S t o p L o s s ;   v i r t u a l   _ T 3 6 _   _ d p S t o p L o s s _ ( ) { r e t u r n ( _ T 3 6 _ ) 0 ; }  
 	 T 3 7   d d S t o p L o s s ;   v i r t u a l   _ T 3 7 _   _ d d S t o p L o s s _ ( ) { r e t u r n ( _ T 3 7 _ ) 0 ; }  
 	 T 3 8   T a k e P r o f i t M o d e ;  
 	 T 3 9   T a k e P r o f i t P i p s ;  
 	 T 4 0   T a k e P r o f i t P e r c e n t S L ;  
 	 T 4 1   d l T a k e P r o f i t ;   v i r t u a l   _ T 4 1 _   _ d l T a k e P r o f i t _ ( ) { r e t u r n ( _ T 4 1 _ ) 0 ; }  
 	 T 4 2   d p T a k e P r o f i t ;   v i r t u a l   _ T 4 2 _   _ d p T a k e P r o f i t _ ( ) { r e t u r n ( _ T 4 2 _ ) 0 ; }  
 	 T 4 3   d d T a k e P r o f i t ;   v i r t u a l   _ T 4 3 _   _ d d T a k e P r o f i t _ ( ) { r e t u r n ( _ T 4 3 _ ) 0 ; }  
 	 T 4 4   E x p M o d e ;  
 	 T 4 5   E x p D a y s ;  
 	 T 4 6   E x p H o u r s ;  
 	 T 4 7   E x p M i n u t e s ;  
 	 T 4 8   d E x p ;   v i r t u a l   _ T 4 8 _   _ d E x p _ ( ) { r e t u r n ( _ T 4 8 _ ) 0 ; }  
 	 T 4 9   S l i p p a g e ;  
 	 T 5 0   M y C o m m e n t ;  
 	 T 5 1   A r r o w C o l o r B u y ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ B u y N o w ( )  
 	 {  
 	 	 O r d e r s G r o u p   =   " " ;  
 	 	 S Y M B O L   =   C u r r e n t S y m b o l ( ) ;  
 	 	 V o l u m e M o d e   =   " f i x e d " ;  
 	 	 V o l u m e S i z e   =   0 . 1 ;  
 	 	 V o l u m e S i z e R i s k   =   5 0 ;  
 	 	 V o l u m e R i s k   =   2 . 5 ;  
 	 	 V o l u m e P e r c e n t   =   1 0 0 ;  
 	 	 V o l u m e B l o c k P e r c e n t   =   3 ;  
 	 	 F i x e d R a t i o U n i t S i z e   =   0 . 0 1 ;  
 	 	 F i x e d R a t i o D e l t a   =   2 0 ;  
 	 	 m m M g I n i t i a l L o t s   =   0 . 1 ;  
 	 	 m m M g M u l t i p l y O n L o s s   =   2 ;  
 	 	 m m M g M u l t i p l y O n P r o f i t   =   1 ;  
 	 	 m m M g A d d L o t s O n L o s s   =   0 ;  
 	 	 m m M g A d d L o t s O n P r o f i t   =   0 ;  
 	 	 m m M g R e s e t O n L o s s   =   0 ;  
 	 	 m m M g R e s e t O n P r o f i t   =   1 ;  
 	 	 m m 1 3 2 6 I n i t i a l L o t s   =   0 . 1 ;  
 	 	 m m 1 3 2 6 R e v e r s e   =   f a l s e ;  
 	 	 m m F i b o I n i t i a l L o t s   =   0 . 1 ;  
 	 	 m m D a l e m b e r t I n i t i a l L o t s   =   0 . 1 ;  
 	 	 m m D a l e m b e r t R e v e r s e   =   f a l s e ;  
 	 	 m m L a b o u c h e r e I n i t i a l L o t s   =   0 . 1 ;  
 	 	 m m L a b o u c h e r e L i s t   =   " 1 , 2 , 3 , 4 , 5 , 6 " ;  
 	 	 m m L a b o u c h e r e R e v e r s e   =   f a l s e ;  
 	 	 m m S e q B a s e L o t s   =   0 . 1 ;  
 	 	 m m S e q O n L o s s   =   " 3 , 2 , 6 " ;  
 	 	 m m S e q O n P r o f i t   =   " 1 " ;  
 	 	 m m S e q R e v e r s e   =   f a l s e ;  
 	 	 V o l u m e U p p e r L i m i t   =   0 ;  
 	 	 S t o p L o s s M o d e   =   " f i x e d " ;  
 	 	 S t o p L o s s P i p s   =   5 0 ;  
 	 	 S t o p L o s s P e r c e n t T P   =   1 0 0 ;  
 	 	 T a k e P r o f i t M o d e   =   " f i x e d " ;  
 	 	 T a k e P r o f i t P i p s   =   5 0 ;  
 	 	 T a k e P r o f i t P e r c e n t S L   =   1 0 0 ;  
 	 	 E x p M o d e   =   " G T C " ;  
 	 	 E x p D a y s   =   0 ;  
 	 	 E x p H o u r s   =   1 ;  
 	 	 E x p M i n u t e s   =   0 ;  
 	 	 S l i p p a g e   =   4 ;  
 	 	 M y C o m m e n t   =   " L o n g   t r a d e " ;  
 	 	 A r r o w C o l o r B u y   =   B l u e ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 S e t S y m b o l ( S Y M B O L ) ;  
 	 	  
 	 	 / / - -   s t o p s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 d o u b l e   s l l = 0 ,   s l p = 0 ,   t p l = 0 ,   t p p = 0 ;  
 	 	  
 	 	           i f   ( S t o p L o s s M o d e = = " f i x e d " )                 { s l p = S t o p L o s s P i p s ; }  
 	 	 e l s e   i f   ( S t o p L o s s M o d e = = " d y n a m i c P i p s " )     { s l p = _ d p S t o p L o s s _ ( ) ; }  
 	 	 e l s e   i f   ( S t o p L o s s M o d e = = " d y n a m i c D i g i t s " ) { s l p = t o P i p s ( _ d d S t o p L o s s _ ( ) , S Y M B O L ) ; }  
 	 	 e l s e   i f   ( S t o p L o s s M o d e = = " d y n a m i c L e v e l " )   { s l l = _ d l S t o p L o s s _ ( ) ; }  
 	 	  
 	 	           i f   ( T a k e P r o f i t M o d e = = " f i x e d " )                   { t p p = T a k e P r o f i t P i p s ; }  
 	 	 e l s e   i f   ( T a k e P r o f i t M o d e = = " d y n a m i c P i p s " )       { t p p = _ d p T a k e P r o f i t _ ( ) ; }  
 	 	 e l s e   i f   ( T a k e P r o f i t M o d e = = " d y n a m i c D i g i t s " )   { t p p = t o P i p s ( _ d d T a k e P r o f i t _ ( ) , S Y M B O L ) ; }  
 	 	 e l s e   i f   ( T a k e P r o f i t M o d e = = " d y n a m i c L e v e l " )     { t p l = _ d l T a k e P r o f i t _ ( ) ; }  
 	 	  
 	 	 i f   ( S t o p L o s s M o d e   = =   " p e r c e n t T P " )   {  
 	 	       i f   ( t p p   >   0 )   { s l p   =   t p p * S t o p L o s s P e r c e n t T P / 1 0 0 ; }  
 	 	       i f   ( t p l   >   0 )   { s l p   =   t o P i p s ( M a t h A b s ( S y m b o l A s k ( S Y M B O L )   -   t p l ) ,   S Y M B O L ) * S t o p L o s s P e r c e n t T P / 1 0 0 ; }  
 	 	 }  
 	 	 i f   ( T a k e P r o f i t M o d e   = =   " p e r c e n t S L " )   {  
 	 	       i f   ( s l p   >   0 )   { t p p   =   s l p * T a k e P r o f i t P e r c e n t S L / 1 0 0 ; }  
 	 	       i f   ( s l l   >   0 )   { t p p   =   t o P i p s ( M a t h A b s ( S y m b o l A s k ( S Y M B O L )   -   s l l ) ,   S Y M B O L ) * T a k e P r o f i t P e r c e n t S L / 1 0 0 ; }  
 	 	 }  
 	 	  
 	 	 / / - -   l o t s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 d o u b l e   l o t s = 0 ;  
 	 	 d o u b l e   p r e _ s l l = s l l ;   i f   ( p r e _ s l l = = 0 )   { p r e _ s l l = S y m b o l A s k ( S Y M B O L ) ; }  
 	 	 d o u b l e   p r e _ s l _ p i p s = t o P i p s ( S y m b o l A s k ( S Y M B O L ) - ( p r e _ s l l - t o D i g i t s ( s l p , S Y M B O L ) ) ) ;  
 	 	  
 	 	           i f   ( V o l u m e M o d e = = " f i x e d " )                           { l o t s = D y n a m i c L o t s ( V o l u m e M o d e ,   V o l u m e S i z e ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " b l o c k - e q u i t y " )             { l o t s = D y n a m i c L o t s ( V o l u m e M o d e ,   V o l u m e B l o c k P e r c e n t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " b l o c k - b a l a n c e " )           { l o t s = D y n a m i c L o t s ( V o l u m e M o d e ,   V o l u m e B l o c k P e r c e n t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " b l o c k - f r e e m a r g i n " )     { l o t s = D y n a m i c L o t s ( V o l u m e M o d e ,   V o l u m e B l o c k P e r c e n t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " e q u i t y " )                         { l o t s = D y n a m i c L o t s ( V o l u m e M o d e ,   V o l u m e P e r c e n t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " b a l a n c e " )                       { l o t s = D y n a m i c L o t s ( V o l u m e M o d e ,   V o l u m e P e r c e n t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " f r e e m a r g i n " )                 { l o t s = D y n a m i c L o t s ( V o l u m e M o d e ,   V o l u m e P e r c e n t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " e q u i t y R i s k " )                 { l o t s = D y n a m i c L o t s ( V o l u m e M o d e ,   V o l u m e R i s k ,   p r e _ s l _ p i p s ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " b a l a n c e R i s k " )               { l o t s = D y n a m i c L o t s ( V o l u m e M o d e ,   V o l u m e R i s k ,   p r e _ s l _ p i p s ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " f r e e m a r g i n R i s k " )         { l o t s = D y n a m i c L o t s ( V o l u m e M o d e ,   V o l u m e R i s k ,   p r e _ s l _ p i p s ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " f i x e d R i s k " )                   { l o t s = D y n a m i c L o t s ( V o l u m e M o d e ,   V o l u m e S i z e R i s k ,   p r e _ s l _ p i p s ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " f i x e d R a t i o " )                 { l o t s = D y n a m i c L o t s ( V o l u m e M o d e ,   F i x e d R a t i o U n i t S i z e ,   F i x e d R a t i o D e l t a ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " d y n a m i c " )                       { l o t s = A l i g n L o t s ( _ d V o l u m e S i z e _ ( ) ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " 1 3 2 6 " )                             { l o t s = B e t 1 3 2 6 ( ( i n t ) O r d e r s G r o u p ,   S Y M B O L ,   m m 1 3 2 6 I n i t i a l L o t s ,   m m 1 3 2 6 R e v e r s e ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " f i b o n a c c i " )                   { l o t s = B e t F i b o n a c c i ( ( i n t ) O r d e r s G r o u p ,   S Y M B O L ,   m m F i b o I n i t i a l L o t s ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " d a l e m b e r t " )                   { l o t s = B e t D a l e m b e r t ( ( i n t ) O r d e r s G r o u p ,   S Y M B O L ,   m m D a l e m b e r t I n i t i a l L o t s ,   m m D a l e m b e r t R e v e r s e ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " l a b o u c h e r e " )                 { l o t s = B e t L a b o u c h e r e ( ( i n t ) O r d e r s G r o u p ,   S Y M B O L ,   m m L a b o u c h e r e I n i t i a l L o t s ,   m m L a b o u c h e r e L i s t ,   m m L a b o u c h e r e R e v e r s e ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " m a r t i n g a l e " )                 { l o t s = B e t M a r t i n g a l e ( ( i n t ) O r d e r s G r o u p ,   S Y M B O L ,   m m M g I n i t i a l L o t s ,   m m M g M u l t i p l y O n L o s s ,   m m M g M u l t i p l y O n P r o f i t ,   m m M g A d d L o t s O n L o s s ,   m m M g A d d L o t s O n P r o f i t ,   m m M g R e s e t O n L o s s ,   m m M g R e s e t O n P r o f i t ) ; }  
 	 	 e l s e   i f   ( V o l u m e M o d e = = " s e q u e n c e " )                     { l o t s = B e t S e q u e n c e ( ( i n t ) O r d e r s G r o u p ,   S Y M B O L ,   m m S e q B a s e L o t s ,   m m S e q O n L o s s ,   m m S e q O n P r o f i t ,   m m S e q R e v e r s e ) ; }  
 	 	  
 	 	 l o t s   =   A l i g n L o t s ( l o t s ,   0 ,   V o l u m e U p p e r L i m i t ) ;  
 	 	  
 	 	 d a t e t i m e   e x p   =   E x p i r a t i o n T i m e ( E x p M o d e , E x p D a y s , E x p H o u r s , E x p M i n u t e s , _ d E x p _ ( ) ) ;  
 	 	  
 	 	 / / - -   s e n d   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
 	 	 i n t   t i c k e t = B u y N o w ( S Y M B O L ,   l o t s ,   s l l ,   t p l ,   s l p ,   t p p ,   S l i p p a g e ,   ( M a g i c S t a r t + ( i n t ) O r d e r s G r o u p ) ,   M y C o m m e n t ,   A r r o w C o l o r B u y ,   e x p ) ;  
 	 	  
 	 	 i f   ( t i c k e t > 0 )   { _ c a l l b a c k _ ( 1 ) ; }   e l s e   { _ c a l l b a c k _ ( 0 ) ; }  
 	 }  
 } ;  
  
 / /   " N o   t r a d e "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 >  
 c l a s s   M D L _ N o O p e n e d O r d e r s :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   O r d e r s S c o p e ;  
 	 T 2   O r d e r s G r o u p ;  
 	 T 3   S y m b o l S c o p e ;  
 	 T 4   S Y M B O L ;  
 	 T 5   B u y s O r S e l l s ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ N o O p e n e d O r d e r s ( )  
 	 {  
 	 	 O r d e r s S c o p e   =   " g r o u p " ;  
 	 	 O r d e r s G r o u p   =   " " ;  
 	 	 S y m b o l S c o p e   =   " s y m b o l " ;  
 	 	 S Y M B O L   =   C u r r e n t S y m b o l ( ) ;  
 	 	 B u y s O r S e l l s   =   " b o t h " ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 b o o l   e x i s t   =   f a l s e ;  
 	 	  
 	 	  
 	 	 	 f o r   ( i n t   p o s = O r d e r s T o t a l ( ) - 1 ;   p o s > = 0 ;   p o s - - )   {  
 	 	 	 	 i f   ( ! O r d e r S e l e c t ( p o s ,   S E L E C T _ B Y _ P O S ,   M O D E _ T R A D E S ) )   { c o n t i n u e ; }  
 	 	 	 	 i f   ( F i l t e r O r d e r B y ( O r d e r s S c o p e ,   ( s t r i n g ) O r d e r s G r o u p ,   S y m b o l S c o p e ,   S Y M B O L ,   B u y s O r S e l l s ) )   {  
 	 	 	 	 	 e x i s t   =   t r u e ;  
 	 	 	 	 	 b r e a k ;  
 	 	 	 	 }  
 	 	 	 }  
 	 	  
 	 	  
 	 	 i f   ( e x i s t   = =   f a l s e )   { _ c a l l b a c k _ ( 1 ) ; }   e l s e   { _ c a l l b a c k _ ( 0 ) ; }  
 	 }  
 } ;  
  
 / /   " C l o s e   t r a d e s "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   T 7 , t y p e n a m e   T 8 >  
 c l a s s   M D L _ C l o s e O p e n e d :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   O r d e r s S c o p e ;  
 	 T 2   O r d e r s G r o u p ;  
 	 T 3   S y m b o l S c o p e ;  
 	 T 4   S Y M B O L ;  
 	 T 5   B u y s O r S e l l s ;  
 	 T 6   O r d e r M i n u t e s ;  
 	 T 7   S l i p p a g e ;  
 	 T 8   A r r o w C o l o r ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ C l o s e O p e n e d ( )  
 	 {  
 	 	 O r d e r s S c o p e   =   " g r o u p " ;  
 	 	 O r d e r s G r o u p   =   " " ;  
 	 	 S y m b o l S c o p e   =   " s y m b o l " ;  
 	 	 S Y M B O L   =   C u r r e n t S y m b o l ( ) ;  
 	 	 B u y s O r S e l l s   =   " b o t h " ;  
 	 	 O r d e r M i n u t e s   =   0 ;  
 	 	 S l i p p a g e   =   4 ;  
 	 	 A r r o w C o l o r   =   D e e p P i n k ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 i n t   c l o s e d _ c o u n t = 0 ;  
 	 	 b o o l   f i n i s h e d = f a l s e ;  
 	 	 w h i l e   ( f i n i s h e d = = f a l s e )   {  
 	 	       i n t   c o u n t = 0 ;  
 	 	       f o r   ( i n t   p o s = O r d e r s T o t a l ( ) - 1 ;   p o s > = 0 ;   p o s - - )   {  
 	 	             i f   ( O r d e r S e l e c t ( p o s , S E L E C T _ B Y _ P O S , M O D E _ T R A D E S ) )   {  
 	 	                   i f   ( F i l t e r O r d e r B y ( O r d e r s S c o p e , O r d e r s G r o u p ,   S y m b o l S c o p e , S Y M B O L ,   B u y s O r S e l l s ) )   {  
 	 	                         d a t e t i m e   t i m e _ d i f f   =   T i m e C u r r e n t ( ) - a t t r O p e n T i m e ( ) ;  
 	 	                         i f   ( t i m e _ d i f f   <   0 )   { t i m e _ d i f f   =   0 ; }   / /   t h i s   a c t u a l l y   h a p p e n s   s o m e t i m e s  
 	 	                         i f   ( t i m e _ d i f f   > =   6 0 * O r d e r M i n u t e s )  
 	 	                         {  
 	 	                               i f   ( C l o s e T r a d e ( a t t r T i c k e t ( ) , S l i p p a g e , A r r o w C o l o r ) )   { c l o s e d _ c o u n t + + ; }  
 	 	                               c o u n t + + ;  
 	 	                         }  
 	 	                   }  
 	 	             }  
 	 	       }  
 	 	       i f   ( c o u n t = = 0 )   { f i n i s h e d = t r u e ; }  
 	 	 }  
 	 	  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
 	 }  
 } ;  
  
 / /   " B r e a k   e v e n   p o i n t   ( e a c h   t r a d e ) "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   T 7 , t y p e n a m e   T 8 , t y p e n a m e   T 9 , t y p e n a m e   T 1 0 , t y p e n a m e   T 1 1 >  
 c l a s s   M D L _ B r e a k E v e n P o i n t :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   O n P r o f i t M o d e ;  
 	 T 2   O n P r o f i t P i p s ;  
 	 T 3   O n P r o f i t P e r c e n t S L ;  
 	 T 4   O n P r o f i t P e r c e n t T P ;  
 	 T 5   B E o f f s e t M o d e ;  
 	 T 6   B E P o f f s e t P i p s ;  
 	 T 7   O r d e r s S c o p e ;  
 	 T 8   O r d e r s G r o u p ;  
 	 T 9   S y m b o l S c o p e ;  
 	 T 1 0   S Y M B O L ;  
 	 T 1 1   B u y s O r S e l l s ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ B r e a k E v e n P o i n t ( )  
 	 {  
 	 	 O n P r o f i t M o d e   =   " f i x e d " ;  
 	 	 O n P r o f i t P i p s   =   1 5 ;  
 	 	 O n P r o f i t P e r c e n t S L   =   5 0 ;  
 	 	 O n P r o f i t P e r c e n t T P   =   5 0 ;  
 	 	 B E o f f s e t M o d e   =   " n o n e " ;  
 	 	 B E P o f f s e t P i p s   =   0 ;  
 	 	 O r d e r s S c o p e   =   " g r o u p " ;  
 	 	 O r d e r s G r o u p   =   " " ;  
 	 	 S y m b o l S c o p e   =   " s y m b o l " ;  
 	 	 S Y M B O L   =   C u r r e n t S y m b o l ( ) ;  
 	 	 B u y s O r S e l l s   =   " b o t h " ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 f o r   ( i n t   p o s = O r d e r s T o t a l ( ) - 1 ;   p o s > = 0 ;   p o s - - )  
 	 	 {  
 	 	 	 i f   ( ! O r d e r S e l e c t ( p o s , S E L E C T _ B Y _ P O S , M O D E _ T R A D E S ) )   { c o n t i n u e ; }  
 	 	  
 	 	 	 i f   ( ! F i l t e r O r d e r B y ( O r d e r s S c o p e , O r d e r s G r o u p ,   S y m b o l S c o p e , S Y M B O L ,   B u y s O r S e l l s ) )   { c o n t i n u e ; }  
 	 	 	  
 	 	 	 d o u b l e   P i p s T o S e t = 0 ;  
 	 	 	 S e t S y m b o l ( a t t r S y m b o l ( ) ) ;  
 	 	 	  
 	 	 	 i f   ( O n P r o f i t M o d e = = " f i x e d " )                     { P i p s T o S e t   =   O n P r o f i t P i p s ; }  
 	 	 	 e l s e   i f   ( O n P r o f i t M o d e = = " p e r c e n t S L " )   { P i p s T o S e t   =   t o P i p s ( M a t h A b s ( a t t r O p e n P r i c e ( ) - a t t r S t o p L o s s ( ) ) ) * O n P r o f i t P e r c e n t S L / 1 0 0 ; }  
 	 	 	 e l s e   i f   ( O n P r o f i t M o d e = = " p e r c e n t T P " )   { P i p s T o S e t   =   t o P i p s ( M a t h A b s ( a t t r O p e n P r i c e ( ) - a t t r T a k e P r o f i t ( ) ) ) * O n P r o f i t P e r c e n t T P / 1 0 0 ; }  
 	 	                    
 	 	 	 i f   (  
 	 	 	 	 ( a t t r T y p e ( ) = = O P _ B U Y   & &   ( S y m b o l A s k ( ) - a t t r O p e n P r i c e ( )   >   t o D i g i t s ( P i p s T o S e t ) )   & &   ( a t t r S t o p L o s s ( )   <   a t t r O p e n P r i c e ( ) ) )  
 	 	 	 	 | |  
 	 	 	 	 ( a t t r T y p e ( ) = = O P _ S E L L   & &   ( a t t r O p e n P r i c e ( ) - S y m b o l B i d ( )   >   t o D i g i t s ( P i p s T o S e t ) )   & &   ( ( a t t r S t o p L o s s ( )   >   a t t r O p e n P r i c e ( ) )   | |   a t t r S t o p L o s s ( ) = = 0 ) )  
 	 	 	 	 )  
 	 	 	 {  
 	 	 	 	 d o u b l e   b e _ o f f s e t = 0 ;  
 	 	 	 	 i f   ( B E o f f s e t M o d e = = " p i p s " )   {  
 	 	 	 	 	 b e _ o f f s e t = t o D i g i t s ( B E P o f f s e t P i p s ) ;  
 	 	 	 	 	 i f   ( a t t r T y p e ( ) = = O P _ S E L L   )   { b e _ o f f s e t = b e _ o f f s e t * ( - 1 ) ; }  
 	 	 	 	 }  
 	 	 	 	 M o d i f y S t o p s ( a t t r T i c k e t ( ) , a t t r O p e n P r i c e ( ) + b e _ o f f s e t , a t t r T a k e P r o f i t ( ) ) ;  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
 	 }  
 } ;  
  
 / /   " T r a i l i n g   s t o p   ( e a c h   t r a d e ) "   m o d e l  
 t e m p l a t e < t y p e n a m e   T 1 , t y p e n a m e   T 2 , t y p e n a m e   T 3 , t y p e n a m e   T 4 , t y p e n a m e   T 5 , t y p e n a m e   T 6 , t y p e n a m e   T 7 , t y p e n a m e   T 8 , t y p e n a m e   T 9 , t y p e n a m e   T 1 0 , t y p e n a m e   T 1 1 , t y p e n a m e   T 1 2 , t y p e n a m e   T 1 3 , t y p e n a m e   T 1 4 , t y p e n a m e   _ T 1 4 _ , t y p e n a m e   T 1 5 , t y p e n a m e   _ T 1 5 _ , t y p e n a m e   T 1 6 , t y p e n a m e   T 1 7 , t y p e n a m e   T 1 8 , t y p e n a m e   T 1 9 , t y p e n a m e   T 2 0 , t y p e n a m e   T 2 1 , t y p e n a m e   T 2 2 , t y p e n a m e   T 2 3 , t y p e n a m e   T 2 4 , t y p e n a m e   _ T 2 4 _ , t y p e n a m e   T 2 5 , t y p e n a m e   T 2 6 , t y p e n a m e   T 2 7 , t y p e n a m e   T 2 8 , t y p e n a m e   _ T 2 8 _ , t y p e n a m e   T 2 9 >  
 c l a s s   M D L _ T r a i l i n g S t o p 2 :   p u b l i c   B l o c k C a l l s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 T 1   O r d e r s S c o p e ;  
 	 T 2   O r d e r s G r o u p ;  
 	 T 3   S y m b o l S c o p e ;  
 	 T 4   S Y M B O L ;  
 	 T 5   B u y s O r S e l l s ;  
 	 T 6   T r a i l W h a t ;  
 	 T 7   T r a i l i n g R e f e r e n c e P r i c e ;  
 	 T 8   T r a i l i n g S t o p M o d e ;  
 	 T 9   t S t o p P i p s ;  
 	 T 1 0   t S t o p M o n e y ;  
 	 T 1 1   t S t o p M u l t i p l e ;  
 	 T 1 2   t S t o p P e r c e n t T P ;  
 	 T 1 3   t S t o p P e r c e n t P r o f i t ;  
 	 T 1 4   f t S t o p ;   v i r t u a l   _ T 1 4 _   _ f t S t o p _ ( ) { r e t u r n ( _ T 1 4 _ ) 0 ; }  
 	 T 1 5   f t D i g i t s ;   v i r t u a l   _ T 1 5 _   _ f t D i g i t s _ ( ) { r e t u r n ( _ T 1 5 _ ) 0 ; }  
 	 T 1 6   T r a i l i n g S t e p M o d e ;  
 	 T 1 7   t S t e p P i p s ;  
 	 T 1 8   t S t e p P e r c e n t T S ;  
 	 T 1 9   T r a i l i n g S t a r t M o d e ;  
 	 T 2 0   t S t a r t P i p s ;  
 	 T 2 1   t S t a r t P e r c e n t T S ;  
 	 T 2 2   t S t a r t P e r c e n t S L ;  
 	 T 2 3   t S t a r t P e r c e n t T P ;  
 	 T 2 4   f t S t a r t ;   v i r t u a l   _ T 2 4 _   _ f t S t a r t _ ( ) { r e t u r n ( _ T 2 4 _ ) 0 ; }  
 	 T 2 5   T r a i l i n g T P m o d e ;  
 	 T 2 6   t T P p i p s ;  
 	 T 2 7   t T P p e r c e n t T S ;  
 	 T 2 8   f t T P ;   v i r t u a l   _ T 2 8 _   _ f t T P _ ( ) { r e t u r n ( _ T 2 8 _ ) 0 ; }  
 	 T 2 9   L e v e l C o l o r ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L _ T r a i l i n g S t o p 2 ( )  
 	 {  
 	 	 O r d e r s S c o p e   =   " g r o u p " ;  
 	 	 O r d e r s G r o u p   =   " " ;  
 	 	 S y m b o l S c o p e   =   " s y m b o l " ;  
 	 	 S Y M B O L   =   C u r r e n t S y m b o l ( ) ;  
 	 	 B u y s O r S e l l s   =   " b o t h " ;  
 	 	 T r a i l W h a t   =   1 ;  
 	 	 T r a i l i n g R e f e r e n c e P r i c e   =   0 ;  
 	 	 T r a i l i n g S t o p M o d e   =   " f i x e d " ;  
 	 	 t S t o p P i p s   =   4 0 ;  
 	 	 t S t o p M o n e y   =   1 0 ;  
 	 	 t S t o p M u l t i p l e   =   " 2 0 / 5 ,   3 0 / 1 0 " ;  
 	 	 t S t o p P e r c e n t T P   =   1 0 0 ;  
 	 	 t S t o p P e r c e n t P r o f i t   =   5 0 ;  
 	 	 T r a i l i n g S t e p M o d e   =   " f i x e d " ;  
 	 	 t S t e p P i p s   =   1 ;  
 	 	 t S t e p P e r c e n t T S   =   1 0 ;  
 	 	 T r a i l i n g S t a r t M o d e   =   " n o n e " ;  
 	 	 t S t a r t P i p s   =   1 0 ;  
 	 	 t S t a r t P e r c e n t T S   =   1 0 0 ;  
 	 	 t S t a r t P e r c e n t S L   =   1 0 ;  
 	 	 t S t a r t P e r c e n t T P   =   1 0 ;  
 	 	 T r a i l i n g T P m o d e   =   " n o n e " ;  
 	 	 t T P p i p s   =   2 0 ;  
 	 	 t T P p e r c e n t T S   =   2 0 0 ;  
 	 	 L e v e l C o l o r   =   D e e p P i n k ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 v i r t u a l   v o i d   _ e x e c u t e _ ( )  
 	 {  
 	 	 f o r   ( i n t   p o s = 0 ;   p o s < O r d e r s T o t a l ( ) ;   p o s + + )   {  
 	 	       i f   ( O r d e r S e l e c t ( p o s , S E L E C T _ B Y _ P O S , M O D E _ T R A D E S ) )   {  
 	 	             i f   ( F i l t e r O r d e r B y ( O r d e r s S c o p e , O r d e r s G r o u p ,   S y m b o l S c o p e , S Y M B O L ,   B u y s O r S e l l s ) )  
 	 	             {        
 	 	                   S e t S y m b o l ( a t t r S y m b o l ( ) ) ;  
 	 	                   i n t   p o l a r i t y = 1 ;   / /   1   =   b u y ,   - 1   =   s e l l  
 	 	                   d o u b l e   a s k b i d = 0 ;  
 	 	                   d o u b l e   b i d a s k = 0 ;  
 	 	                   d o u b l e   s l t p = 0 ;  
 	 	                   d o u b l e   t p s l = 0 ;  
 	 	                   i f   ( T r a i l W h a t > 0 )   {  
 	 	                         s l t p = a t t r S t o p L o s s ( ) ;  
 	 	                         t p s l = a t t r T a k e P r o f i t ( ) ;  
 	 	                   }  
 	 	                   e l s e   {  
 	 	                         s l t p = a t t r T a k e P r o f i t ( ) ;  
 	 	                         t p s l = a t t r S t o p L o s s ( ) ;  
 	 	                   }  
 	 	                   i f   ( a t t r T y p e ( ) = = O P _ B U Y )   {  
 	 	                         p o l a r i t y = 1 ;  
 	 	                         a s k b i d = S y m b o l A s k ( ) ;  
 	 	                         b i d a s k = S y m b o l B i d ( ) ;  
 	 	                         i f   ( T r a i l i n g R e f e r e n c e P r i c e   = =   1 )   {  
 	 	                               a s k b i d = S y m b o l B i d ( ) ;  
 	 	                               b i d a s k = S y m b o l A s k ( ) ;  
 	 	                         }  
 	 	                   }  
 	 	                   e l s e   i f   ( a t t r T y p e ( ) = = O P _ S E L L )   {  
 	 	                         p o l a r i t y = - 1 ;  
 	 	                         a s k b i d = S y m b o l B i d ( ) ;  
 	 	                         b i d a s k = S y m b o l A s k ( ) ;  
 	 	                         i f   ( T r a i l i n g R e f e r e n c e P r i c e   = =   1 )   {  
 	 	                               a s k b i d = S y m b o l A s k ( ) ;  
 	 	                               b i d a s k = S y m b o l B i d ( ) ;  
 	 	                         }  
 	 	                   }  
 	 	                   i f   ( T r a i l i n g R e f e r e n c e P r i c e   = =   2 )   {  
 	 	                         a s k b i d   =   ( S y m b o l A s k ( )   +   S y m b o l B i d ( ) )   /   2 ;  
 	 	                         b i d a s k   =   a s k b i d ;  
 	 	                   }  
 	 	                    
 	 	                   / /   T r a i l i n g   S t o p   S i z e  
 	 	                   d o u b l e   t _ s t o p = 0 ;  
 	 	                   i f   ( T r a i l i n g S t o p M o d e = = " f i x e d " )                               { t _ s t o p   =   t S t o p P i p s ; }    
 	 	                   e l s e   i f   ( T r a i l i n g S t o p M o d e = = " p e r c e n t T P " )             { t _ s t o p   =   ( M a t h A b s ( t o P i p s ( a t t r O p e n P r i c e ( ) - t p s l ) ) ) * ( t S t o p P e r c e n t T P / 1 0 0 ) ; }  
 	 	                   e l s e   i f   ( T r a i l i n g S t o p M o d e = = " p e r c e n t P r o f i t " )     { t _ s t o p   =   ( M a t h A b s ( t o P i p s ( a s k b i d - a t t r O p e n P r i c e ( ) ) ) ) * ( t S t o p P e r c e n t P r o f i t / 1 0 0 ) ; }  
 	 	                   e l s e   i f   ( T r a i l i n g S t o p M o d e = = " d y n a m i c "   | |   T r a i l i n g S t o p M o d e = = " d y n a m i c S i z e "   | |   T r a i l i n g S t o p M o d e = = " f u n c t i o n " )  
 	 	                   {  
 	 	 	 	 	 	 / /   T O D O :   f t S t o p   i s   n o w   u s e d   f o r   b o t h ,   d y n a m i c   a n d   d y n a m i c S i z e   -   s e p a r a t e   i t  
 	 	                         t _ s t o p = _ f t S t o p _ ( ) ;  
 	 	                         i f   ( T r a i l i n g S t o p M o d e = = " d y n a m i c " )   {  
 	 	                               i f   ( p o l a r i t y = = 1 )   { t _ s t o p = t o P i p s ( S y m b o l A s k ( ) - t _ s t o p ) ; }  
 	 	                               e l s e   { t _ s t o p = t o P i p s ( t _ s t o p - S y m b o l B i d ( ) ) ; }  
 	 	                         }  
 	 	                   }  
 	 	 	 	 	 e l s e   i f   ( T r a i l i n g S t o p M o d e   = =   " d y n a m i c D i g i t s " )  
 	 	 	 	 	 {  
 	 	 	 	 	 	 t _ s t o p = _ f t D i g i t s _ ( ) ;  
 	 	 	 	 	 	 t _ s t o p   =   t o P i p s ( t _ s t o p ) ;  
 	 	 	 	 	 }  
 	 	                   e l s e   i f   ( T r a i l i n g S t o p M o d e = = " m o n e y " )   {  
 	 	                         t _ s t o p = t S t o p M o n e y ;  
 	 	                         d o u b l e   l o t s i z e   =   M a r k e t I n f o ( a t t r S y m b o l ( ) ,   M O D E _ L O T S I Z E ) ;  
 	 	                         d o u b l e   t i c k v a l u e   =   ( M a r k e t I n f o ( a t t r S y m b o l ( ) ,   M O D E _ T I C K V A L U E ) / M a r k e t I n f o ( a t t r S y m b o l ( ) ,   M O D E _ T I C K S I Z E ) ) * M a r k e t I n f o ( a t t r S y m b o l ( ) ,   M O D E _ P O I N T ) ;  
 	 	                         t _ s t o p   =   t _ s t o p   /     ( a t t r L o t s ( )   *   P i p V a l u e ( ) ) ;  
 	 	                         t _ s t o p   =   t _ s t o p   /   t i c k v a l u e ;  
 	 	                   }  
 	 	                    
 	 	                   / /   T r a i l i n g   S t a r t   L e v e l  
 	 	                   d o u b l e   t _ s t a r t = 0 ;  
 	 	                   i f   ( T r a i l i n g S t a r t M o d e = = " n o n e " )                       { t _ s t a r t   =   - E M P T Y _ V A L U E ; }  
 	 	                   e l s e   i f   ( T r a i l i n g S t a r t M o d e = = " z e r o " )             { t _ s t a r t   =   0 ; }  
 	 	                   e l s e   i f   ( T r a i l i n g S t a r t M o d e = = " f i x e d " )           { t _ s t a r t   =   t S t a r t P i p s ; }  
 	 	                   e l s e   i f   ( T r a i l i n g S t a r t M o d e = = " p e r c e n t T S " )   { t _ s t a r t   =   t _ s t o p * ( t S t a r t P e r c e n t T S / 1 0 0 ) ; }  
 	 	                   e l s e   i f   ( T r a i l i n g S t a r t M o d e = = " p e r c e n t T P " )   { t _ s t a r t   =   ( M a t h A b s ( t o P i p s ( a t t r O p e n P r i c e ( ) - t p s l ) ) ) * ( t S t a r t P e r c e n t T P / 1 0 0 ) ; }  
 	 	                   e l s e   i f   ( T r a i l i n g S t a r t M o d e = = " p e r c e n t S L " )   { t _ s t a r t   =   ( M a t h A b s ( t o P i p s ( a t t r O p e n P r i c e ( ) - s l t p ) ) ) * ( t S t a r t P e r c e n t S L / 1 0 0 ) ; }  
 	 	                   e l s e   i f   ( T r a i l i n g S t a r t M o d e = = " f u n c t i o n " )     { t _ s t a r t   =   _ f t S t a r t _ ( ) ; }  
 	 	                    
 	 	                   / /   T r a i l i n g   S t e p   S i z e  
 	 	                   d o u b l e   t _ s t e p = 0 ;  
 	 	                   i f   ( T r a i l i n g S t e p M o d e = = " f i x e d " )                       { t _ s t e p   =   t S t e p P i p s ; }  
 	 	                   e l s e   i f   ( T r a i l i n g S t e p M o d e = = " p e r c e n t T S " )     { t _ s t e p   =   t _ s t o p * ( t S t e p P e r c e n t T S / 1 0 0 ) ; }  
 	 	                    
 	 	                   / /   T r a i l i n g   T a k e   P r o f i t  
 	 	                   d o u b l e   t _ o p p = 0 ;  
 	 	                   i f   ( T r a i l i n g T P m o d e = = " n o n e " )                         { t _ o p p   =   t p s l ; }  
 	 	                   e l s e   i f   ( T r a i l i n g T P m o d e = = " c l e a r " )             { t _ o p p   =   0 ; }  
 	 	                   e l s e   i f   ( T r a i l i n g T P m o d e = = " f i x e d " )             { t _ o p p   =   T r a i l W h a t * ( a t t r O p e n P r i c e ( ) + ( p o l a r i t y * t o D i g i t s ( t T P p i p s ) ) ) ; }  
 	 	                   e l s e   i f   ( T r a i l i n g T P m o d e = = " p e r c e n t T S " )     { t _ o p p   =   T r a i l W h a t * ( a t t r O p e n P r i c e ( ) + ( p o l a r i t y * t o D i g i t s ( t _ s t o p * ( t T P p e r c e n t T S / 1 0 0 ) ) ) ) ; }  
 	 	                   e l s e   i f   ( T r a i l i n g T P m o d e = = " f u n c t i o n " )       { t _ o p p   =   _ f t T P _ ( ) ; }  
 	 	                    
 	 	                   / /   t h i s   m o d e   i s   l o c a t e d   h e r e   b e c a u s e   i t   o v e r r i d e s   S t a r t ,   S t o p   a n d   S t e p  
 	 	                   / /   t h e   i d e a   h e r e   i s   t o   u s e   S t a r t   a s   t a r g e t   p r o f i t s  
 	 	                   i f   ( T r a i l i n g S t o p M o d e   = =   " m u l t i p l e " )  
 	 	                   {  
 	 	                         b o o l   n e x t   =   f a l s e ;  
 	 	                         s t r i n g   t m p 1 [ ] ;  
 	 	                         s t r i n g   t m p 2 [ ] ;  
 	 	                         S t r i n g E x p l o d e ( " , " ,   t S t o p M u l t i p l e ,   t m p 1 ) ;  
 	 	                         f o r   ( i n t   i = A r r a y S i z e ( t m p 1 ) - 1 ;   i > = 0 ;   i - - )  
 	 	                         {  
 	 	                               S t r i n g E x p l o d e ( " / " ,   t m p 1 [ i ] ,   t m p 2 ) ;  
 	 	                               i f   ( A r r a y S i z e ( t m p 2 )   ! =   2 )   { c o n t i n u e ; }  
 	 	                                
 	 	                               / /   t r a i l i n g   s t a r t   w i l l   b e   u s e d   a s   t h e   t r e s h o l d   l e v e l  
 	 	                               d o u b l e   n e w _ s t a r t   =   S t r T o D o u b l e ( S t r i n g T r i m ( t m p 2 [ 0 ] ) ) ;  
 	 	                                
 	 	                               / /   t h e   r e g u l a r   t r a i l i n g   s t a r t   i s   b i g g e r   t h a n   t h i s   l e v e l   - >   s k i p  
 	 	                               i f   ( n e w _ s t a r t   <   t _ s t a r t )   { c o n t i n u e ; }  
 	 	                                
 	 	                               / /   c h e c k   w h e t h e r   t h e   c u r r e n t   p r i c e < - > o p   d i s t a n c e   i s   b i g g e r   t h a n   s o m e   o f   t h e   d e s i r e d   l e v e l s  
 	 	                               i f   ( p o l a r i t y * T r a i l W h a t * t o P i p s ( a s k b i d - a t t r O p e n P r i c e ( ) )   > =   n e w _ s t a r t )  
 	 	                               {  
 	 	                                     / /   a n d   s e t u p   p a r a m e t e r s   s o   S L   w i l l   b e   m o v e d  
 	 	                                     / / t _ s t e p   =   0 ;  
 	 	                                     t _ s t a r t   =   n e w _ s t a r t ;  
 	 	                                     t _ s t o p   =   p o l a r i t y * T r a i l W h a t * t o P i p s ( a s k b i d - a t t r O p e n P r i c e ( ) )   -   S t r T o D o u b l e ( S t r i n g T r i m ( t m p 2 [ 1 ] ) ) ;  
 	 	                                      
 	 	                                     n e x t   =   t r u e ;  
 	 	                                     b r e a k ;  
 	 	                               }  
 	 	                         }  
 	 	                         i f   ( n e x t   = =   f a l s e )   { c o n t i n u e ; }  
 	 	                   }  
 	 	                    
 	 	                   d o u b l e   s t o p s l e v e l = M a r k e t I n f o ( a t t r S y m b o l ( ) , M O D E _ S T O P L E V E L ) ;  
 	 	                   s t o p s l e v e l = t o D i g i t s ( s t o p s l e v e l / P i p V a l u e ( ) , a t t r S y m b o l ( ) ) ;  
 	 	                   d o u b l e   f s l = 0 ;  
 	 	                   d o u b l e   l i m i t = 0 ;  
 	 	                    
 	 	                   i f   ( t _ s t o p < = 0 )   { c o n t i n u e ; }  
 	 	  
 	 	                   i f   ( a t t r T y p e ( ) = = O P _ B U Y   & &   T r a i l W h a t * ( a s k b i d - a t t r O p e n P r i c e ( ) ) > t o D i g i t s ( t _ s t a r t ) )  
 	 	                   {  
 	 	                         i f   ( ( T r a i l W h a t * ( a s k b i d - s l t p ) > = t o D i g i t s ( t _ s t o p + t _ s t e p ) )   | |   s l t p = = 0 )  
 	 	                         {  
 	 	                               / /   c o n s i d e r   m i n i m u m   s t o p  
 	 	                               f s l       =   M a t h A b s ( a s k b i d - t o D i g i t s ( t _ s t o p ) ) ;  
 	 	                               l i m i t   =   b i d a s k   -   s t o p s l e v e l * T r a i l W h a t ;  
 	 	                               i f   ( f s l > l i m i t )   { f s l = l i m i t ; }  
 	 	                                
 	 	                               i f   ( T r a i l W h a t = = 1 )   {   / /   t r a i l   S L  
 	 	                                     i f   ( s l t p = = 0   | |   s l t p < f s l )   {  
 	 	                                           M o d i f y S t o p s ( a t t r T i c k e t ( ) , a s k b i d - t o D i g i t s ( t _ s t o p ) , t _ o p p , L e v e l C o l o r ) ;  
 	 	                                     }  
 	 	                               }  
 	 	                               e l s e   {   / /   t r a i l   T P  
 	 	                                     i f   ( s l t p = = 0   | |   s l t p > f s l )   {  
 	 	                                           M o d i f y S t o p s ( a t t r T i c k e t ( ) , t _ o p p , a s k b i d + t o D i g i t s ( t _ s t o p ) , L e v e l C o l o r ) ;  
 	 	                                     }  
 	 	                               }  
 	 	                         }  
 	 	                   }  
 	 	                   e l s e   i f   ( a t t r T y p e ( ) = = O P _ S E L L   & &   T r a i l W h a t * ( a t t r O p e n P r i c e ( ) - a s k b i d ) > t o D i g i t s ( t _ s t a r t ) )  
 	 	                   {  
 	 	                         i f   ( ( T r a i l W h a t * ( s l t p - a s k b i d ) > = t o D i g i t s ( t _ s t o p + t _ s t e p ) )   | |   s l t p = = 0 )  
 	 	                         {  
 	 	                               / /   c o n s i d e r   m i n i m u m   s t o p  
 	 	                               f s l       =   M a t h A b s ( a s k b i d + t o D i g i t s ( t _ s t o p ) ) ;  
 	 	                               l i m i t   =   b i d a s k + s t o p s l e v e l * T r a i l W h a t ;  
 	 	                               i f   ( f s l < l i m i t )   { f s l = l i m i t ; }  
 	 	                                
 	 	                               i f   ( T r a i l W h a t = = 1 )   {   / /   t r a i l   S L  
 	 	                                     i f   ( s l t p = = 0   | |   s l t p > f s l )   {  
 	 	                                           M o d i f y S t o p s ( a t t r T i c k e t ( ) , a s k b i d + t o D i g i t s ( t _ s t o p ) , t _ o p p , L e v e l C o l o r ) ;  
 	 	                                     }  
 	 	                               }  
 	 	                               e l s e   {   / /   t r a i l   T P  
 	 	                                     i f   ( s l t p = = 0   | |   s l t p < f s l )   {  
 	 	                                           M o d i f y S t o p s ( a t t r T i c k e t ( ) , t _ o p p , a s k b i d - t o D i g i t s ( t _ s t o p ) , L e v e l C o l o r ) ;  
 	 	                                     }  
 	 	                               }  
 	 	                         }  
 	 	                   }  
 	 	             }  
 	 	       }  
 	 	 }  
 	 	  
 	 	 _ c a l l b a c k _ ( 1 ) ;  
 	 }  
 } ;  
  
  
 / / - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
  
 / /   " M o v i n g   A v e r a g e "   m o d e l  
 c l a s s   M D L I C _ i n d i c a t o r s _ i M A  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 i n t   M A p e r i o d ;  
 	 i n t   M A s h i f t ;  
 	 i n t   M A m e t h o d ;  
 	 i n t   A p p l i e d P r i c e ;  
 	 s t r i n g   S Y M B O L ;  
 	 E N U M _ T I M E F R A M E S   T I M E F R A M E ;  
 	 i n t   S H I F T ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ i n d i c a t o r s _ i M A ( )  
 	 {  
 	 	 M A p e r i o d   =   1 4 ;  
 	 	 M A s h i f t   =   0 ;  
 	 	 M A m e t h o d   =   M O D E _ S M A ;  
 	 	 A p p l i e d P r i c e   =   P R I C E _ C L O S E ;  
 	 	 S Y M B O L   =   C u r r e n t S y m b o l ( ) ;  
 	 	 T I M E F R A M E   =   C u r r e n t T i m e f r a m e ( ) ;  
 	 	 S H I F T   =   0 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 d o u b l e   _ e x e c u t e _ ( )  
 	 {  
 	 	 r e t u r n   i M A ( S Y M B O L , T I M E F R A M E , M A p e r i o d , M A s h i f t , M A m e t h o d , A p p l i e d P r i c e , S H I F T + F X D _ M O R E _ S H I F T ) ;  
 	 }  
 } ;  
  
 / /   " M y   I n d i c a t o r s "   m o d e l  
 c l a s s   M D L I C _ m y i n d i c a t o r s _ m y i n d i c a t o r s _ 1  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 s t r i n g   S Y M B O L ;  
 	 E N U M _ T I M E F R A M E S   T I M E F R A M E ;  
 	 s t r i n g   M o d e O u t p u t ;  
 	 s t r i n g   T i m e S t a m p ;  
 	 i n t   V i s i b l e I D ;  
 	 i n t   V i s i b l e S h i f t ;  
 	 i n t   V i s i b l e L i m i t ;  
 	 i n t   R a n g e C a n d l e S t a r t ;  
 	 i n t   R a n g e C a n d l e E n d ;  
 	 s t r i n g   R a n g e T i m e S o u r c e ;  
 	 s t r i n g   R a n g e T i m e S t a r t ;  
 	 s t r i n g   R a n g e T i m e E n d ;  
 	 d o u b l e   R a n g e D a y O f f s e t ;  
 	 s t r i n g   R a n g e V a l u e ;  
 	 i n t   S H I F T ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ m y i n d i c a t o r s _ m y i n d i c a t o r s _ 1 ( )  
 	 {  
 	 	 S Y M B O L   =   C u r r e n t S y m b o l ( ) ;  
 	 	 T I M E F R A M E   =   C u r r e n t T i m e f r a m e ( ) ;  
 	 	 M o d e O u t p u t   =   " i d " ;  
 	 	 T i m e S t a m p   =   " 0 0 : 0 0 " ;  
 	 	 V i s i b l e I D   =   0 ;  
 	 	 V i s i b l e S h i f t   =   0 ;  
 	 	 V i s i b l e L i m i t   =   1 0 0 ;  
 	 	 R a n g e C a n d l e S t a r t   =   0 ;  
 	 	 R a n g e C a n d l e E n d   =   1 0 ;  
 	 	 R a n g e T i m e S o u r c e   =   " s e r v e r " ;  
 	 	 R a n g e T i m e S t a r t   =   " 0 1 : 0 0 " ;  
 	 	 R a n g e T i m e E n d   =   " 0 8 : 0 0 " ;  
 	 	 R a n g e D a y O f f s e t   =   0 ;  
 	 	 R a n g e V a l u e   =   " m a x " ;  
 	 	 S H I F T   =   0 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 d o u b l e   _ e x e c u t e _ ( )  
 	 {  
 	 	 / / ! ! !   I   m u s t   d e f i n e   a l l   i n p u t   p r o p e r t i e s   h e r e ,   b e c a u s e   t h e y   a r e   n o t   a u t o m a t i c a l l y   d e f i n e d .  
 	 	 / /   T h i s   f u n c t i o n   i s   n o t   g l o b a l   p r o t o t y p e ,   o n e   n e w   f u n c t i o n   i s   c r e a t e d   f o r   e a c h   c a s e .   T h i s   i s   b e c a u s e   %   i C u s t o m   %   m u s t   b e   u n i q u e  
 	 	  
 	 	 s t r i n g   s y m b o l   =   S Y M B O L ;  
 	 	 E N U M _ T I M E F R A M E S   t i m e f r a m e   =   T I M E F R A M E ;  
 	 	 i n t   b u f f e r         =   1 ;  
 	 	 i n t   s h i f t           =   S H I F T   +   F X D _ M O R E _ S H I F T ;  
 	 	  
 	 	 d o u b l e   r e t v a l   =   E M P T Y _ V A L U E ;  
 	 	 i n t   i ;  
 	 	 d o u b l e   i v a l ;  
 	 	  
 	 	 i f   ( M o d e O u t p u t   = =   " i d " )  
 	 	 {  
 	 	 	 r e t v a l   =   i C u s t o m ( s y m b o l ,   t i m e f r a m e ,   " T M A _ F a i r   "   ,   ( s t r i n g ) " c u r r e n t   t i m e   f r a m e " ,   ( i n t ) 3 0 ,   ( i n t ) P R I C E _ C L O S E ,   ( d o u b l e ) 2 . 0 ,   ( i n t ) 1 0 0 ,   ( b o o l ) t r u e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   b u f f e r ,   s h i f t ) ;  
 	 	 	  
 	 	 }  
 	 	 e l s e   i f   ( M o d e O u t p u t   = =   " t i m e " )  
 	 	 {  
 	 	 	 d a t e t i m e   t i m e ;  
 	 	 	  
 	 	 	 i f   ( 0   & &   S t r i n g F i n d ( T i m e S t a m p ,   " : " )   = =   - 1 )  
 	 	 	 { 	  
 	 	 	 	 t i m e   =   ( d a t e t i m e ) S t r i n g T o I n t e g e r ( T i m e S t a m p ) ;   / /   h a n g s   i n   M Q L 4 ! ! !  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 t i m e   =   S t r i n g T o T i m e ( T i m e S t a m p ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 s h i f t   =   i C a n d l e I D ( s y m b o l ,   t i m e f r a m e ,   t i m e ) ;  
 	 	 	 r e t v a l   =   i C u s t o m ( s y m b o l ,   t i m e f r a m e ,   " T M A _ F a i r   "   ,   ( s t r i n g ) " c u r r e n t   t i m e   f r a m e " ,   ( i n t ) 3 0 ,   ( i n t ) P R I C E _ C L O S E ,   ( d o u b l e ) 2 . 0 ,   ( i n t ) 1 0 0 ,   ( b o o l ) t r u e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   b u f f e r ,   s h i f t ) ;  
 	 	 }  
 	 	 e l s e   i f   ( M o d e O u t p u t   = =   " v i s i b l e "   | |   M o d e O u t p u t   = =   " i d _ b y _ v i s i b l e " )  
 	 	 {  
 	 	 	 i f   ( V i s i b l e L i m i t   = =   0 )   { V i s i b l e L i m i t   =   i B a r s ( s y m b o l ,   t i m e f r a m e ) ; }  
 	 	 	  
 	 	 	 i n t   v i d   =   0 ;  
 	 	 	  
 	 	 	 f o r   ( i   =   s h i f t ;   i   < =   V i s i b l e L i m i t ;   i + + )  
 	 	 	 {  
 	 	 	 	 i v a l   =   i C u s t o m ( s y m b o l ,   t i m e f r a m e ,   " T M A _ F a i r   "   ,   ( s t r i n g ) " c u r r e n t   t i m e   f r a m e " ,   ( i n t ) 3 0 ,   ( i n t ) P R I C E _ C L O S E ,   ( d o u b l e ) 2 . 0 ,   ( i n t ) 1 0 0 ,   ( b o o l ) t r u e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   b u f f e r ,   s h i f t   +   i ) ;  
 	 	 	 	  
 	 	 	 	 i f   ( i v a l   = =   E M P T Y _ V A L U E   | |   i v a l   = =   0 )   { c o n t i n u e ; }  
 	 	 	 	 i f   ( v i d   > =   V i s i b l e I D )   {  
 	 	 	 	 	 i f   ( M o d e O u t p u t   = =   " v i s i b l e " )   { r e t v a l   =   i v a l ; }  
 	 	 	 	 	 e l s e   { r e t v a l   =   i ; }  
 	 	 	 	 	 b r e a k ; 	  
 	 	 	 	 }  
 	 	 	 	 	  
 	 	 	 	 v i d + + ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   ( M o d e O u t p u t   = =   " r a n g e " )  
 	 	 {  
 	 	 	 i n t   c s t a r t   =   R a n g e C a n d l e S t a r t ;  
 	 	 	 i n t   c e n d       =   R a n g e C a n d l e E n d ;  
 	 	 	 / / s t r i n g   R a n g e V a l u e   =   R a n g e V a l u e ;  
 	 	 	  
 	 	 	 / /   r e v e r s e   v a l u e s ,   i f   n e e d e d  
 	 	 	 i f   ( R a n g e C a n d l e S t a r t   >   R a n g e C a n d l e E n d )   {  
 	 	 	 	 i n t   c t m p   =   R a n g e C a n d l e E n d ;  
 	 	 	 	 R a n g e C a n d l e E n d   =   R a n g e C a n d l e S t a r t ;  
 	 	 	 	 R a n g e C a n d l e S t a r t   =   c t m p ;  
 	 	 	 }  
 	 	  
 	 	 	 i f   ( R a n g e V a l u e   = =   " m a x " )  
 	 	 	 {  
 	 	 	 	 r e t v a l   =   - E M P T Y _ V A L U E ;  
 	 	 	 	  
 	 	 	 	 f o r   ( i   =   R a n g e C a n d l e S t a r t ;   i   < =   R a n g e C a n d l e E n d ;   i + + )  
 	 	 	 	 {  
 	 	 	 	 	 i v a l   =   i C u s t o m ( s y m b o l ,   t i m e f r a m e ,   " T M A _ F a i r   "   ,   ( s t r i n g ) " c u r r e n t   t i m e   f r a m e " ,   ( i n t ) 3 0 ,   ( i n t ) P R I C E _ C L O S E ,   ( d o u b l e ) 2 . 0 ,   ( i n t ) 1 0 0 ,   ( b o o l ) t r u e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   b u f f e r ,   s h i f t   +   i ) ;  
 	 	 	 	 	 i f   ( i v a l   = =   E M P T Y _ V A L U E   | |   i v a l   = =   0 )   { c o n t i n u e ; }  
 	 	 	 	 	 i f   ( i v a l   >   r e t v a l )   { r e t v a l   =   i v a l ; }  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i f   ( r e t v a l   = =   - E M P T Y _ V A L U E )   { r e t v a l   =   E M P T Y _ V A L U E ; }  
 	 	 	 }  
 	 	 	 e l s e   i f   ( R a n g e V a l u e   = =   " m i n " )  
 	 	 	 {  
 	 	 	 	 r e t v a l   =   E M P T Y _ V A L U E ;  
 	 	 	 	  
 	 	 	 	 f o r   ( i   =   R a n g e C a n d l e S t a r t ;   i   < =   R a n g e C a n d l e E n d ;   i + + )  
 	 	 	 	 {  
 	 	 	 	 	 i v a l   =   i C u s t o m ( s y m b o l ,   t i m e f r a m e ,   " T M A _ F a i r   "   ,   ( s t r i n g ) " c u r r e n t   t i m e   f r a m e " ,   ( i n t ) 3 0 ,   ( i n t ) P R I C E _ C L O S E ,   ( d o u b l e ) 2 . 0 ,   ( i n t ) 1 0 0 ,   ( b o o l ) t r u e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   b u f f e r ,   s h i f t   +   i ) ;  
 	 	 	 	 	 i f   ( i v a l   = =   E M P T Y _ V A L U E   | |   i v a l   = =   0 )   { c o n t i n u e ; }  
 	 	 	 	 	 i f   ( i v a l   <   r e t v a l )   { r e t v a l   =   i v a l ; }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   ( M o d e O u t p u t   = =   " r a n g e _ t i m e " )  
 	 	 {  
 	 	 	 d a t e t i m e   o f f s e t   =   0 ;  
 	 	 	 i f   ( R a n g e T i m e S o u r c e   = =   " g m t " )   { o f f s e t   =   ( i n t ) ( T i m e C u r r e n t ( )   -   T i m e L o c a l ( )   +   T i m e G M T O f f s e t ( ) ) ; }  
 	 	 	 e l s e   i f   ( R a n g e T i m e S o u r c e   = =   " s e r v e r " )   { o f f s e t   =   ( i n t ) ( T i m e C u r r e n t ( )   -   T i m e L o c a l ( ) ) ; }  
 	 	 	  
 	 	 	 d a t e t i m e   t i m e 1   =   S t r i n g T o T i m e ( R a n g e T i m e S t a r t ) - ( d a t e t i m e ) ( 8 6 4 0 0 * R a n g e D a y O f f s e t )   +   o f f s e t ;  
 	 	 	 d a t e t i m e   t i m e 2   =   S t r i n g T o T i m e ( R a n g e T i m e E n d ) - ( d a t e t i m e ) ( 8 6 4 0 0 * R a n g e D a y O f f s e t )   +   o f f s e t ;  
 	 	 	  
 	 	 	 i n t   x 1   =   i B a r S h i f t ( s y m b o l ,   t i m e f r a m e ,   t i m e 1 ,   f a l s e ) ;  
 	 	 	 i n t   x 2   =   i B a r S h i f t ( s y m b o l ,   t i m e f r a m e ,   t i m e 2 ,   f a l s e ) ;  
 	 	 	 i f   ( x 1 < x 2 )   { x 1 = i B a r S h i f t ( s y m b o l , t i m e f r a m e , ( t i m e 1 - 8 6 4 0 0 ) , f a l s e ) ; }  
 	 	 	  
 	 	 	 i f   ( R a n g e V a l u e   = =   " m a x " )  
 	 	 	 {  
 	 	 	 	 r e t v a l   =   - E M P T Y _ V A L U E ;  
 	 	 	 	  
 	 	 	 	 f o r   ( i = x 2 ;   i < = x 1 ;   i + + )  
 	 	 	 	 {  
 	 	 	 	 	 i v a l   =   i C u s t o m ( s y m b o l ,   t i m e f r a m e ,   " T M A _ F a i r   "   ,   ( s t r i n g ) " c u r r e n t   t i m e   f r a m e " ,   ( i n t ) 3 0 ,   ( i n t ) P R I C E _ C L O S E ,   ( d o u b l e ) 2 . 0 ,   ( i n t ) 1 0 0 ,   ( b o o l ) t r u e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   b u f f e r ,   s h i f t   +   i ) ;  
 	 	 	 	 	 i f   ( i v a l   = =   E M P T Y _ V A L U E   | |   i v a l   = =   0 )   { c o n t i n u e ; }  
 	 	 	 	 	 i f   ( i v a l   >   r e t v a l )   { r e t v a l   =   i v a l ; }  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i f   ( r e t v a l   = =   - E M P T Y _ V A L U E )   { r e t v a l   =   E M P T Y _ V A L U E ; }  
 	 	 	 }  
 	 	 	 e l s e   i f   ( R a n g e V a l u e   = =   " m i n " )  
 	 	 	 {  
 	 	 	 	 r e t v a l   =   E M P T Y _ V A L U E ;  
 	 	 	 	  
 	 	 	 	 f o r   ( i = x 2 ;   i < = x 1 ;   i + + )  
 	 	 	 	 {  
 	 	 	 	 	 i v a l   =   i C u s t o m ( s y m b o l ,   t i m e f r a m e ,   " T M A _ F a i r   "   ,   ( s t r i n g ) " c u r r e n t   t i m e   f r a m e " ,   ( i n t ) 3 0 ,   ( i n t ) P R I C E _ C L O S E ,   ( d o u b l e ) 2 . 0 ,   ( i n t ) 1 0 0 ,   ( b o o l ) t r u e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   b u f f e r ,   s h i f t   +   i ) ;  
 	 	 	 	 	 i f   ( i v a l   = =   E M P T Y _ V A L U E   | |   i v a l   = =   0 )   { c o n t i n u e ; }  
 	 	 	 	 	 i f   ( i v a l   <   r e t v a l )   { r e t v a l   =   i v a l ; }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   ( r e t v a l ) ;  
 	 }  
 } ;  
  
 / /   " M y   I n d i c a t o r s "   m o d e l  
 c l a s s   M D L I C _ m y i n d i c a t o r s _ m y i n d i c a t o r s _ 2  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 s t r i n g   S Y M B O L ;  
 	 E N U M _ T I M E F R A M E S   T I M E F R A M E ;  
 	 s t r i n g   M o d e O u t p u t ;  
 	 s t r i n g   T i m e S t a m p ;  
 	 i n t   V i s i b l e I D ;  
 	 i n t   V i s i b l e S h i f t ;  
 	 i n t   V i s i b l e L i m i t ;  
 	 i n t   R a n g e C a n d l e S t a r t ;  
 	 i n t   R a n g e C a n d l e E n d ;  
 	 s t r i n g   R a n g e T i m e S o u r c e ;  
 	 s t r i n g   R a n g e T i m e S t a r t ;  
 	 s t r i n g   R a n g e T i m e E n d ;  
 	 d o u b l e   R a n g e D a y O f f s e t ;  
 	 s t r i n g   R a n g e V a l u e ;  
 	 i n t   S H I F T ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ m y i n d i c a t o r s _ m y i n d i c a t o r s _ 2 ( )  
 	 {  
 	 	 S Y M B O L   =   C u r r e n t S y m b o l ( ) ;  
 	 	 T I M E F R A M E   =   C u r r e n t T i m e f r a m e ( ) ;  
 	 	 M o d e O u t p u t   =   " i d " ;  
 	 	 T i m e S t a m p   =   " 0 0 : 0 0 " ;  
 	 	 V i s i b l e I D   =   0 ;  
 	 	 V i s i b l e S h i f t   =   0 ;  
 	 	 V i s i b l e L i m i t   =   1 0 0 ;  
 	 	 R a n g e C a n d l e S t a r t   =   0 ;  
 	 	 R a n g e C a n d l e E n d   =   1 0 ;  
 	 	 R a n g e T i m e S o u r c e   =   " s e r v e r " ;  
 	 	 R a n g e T i m e S t a r t   =   " 0 1 : 0 0 " ;  
 	 	 R a n g e T i m e E n d   =   " 0 8 : 0 0 " ;  
 	 	 R a n g e D a y O f f s e t   =   0 ;  
 	 	 R a n g e V a l u e   =   " m a x " ;  
 	 	 S H I F T   =   0 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 d o u b l e   _ e x e c u t e _ ( )  
 	 {  
 	 	 / / ! ! !   I   m u s t   d e f i n e   a l l   i n p u t   p r o p e r t i e s   h e r e ,   b e c a u s e   t h e y   a r e   n o t   a u t o m a t i c a l l y   d e f i n e d .  
 	 	 / /   T h i s   f u n c t i o n   i s   n o t   g l o b a l   p r o t o t y p e ,   o n e   n e w   f u n c t i o n   i s   c r e a t e d   f o r   e a c h   c a s e .   T h i s   i s   b e c a u s e   %   i C u s t o m   %   m u s t   b e   u n i q u e  
 	 	  
 	 	 s t r i n g   s y m b o l   =   S Y M B O L ;  
 	 	 E N U M _ T I M E F R A M E S   t i m e f r a m e   =   T I M E F R A M E ;  
 	 	 i n t   b u f f e r         =   2 ;  
 	 	 i n t   s h i f t           =   S H I F T   +   F X D _ M O R E _ S H I F T ;  
 	 	  
 	 	 d o u b l e   r e t v a l   =   E M P T Y _ V A L U E ;  
 	 	 i n t   i ;  
 	 	 d o u b l e   i v a l ;  
 	 	  
 	 	 i f   ( M o d e O u t p u t   = =   " i d " )  
 	 	 {  
 	 	 	 r e t v a l   =   i C u s t o m ( s y m b o l ,   t i m e f r a m e ,   " T M A _ F a i r   "   ,   ( s t r i n g ) " c u r r e n t   t i m e   f r a m e " ,   ( i n t ) 3 0 ,   ( i n t ) P R I C E _ C L O S E ,   ( d o u b l e ) 2 . 0 ,   ( i n t ) 1 0 0 ,   ( b o o l ) t r u e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   b u f f e r ,   s h i f t ) ;  
 	 	 	  
 	 	 }  
 	 	 e l s e   i f   ( M o d e O u t p u t   = =   " t i m e " )  
 	 	 {  
 	 	 	 d a t e t i m e   t i m e ;  
 	 	 	  
 	 	 	 i f   ( 0   & &   S t r i n g F i n d ( T i m e S t a m p ,   " : " )   = =   - 1 )  
 	 	 	 { 	  
 	 	 	 	 t i m e   =   ( d a t e t i m e ) S t r i n g T o I n t e g e r ( T i m e S t a m p ) ;   / /   h a n g s   i n   M Q L 4 ! ! !  
 	 	 	 }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 t i m e   =   S t r i n g T o T i m e ( T i m e S t a m p ) ;  
 	 	 	 }  
 	 	 	  
 	 	 	 s h i f t   =   i C a n d l e I D ( s y m b o l ,   t i m e f r a m e ,   t i m e ) ;  
 	 	 	 r e t v a l   =   i C u s t o m ( s y m b o l ,   t i m e f r a m e ,   " T M A _ F a i r   "   ,   ( s t r i n g ) " c u r r e n t   t i m e   f r a m e " ,   ( i n t ) 3 0 ,   ( i n t ) P R I C E _ C L O S E ,   ( d o u b l e ) 2 . 0 ,   ( i n t ) 1 0 0 ,   ( b o o l ) t r u e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   b u f f e r ,   s h i f t ) ;  
 	 	 }  
 	 	 e l s e   i f   ( M o d e O u t p u t   = =   " v i s i b l e "   | |   M o d e O u t p u t   = =   " i d _ b y _ v i s i b l e " )  
 	 	 {  
 	 	 	 i f   ( V i s i b l e L i m i t   = =   0 )   { V i s i b l e L i m i t   =   i B a r s ( s y m b o l ,   t i m e f r a m e ) ; }  
 	 	 	  
 	 	 	 i n t   v i d   =   0 ;  
 	 	 	  
 	 	 	 f o r   ( i   =   s h i f t ;   i   < =   V i s i b l e L i m i t ;   i + + )  
 	 	 	 {  
 	 	 	 	 i v a l   =   i C u s t o m ( s y m b o l ,   t i m e f r a m e ,   " T M A _ F a i r   "   ,   ( s t r i n g ) " c u r r e n t   t i m e   f r a m e " ,   ( i n t ) 3 0 ,   ( i n t ) P R I C E _ C L O S E ,   ( d o u b l e ) 2 . 0 ,   ( i n t ) 1 0 0 ,   ( b o o l ) t r u e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   b u f f e r ,   s h i f t   +   i ) ;  
 	 	 	 	  
 	 	 	 	 i f   ( i v a l   = =   E M P T Y _ V A L U E   | |   i v a l   = =   0 )   { c o n t i n u e ; }  
 	 	 	 	 i f   ( v i d   > =   V i s i b l e I D )   {  
 	 	 	 	 	 i f   ( M o d e O u t p u t   = =   " v i s i b l e " )   { r e t v a l   =   i v a l ; }  
 	 	 	 	 	 e l s e   { r e t v a l   =   i ; }  
 	 	 	 	 	 b r e a k ; 	  
 	 	 	 	 }  
 	 	 	 	 	  
 	 	 	 	 v i d + + ;  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   ( M o d e O u t p u t   = =   " r a n g e " )  
 	 	 {  
 	 	 	 i n t   c s t a r t   =   R a n g e C a n d l e S t a r t ;  
 	 	 	 i n t   c e n d       =   R a n g e C a n d l e E n d ;  
 	 	 	 / / s t r i n g   R a n g e V a l u e   =   R a n g e V a l u e ;  
 	 	 	  
 	 	 	 / /   r e v e r s e   v a l u e s ,   i f   n e e d e d  
 	 	 	 i f   ( R a n g e C a n d l e S t a r t   >   R a n g e C a n d l e E n d )   {  
 	 	 	 	 i n t   c t m p   =   R a n g e C a n d l e E n d ;  
 	 	 	 	 R a n g e C a n d l e E n d   =   R a n g e C a n d l e S t a r t ;  
 	 	 	 	 R a n g e C a n d l e S t a r t   =   c t m p ;  
 	 	 	 }  
 	 	  
 	 	 	 i f   ( R a n g e V a l u e   = =   " m a x " )  
 	 	 	 {  
 	 	 	 	 r e t v a l   =   - E M P T Y _ V A L U E ;  
 	 	 	 	  
 	 	 	 	 f o r   ( i   =   R a n g e C a n d l e S t a r t ;   i   < =   R a n g e C a n d l e E n d ;   i + + )  
 	 	 	 	 {  
 	 	 	 	 	 i v a l   =   i C u s t o m ( s y m b o l ,   t i m e f r a m e ,   " T M A _ F a i r   "   ,   ( s t r i n g ) " c u r r e n t   t i m e   f r a m e " ,   ( i n t ) 3 0 ,   ( i n t ) P R I C E _ C L O S E ,   ( d o u b l e ) 2 . 0 ,   ( i n t ) 1 0 0 ,   ( b o o l ) t r u e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   b u f f e r ,   s h i f t   +   i ) ;  
 	 	 	 	 	 i f   ( i v a l   = =   E M P T Y _ V A L U E   | |   i v a l   = =   0 )   { c o n t i n u e ; }  
 	 	 	 	 	 i f   ( i v a l   >   r e t v a l )   { r e t v a l   =   i v a l ; }  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i f   ( r e t v a l   = =   - E M P T Y _ V A L U E )   { r e t v a l   =   E M P T Y _ V A L U E ; }  
 	 	 	 }  
 	 	 	 e l s e   i f   ( R a n g e V a l u e   = =   " m i n " )  
 	 	 	 {  
 	 	 	 	 r e t v a l   =   E M P T Y _ V A L U E ;  
 	 	 	 	  
 	 	 	 	 f o r   ( i   =   R a n g e C a n d l e S t a r t ;   i   < =   R a n g e C a n d l e E n d ;   i + + )  
 	 	 	 	 {  
 	 	 	 	 	 i v a l   =   i C u s t o m ( s y m b o l ,   t i m e f r a m e ,   " T M A _ F a i r   "   ,   ( s t r i n g ) " c u r r e n t   t i m e   f r a m e " ,   ( i n t ) 3 0 ,   ( i n t ) P R I C E _ C L O S E ,   ( d o u b l e ) 2 . 0 ,   ( i n t ) 1 0 0 ,   ( b o o l ) t r u e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   b u f f e r ,   s h i f t   +   i ) ;  
 	 	 	 	 	 i f   ( i v a l   = =   E M P T Y _ V A L U E   | |   i v a l   = =   0 )   { c o n t i n u e ; }  
 	 	 	 	 	 i f   ( i v a l   <   r e t v a l )   { r e t v a l   =   i v a l ; }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	 e l s e   i f   ( M o d e O u t p u t   = =   " r a n g e _ t i m e " )  
 	 	 {  
 	 	 	 d a t e t i m e   o f f s e t   =   0 ;  
 	 	 	 i f   ( R a n g e T i m e S o u r c e   = =   " g m t " )   { o f f s e t   =   ( i n t ) ( T i m e C u r r e n t ( )   -   T i m e L o c a l ( )   +   T i m e G M T O f f s e t ( ) ) ; }  
 	 	 	 e l s e   i f   ( R a n g e T i m e S o u r c e   = =   " s e r v e r " )   { o f f s e t   =   ( i n t ) ( T i m e C u r r e n t ( )   -   T i m e L o c a l ( ) ) ; }  
 	 	 	  
 	 	 	 d a t e t i m e   t i m e 1   =   S t r i n g T o T i m e ( R a n g e T i m e S t a r t ) - ( d a t e t i m e ) ( 8 6 4 0 0 * R a n g e D a y O f f s e t )   +   o f f s e t ;  
 	 	 	 d a t e t i m e   t i m e 2   =   S t r i n g T o T i m e ( R a n g e T i m e E n d ) - ( d a t e t i m e ) ( 8 6 4 0 0 * R a n g e D a y O f f s e t )   +   o f f s e t ;  
 	 	 	  
 	 	 	 i n t   x 1   =   i B a r S h i f t ( s y m b o l ,   t i m e f r a m e ,   t i m e 1 ,   f a l s e ) ;  
 	 	 	 i n t   x 2   =   i B a r S h i f t ( s y m b o l ,   t i m e f r a m e ,   t i m e 2 ,   f a l s e ) ;  
 	 	 	 i f   ( x 1 < x 2 )   { x 1 = i B a r S h i f t ( s y m b o l , t i m e f r a m e , ( t i m e 1 - 8 6 4 0 0 ) , f a l s e ) ; }  
 	 	 	  
 	 	 	 i f   ( R a n g e V a l u e   = =   " m a x " )  
 	 	 	 {  
 	 	 	 	 r e t v a l   =   - E M P T Y _ V A L U E ;  
 	 	 	 	  
 	 	 	 	 f o r   ( i = x 2 ;   i < = x 1 ;   i + + )  
 	 	 	 	 {  
 	 	 	 	 	 i v a l   =   i C u s t o m ( s y m b o l ,   t i m e f r a m e ,   " T M A _ F a i r   "   ,   ( s t r i n g ) " c u r r e n t   t i m e   f r a m e " ,   ( i n t ) 3 0 ,   ( i n t ) P R I C E _ C L O S E ,   ( d o u b l e ) 2 . 0 ,   ( i n t ) 1 0 0 ,   ( b o o l ) t r u e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   b u f f e r ,   s h i f t   +   i ) ;  
 	 	 	 	 	 i f   ( i v a l   = =   E M P T Y _ V A L U E   | |   i v a l   = =   0 )   { c o n t i n u e ; }  
 	 	 	 	 	 i f   ( i v a l   >   r e t v a l )   { r e t v a l   =   i v a l ; }  
 	 	 	 	 }  
 	 	 	 	  
 	 	 	 	 i f   ( r e t v a l   = =   - E M P T Y _ V A L U E )   { r e t v a l   =   E M P T Y _ V A L U E ; }  
 	 	 	 }  
 	 	 	 e l s e   i f   ( R a n g e V a l u e   = =   " m i n " )  
 	 	 	 {  
 	 	 	 	 r e t v a l   =   E M P T Y _ V A L U E ;  
 	 	 	 	  
 	 	 	 	 f o r   ( i = x 2 ;   i < = x 1 ;   i + + )  
 	 	 	 	 {  
 	 	 	 	 	 i v a l   =   i C u s t o m ( s y m b o l ,   t i m e f r a m e ,   " T M A _ F a i r   "   ,   ( s t r i n g ) " c u r r e n t   t i m e   f r a m e " ,   ( i n t ) 3 0 ,   ( i n t ) P R I C E _ C L O S E ,   ( d o u b l e ) 2 . 0 ,   ( i n t ) 1 0 0 ,   ( b o o l ) t r u e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   ( b o o l ) f a l s e ,   b u f f e r ,   s h i f t   +   i ) ;  
 	 	 	 	 	 i f   ( i v a l   = =   E M P T Y _ V A L U E   | |   i v a l   = =   0 )   { c o n t i n u e ; }  
 	 	 	 	 	 i f   ( i v a l   <   r e t v a l )   { r e t v a l   =   i v a l ; }  
 	 	 	 	 }  
 	 	 	 }  
 	 	 }  
 	 	  
 	 	 r e t u r n   ( r e t v a l ) ;  
 	 }  
 } ;  
  
 / /   " N u m e r i c "   m o d e l  
 c l a s s   M D L I C _ v a l u e _ v a l u e  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 d o u b l e   V a l u e ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ v a l u e _ v a l u e ( )  
 	 {  
 	 	 V a l u e   =   1 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 d o u b l e   _ e x e c u t e _ ( )  
 	 {  
 	 	 r e t u r n   V a l u e ;  
 	 }  
 } ;  
  
 / /   " T i m e "   m o d e l  
 c l a s s   M D L I C _ v a l u e _ t i m e  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 i n t   M o d e T i m e ;  
 	 i n t   T i m e S o u r c e ;  
 	 s t r i n g   T i m e S t a m p ;  
 	 i n t   T i m e C a n d l e I D ;  
 	 s t r i n g   T i m e M a r k e t ;  
 	 E N U M _ T I M E F R A M E S   T i m e C a n d l e T i m e f r a m e ;  
 	 i n t   T i m e C o m p o n e n t Y e a r ;  
 	 i n t   T i m e C o m p o n e n t M o n t h ;  
 	 i n t   T i m e C o m p o n e n t D a y ;  
 	 i n t   T i m e C o m p o n e n t H o u r ;  
 	 i n t   T i m e C o m p o n e n t M i n u t e ;  
 	 i n t   T i m e C o m p o n e n t S e c o n d ;  
 	 i n t   M o d e T i m e S h i f t ;  
 	 i n t   T i m e S h i f t Y e a r s ;  
 	 i n t   T i m e S h i f t M o n t h s ;  
 	 i n t   T i m e S h i f t W e e k s ;  
 	 i n t   T i m e S h i f t D a y s ;  
 	 i n t   T i m e S h i f t H o u r s ;  
 	 i n t   T i m e S h i f t M i n u t e s ;  
 	 i n t   T i m e S h i f t S e c o n d s ;  
 	 b o o l   T i m e S k i p W e e k d a y s ;  
 	 / *   S t a t i c   P a r a m e t e r s   * /  
 	 d a t e t i m e   r e t v a l ;  
 	 d a t e t i m e   r e t v a l 0 ;  
 	 i n t   M o d e T i m e 0 ;  
 	 i n t   s m o d e s h i f t ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ v a l u e _ t i m e ( )  
 	 {  
 	 	 M o d e T i m e   =   0 ;  
 	 	 T i m e S o u r c e   =   0 ;  
 	 	 T i m e S t a m p   =   " 0 0 : 0 0 " ;  
 	 	 T i m e C a n d l e I D   =   1 ;  
 	 	 T i m e M a r k e t   =   " " ;  
 	 	 T i m e C a n d l e T i m e f r a m e   =   0 ;  
 	 	 T i m e C o m p o n e n t Y e a r   =   0 ;  
 	 	 T i m e C o m p o n e n t M o n t h   =   0 ;  
 	 	 T i m e C o m p o n e n t D a y   =   0 ;  
 	 	 T i m e C o m p o n e n t H o u r   =   1 2 ;  
 	 	 T i m e C o m p o n e n t M i n u t e   =   0 ;  
 	 	 T i m e C o m p o n e n t S e c o n d   =   0 ;  
 	 	 M o d e T i m e S h i f t   =   0 ;  
 	 	 T i m e S h i f t Y e a r s   =   0 ;  
 	 	 T i m e S h i f t M o n t h s   =   0 ;  
 	 	 T i m e S h i f t W e e k s   =   0 ;  
 	 	 T i m e S h i f t D a y s   =   0 ;  
 	 	 T i m e S h i f t H o u r s   =   0 ;  
 	 	 T i m e S h i f t M i n u t e s   =   0 ;  
 	 	 T i m e S h i f t S e c o n d s   =   0 ;  
 	 	 T i m e S k i p W e e k d a y s   =   f a l s e ;  
 	 	 / *   S t a t i c   P a r a m e t e r s   ( i n i t i a l   v a l u e )   * /  
 	 	 r e t v a l   =     0 ;  
 	 	 r e t v a l 0   =     0 ;  
 	 	 M o d e T i m e 0   =     0 ;  
 	 	 s m o d e s h i f t   =     0 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 d a t e t i m e   _ e x e c u t e _ ( )  
 	 {  
 	 	 i f ( M o d e T i m e = = 0 )   {  
 	 	                 i f   ( T i m e S o u r c e   = =   0 )   { r e t v a l   =   T i m e C u r r e n t ( ) ; }  
 	 	 	 e l s e   i f   ( T i m e S o u r c e   = =   1 )   { r e t v a l   =   T i m e L o c a l ( ) ; }  
 	 	 	 e l s e   i f   ( T i m e S o u r c e   = =   2 )   { r e t v a l   =   T i m e G M T ( ) ; }  
 	 	 }  
 	 	 e l s e   i f ( M o d e T i m e = = 1 )   {  
 	 	             r e t v a l     =   S t r i n g T o T i m e ( T i m e S t a m p ) ;  
 	 	             r e t v a l 0   =   r e t v a l ;  
 	 	 }  
 	 	 e l s e   i f ( M o d e T i m e = = 2 )   {  
 	 	       r e t v a l   =   T i m e F r o m C o m p o n e n t s ( T i m e S o u r c e ,   T i m e C o m p o n e n t Y e a r ,   T i m e C o m p o n e n t M o n t h ,   T i m e C o m p o n e n t D a y ,   T i m e C o m p o n e n t H o u r ,   T i m e C o m p o n e n t M i n u t e ,   T i m e C o m p o n e n t S e c o n d ) ;  
 	 	 }  
 	 	 e l s e   i f ( M o d e T i m e = = 3 )   {  
 	 	 	  
 	 	 	  
 	 	       i f   ( T i m e M a r k e t   = =   " " )   { T i m e M a r k e t   =   S y m b o l ( ) ; }  
 	 	       r e t v a l   =   i T i m e ( T i m e M a r k e t , T i m e C a n d l e T i m e f r a m e , T i m e C a n d l e I D ) ;  
 	 	 }  
 	 	  
 	 	 i f   ( M o d e T i m e S h i f t > 0 )   {  
 	 	       i n t   s h = 1 ;  
 	 	       i f   ( M o d e T i m e S h i f t = = 1 )   { s h = - 1 ; }  
 	 	        
 	 	       s t a t i c   i n t   y e a r s 0 = 0 , m o n t h s 0 = 0 ;  
 	 	        
 	 	       i f   (  
 	 	             M o d e T i m e S h i f t ! = s m o d e s h i f t  
 	 	             | |   T i m e S h i f t Y e a r s ! = y e a r s 0   | |   T i m e S h i f t M o n t h s ! = m o n t h s 0  
 	 	       )  
 	 	       {  
 	 	             y e a r s 0 = T i m e S h i f t Y e a r s ;   m o n t h s 0 = T i m e S h i f t M o n t h s ;  
 	 	              
 	 	             i f   ( T i m e S h i f t Y e a r s > 0   | |   T i m e S h i f t M o n t h s > 0 )   {  
 	 	                   i n t   y e a r = 0 , m o n t h = 0 , w e e k = 0 , d a y = 0 , h o u r = 0 , m i n u t e = 0 , s e c o n d = 0 ;  
 	 	                   i f   ( M o d e T i m e = = 3 )   {  
 	 	                         y e a r = T i m e C o m p o n e n t Y e a r ;   m o n t h = T i m e C o m p o n e n t Y e a r ;         d a y = T i m e C o m p o n e n t D a y ;  
 	 	                         h o u r = T i m e C o m p o n e n t H o u r ;   m i n u t e = T i m e C o m p o n e n t M i n u t e ;   s e c o n d = T i m e C o m p o n e n t S e c o n d ;  
 	 	                   }  
 	 	                   e l s e   {  
 	 	                         y e a r = T i m e Y e a r ( r e t v a l ) ;   m o n t h = T i m e M o n t h ( r e t v a l ) ;       d a y = T i m e D a y ( r e t v a l ) ;  
 	 	                         h o u r = T i m e H o u r ( r e t v a l ) ;   m i n u t e = T i m e M i n u t e ( r e t v a l ) ;   s e c o n d = T i m e S e c o n d s ( r e t v a l ) ;  
 	 	                   }  
 	 	                    
 	 	                   y e a r     =   y e a r   +   T i m e S h i f t Y e a r s   *   s h ;  
 	 	                   m o n t h   =   m o n t h   +   T i m e S h i f t M o n t h s   *   s h ;  
 	 	  
 	 	                   i f   ( m o n t h < 0 )   { m o n t h = 1 2 - m o n t h ; }  
 	 	                   e l s e   i f   ( m o n t h > 1 2 )   { m o n t h = m o n t h - 1 2 ; }  
 	 	  
 	 	                   r e t v a l   =   S t r i n g T o T i m e ( I n t e g e r T o S t r i n g ( y e a r ) + " . " + I n t e g e r T o S t r i n g ( m o n t h ) + " . " + I n t e g e r T o S t r i n g ( d a y ) + "   " + I n t e g e r T o S t r i n g ( h o u r ) + " : " + I n t e g e r T o S t r i n g ( m i n u t e ) + " : " + I n t e g e r T o S t r i n g ( s e c o n d ) ) ;  
 	 	             }  
 	 	       }  
 	 	  
 	 	       r e t v a l   =   r e t v a l   +   T i m e S h i f t W e e k s * 6 0 4 8 0 0 * s h + T i m e S h i f t D a y s * 8 6 4 0 0 * s h + T i m e S h i f t H o u r s * 3 6 0 0 * s h + T i m e S h i f t M i n u t e s * 6 0 * s h + T i m e S h i f t S e c o n d s * s h ;  
 	 	              
 	 	       i f   ( T i m e S k i p W e e k d a y s = = t r u e )   {  
 	 	             i n t   w e e k d a y = T i m e D a y O f W e e k ( r e t v a l ) ;  
 	 	              
 	 	             i f   ( s h > 0 )   {   / /   f o r w a r d  
 	 	                   i f   ( w e e k d a y = = 0 )   { r e t v a l = r e t v a l + 8 6 4 0 0 ; }  
 	 	                   e l s e   i f   ( w e e k d a y = = 6 )   { r e t v a l = r e t v a l + 1 7 2 8 0 0 ; }  
 	 	             }  
 	 	             e l s e   i f   ( s h < 0 )   {   / /   b a c k  
 	 	                   i f   ( w e e k d a y = = 0 )   { r e t v a l = r e t v a l - 1 7 2 8 0 0 ; }  
 	 	                   e l s e   i f   ( w e e k d a y = = 6 )   { r e t v a l = r e t v a l - 8 6 4 0 0 ; }  
 	 	             }  
 	 	       }  
 	 	 }  
 	 	  
 	 	 s m o d e s h i f t   =   M o d e T i m e S h i f t ;  
 	 	 M o d e T i m e 0     =   M o d e T i m e ;  
 	 	  
 	 	 r e t u r n   ( d a t e t i m e ) r e t v a l ;  
 	 }  
 } ;  
  
 / /   " P a r a b o l i c   S A R "   m o d e l  
 c l a s s   M D L I C _ i n d i c a t o r s _ i S A R  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 d o u b l e   S t e p ;  
 	 d o u b l e   M a x i m u m ;  
 	 s t r i n g   S Y M B O L ;  
 	 E N U M _ T I M E F R A M E S   T I M E F R A M E ;  
 	 i n t   S H I F T ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ i n d i c a t o r s _ i S A R ( )  
 	 {  
 	 	 S t e p   =   0 . 0 2 ;  
 	 	 M a x i m u m   =   0 . 2 ;  
 	 	 S Y M B O L   =   C u r r e n t S y m b o l ( ) ;  
 	 	 T I M E F R A M E   =   C u r r e n t T i m e f r a m e ( ) ;  
 	 	 S H I F T   =   0 ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 d o u b l e   _ e x e c u t e _ ( )  
 	 {  
 	 	 r e t u r n   i S A R ( S Y M B O L , T I M E F R A M E , S t e p , M a x i m u m , S H I F T + F X D _ M O R E _ S H I F T ) ;  
 	 }  
 } ;  
  
 / /   " P i p s "   m o d e l  
 c l a s s   M D L I C _ v a l u e _ p o i n t s  
 {  
 	 p u b l i c :   / *   I n p u t   P a r a m e t e r s   * /  
 	 d o u b l e   V a l u e ;  
 	 i n t   M o d e V a l u e ;  
 	 s t r i n g   S Y M B O L ;  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   r )   { r e t u r n ; }  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 M D L I C _ v a l u e _ p o i n t s ( )  
 	 {  
 	 	 V a l u e   =   1 0 ;  
 	 	 M o d e V a l u e   =   1 ;  
 	 	 S Y M B O L   =   C u r r e n t S y m b o l ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   T h e   m a i n   m e t h o d   * /  
 	 d o u b l e   _ e x e c u t e _ ( )  
 	 {  
 	 	 d o u b l e   r e t v a l   =   0 ;  
 	 	  
 	 	           i f   ( M o d e V a l u e   = =   0 )   { r e t v a l   =   V a l u e ; }  
 	 	 e l s e   i f   ( M o d e V a l u e   = =   1 )   { r e t v a l   =   V a l u e * S y m b o l I n f o D o u b l e ( S Y M B O L , S Y M B O L _ P O I N T ) * P i p V a l u e ( S Y M B O L ) ; }  
 	 	  
 	 	 r e t u r n   r e t v a l ;  
 	 }  
 } ;  
  
  
 / / - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  
  
 / /   B l o c k   1   ( O n c e   p e r   t i c k )  
 c l a s s   B l o c k 0 :   p u b l i c   M D L _ O n c e P e r T i c k < s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 4 ]   =   { 1 , 1 0 , 2 , 9 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 1 ] . r u n ( 0 ) ;  
 	 	 	 _ b l o c k s _ [ 2 ] . r u n ( 0 ) ;  
 	 	 	 _ b l o c k s _ [ 9 ] . r u n ( 0 ) ;  
 	 	 	 _ b l o c k s _ [ 1 0 ] . r u n ( 0 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
 	 	 S Y M B O L   =   C u r r e n t S y m b o l ( ) ;  
 	 }  
 } ;  
  
 / /   B l o c k   2   ( C o n d i t i o n )  
 c l a s s   B l o c k 1 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ i n d i c a t o r s _ i M A , d o u b l e , s t r i n g , M D L I C _ m y i n d i c a t o r s _ m y i n d i c a t o r s _ 1 , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 2 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 5 , 8 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 L o . M A p e r i o d   =   1 ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " x < " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   {  
 	 	 L o . M A m e t h o d   =   M O D E _ S M A ;  
 	 	 L o . A p p l i e d P r i c e   =   P R I C E _ H I G H ;  
 	 	 L o . S Y M B O L   =   C u r r e n t S y m b o l ( ) ;  
 	 	 L o . T I M E F R A M E   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   {  
 	 	 R o . S Y M B O L   =   C u r r e n t S y m b o l ( ) ;  
 	 	 R o . T I M E F R A M E   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   R o . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 5 ] . r u n ( 1 ) ;  
 	 	 	 _ b l o c k s _ [ 8 ] . r u n ( 1 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
 	 	 / *   I n p u t s ,   m o d i f i e d   i n t o   t h e   c o d e   m u s t   b e   s e t   h e r e   e v e r y   t i m e   * /  
 	 	 R o . R a n g e C a n d l e S t a r t   =   0 ;  
 	 	 R o . R a n g e C a n d l e E n d   =   1 0 ;  
 	 }  
 } ;  
  
 / /   B l o c k   3   ( C o n d i t i o n )  
 c l a s s   B l o c k 2 :   p u b l i c   M D L _ C o n d i t i o n < M D L I C _ i n d i c a t o r s _ i M A , d o u b l e , s t r i n g , M D L I C _ m y i n d i c a t o r s _ m y i n d i c a t o r s _ 2 , d o u b l e , i n t >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 2 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   2 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 3 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 2 ]   =   { 6 , 7 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 L o . M A p e r i o d   =   1 ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 c o m p a r e   =   " x < " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ L o _ ( )   {  
 	 	 L o . M A m e t h o d   =   M O D E _ S M A ;  
 	 	 L o . A p p l i e d P r i c e   =   P R I C E _ L O W ;  
 	 	 L o . S Y M B O L   =   C u r r e n t S y m b o l ( ) ;  
 	 	 L o . T I M E F R A M E   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   L o . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ R o _ ( )   {  
 	 	 R o . S Y M B O L   =   C u r r e n t S y m b o l ( ) ;  
 	 	 R o . T I M E F R A M E   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   R o . _ e x e c u t e _ ( ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 6 ] . r u n ( 2 ) ;  
 	 	 	 _ b l o c k s _ [ 7 ] . r u n ( 2 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
 	 	 / *   I n p u t s ,   m o d i f i e d   i n t o   t h e   c o d e   m u s t   b e   s e t   h e r e   e v e r y   t i m e   * /  
 	 	 R o . R a n g e C a n d l e S t a r t   =   0 ;  
 	 	 R o . R a n g e C a n d l e E n d   =   1 0 ;  
 	 }  
 } ;  
  
 / /   B l o c k   4   ( S e l l   n o w )  
 c l a s s   B l o c k 3 :   p u b l i c   M D L _ S e l l N o w < s t r i n g , s t r i n g , s t r i n g , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , i n t , i n t , d o u b l e , b o o l , d o u b l e , d o u b l e , b o o l , d o u b l e , s t r i n g , b o o l , d o u b l e , s t r i n g , s t r i n g , b o o l , d o u b l e , s t r i n g , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , i n t , i n t , i n t , M D L I C _ v a l u e _ t i m e , d a t e t i m e , d o u b l e , s t r i n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 3 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   3 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 4 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 d V o l u m e S i z e . V a l u e   =   0 . 1 ;  
 	 	 d p S t o p L o s s . V a l u e   =   1 0 0 ;  
 	 	 d d S t o p L o s s . V a l u e   =   0 . 0 1 ;  
 	 	 d p T a k e P r o f i t . V a l u e   =   1 0 0 ;  
 	 	 d d T a k e P r o f i t . V a l u e   =   0 . 0 1 ;  
 	 	 d E x p . M o d e T i m e S h i f t   =   2 ;  
 	 	 d E x p . T i m e S h i f t D a y s   =   1 ;  
 	 	 d E x p . T i m e S k i p W e e k d a y s   =   t r u e ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 V o l u m e M o d e   =   " b l o c k - b a l a n c e " ;  
 	 	 m m M g R e s e t O n L o s s   =   5 ;  
 	 	 T a k e P r o f i t M o d e   =   " n o n e " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ d V o l u m e S i z e _ ( )   { r e t u r n   d V o l u m e S i z e . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d l S t o p L o s s _ ( )   { r e t u r n   d l S t o p L o s s . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d p S t o p L o s s _ ( )   { r e t u r n   d p S t o p L o s s . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d d S t o p L o s s _ ( )   { r e t u r n   d d S t o p L o s s . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d l T a k e P r o f i t _ ( )   { r e t u r n   d l T a k e P r o f i t . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d p T a k e P r o f i t _ ( )   { r e t u r n   d p T a k e P r o f i t . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d d T a k e P r o f i t _ ( )   { r e t u r n   d d T a k e P r o f i t . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d a t e t i m e   _ d E x p _ ( )   { r e t u r n   d E x p . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
 	 	 S Y M B O L   =   C u r r e n t S y m b o l ( ) ;  
 	 	 V o l u m e B l o c k P e r c e n t   =   _ e x t e r n s : : i n p 4 _ V o l u m e B l o c k P e r c e n t ;  
 	 	 S t o p L o s s P i p s   =   _ e x t e r n s : : i n p 4 _ S t o p L o s s P i p s ;  
 	 	 A r r o w C o l o r S e l l   =   R e d ;  
 	 }  
 } ;  
  
 / /   B l o c k   5   ( B u y   n o w )  
 c l a s s   B l o c k 4 :   p u b l i c   M D L _ B u y N o w < s t r i n g , s t r i n g , s t r i n g , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , d o u b l e , i n t , i n t , d o u b l e , b o o l , d o u b l e , d o u b l e , b o o l , d o u b l e , s t r i n g , b o o l , d o u b l e , s t r i n g , s t r i n g , b o o l , d o u b l e , s t r i n g , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , i n t , i n t , i n t , M D L I C _ v a l u e _ t i m e , d a t e t i m e , d o u b l e , s t r i n g , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 4 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   4 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 5 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 d V o l u m e S i z e . V a l u e   =   0 . 1 ;  
 	 	 d p S t o p L o s s . V a l u e   =   1 0 0 ;  
 	 	 d d S t o p L o s s . V a l u e   =   0 . 0 1 ;  
 	 	 d p T a k e P r o f i t . V a l u e   =   1 0 0 ;  
 	 	 d d T a k e P r o f i t . V a l u e   =   0 . 0 1 ;  
 	 	 d E x p . M o d e T i m e S h i f t   =   2 ;  
 	 	 d E x p . T i m e S h i f t D a y s   =   1 ;  
 	 	 d E x p . T i m e S k i p W e e k d a y s   =   t r u e ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 V o l u m e M o d e   =   " b l o c k - b a l a n c e " ;  
 	 	 m m M g R e s e t O n L o s s   =   5 ;  
 	 	 T a k e P r o f i t M o d e   =   " n o n e " ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ d V o l u m e S i z e _ ( )   { r e t u r n   d V o l u m e S i z e . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d l S t o p L o s s _ ( )   { r e t u r n   d l S t o p L o s s . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d p S t o p L o s s _ ( )   { r e t u r n   d p S t o p L o s s . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d d S t o p L o s s _ ( )   { r e t u r n   d d S t o p L o s s . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d l T a k e P r o f i t _ ( )   { r e t u r n   d l T a k e P r o f i t . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d p T a k e P r o f i t _ ( )   { r e t u r n   d p T a k e P r o f i t . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ d d T a k e P r o f i t _ ( )   { r e t u r n   d d T a k e P r o f i t . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d a t e t i m e   _ d E x p _ ( )   { r e t u r n   d E x p . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
 	 	 S Y M B O L   =   C u r r e n t S y m b o l ( ) ;  
 	 	 V o l u m e B l o c k P e r c e n t   =   _ e x t e r n s : : i n p 5 _ V o l u m e B l o c k P e r c e n t ;  
 	 	 S t o p L o s s P i p s   =   _ e x t e r n s : : i n p 5 _ S t o p L o s s P i p s ;  
 	 	 A r r o w C o l o r B u y   =   B l u e ;  
 	 }  
 } ;  
  
 / /   B l o c k   6   ( N o   t r a d e )  
 c l a s s   B l o c k 5 :   p u b l i c   M D L _ N o O p e n e d O r d e r s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 5 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   5 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 6 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 3 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 3 ] . r u n ( 5 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
 	 	 S Y M B O L   =   C u r r e n t S y m b o l ( ) ;  
 	 }  
 } ;  
  
 / /   B l o c k   7   ( N o   t r a d e )  
 c l a s s   B l o c k 6 :   p u b l i c   M D L _ N o O p e n e d O r d e r s < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 6 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   6 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 7 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   F i l l   t h e   l i s t   o f   o u t b o u n d   b l o c k s  
 	 	 i n t   _ _ _ o u t b o u n d _ b l o c k s [ 1 ]   =   { 4 } ;  
 	 	 A r r a y C o p y ( _ _ o u t b o u n d _ b l o c k s ,   _ _ _ o u t b o u n d _ b l o c k s ) ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 	 i f   ( v a l u e   = =   1 )   {  
 	 	 	 _ b l o c k s _ [ 4 ] . r u n ( 6 ) ;  
 	 	 }  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
 	 	 S Y M B O L   =   C u r r e n t S y m b o l ( ) ;  
 	 }  
 } ;  
  
 / /   B l o c k   8   ( C l o s e   t r a d e s )  
 c l a s s   B l o c k 7 :   p u b l i c   M D L _ C l o s e O p e n e d < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , i n t , d o u b l e , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 7 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   7 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 8 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 B u y s O r S e l l s   =   " s e l l s " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
 	 	 S Y M B O L   =   C u r r e n t S y m b o l ( ) ;  
 	 	 A r r o w C o l o r   =   D e e p P i n k ;  
 	 }  
 } ;  
  
 / /   B l o c k   9   ( C l o s e   t r a d e s )  
 c l a s s   B l o c k 8 :   p u b l i c   M D L _ C l o s e O p e n e d < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , i n t , d o u b l e , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 8 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   8 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 9 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
 	 	 / /   B l o c k   i n p u t   p a r a m e t e r s  
 	 	 B u y s O r S e l l s   =   " b u y s " ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
 	 	 S Y M B O L   =   C u r r e n t S y m b o l ( ) ;  
 	 	 A r r o w C o l o r   =   D e e p P i n k ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 0   ( B r e a k   e v e n   p o i n t   ( e a c h   t r a d e ) )  
 c l a s s   B l o c k 9 :   p u b l i c   M D L _ B r e a k E v e n P o i n t < s t r i n g , d o u b l e , d o u b l e , d o u b l e , s t r i n g , d o u b l e , s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 9 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   9 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 0 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
 	 }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
 	 	 O n P r o f i t P i p s   =   _ e x t e r n s : : i n p 1 0 _ O n P r o f i t P i p s ;  
 	 	 S Y M B O L   =   C u r r e n t S y m b o l ( ) ;  
 	 }  
 } ;  
  
 / /   B l o c k   1 1   ( T r a i l i n g   s t o p   ( e a c h   t r a d e ) )  
 c l a s s   B l o c k 1 0 :   p u b l i c   M D L _ T r a i l i n g S t o p 2 < s t r i n g , s t r i n g , s t r i n g , s t r i n g , s t r i n g , i n t , i n t , s t r i n g , d o u b l e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , M D L I C _ i n d i c a t o r s _ i S A R , d o u b l e , M D L I C _ v a l u e _ p o i n t s , d o u b l e , s t r i n g , d o u b l e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , s t r i n g , d o u b l e , d o u b l e , M D L I C _ v a l u e _ v a l u e , d o u b l e , c o l o r >  
 {  
  
 	 p u b l i c :   / *   C o n s t r u c t o r   * /  
 	 B l o c k 1 0 ( )   {  
 	 	 _ _ b l o c k _ n u m b e r   =   1 0 ;  
 	 	 _ _ b l o c k _ u s e r _ n u m b e r   =   " 1 1 " ;  
 	 	 _ b e f o r e E x e c u t e E n a b l e d   =   t r u e ;  
  
 	 	 / /   I C   i n p u t   p a r a m e t e r s  
 	 	 f t D i g i t s . V a l u e   =   4 0 ;  
 	 	 f t S t a r t . V a l u e   =   0 ;  
 	 	 f t T P . V a l u e   =   0 ;  
 	 }  
  
 	 p u b l i c :   / *   C u s t o m   m e t h o d s   * /  
 	 v i r t u a l   d o u b l e   _ f t S t o p _ ( )   {  
 	 	 f t S t o p . S Y M B O L   =   C u r r e n t S y m b o l ( ) ;  
 	 	 f t S t o p . T I M E F R A M E   =   C u r r e n t T i m e f r a m e ( ) ;  
  
 	 	 r e t u r n   f t S t o p . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ f t D i g i t s _ ( )   {  
 	 	 f t D i g i t s . S Y M B O L   =   C u r r e n t S y m b o l ( ) ;  
  
 	 	 r e t u r n   f t D i g i t s . _ e x e c u t e _ ( ) ;  
 	 }  
 	 v i r t u a l   d o u b l e   _ f t S t a r t _ ( )   { r e t u r n   f t S t a r t . _ e x e c u t e _ ( ) ; }  
 	 v i r t u a l   d o u b l e   _ f t T P _ ( )   { r e t u r n   f t T P . _ e x e c u t e _ ( ) ; }  
  
 	 p u b l i c :   / *   C a l l b a c k   &   R u n   * /  
 	 v i r t u a l   v o i d   _ c a l l b a c k _ ( i n t   v a l u e )   {  
 	 }  
  
 	 v i r t u a l   v o i d   _ b e f o r e E x e c u t e _ ( )  
 	 {  
 	 	 S Y M B O L   =   C u r r e n t S y m b o l ( ) ;  
 	 	 t S t o p P i p s   =   _ e x t e r n s : : i n p 1 1 _ t S t o p P i p s ;  
 	 	 t S t e p P i p s   =   _ e x t e r n s : : i n p 1 1 _ t S t e p P i p s ;  
 	 	 L e v e l C o l o r   =   D e e p P i n k ;  
 	 }  
 } ;  
  
  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
 / /   + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +   / /  
 / /   |                                                                                                       F u n c t i o n s                                                                                                             |   / /  
 / /   |                                                                   S y s t e m   a n d   C u s t o m   f u n c t i o n s   u s e d   i n   t h e   p r o g r a m                                                                     |   / /  
 / /   + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +   / /  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * /  
  
  
 d o u b l e   A c c o u n t B a l a n c e A t S t a r t ( ) 
 { 
       / /   T h i s   f u n c t i o n   M U S T   b e   r u n   o n c e   a t   p o g r a m ' s   s t a r t 
 	 s t a t i c   d o u b l e   m e m o r y = 0 ; 
       i f   ( m e m o r y = = 0 )   { m e m o r y = A c c o u n t B a l a n c e ( ) ; } 
       r e t u r n ( m e m o r y ) ; 
 }  
  
 d o u b l e   A l i g n L o t s ( d o u b l e   l o t s ,   d o u b l e   l o w e r l o t s = 0 ,   d o u b l e   u p p e r l o t s = 0 ) 
 { 
 	 s t r i n g   s y m b o l = G e t S y m b o l ( ) ; 
 
       d o u b l e   L o t S t e p = M a r k e t I n f o ( s y m b o l , M O D E _ L O T S T E P ) ; 
       d o u b l e   L o t S i z e = M a r k e t I n f o ( s y m b o l , M O D E _ L O T S I Z E ) ; 
       d o u b l e   M i n L o t s = M a r k e t I n f o ( s y m b o l , M O D E _ M I N L O T ) ; 
       d o u b l e   M a x L o t s = M a r k e t I n f o ( s y m b o l , M O D E _ M A X L O T ) ; 
       d o u b l e   m a r g i n _ r e q u i r e d = M a r k e t I n f o ( s y m b o l , M O D E _ M A R G I N R E Q U I R E D ) ; 
       
 	 i f   ( l o t s = = E M P T Y _ V A L U E )   { l o t s = 0 ; } 
 	 
       l o t s = M a t h R o u n d ( l o t s / L o t S t e p ) * L o t S t e p ; 
       
       i f   ( l o t s < M i n L o t s )   { l o t s = M i n L o t s ; } 
       i f   ( l o t s > M a x L o t s )   { l o t s = M a x L o t s ; } 
 
       i f   ( l o w e r l o t s   >   0 ) 
       { 
             l o w e r l o t s   =   M a t h R o u n d ( l o w e r l o t s / L o t S t e p ) * L o t S t e p ; 
             i f   ( l o t s   <   l o w e r l o t s )   { l o t s   =   l o w e r l o t s ; } 
       } 
       i f   ( u p p e r l o t s   >   0 ) 
       { 
             u p p e r l o t s   =   M a t h R o u n d ( u p p e r l o t s / L o t S t e p ) * L o t S t e p ; 
             i f   ( l o t s   >   u p p e r l o t s )   { l o t s   =   u p p e r l o t s ; } 
       } 
       
       r e t u r n   ( l o t s ) ; 
 }  
  
 d o u b l e   A l i g n S t o p L o s s ( 
       s t r i n g   s y m b o l , 
       i n t   t y p e , 
       d o u b l e   p r i c e , 
       d o u b l e   s l o = 0 ,   / /   o r i g i n a l   s l ,   u s e d   w h e n   m o d i f y i n g 
       d o u b l e   s l l = 0 , 
       d o u b l e   s l p = 0 , 
       b o o l   c o n s i d e r _ f r e e z e l e v e l = f a l s e 
       ) 
 { 
       d o u b l e   s l = 0 ; 
 
       i f   ( M a t h A b s ( s l l ) = = E M P T Y _ V A L U E )   { s l l = 0 ; } 
       i f   ( M a t h A b s ( s l p ) = = E M P T Y _ V A L U E )   { s l p = 0 ; } 
       i f   ( s l l = = 0   & &   s l p = = 0 )   { r e t u r n ( 0 ) ; }   / /   n o   s l   -   r e t u r n   0 
       i f   ( p r i c e < = 0 )   { P r i n t ( " A l i g n S t o p L o s s ( )   e r r o r :   N o   p r i c e   e n t e r e d " ) ; r e t u r n ( - 1 ) ; } 
       
       d o u b l e   p o i n t   = M a r k e t I n f o ( s y m b o l , M O D E _ P O I N T ) ; 
       i n t   d i g i t s       = ( i n t ) M a r k e t I n f o ( s y m b o l , M O D E _ D I G I T S ) ; 
       s l p   =   s l p * P i p V a l u e ( s y m b o l ) * p o i n t ; 
       
       
       / / - -   b u y - s e l l   i d e n t i f i e r   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
       i n t   b s = 1 ; 
       i f   ( 
             t y p e = = O P _ B U Y 
             | |   t y p e = = O P _ B U Y S T O P 
             | |   t y p e = = O P _ B U Y L I M I T 
             ) 
       { 
             b s = 1 ; 
       } 
       e l s e   i f   ( 
             t y p e = = O P _ S E L L 
             | |   t y p e = = O P _ S E L L S T O P 
             | |   t y p e = = O P _ S E L L L I M I T 
             ) 
       { 
             b s = - 1 ; 
       } 
 
 	 / / - -   p r i c e s   t h a t   w i l l   b e   u s e d   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
       d o u b l e   a s k b i d = p r i c e ; 
       d o u b l e   b i d a s k = p r i c e ; 
       
       i f   ( t y p e = = O P _ B U Y   | |   t y p e = = O P _ S E L L ) 
       { 
             d o u b l e   a s k   = M a r k e t I n f o ( s y m b o l , M O D E _ A S K ) ; 
             d o u b l e   b i d   = M a r k e t I n f o ( s y m b o l , M O D E _ B I D ) ; 
             
             a s k b i d = a s k ; 
             b i d a s k = b i d ; 
             i f   ( b s < 0 )   { 
                 a s k b i d = b i d ; 
                 b i d a s k = a s k ; 
             } 
       } 
       
       / / - -   b u i l d   s l   l e v e l   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   
       i f   ( s l l = = 0   & &   s l p ! = 0 )   { s l l = p r i c e ; } 
 
       i f   ( s l l > 0 )   { s l = s l l - s l p * b s ; } 
       
       i f   ( s l < 0 )   { r e t u r n ( - 1 ) ; } 
             
       s l = N o r m a l i z e D o u b l e ( s l , d i g i t s ) ; 
       s l o   =   N o r m a l i z e D o u b l e ( s l o , d i g i t s ) ; 
       i f   ( s l   = =   s l o )   { r e t u r n   s l ; } 
       
       / / - -   b u i l d   l i m i t   l e v e l s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
       d o u b l e   m i n s t o p s = M a r k e t I n f o ( s y m b o l , M O D E _ S T O P L E V E L ) ; 
       i f   ( c o n s i d e r _ f r e e z e l e v e l = = t r u e )   { 
             d o u b l e   f r e e z e l e v e l = M a r k e t I n f o ( s y m b o l , M O D E _ F R E E Z E L E V E L ) ; 
             i f   ( f r e e z e l e v e l > m i n s t o p s )   { m i n s t o p s = f r e e z e l e v e l ; } 
       } 
       m i n s t o p s = N o r m a l i z e D o u b l e ( m i n s t o p s * p o i n t , d i g i t s ) ; 
             
       d o u b l e   s l l i m i t = b i d a s k - m i n s t o p s * b s ;   / /   S L   m i n   p r i c e   l e v e l 
       
       / / - -   c h e c k   a n d   a l i g n   s l ,   p r i n t   e r r o r s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
       / / - -   d o   n o t   d o   i t   w h e n   t h e   s t o p   i s   t h e   s a m e   a s   t h e   o r i g i n a l 
       i f   ( s l > 0 )   { 
             / * i f   ( s l = = a s k b i d ) 
             { 
                   s l = 0 ; 
             } 
             e l s e   * / 
 	 	 
             i f   ( ( b s > 0   & &   s l > a s k b i d )   | |   ( b s < 0   & &   s l < a s k b i d ) ) 
             { 
                   s t r i n g   a b s t r = " " ; 
                   i f   ( b s > 0 )   { a b s t r = " B i d " ; }   e l s e   { a b s t r = " A s k " ; } 
                   P r i n t ( 
                         " E r r o r :   I n v a l i d   S L   r e q u e s t e d   ( " , 
                         D o u b l e T o S t r ( s l , d i g i t s ) , 
                         "   f o r   " , a b s t r , "   p r i c e   " , 
                         b i d a s k , 
                         " ) " 
                   ) ; 
                   r e t u r n ( - 1 ) ; 
             } 
             e l s e   i f   ( ( b s > 0   & &   s l > s l l i m i t )   | |   ( b s < 0   & &   s l < s l l i m i t ) ) 
             { 
                   i f   ( U S E _ V I R T U A L _ S T O P S )   { 
                         r e t u r n ( s l ) ; 
                   } 
 
                   P r i n t ( 
                         " W a r n i n g :   T o o   s h o r t   S L   r e q u e s t e d   ( " , 
                         D o u b l e T o S t r ( s l , d i g i t s ) , 
                         "   o r   " , 
                         D o u b l e T o S t r ( M a t h A b s ( s l - a s k b i d ) / p o i n t , 0 ) , 
                         "   p o i n t s ) ,   m i n i m u m   w i l l   b e   t a k e n   ( " , 
                         D o u b l e T o S t r ( s l l i m i t , d i g i t s ) , 
                         "   o r   " , 
                         D o u b l e T o S t r ( M a t h A b s ( a s k b i d - s l l i m i t ) / p o i n t , 0 ) , 
                         "   p o i n t s ) " 
                   ) ; 
                   s l = s l l i m i t ; 
 
                   r e t u r n ( s l ) ; 
             } 
       } 
       
       / /   a l i g n   b y   t h e   t i c k s i z e 
       d o u b l e   t i c k s i z e   =   M a r k e t I n f o ( s y m b o l ,   M O D E _ T I C K S I Z E ) ; 
       s l   =   M a t h R o u n d ( s l / t i c k s i z e ) * t i c k s i z e ; 
       
       r e t u r n ( s l ) ; 
 }  
  
 d o u b l e   A l i g n T a k e P r o f i t ( 
       s t r i n g   s y m b o l , 
       i n t   t y p e , 
       d o u b l e   p r i c e , 
       d o u b l e   t p o = 0 ,   / /   o r i g i n a l   t p ,   u s e d   w h e n   m o d i f y i n g 
       d o u b l e   t p l = 0 , 
       d o u b l e   t p p = 0 , 
       b o o l   c o n s i d e r _ f r e e z e l e v e l = f a l s e 
       ) 
 { 
       d o u b l e   t p = 0 ; 
       
       i f   ( M a t h A b s ( t p l ) = = E M P T Y _ V A L U E )   { t p l = 0 ; } 
       i f   ( M a t h A b s ( t p p ) = = E M P T Y _ V A L U E )   { t p p = 0 ; } 
       i f   ( t p l = = 0   & &   t p p = = 0 )   { r e t u r n ( 0 ) ; }   / /   n o   t p   -   r e t u r n   0 
       i f   ( p r i c e < = 0 )   { P r i n t ( " A l i g n T a k e P r o f i t ( )   e r r o r :   N o   p r i c e   e n t e r e d " ) ; r e t u r n ( - 1 ) ; } 
 
       d o u b l e   p o i n t   =   M a r k e t I n f o ( s y m b o l , M O D E _ P O I N T ) ; 
       i n t   d i g i t s       =   ( i n t ) M a r k e t I n f o ( s y m b o l , M O D E _ D I G I T S ) ; 
       t p p = t p p * P i p V a l u e ( s y m b o l ) * p o i n t ; 
       
       / / - -   b u y - s e l l   i d e n t i f i e r   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
       i n t   b s = 1 ; 
       i f   ( 
             t y p e = = O P _ B U Y 
             | |   t y p e = = O P _ B U Y S T O P 
             | |   t y p e = = O P _ B U Y L I M I T 
             ) 
       { 
             b s = 1 ; 
       } 
       e l s e   i f   ( 
             t y p e = = O P _ S E L L 
             | |   t y p e = = O P _ S E L L S T O P 
             | |   t y p e = = O P _ S E L L L I M I T 
             ) 
       { 
             b s = - 1 ; 
       } 
       
       / / - -   p r i c e s   t h a t   w i l l   b e   u s e d   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
       d o u b l e   a s k b i d = p r i c e ; 
       d o u b l e   b i d a s k = p r i c e ; 
       
       i f   ( t y p e = = O P _ B U Y   | |   t y p e = = O P _ S E L L ) 
       { 
             d o u b l e   a s k   = M a r k e t I n f o ( s y m b o l , M O D E _ A S K ) ; 
             d o u b l e   b i d   = M a r k e t I n f o ( s y m b o l , M O D E _ B I D ) ; 
             
             a s k b i d = a s k ; 
             b i d a s k = b i d ; 
             i f   ( b s < 0 )   { 
                 a s k b i d = b i d ; 
                 b i d a s k = a s k ; 
             } 
       } 
       
       / / - -   b u i l d   t p   l e v e l   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -   
       i f   ( t p l = = 0   & &   t p p ! = 0 )   { t p l = p r i c e ; } 
 
       i f   ( t p l > 0 )   { t p = t p l + t p p * b s ; } 
       
       i f   ( t p < 0 )   { r e t u r n ( - 1 ) ; } 
 
       t p = N o r m a l i z e D o u b l e ( t p , d i g i t s ) ; 
       t p o   =   N o r m a l i z e D o u b l e ( t p o , d i g i t s ) ; 
       i f   ( t p   = =   t p o )   { r e t u r n   t p ; } 
         
       / / - -   b u i l d   l i m i t   l e v e l s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
       d o u b l e   m i n s t o p s = M a r k e t I n f o ( s y m b o l , M O D E _ S T O P L E V E L ) ; 
       i f   ( c o n s i d e r _ f r e e z e l e v e l = = t r u e )   { 
             d o u b l e   f r e e z e l e v e l = M a r k e t I n f o ( s y m b o l , M O D E _ F R E E Z E L E V E L ) ; 
             i f   ( f r e e z e l e v e l > m i n s t o p s )   { m i n s t o p s = f r e e z e l e v e l ; } 
       } 
       m i n s t o p s = N o r m a l i z e D o u b l e ( m i n s t o p s * p o i n t , d i g i t s ) ; 
       
       d o u b l e   t p l i m i t = b i d a s k + m i n s t o p s * b s ;   / /   T P   m i n   p r i c e   l e v e l 
       
       / / - -   c h e c k   a n d   a l i g n   t p ,   p r i n t   e r r o r s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
       / / - -   d o   n o t   d o   i t   w h e n   t h e   s t o p   i s   t h e   s a m e   a s   t h e   o r i g i n a l 
       i f   ( t p > 0 )   { 
             / * i f   ( t p = = a s k b i d ) 
             { 
                   t p = 0 ; 
             } 
             e l s e   * / 
             i f   ( ( b s > 0   & &   t p < b i d a s k )   | |   ( b s < 0   & &   t p > b i d a s k ) ) 
             { 
                   s t r i n g   a b s t r = " " ; 
                   i f   ( b s > 0 )   { a b s t r = " B i d " ; }   e l s e   { a b s t r = " A s k " ; } 
                   P r i n t ( 
                         " E r r o r :   I n v a l i d   T P   r e q u e s t e d   ( " , 
                         D o u b l e T o S t r ( t p , d i g i t s ) , 
                         "   f o r   " , a b s t r , "   p r i c e   " , 
                         a s k b i d , 
                         " ) " 
                         ) ; 
                   r e t u r n ( - 1 ) ; 
             } 
             e l s e   i f   ( ( b s > 0   & &   t p < t p l i m i t )   | |   ( b s < 0   & &   t p > t p l i m i t ) ) 
             { 
                   i f   ( U S E _ V I R T U A L _ S T O P S )   { 
                         r e t u r n ( t p ) ; 
                   } 
 
                   P r i n t ( 
                         " W a r n i n g :   T o o   s h o r t   T P   r e q u e s t e d   ( " , 
                         D o u b l e T o S t r ( t p , d i g i t s ) , 
                         "   o r   " , 
                         D o u b l e T o S t r ( M a t h A b s ( t p - a s k b i d ) / p o i n t , 0 ) , 
                         "   p o i n t s ) ,   m i n i m u m   w i l l   b e   t a k e n   ( " , 
                         D o u b l e T o S t r ( t p l i m i t , d i g i t s ) , 
                         "   o r   " , 
                         D o u b l e T o S t r ( M a t h A b s ( a s k b i d - t p l i m i t ) / p o i n t , 0 ) , 
                         "   p o i n t s ) " 
                   ) ; 
                   t p = t p l i m i t ; 
                   r e t u r n ( t p ) ; 
             } 
       } 
 
       / /   a l i g n   b y   t h e   t i c k s i z e 
       d o u b l e   t i c k s i z e   =   M a r k e t I n f o ( s y m b o l ,   M O D E _ T I C K S I Z E ) ; 
       t p   =   M a t h R o u n d ( t p / t i c k s i z e ) * t i c k s i z e ; 
 
       r e t u r n ( t p ) ; 
 }  
  
 t e m p l a t e < t y p e n a m e   T > 
 i n t   A r r a y S e a r c h ( T   & a r r a y [ ] ,   T   v a l u e ) 
 { 
 	 s t a t i c   i n t   i n d e x ;         
 	 s t a t i c   i n t   s i z e ; 
 	 
 	 i n d e x   =   - 1 ; 
 	 s i z e     =   A r r a y S i z e ( a r r a y ) ; 
 
 	 f o r   ( i n t   i = 0 ;   i < s i z e ;   i + + ) 
 	 { 
 	 	 i f   ( a r r a y [ i ]   = =   v a l u e ) 
 	 	 { 
 	 	 	 i n d e x   =   i ; 
 	 	 	 b r e a k ; 
 	 	 }     
 	 } 
 
       r e t u r n   i n d e x ; 
 }  
  
 t e m p l a t e < t y p e n a m e   T > 
 b o o l   A r r a y S t r i p ( T   & a r r a y [ ] ,   T   v a l u e ) 
 { 
 	 i n t   x         =   0 ; 
 	 i n t   s i z e   =   A r r a y S i z e ( a r r a y ) ; 
 	 
 	 f o r   ( i n t   i = 0 ;   i < s i z e ;   i + + ) 
 	 { 
 	 	 i f   ( a r r a y [ i ]   ! =   v a l u e ) 
 	 	 { 
 	 	 	 a r r a y [ x ]   =   a r r a y [ i ] ; 
 	 	 	 x + + ; 
 	 	 } 
 	 } 
 	 
 	 i f   ( x   <   s i z e ) 
 	 { 
 	 	 A r r a y R e s i z e ( a r r a y ,   x ) ; 
 	 	 
 	 	 r e t u r n   t r u e ;   / /   s t r i p p e d 
 	 } 
 	 
 	 r e t u r n   f a l s e ;   / /   n o t   s t r i p p e d 
 }  
  
 t e m p l a t e < t y p e n a m e   T > 
 b o o l   A r r a y S t r i p K e y ( T   & a r r a y [ ] ,   i n t   k e y ) 
 { 
 	 i n t   x         =   0 ; 
 	 i n t   s i z e   =   A r r a y S i z e ( a r r a y ) ; 
 	 
 	 f o r   ( i n t   i = 0 ;   i < s i z e ;   i + + ) 
 	 { 
 	 	 i f   ( i   ! =   k e y ) 
 	 	 { 
 	 	 	 a r r a y [ x ]   =   a r r a y [ i ] ; 
 	 	 	 x + + ; 
 	 	 } 
 	 } 
 	 	 
 	 i f   ( x   <   s i z e ) 
 	 { 
 	 	 A r r a y R e s i z e ( a r r a y ,   x ) ; 
 	 	 
 	 	 r e t u r n   t r u e ;   / /   s t r i p p e d 
 	 } 
 	 
 	 r e t u r n   f a l s e ;   / /   n o t   s t r i p p e d 
 }  
  
 t e m p l a t e < t y p e n a m e   T > 
 b o o l   A r r a y V a l u e ( T   & a r r a y [ ] ,   T   v a l u e ) 
 { 
 	 i n t   s i z e       =   A r r a y S i z e ( a r r a y ) ; 
 	 
 	 i f   ( s i z e   >   0 ) 
 	 { 
 	 	 i f   ( I n A r r a y ( a r r a y ,   v a l u e ) ) 
 	 	 { 
 	 	 	 / /   v a l u e   f o u n d   - >   e x i t 
 	 	 	 r e t u r n   f a l s e ;   / /   n o   v a l u e   a d d e d 
 	 	 } 
 	 } 
 	 
 	 / /   v a l u e   d o e s   n o t   e x i s t s   - >   a d d   i t 
 	 A r r a y R e s i z e ( a r r a y ,   s i z e + 1 ) ; 
 	 a r r a y [ s i z e ]   =   v a l u e ; 
 	 	 
 	 r e t u r n   t r u e ;   / /   v a l u e   a d d e d 
 }  
  
 d o u b l e   B e t 1 3 2 6 ( i n t   g r o u p ,   s t r i n g   s y m b o l ,   d o u b l e   i n i t i a l _ l o t s ,   b o o l   r e v e r s e = f a l s e ) 
 {     
       i n t   p o s = 0 ; 
       i n t   t o t a l = 0 ; 
       d o u b l e   l o t s = 0 ; 
       d o u b l e   p r o f i t = 0 ; 
       i n t   p r o f i t _ o r _ l o s s = 0 ;   / /   0   -   u n k n o w n ,   1   -   p r o f i t ,   - 1   -   l o s s 
       
       / / - -   t r y   t o   g e t   l a s t   l o t   s i z e   f r o m   r u n n i n g   t r a d e s 
       t o t a l = O r d e r s T o t a l ( ) ; 
       f o r   ( p o s = t o t a l - 1 ;   p o s > = 0 ;   p o s - - ) 
       { 
             i f   ( ! O r d e r S e l e c t ( p o s ,   S E L E C T _ B Y _ P O S ,   M O D E _ T R A D E S ) )   { c o n t i n u e ; } 
             i f   ( O r d e r M a g i c N u m b e r ( )   ! =   M a g i c S t a r t + g r o u p )   { c o n t i n u e ; } 
             i f   ( O r d e r S y m b o l ( )   ! =   s y m b o l )   { c o n t i n u e ; } 
             i f   ( T i m e C u r r e n t ( )   -   O r d e r O p e n T i m e ( )   <   3 )   { c o n t i n u e ; } 
 	 	 i f   ( O r d e r E x p i r a t i o n ( )   >   0   & &   O r d e r E x p i r a t i o n ( )   < =   O r d e r C l o s e T i m e ( ) )   { c o n t i n u e ; }   / /   n o   e x p i r e d   p o 
             
             i f   ( l o t s = = 0 )   { 
                   l o t s = O r d e r L o t s ( ) ; 
             } 
             
             p r o f i t   =   O r d e r C l o s e P r i c e ( ) - O r d e r O p e n P r i c e ( ) ; 
             p r o f i t   =   N o r m a l i z e D o u b l e ( p r o f i t ,   S y m b o l D i g i t s ( O r d e r S y m b o l ( ) ) ) ; 
             i f   ( I s O r d e r T y p e S e l l ( ) )   { p r o f i t   =   - 1 * p r o f i t ; } 
             i f   ( p r o f i t   = =   0 )   { 
                   r e t u r n ( l o t s ) ; 
             } 
             
             i f   ( p r o f i t < 0 )   { p r o f i t _ o r _ l o s s = - 1 ; } 
             e l s e   { p r o f i t _ o r _ l o s s = 1 ; } 
             
             b r e a k ; 
       } 
       
       / / - -   i f   n o   r u n n i n g   t r a d e   w a s   f o u n d ,   s e a r c h   i n   h i s t o r y   t r a d e s 
       i f   ( l o t s = = 0 ) 
       { 
             t o t a l = O r d e r s H i s t o r y T o t a l ( ) ; 
             f o r   ( p o s = t o t a l - 1 ;   p o s > = 0 ;   p o s - - ) 
             { 
                   i f ( ! O r d e r S e l e c t ( p o s ,   S E L E C T _ B Y _ P O S ,   M O D E _ H I S T O R Y ) )   { c o n t i n u e ; } 
                   i f   ( O r d e r M a g i c N u m b e r ( )   ! =   M a g i c S t a r t + g r o u p )   { c o n t i n u e ; } 
                   i f   ( O r d e r S y m b o l ( )   ! =   s y m b o l )   { c o n t i n u e ; } 
 	 	 	 i f   ( O r d e r T y p e ( )   >   O P _ S E L L )   { c o n t i n u e ; }   / /   n o   p o 
                   
                   i f   ( l o t s = = 0 )   { 
                         l o t s = O r d e r L o t s ( ) ; 
                   } 
                   
                   p r o f i t   =   O r d e r C l o s e P r i c e ( ) - O r d e r O p e n P r i c e ( ) ; 
                   p r o f i t   =   N o r m a l i z e D o u b l e ( p r o f i t ,   S y m b o l D i g i t s ( O r d e r S y m b o l ( ) ) ) ; 
                   i f   ( I s O r d e r T y p e S e l l ( ) )   { p r o f i t   =   - 1 * p r o f i t ; } 
                   i f   ( p r o f i t   = =   0 )   { 
                         r e t u r n ( l o t s ) ; 
                   } 
                   
                   i f   ( p r o f i t < 0 )   { p r o f i t _ o r _ l o s s = - 1 ; } 
                   e l s e   { p r o f i t _ o r _ l o s s = 1 ; } 
                   
                   b r e a k ; 
             } 
       } 
       
       / / - - 
       i f   ( i n i t i a l _ l o t s   <   M a r k e t I n f o ( s y m b o l , M O D E _ M I N L O T ) )   { 
             i n i t i a l _ l o t s   =   M a r k e t I n f o ( s y m b o l , M O D E _ M I N L O T ) ;     
       } 
 
       i f   ( l o t s = = 0 )   { l o t s   =   i n i t i a l _ l o t s ; } 
       e l s e 
       { 
             i f   ( ( r e v e r s e = = f a l s e   & &   p r o f i t _ o r _ l o s s = = 1 )   | |   ( r e v e r s e = = t r u e   & &   p r o f i t _ o r _ l o s s = = - 1 ) ) 
             { 
                   d o u b l e   d i v   =   l o t s / i n i t i a l _ l o t s ; 
                   
                   i f   ( d i v   <   1 . 5 )   { l o t s   =   i n i t i a l _ l o t s * 3 ; } 
                   e l s e   i f   ( d i v   <   2 . 5 )   { l o t s   =   i n i t i a l _ l o t s * 6 ; } 
                   e l s e   i f   ( d i v   <   3 . 5 )   { l o t s   =   i n i t i a l _ l o t s * 2 ; } 
                   e l s e   { l o t s   =   i n i t i a l _ l o t s ; } 
             } 
             e l s e   { 
                   l o t s   =   i n i t i a l _ l o t s ; 
             } 
       } 
       
       r e t u r n   l o t s ; 
 }  
  
 d o u b l e   B e t D a l e m b e r t ( i n t   g r o u p ,   s t r i n g   s y m b o l ,   d o u b l e   i n i t i a l _ l o t s ,   d o u b l e   r e v e r s e = f a l s e ) 
 {     
       i n t   p o s = 0 ; 
       i n t   t o t a l = 0 ; 
       d o u b l e   l o t s = 0 ; 
       d o u b l e   p r o f i t = 0 ; 
       i n t   p r o f i t _ o r _ l o s s = 0 ;   / /   0   -   u n k n o w n ,   1   -   p r o f i t ,   - 1   -   l o s s 
       
       / / - -   t r y   t o   g e t   l a s t   l o t   s i z e   f r o m   r u n n i n g   t r a d e s 
       t o t a l = O r d e r s T o t a l ( ) ; 
       f o r   ( p o s = t o t a l - 1 ;   p o s > = 0 ;   p o s - - ) 
       { 
             i f   ( ! O r d e r S e l e c t ( p o s ,   S E L E C T _ B Y _ P O S ,   M O D E _ T R A D E S ) )   { c o n t i n u e ; } 
             i f   ( O r d e r M a g i c N u m b e r ( )   ! =   M a g i c S t a r t + g r o u p )   { c o n t i n u e ; } 
             i f   ( O r d e r S y m b o l ( )   ! =   s y m b o l )   { c o n t i n u e ; } 
             i f   ( T i m e C u r r e n t ( )   -   O r d e r O p e n T i m e ( )   <   3 )   { c o n t i n u e ; } 
 	 	 i f   ( O r d e r E x p i r a t i o n ( )   >   0   & &   O r d e r E x p i r a t i o n ( )   < =   O r d e r C l o s e T i m e ( ) )   { c o n t i n u e ; }   / /   n o   e x p i r e d   p o 
             
             i f   ( l o t s = = 0 )   { 
                   l o t s = O r d e r L o t s ( ) ; 
             } 
             
             p r o f i t   =   O r d e r C l o s e P r i c e ( ) - O r d e r O p e n P r i c e ( ) ; 
             p r o f i t   =   N o r m a l i z e D o u b l e ( p r o f i t ,   S y m b o l D i g i t s ( O r d e r S y m b o l ( ) ) ) ; 
             i f   ( I s O r d e r T y p e S e l l ( ) )   { p r o f i t   =   - 1 * p r o f i t ; } 
             i f   ( p r o f i t   = =   0 )   { 
                   r e t u r n ( l o t s ) ; 
             } 
             
             i f   ( p r o f i t < 0 )   { p r o f i t _ o r _ l o s s = - 1 ; } 
             e l s e   { p r o f i t _ o r _ l o s s = 1 ; } 
             
             b r e a k ; 
       } 
       
       / / - -   i f   n o   r u n n i n g   t r a d e   w a s   f o u n d ,   s e a r c h   i n   h i s t o r y   t r a d e s 
       i f   ( l o t s = = 0 ) 
       { 
             t o t a l = O r d e r s H i s t o r y T o t a l ( ) ; 
             f o r   ( p o s = t o t a l - 1 ;   p o s > = 0 ;   p o s - - ) 
             { 
                   i f ( ! O r d e r S e l e c t ( p o s ,   S E L E C T _ B Y _ P O S ,   M O D E _ H I S T O R Y ) )   { c o n t i n u e ; } 
                   i f   ( O r d e r M a g i c N u m b e r ( )   ! =   M a g i c S t a r t + g r o u p )   { c o n t i n u e ; } 
                   i f   ( O r d e r S y m b o l ( )   ! =   s y m b o l )   { c o n t i n u e ; } 
 	 	 	 i f   ( O r d e r T y p e ( )   >   O P _ S E L L )   { c o n t i n u e ; }   / /   n o   p o 
                   
                   i f   ( l o t s = = 0 )   { 
                         l o t s = O r d e r L o t s ( ) ; 
                   } 
                   
                   p r o f i t   =   O r d e r C l o s e P r i c e ( ) - O r d e r O p e n P r i c e ( ) ; 
                   p r o f i t   =   N o r m a l i z e D o u b l e ( p r o f i t ,   S y m b o l D i g i t s ( O r d e r S y m b o l ( ) ) ) ; 
                   i f   ( I s O r d e r T y p e S e l l ( ) )   { p r o f i t   =   - 1 * p r o f i t ; } 
                   i f   ( p r o f i t   = =   0 )   { 
                         r e t u r n ( l o t s ) ; 
                   } 
                   
                   i f   ( p r o f i t < 0 )   { p r o f i t _ o r _ l o s s = - 1 ; } 
                   e l s e   { p r o f i t _ o r _ l o s s = 1 ; } 
                   
                   b r e a k ; 
             } 
       } 
       
       / / - - 
       i f   ( i n i t i a l _ l o t s   <   M a r k e t I n f o ( s y m b o l , M O D E _ M I N L O T ) )   { 
             i n i t i a l _ l o t s   =   M a r k e t I n f o ( s y m b o l , M O D E _ M I N L O T ) ;     
       } 
 
       i f   ( l o t s = = 0 )   { l o t s   =   i n i t i a l _ l o t s ; } 
       e l s e 
       { 
             i f   ( ( r e v e r s e = = 0   & &   p r o f i t _ o r _ l o s s = = 1 )   | |   ( r e v e r s e = = 1   & &   p r o f i t _ o r _ l o s s = = - 1 ) ) 
             { 
                   l o t s   =   l o t s   -   i n i t i a l _ l o t s ; 
                   i f   ( l o t s   <   i n i t i a l _ l o t s )   { l o t s   =   i n i t i a l _ l o t s ; } 
             } 
             e l s e   { 
                   l o t s   =   l o t s   +   i n i t i a l _ l o t s ; 
             } 
       } 
       
       r e t u r n   l o t s ; 
 }  
  
 d o u b l e   B e t F i b o n a c c i ( 
       i n t   g r o u p , 
       s t r i n g   s y m b o l , 
       d o u b l e   i n i t i a l _ l o t s 
       ) 
 { 
       i n t   p o s = 0 ; 
       i n t   t o t a l = 0 ; 
       d o u b l e   l o t s = 0 ; 
       d o u b l e   p r o f i t = 0 ; 
       i n t   p r o f i t _ o r _ l o s s = 0 ;   / /   0   -   u n k n o w n ,   1   -   p r o f i t ,   - 1   -   l o s s 
       
       / / - -   t r y   t o   g e t   l a s t   l o t   s i z e   f r o m   r u n n i n g   t r a d e s 
       t o t a l = O r d e r s T o t a l ( ) ; 
       f o r   ( p o s = t o t a l - 1 ;   p o s > = 0 ;   p o s - - ) 
       { 
             i f   ( ! O r d e r S e l e c t ( p o s ,   S E L E C T _ B Y _ P O S ,   M O D E _ T R A D E S ) )   { c o n t i n u e ; } 
             i f   ( O r d e r M a g i c N u m b e r ( )   ! =   M a g i c S t a r t + g r o u p )   { c o n t i n u e ; } 
             i f   ( O r d e r S y m b o l ( )   ! =   s y m b o l )   { c o n t i n u e ; } 
             i f   ( T i m e C u r r e n t ( )   -   O r d e r O p e n T i m e ( )   <   3 )   { c o n t i n u e ; } 
 	 	 i f   ( O r d e r E x p i r a t i o n ( )   >   0   & &   O r d e r E x p i r a t i o n ( )   < =   O r d e r C l o s e T i m e ( ) )   { c o n t i n u e ; }   / /   n o   e x p i r e d   p o 
             
             i f   ( l o t s = = 0 )   { 
                   l o t s = O r d e r L o t s ( ) ; 
             } 
             
             p r o f i t   =   O r d e r C l o s e P r i c e ( ) - O r d e r O p e n P r i c e ( ) ; 
             p r o f i t   =   N o r m a l i z e D o u b l e ( p r o f i t ,   S y m b o l D i g i t s ( O r d e r S y m b o l ( ) ) ) ; 
             i f   ( I s O r d e r T y p e S e l l ( ) )   { p r o f i t   =   - 1 * p r o f i t ; } 
             i f   ( p r o f i t   = =   0 )   { 
                   r e t u r n ( l o t s ) ; 
             } 
             
             i f   ( p r o f i t < 0 )   { p r o f i t _ o r _ l o s s = - 1 ; } 
             e l s e   { p r o f i t _ o r _ l o s s = 1 ; } 
             
             b r e a k ; 
       } 
       
       / / - -   i f   n o   r u n n i n g   t r a d e   w a s   f o u n d ,   s e a r c h   i n   h i s t o r y   t r a d e s 
       i f   ( l o t s = = 0 ) 
       { 
             t o t a l = O r d e r s H i s t o r y T o t a l ( ) ; 
             f o r   ( p o s = t o t a l - 1 ;   p o s > = 0 ;   p o s - - ) 
             { 
                   i f ( ! O r d e r S e l e c t ( p o s ,   S E L E C T _ B Y _ P O S ,   M O D E _ H I S T O R Y ) )   { c o n t i n u e ; } 
                   i f   ( O r d e r M a g i c N u m b e r ( )   ! =   M a g i c S t a r t + g r o u p )   { c o n t i n u e ; } 
                   i f   ( O r d e r S y m b o l ( )   ! =   s y m b o l )   { c o n t i n u e ; } 
 	 	 	 i f   ( O r d e r T y p e ( )   >   O P _ S E L L )   { c o n t i n u e ; }   / /   n o   p o 
                   
                   i f   ( l o t s = = 0 )   { 
                         l o t s = O r d e r L o t s ( ) ; 
                   } 
                   
                   p r o f i t   =   O r d e r C l o s e P r i c e ( ) - O r d e r O p e n P r i c e ( ) ; 
                   p r o f i t   =   N o r m a l i z e D o u b l e ( p r o f i t ,   S y m b o l D i g i t s ( O r d e r S y m b o l ( ) ) ) ; 
                   i f   ( I s O r d e r T y p e S e l l ( ) )   { p r o f i t   =   - 1 * p r o f i t ; } 
                   i f   ( p r o f i t   = =   0 )   { 
                         r e t u r n ( l o t s ) ; 
                   } 
                   
                   i f   ( p r o f i t < 0 )   { p r o f i t _ o r _ l o s s = - 1 ; } 
                   e l s e   { p r o f i t _ o r _ l o s s = 1 ; } 
                   
                   b r e a k ; 
             } 
       } 
 
       / / - - 
       i f   ( i n i t i a l _ l o t s   <   M a r k e t I n f o ( s y m b o l , M O D E _ M I N L O T ) )   { 
             i n i t i a l _ l o t s   =   M a r k e t I n f o ( s y m b o l , M O D E _ M I N L O T ) ;     
       } 
 
       i f   ( l o t s = = 0 )   { l o t s   =   i n i t i a l _ l o t s ; } 
       e l s e 
       {     
             i n t   f i b o 1 = 1 ,   f i b o 2 = 0 ,   f i b o 3 = 0 ,   f i b o 4 = 0 ; 
             d o u b l e   d i v   =   l o t s / i n i t i a l _ l o t s ; 
             
             i f   ( d i v < = 0 )   { d i v = 1 ; } 
 
             w h i l e ( t r u e ) 
             { 
                   f i b o 1 = f i b o 1 + f i b o 2 ; 
                   f i b o 3 = f i b o 2 ; 
                   f i b o 2 = f i b o 1 - f i b o 2 ; 
                   f i b o 4 = f i b o 2 - f i b o 3 ; 
                   i f   ( f i b o 1   >   N o r m a l i z e D o u b l e ( d i v ,   2 ) )   { b r e a k ; } 
             } 
             / / P r i n t ( " ( " + f i b o 1   +   " + "   +   f i b o 2 + " + " + f i b o 3 + " )   >   " + d i v ) ; 
             i f   ( p r o f i t _ o r _ l o s s = = 1 ) 
             { 
                   i f   ( f i b o 4 < = 0 )   { f i b o 4 = 1 ; } 
                   / / P r i n t ( " P r o f i t   " + l o t s + " * " + f i b o 4 ) ; 
                   l o t s = i n i t i a l _ l o t s * ( f i b o 4 ) ; 
             } 
             e l s e   { 
                   / / P r i n t ( " L o s s   " + l o t s + " * " + f i b o 1 + " + " + f i b o 2 ) ; 
                   l o t s = i n i t i a l _ l o t s * ( f i b o 1 ) ; 
             } 
       } 
       
       l o t s = N o r m a l i z e D o u b l e ( l o t s ,   2 ) ; 
       r e t u r n   l o t s ; 
 }  
  
 d o u b l e   B e t L a b o u c h e r e ( i n t   g r o u p ,   s t r i n g   s y m b o l ,   d o u b l e   i n i t i a l _ l o t s ,   s t r i n g   l i s t _ o f _ n u m b e r s ,   d o u b l e   r e v e r s e = f a l s e ) 
 {       
       i n t   p o s = 0 ; 
       i n t   t o t a l = 0 ; 
       d o u b l e   l o t s = 0 ; 
       d o u b l e   p r o f i t = 0 ; 
       i n t   p r o f i t _ o r _ l o s s = 0 ;   / /   0   -   u n k n o w n ,   1   -   p r o f i t ,   - 1   -   l o s s 
       
       / / - -   t r y   t o   g e t   l a s t   l o t   s i z e   f r o m   r u n n i n g   t r a d e s 
       t o t a l = O r d e r s T o t a l ( ) ; 
       f o r   ( p o s = t o t a l - 1 ;   p o s > = 0 ;   p o s - - ) 
       { 
             i f   ( ! O r d e r S e l e c t ( p o s ,   S E L E C T _ B Y _ P O S ,   M O D E _ T R A D E S ) )   { c o n t i n u e ; } 
             i f   ( O r d e r M a g i c N u m b e r ( )   ! =   M a g i c S t a r t + g r o u p )   { c o n t i n u e ; } 
             i f   ( O r d e r S y m b o l ( )   ! =   s y m b o l )   { c o n t i n u e ; } 
             i f   ( T i m e C u r r e n t ( )   -   O r d e r O p e n T i m e ( )   <   3 )   { c o n t i n u e ; } 
 	 	 i f   ( O r d e r E x p i r a t i o n ( )   >   0   & &   O r d e r E x p i r a t i o n ( )   < =   O r d e r C l o s e T i m e ( ) )   { c o n t i n u e ; }   / /   n o   e x p i r e d   p o 
             
             i f   ( l o t s = = 0 )   { 
                   l o t s = O r d e r L o t s ( ) ; 
             } 
             
             p r o f i t   =   O r d e r C l o s e P r i c e ( ) - O r d e r O p e n P r i c e ( ) ; 
             p r o f i t   =   N o r m a l i z e D o u b l e ( p r o f i t ,   S y m b o l D i g i t s ( O r d e r S y m b o l ( ) ) ) ; 
             i f   ( I s O r d e r T y p e S e l l ( ) )   { p r o f i t   =   - 1 * p r o f i t ; } 
             i f   ( p r o f i t   = =   0 )   { 
                   r e t u r n ( l o t s ) ; 
             } 
             
             i f   ( p r o f i t < 0 )   { p r o f i t _ o r _ l o s s = - 1 ; } 
             e l s e   { p r o f i t _ o r _ l o s s = 1 ; } 
             
             b r e a k ; 
       } 
       
       / / - -   i f   n o   r u n n i n g   t r a d e   w a s   f o u n d ,   s e a r c h   i n   h i s t o r y   t r a d e s 
       i f   ( l o t s = = 0 ) 
       { 
             t o t a l = O r d e r s H i s t o r y T o t a l ( ) ; 
             f o r   ( p o s = t o t a l - 1 ;   p o s > = 0 ;   p o s - - ) 
             { 
                   i f ( ! O r d e r S e l e c t ( p o s ,   S E L E C T _ B Y _ P O S ,   M O D E _ H I S T O R Y ) )   { c o n t i n u e ; } 
                   i f   ( O r d e r M a g i c N u m b e r ( )   ! =   M a g i c S t a r t + g r o u p )   { c o n t i n u e ; } 
                   i f   ( O r d e r S y m b o l ( )   ! =   s y m b o l )   { c o n t i n u e ; } 
 	 	 	 i f   ( O r d e r T y p e ( )   >   O P _ S E L L )   { c o n t i n u e ; }   / /   n o   p o 
                   
                   i f   ( l o t s = = 0 )   { 
                         l o t s = O r d e r L o t s ( ) ; 
                   } 
                   
                   p r o f i t   =   O r d e r C l o s e P r i c e ( ) - O r d e r O p e n P r i c e ( ) ; 
                   p r o f i t   =   N o r m a l i z e D o u b l e ( p r o f i t ,   S y m b o l D i g i t s ( O r d e r S y m b o l ( ) ) ) ; 
                   i f   ( I s O r d e r T y p e S e l l ( ) )   { p r o f i t   =   - 1 * p r o f i t ; } 
                   i f   ( p r o f i t   = =   0 )   { 
                         r e t u r n ( l o t s ) ; 
                   } 
 
                   i f   ( p r o f i t < 0 )   { p r o f i t _ o r _ l o s s = - 1 ; } 
                   e l s e   { p r o f i t _ o r _ l o s s = 1 ; } 
                   
                   b r e a k ; 
             } 
       } 
       
       / / - -   L a b o u c h e r e   s t u f f 
       s t a t i c   i n t   m e m _ g r o u p [ ] ; 
       s t a t i c   s t r i n g   m e m _ l i s t [ ] ; 
       s t a t i c   i n t   m e m _ t i c k e t [ ] ; 
       i n t   s t a r t _ a g a i n = f a l s e ; 
       
       / / -   g e t   t h e   l i s t   o f   n u m b e r s   a s   i t   i s   s t o r e d   i n   t h e   m e m o r y ,   o r   s t o r e   i t 
       i n t   i d = A r r a y S e a r c h ( m e m _ g r o u p ,   g r o u p ) ; 
       i f   ( i d   = =   - 1 )   { 
             s t a r t _ a g a i n = t r u e ; 
             i f   ( l i s t _ o f _ n u m b e r s = = " " )   { l i s t _ o f _ n u m b e r s = " 1 " ; } 
             i d   =   A r r a y S i z e ( m e m _ g r o u p ) ; 
             A r r a y R e s i z e ( m e m _ g r o u p ,   i d + 1 ,   i d + 1 ) ; 
             A r r a y R e s i z e ( m e m _ l i s t ,   i d + 1 ,   i d + 1 ) ; 
             A r r a y R e s i z e ( m e m _ t i c k e t ,   i d + 1 ,   i d + 1 ) ; 
             m e m _ g r o u p [ i d ] = g r o u p ; 
             m e m _ l i s t [ i d ] = l i s t _ o f _ n u m b e r s ; 
       } 
       
       i f   ( m e m _ t i c k e t [ i d ] = = O r d e r T i c k e t ( ) )   { 
             / /   t h e   l a s t   k n o w n   t i c k e t   ( m e m _ t i c k e t [ i d ] )   s h o u l d   b e   d i f f e r e n t   t h a n   O d e r T i c k e t ( )   n o r m a l l y 
             / /   w h e n   f a i l e d   t o   c r e a t e   a   n e w   t r a d e   -   t h e   l a s t   t i c k e t   r e m a i n s   t h e   s a m e 
             / /   s o   w e   n e e d   t o   r e s e t 
             m e m _ l i s t [ i d ] = l i s t _ o f _ n u m b e r s ; 
       } 
       m e m _ t i c k e t [ i d ] = O r d e r T i c k e t ( ) ; 
       
       / / -   n o w   t u r n   t h e   s t r i n g   i n t o   i n t e g e r   a r r a y 
       i n t   l i s t [ ] ; 
       s t r i n g   l i s t S [ ] ; 
       S t r i n g E x p l o d e ( " , " ,   m e m _ l i s t [ i d ] ,   l i s t S ) ; 
       A r r a y R e s i z e ( l i s t ,   A r r a y S i z e ( l i s t S ) ) ; 
       f o r   ( i n t   s = 0 ;   s < A r r a y S i z e ( l i s t S ) ;   s + + )   { 
             l i s t [ s ] = ( i n t ) S t r i n g T o I n t e g e r ( S t r i n g T r i m ( l i s t S [ s ] ) ) ;     
       } 
 
       / / - -   
       i n t   s i z e   =   A r r a y S i z e ( l i s t ) ; 
 
       i f   ( i n i t i a l _ l o t s   <   M a r k e t I n f o ( s y m b o l , M O D E _ M I N L O T ) )   { 
             i n i t i a l _ l o t s   =   M a r k e t I n f o ( s y m b o l , M O D E _ M I N L O T ) ;     
       } 
 
       i f   ( l o t s = = 0 )   { 
             s t a r t _ a g a i n = t r u e ; 
       } 
       
       i f   ( s t a r t _ a g a i n = = t r u e ) 
       { 
             i f   ( s i z e = = 1 )   { 
                   l o t s   =   i n i t i a l _ l o t s * l i s t [ 0 ] ; 
             }   e l s e   { 
                   l o t s   =   i n i t i a l _ l o t s * ( l i s t [ 0 ] + l i s t [ s i z e - 1 ] ) ; 
             } 
       } 
       e l s e   
       { 
             i f   ( ( r e v e r s e = = 0   & &   p r o f i t _ o r _ l o s s = = 1 )   | |   ( r e v e r s e = = 1   & &   p r o f i t _ o r _ l o s s = = - 1 ) ) 
             { 
                   i f   ( s i z e = = 1 )   { 
                         l o t s = i n i t i a l _ l o t s * l i s t [ 0 ] ; 
                         A r r a y R e s i z e ( l i s t ,   0 ) ; 
                   } 
                   e l s e   i f   ( s i z e = = 2 )   { 
                         l o t s   =   i n i t i a l _ l o t s * ( l i s t [ 0 ] + l i s t [ 1 ] ) ; 
                         A r r a y R e s i z e ( l i s t ,   0 ) ; 
                   } 
                   e l s e   i f   ( s i z e > 2 )   { 
                         l o t s   =   i n i t i a l _ l o t s * ( l i s t [ 0 ] + l i s t [ s i z e - 1 ] ) ; 
                         / /   C a n c e l   f i r s t   a n d   l a s t   n u m b e r s   i n   o u r   l i s t 
                         / /   s h i f t   a r r a y   1   s t e p   l e f t 
                         f o r ( p o s = 0 ;   p o s < s i z e - 1 ;   p o s + + )   { 
                               l i s t [ p o s ] = l i s t [ p o s + 1 ] ; 
                         } 
                         A r r a y R e s i z e ( l i s t , A r r a y S i z e ( l i s t ) - 2 ) ;   / /   r e m o v e   l a s t   2   e l e m e n t s 	 	 
                   } 
                   i f   ( l o t s   <   i n i t i a l _ l o t s )   { l o t s   =   i n i t i a l _ l o t s ; } 
             } 
             e l s e   { 
                   i f   ( s i z e > 1 ) 
                   { 
                         A r r a y R e s i z e ( l i s t ,   s i z e + 1 ) ; 
                         l i s t [ s i z e ] = l i s t [ 0 ] + l i s t [ s i z e - 1 ] ; 
                         l o t s   =   i n i t i a l _ l o t s * ( l i s t [ 0 ] + l i s t [ s i z e ] ) ; 
                   }   e l s e   { 
                         l o t s   =   i n i t i a l _ l o t s * l i s t [ 0 ] ; 
                   } 
                   i f   ( l o t s   <   i n i t i a l _ l o t s )   { l o t s   =   i n i t i a l _ l o t s ; } 
             } 
 
       } 
       
       P r i n t ( " L a b o u c h e r e   ( f o r   g r o u p   " + ( s t r i n g ) i d + " )   c u r r e n t   l i s t   o f   n u m b e r s : " + S t r i n g I m p l o d e ( " , " ,   l i s t ) ) ; 
       s i z e = A r r a y S i z e ( l i s t ) ; 
       i f   ( s i z e = = 0 )   { 
             A r r a y S t r i p K e y ( m e m _ g r o u p ,   i d ) ; 
             A r r a y S t r i p K e y ( m e m _ l i s t ,   i d ) ; 
             A r r a y S t r i p K e y ( m e m _ t i c k e t ,   i d ) ; 
       }   e l s e   { 
             m e m _ l i s t [ i d ] = S t r i n g I m p l o d e ( " , " ,   l i s t ) ; 
       } 
 
       r e t u r n   l o t s ; 
 }  
  
 d o u b l e   B e t M a r t i n g a l e ( 
       i n t   g r o u p , 
       s t r i n g   s y m b o l , 
       d o u b l e   i n i t i a l _ l o t s , 
       d o u b l e   m u l t i p l y _ o n _ l o s s , 
       d o u b l e   m u l t i p l y _ o n _ p r o f i t , 
       d o u b l e   a d d _ o n _ l o s s , 
       d o u b l e   a d d _ o n _ p r o f i t , 
       i n t   r e s e t _ o n _ l o s s , 
       i n t   r e s e t _ o n _ p r o f i t 
       ) 
 { 
       i n t   p o s = 0 ; 
 	 i n t   t o t a l = 0 ; 
       d o u b l e   l o t s = 0 ; 
       d o u b l e   p r o f i t = 0 ; 
       i n t   p r o f i t _ o r _ l o s s = 0 ;   / /   0   -   u n k n o w n ,   1   -   p r o f i t ,   - 1   -   l o s s 
       i n t   i n _ a _ r o w = 0 ; 
       
       / / - -   t r y   t o   g e t   l a s t   l o t   s i z e   f r o m   r u n n i n g   t r a d e s 
       t o t a l = O r d e r s T o t a l ( ) ; 
       f o r   ( p o s = t o t a l - 1 ;   p o s > = 0 ;   p o s - - ) 
       { 
             i f   ( ! O r d e r S e l e c t ( p o s ,   S E L E C T _ B Y _ P O S ,   M O D E _ T R A D E S ) )   { c o n t i n u e ; } 
             i f   ( O r d e r M a g i c N u m b e r ( )   ! =   M a g i c S t a r t + g r o u p )   { c o n t i n u e ; } 
             i f   ( O r d e r S y m b o l ( )   ! =   s y m b o l )   { c o n t i n u e ; } 
             i f   ( T i m e C u r r e n t ( )   -   O r d e r O p e n T i m e ( )   <   3 )   { c o n t i n u e ; } 
 	 	 i f   ( O r d e r E x p i r a t i o n ( )   >   0   & &   O r d e r E x p i r a t i o n ( )   < =   O r d e r C l o s e T i m e ( ) )   { c o n t i n u e ; }   / /   n o   e x p i r e d   p o 
 
             i f   ( l o t s = = 0 )   { 
                   l o t s = O r d e r L o t s ( ) ; 
             } 
             
             p r o f i t   =   O r d e r C l o s e P r i c e ( ) - O r d e r O p e n P r i c e ( ) ; 
             p r o f i t   =   N o r m a l i z e D o u b l e ( p r o f i t ,   S y m b o l D i g i t s ( O r d e r S y m b o l ( ) ) ) ; 
             i f   ( I s O r d e r T y p e S e l l ( ) )   { p r o f i t   =   - 1 * p r o f i t ; } 
             i f   ( p r o f i t   = =   0 )   { 
                   r e t u r n ( l o t s ) ; 
             } 
             
             i f   ( p r o f i t _ o r _ l o s s   = =   0 ) 
             { 
                   
                   i f   ( p r o f i t < 0 )   { p r o f i t _ o r _ l o s s = - 1 ; } 
                   e l s e   { p r o f i t _ o r _ l o s s = 1 ; } 
             } 
             e l s e   { 
                             i f   ( p r o f i t _ o r _ l o s s = = 1   & &   p r o f i t < 0 )   { b r e a k ; } 
                   e l s e   i f   ( p r o f i t _ o r _ l o s s = = - 1   & &   p r o f i t > = 0 )   { b r e a k ; } 
             } 
             
             i n _ a _ r o w + + ; 
       } 
       
       / / - -   i f   n o   r u n n i n g   t r a d e   w a s   f o u n d ,   s e a r c h   i n   h i s t o r y   t r a d e s 
       i f   ( l o t s = = 0 ) 
       { 
             t o t a l = O r d e r s H i s t o r y T o t a l ( ) ; 
             f o r   ( p o s = t o t a l - 1 ;   p o s > = 0 ;   p o s - - ) 
             { 
                   i f ( ! O r d e r S e l e c t ( p o s ,   S E L E C T _ B Y _ P O S ,   M O D E _ H I S T O R Y ) )   { c o n t i n u e ; } 
                   i f   ( O r d e r M a g i c N u m b e r ( )   ! =   M a g i c S t a r t + g r o u p )   { c o n t i n u e ; } 
                   i f   ( O r d e r S y m b o l ( )   ! =   s y m b o l )   { c o n t i n u e ; } 
 	 	 	 i f   ( O r d e r T y p e ( )   >   O P _ S E L L )   { c o n t i n u e ; }   / /   n o   p o 
                   
                   i f   ( l o t s = = 0 )   { 
                         l o t s = O r d e r L o t s ( ) ; 
                   } 
                   
                   p r o f i t   =   O r d e r C l o s e P r i c e ( ) - O r d e r O p e n P r i c e ( ) ; 
                   p r o f i t   =   N o r m a l i z e D o u b l e ( p r o f i t ,   S y m b o l D i g i t s ( O r d e r S y m b o l ( ) ) ) ; 
                   i f   ( I s O r d e r T y p e S e l l ( ) )   { p r o f i t   =   - 1 * p r o f i t ; } 
                   i f   ( p r o f i t   = =   0 )   { 
                         r e t u r n ( l o t s ) ; 
                   } 
                   
                   i f   ( p r o f i t _ o r _ l o s s   = =   0 ) 
                   { 
                         i f   ( p r o f i t < 0 )   { p r o f i t _ o r _ l o s s = - 1 ; } 
                         e l s e   { p r o f i t _ o r _ l o s s = 1 ; } 
                   } 
                   e l s e   { 
                                   i f   ( p r o f i t _ o r _ l o s s = = 1   & &   p r o f i t < 0 )   { b r e a k ; } 
                         e l s e   i f   ( p r o f i t _ o r _ l o s s = = - 1   & &   p r o f i t > = 0 )   { b r e a k ; } 
                   } 
                   
                   i n _ a _ r o w + + ; 
             } 
       } 
 
       / / - - 
       / * 
       i f   ( i n i t i a l _ l o t s   <   M a r k e t I n f o ( s y m b o l , M O D E _ M I N L O T ) )   { 
             i n i t i a l _ l o t s   =   M a r k e t I n f o ( s y m b o l , M O D E _ M I N L O T ) ;     
       } * / 
 
       i f   ( l o t s = = 0 )   { l o t s   =   i n i t i a l _ l o t s ; } 
       e l s e   { 
             i f   ( p r o f i t _ o r _ l o s s = = 1 ) 
             { 
                   i f   ( r e s e t _ o n _ p r o f i t > 0   & &   i n _ a _ r o w   > =   r e s e t _ o n _ p r o f i t )   { 
                         l o t s = i n i t i a l _ l o t s ;     
                   } 
                   e l s e   { 
                         i f   ( m u l t i p l y _ o n _ p r o f i t < = 0 )   { m u l t i p l y _ o n _ p r o f i t = 1 ; } 
                         l o t s = ( l o t s * m u l t i p l y _ o n _ p r o f i t )   +   a d d _ o n _ p r o f i t ; 
                   } 
             } 
             e l s e   { 
                   i f   ( r e s e t _ o n _ l o s s > 0   & &   i n _ a _ r o w   > =   r e s e t _ o n _ l o s s )   { 
                         l o t s = i n i t i a l _ l o t s ;     
                   } 
                   e l s e   { 
                         i f   ( m u l t i p l y _ o n _ l o s s < = 0 )   { m u l t i p l y _ o n _ l o s s = 1 ; } 
                         l o t s = ( l o t s * m u l t i p l y _ o n _ l o s s )   +   a d d _ o n _ l o s s ; 
                   } 
             } 
       } 
       
       r e t u r n   l o t s ; 
 }  
  
 d o u b l e   B e t S e q u e n c e ( i n t   g r o u p ,   s t r i n g   s y m b o l ,   d o u b l e   i n i t i a l _ l o t s ,   s t r i n g   s e q u e n c e _ o n _ l o s s ,   s t r i n g   s e q u e n c e _ o n _ p r o f i t ,   b o o l   r e v e r s e = f a l s e ) 
 {     
       i n t   p o s = 0 ; 
       i n t   t o t a l = 0 ; 
       d o u b l e   l o t s = 0 ; 
       i n t   s i z e = 0 ; 
       d o u b l e   p r o f i t = 0 ; 
       i n t   p r o f i t _ o r _ l o s s = 0 ;   / /   0   -   u n k n o w n ,   1   -   p r o f i t ,   - 1   -   l o s s 
       
       / / - -   t r y   t o   g e t   l a s t   l o t   s i z e   f r o m   r u n n i n g   t r a d e s 
       t o t a l = O r d e r s T o t a l ( ) ; 
       f o r   ( p o s = t o t a l - 1 ;   p o s > = 0 ;   p o s - - ) 
       { 
             i f   ( ! O r d e r S e l e c t ( p o s ,   S E L E C T _ B Y _ P O S ,   M O D E _ T R A D E S ) )   { c o n t i n u e ; } 
             i f   ( O r d e r M a g i c N u m b e r ( )   ! =   M a g i c S t a r t + g r o u p )   { c o n t i n u e ; } 
             i f   ( O r d e r S y m b o l ( )   ! =   s y m b o l )   { c o n t i n u e ; } 
             i f   ( T i m e C u r r e n t ( )   -   O r d e r O p e n T i m e ( )   <   3 )   { c o n t i n u e ; } 
 	 	 i f   ( O r d e r E x p i r a t i o n ( )   >   0   & &   O r d e r E x p i r a t i o n ( )   < =   O r d e r C l o s e T i m e ( ) )   { c o n t i n u e ; }   / /   n o   e x p i r e d   p o 
             
             i f   ( l o t s = = 0 )   { 
                   l o t s = O r d e r L o t s ( ) ; 
             } 
             
             p r o f i t   =   O r d e r C l o s e P r i c e ( ) - O r d e r O p e n P r i c e ( ) ; 
             p r o f i t   =   N o r m a l i z e D o u b l e ( p r o f i t ,   S y m b o l D i g i t s ( O r d e r S y m b o l ( ) ) ) ; 
             i f   ( I s O r d e r T y p e S e l l ( ) )   { p r o f i t   =   - 1 * p r o f i t ; } 
             i f   ( p r o f i t   = =   0 )   { 
                   r e t u r n ( l o t s ) ; 
             } 
             
             i f   ( p r o f i t < 0 )   { p r o f i t _ o r _ l o s s = - 1 ; } 
             e l s e   { p r o f i t _ o r _ l o s s = 1 ; } 
             
             b r e a k ; 
       } 
       
       / / - -   i f   n o   r u n n i n g   t r a d e   w a s   f o u n d ,   s e a r c h   i n   h i s t o r y   t r a d e s 
       i f   ( l o t s = = 0 ) 
       { 
             t o t a l = O r d e r s H i s t o r y T o t a l ( ) ; 
             f o r   ( p o s = t o t a l - 1 ;   p o s > = 0 ;   p o s - - ) 
             { 
                   i f ( ! O r d e r S e l e c t ( p o s ,   S E L E C T _ B Y _ P O S ,   M O D E _ H I S T O R Y ) )   { c o n t i n u e ; } 
                   i f   ( O r d e r M a g i c N u m b e r ( )   ! =   M a g i c S t a r t + g r o u p )   { c o n t i n u e ; } 
                   i f   ( O r d e r S y m b o l ( )   ! =   s y m b o l )   { c o n t i n u e ; } 
 	 	 	 i f   ( O r d e r T y p e ( )   >   O P _ S E L L )   { c o n t i n u e ; }   / /   n o   p o 
                   
                   i f   ( l o t s = = 0 )   { 
                         l o t s = O r d e r L o t s ( ) ; 
                   } 
                   
                   p r o f i t   =   O r d e r C l o s e P r i c e ( ) - O r d e r O p e n P r i c e ( ) ; 
                   p r o f i t   =   N o r m a l i z e D o u b l e ( p r o f i t ,   S y m b o l D i g i t s ( O r d e r S y m b o l ( ) ) ) ; 
                   i f   ( I s O r d e r T y p e S e l l ( ) )   { p r o f i t   =   - 1 * p r o f i t ; } 
                   i f   ( p r o f i t   = =   0 )   { 
                         r e t u r n ( l o t s ) ; 
                   } 
                   
                   i f   ( p r o f i t < 0 )   { p r o f i t _ o r _ l o s s = - 1 ; } 
                   e l s e   { p r o f i t _ o r _ l o s s = 1 ; } 
                   
                   b r e a k ; 
             } 
       } 
       
       / / - -   S e q u e n c e   s t u f f 
       s t a t i c   i n t   m e m _ g r o u p [ ] ; 
       s t a t i c   s t r i n g   m e m _ l i s t _ l o s s [ ] ; 
       s t a t i c   s t r i n g   m e m _ l i s t _ p r o f i t [ ] ; 
       s t a t i c   i n t   m e m _ t i c k e t [ ] ; 
       
       / / -   g e t   t h e   l i s t   o f   n u m b e r s   a s   i t   i s   s t o r e d   i n   t h e   m e m o r y ,   o r   s t o r e   i t 
       i n t   i d = A r r a y S e a r c h ( m e m _ g r o u p ,   g r o u p ) ; 
       i f   ( i d   = =   - 1 ) 
       { 
             i f   ( s e q u e n c e _ o n _ l o s s = = " " )   { s e q u e n c e _ o n _ l o s s = " 1 " ; } 
             i f   ( s e q u e n c e _ o n _ p r o f i t = = " " )   { s e q u e n c e _ o n _ p r o f i t = " 1 " ; } 
             i d   =   A r r a y S i z e ( m e m _ g r o u p ) ; 
             A r r a y R e s i z e ( m e m _ g r o u p ,   i d + 1 ,   i d + 1 ) ; 
             A r r a y R e s i z e ( m e m _ l i s t _ l o s s ,   i d + 1 ,   i d + 1 ) ; 
             A r r a y R e s i z e ( m e m _ l i s t _ p r o f i t ,   i d + 1 ,   i d + 1 ) ; 
             A r r a y R e s i z e ( m e m _ t i c k e t ,   i d + 1 ,   i d + 1 ) ; 
             m e m _ g r o u p [ i d ]                 = g r o u p ; 
             m e m _ l i s t _ l o s s [ i d ]         = s e q u e n c e _ o n _ l o s s ; 
             m e m _ l i s t _ p r o f i t [ i d ]     = s e q u e n c e _ o n _ p r o f i t ; 
       } 
       
       b o o l   l o s s _ r e s e t = f a l s e ; 
       b o o l   p r o f i t _ r e s e t = f a l s e ; 
       i f   ( p r o f i t _ o r _ l o s s = = - 1   & &   m e m _ l i s t _ l o s s [ i d ] = = " " )   { 
             l o s s _ r e s e t = t r u e ; 
             m e m _ l i s t _ p r o f i t [ i d ] = " " ; 
       } 
       i f   ( p r o f i t _ o r _ l o s s = = 1   & &   m e m _ l i s t _ p r o f i t [ i d ] = = " " )   { 
             p r o f i t _ r e s e t = t r u e ; 
             m e m _ l i s t _ l o s s [ i d ] = " " ; 
       } 
       
       i f   ( p r o f i t _ o r _ l o s s = = 1   | |   m e m _ l i s t _ l o s s [ i d ] = = " " )   { 
             m e m _ l i s t _ l o s s [ i d ] = s e q u e n c e _ o n _ l o s s ; 
             i f   ( l o s s _ r e s e t )   { m e m _ l i s t _ l o s s [ i d ] = " 1 , " + m e m _ l i s t _ l o s s [ i d ] ; } 
             
       } 
       i f   ( p r o f i t _ o r _ l o s s = = - 1   | | m e m _ l i s t _ p r o f i t [ i d ] = = " " )   { 
             m e m _ l i s t _ p r o f i t [ i d ] = s e q u e n c e _ o n _ p r o f i t ; 
             i f   ( p r o f i t _ r e s e t )   { m e m _ l i s t _ p r o f i t [ i d ] = " 1 , " + m e m _ l i s t _ p r o f i t [ i d ] ; } 
       } 
       
       i f   ( m e m _ t i c k e t [ i d ] = = O r d e r T i c k e t ( ) )   { 
             / /   t h e   l a s t   k n o w n   t i c k e t   ( m e m _ t i c k e t [ i d ] )   s h o u l d   b e   d i f f e r e n t   t h a n   O d e r T i c k e t ( )   n o r m a l l y 
             / /   w h e n   f a i l e d   t o   c r e a t e   a   n e w   t r a d e   -   t h e   l a s t   t i c k e t   r e m a i n s   t h e   s a m e 
             / /   s o   w e   n e e d   t o   r e s e t 
             m e m _ l i s t _ l o s s [ i d ] = s e q u e n c e _ o n _ l o s s ; 
             m e m _ l i s t _ p r o f i t [ i d ] = s e q u e n c e _ o n _ p r o f i t ; 
       } 
       m e m _ t i c k e t [ i d ] = O r d e r T i c k e t ( ) ; 
       
       / / -   n o w   t u r n   t h e   s t r i n g   i n t o   i n t e g e r   a r r a y 
       i n t   s = 0 ; 
       d o u b l e   l i s t _ l o s s [ ] ; 
       d o u b l e   l i s t _ p r o f i t [ ] ; 
       s t r i n g   l i s t S [ ] ; 
       S t r i n g E x p l o d e ( " , " ,   m e m _ l i s t _ l o s s [ i d ] ,   l i s t S ) ; 
       A r r a y R e s i z e ( l i s t _ l o s s ,   A r r a y S i z e ( l i s t S ) ,   A r r a y S i z e ( l i s t S ) ) ; 
       f o r   ( s = 0 ;   s < A r r a y S i z e ( l i s t S ) ;   s + + )   { 
             l i s t _ l o s s [ s ] = ( d o u b l e ) S t r i n g T o D o u b l e ( S t r i n g T r i m ( l i s t S [ s ] ) ) ;     
       } 
       S t r i n g E x p l o d e ( " , " ,   m e m _ l i s t _ p r o f i t [ i d ] ,   l i s t S ) ; 
       A r r a y R e s i z e ( l i s t _ p r o f i t ,   A r r a y S i z e ( l i s t S ) ,   A r r a y S i z e ( l i s t S ) ) ; 
       f o r   ( s = 0 ;   s < A r r a y S i z e ( l i s t S ) ;   s + + )   { 
             l i s t _ p r o f i t [ s ] = ( d o u b l e ) S t r i n g T o D o u b l e ( S t r i n g T r i m ( l i s t S [ s ] ) ) ;     
       } 
 
       / / - - 
       i f   ( i n i t i a l _ l o t s   <   M a r k e t I n f o ( s y m b o l , M O D E _ M I N L O T ) )   { 
             i n i t i a l _ l o t s   =   M a r k e t I n f o ( s y m b o l , M O D E _ M I N L O T ) ;     
       } 
 
       i f   ( l o t s = = 0 )   { l o t s   =   i n i t i a l _ l o t s ; } 
       e l s e 
       { 
             i f   ( ( r e v e r s e = = f a l s e   & &   p r o f i t _ o r _ l o s s = = 1 )   | |   ( r e v e r s e = = t r u e   & &   p r o f i t _ o r _ l o s s = = - 1 ) ) 
             { 
                   l o t s   =   i n i t i a l _ l o t s * l i s t _ p r o f i t [ 0 ] ; 
                   / /   s h i f t   a r r a y   1   s t e p   l e f t 
                   s i z e = A r r a y S i z e ( l i s t _ p r o f i t ) ; 
                   f o r ( p o s = 0 ;   p o s < s i z e - 1 ;   p o s + + )   { 
                         l i s t _ p r o f i t [ p o s ] = l i s t _ p r o f i t [ p o s + 1 ] ; 
                   } 
                   i f   ( s i z e > 0 )   { 
                         A r r a y R e s i z e ( l i s t _ p r o f i t ,   s i z e - 1 ,   s i z e - 1 ) ; 
                         m e m _ l i s t _ p r o f i t [ i d ] = S t r i n g I m p l o d e ( " , " ,   l i s t _ p r o f i t ) ; 
                   } 
                   / /   r e s e t   t h e   o p p o s i t e   s e q u e n c e 
                   / / m e m _ l i s t _ l o s s [ i d ] = " " ; 
             } 
             e l s e   { 
                   
                   l o t s   =   i n i t i a l _ l o t s * l i s t _ l o s s [ 0 ] ; 
                   / /   s h i f t   a r r a y   1   s t e p   l e f t 
                   s i z e = A r r a y S i z e ( l i s t _ l o s s ) ; 
                   f o r ( p o s = 0 ;   p o s < s i z e - 1 ;   p o s + + )   { 
                         l i s t _ l o s s [ p o s ] = l i s t _ l o s s [ p o s + 1 ] ; 
                   } 
                   i f   ( s i z e > 0 )   { 
                         A r r a y R e s i z e ( l i s t _ l o s s ,   s i z e - 1 ,   s i z e - 1 ) ; 
                         m e m _ l i s t _ l o s s [ i d ] = S t r i n g I m p l o d e ( " , " ,   l i s t _ l o s s ) ; 
                   } 
                   / /   r e s e t   t h e   o p p o s i t e   s e q u e n c e 
                   / / m e m _ l i s t _ p r o f i t [ i d ] = " " ; 
             } 
       } 
       
       r e t u r n   l o t s ; 
 }  
  
 i n t   B u y N o w ( 
       s t r i n g   s y m b o l , 
       d o u b l e   l o t s , 
       d o u b l e   s l l , 
       d o u b l e   t p l , 
       d o u b l e   s l p , 
       d o u b l e   t p p , 
       d o u b l e   s l i p p a g e = 0 , 
       i n t   m a g i c = 0 , 
       s t r i n g   c o m m e n t = " " , 
       c o l o r   a r r o w c o l o r = C L R _ N O N E , 
       d a t e t i m e   e x p i r a t i o n   =   0 
       ) 
 { 
       i n t   t i c k e t = O r d e r C r e a t e ( 
             s y m b o l , 
             O P _ B U Y , 
             l o t s , 
             0 , 
             s l l , 
             t p l , 
             s l p , 
             t p p , 
             s l i p p a g e , 
             m a g i c , 
             c o m m e n t , 
             a r r o w c o l o r , 
             e x p i r a t i o n 
             ) ; 
       r e t u r n ( t i c k e t ) ; 
 }  
  
 i n t   C h e c k F o r T r a d i n g E r r o r ( i n t   e r r o r _ c o d e = - 1 ,   s t r i n g   m s g _ p r e f i x = " " ) 
 { 
       / /   r e t u r n   0   - >   n o   e r r o r 
       / /   r e t u r n   1   - >   o v e r c o m a b l e   e r r o r 
       / /   r e t u r n   2   - >   f a t a l   e r r o r 
       
       i f   ( e r r o r _ c o d e < 0 )   { 
             e r r o r _ c o d e = G e t L a s t E r r o r ( ) ;     
       } 
       
       i n t   r e t v a l = 0 ; 
       s t a t i c   i n t   t r y o u t s = 0 ; 
       
       / / - -   e r r o r   c h e c k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
       s w i t c h ( e r r o r _ c o d e ) 
       { 
             / / - -   n o   e r r o r 
             c a s e   0 : 
                   r e t v a l = 0 ; 
                   b r e a k ; 
             / / - -   o v e r c o m a b l e   e r r o r s 
             c a s e   1 :   / /   N o   e r r o r   r e t u r n e d 
                   R e f r e s h R a t e s ( ) ; 
                   r e t v a l = 1 ; 
                   b r e a k ; 
             c a s e   4 :   / / E R R _ S E R V E R _ B U S Y 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) , " .   R e t r y i n g . . " ) ) ; } 
                   S l e e p ( 1 0 0 0 ) ; 
                   R e f r e s h R a t e s ( ) ; 
                   r e t v a l = 1 ; 
                   b r e a k ; 
             c a s e   6 :   / / E R R _ N O _ C O N N E C T I O N 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) , " .   R e t r y i n g . . " ) ) ; } 
                   w h i l e ( ! I s C o n n e c t e d ( ) )   { S l e e p ( 1 0 0 ) ; } 
                   w h i l e ( I s T r a d e C o n t e x t B u s y ( ) )   { S l e e p ( 5 0 ) ; } 
                   R e f r e s h R a t e s ( ) ; 
                   r e t v a l = 1 ; 
                   b r e a k ; 
             c a s e   1 2 8 :   / / E R R _ T R A D E _ T I M E O U T 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) , " .   R e t r y i n g . . " ) ) ; } 
                   R e f r e s h R a t e s ( ) ; 
                   r e t v a l = 1 ; 
                   b r e a k ; 
             c a s e   1 2 9 :   / / E R R _ I N V A L I D _ P R I C E 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) , " .   R e t r y i n g . . " ) ) ; } 
                   i f   ( ! I s T e s t i n g ( ) )   { w h i l e ( R e f r e s h R a t e s ( ) = = f a l s e )   { S l e e p ( 1 ) ; } } 
                   r e t v a l = 1 ; 
                   b r e a k ; 
             c a s e   1 3 0 :   / / E R R _ I N V A L I D _ S T O P S 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) , " .   W a i t i n g   f o r   a   n e w   t i c k   t o   r e t r y . . " ) ) ; } 
                   i f   ( ! I s T e s t i n g ( ) )   { w h i l e ( R e f r e s h R a t e s ( ) = = f a l s e )   { S l e e p ( 1 ) ; } } 
                   r e t v a l = 1 ; 
                   b r e a k ; 
             c a s e   1 3 5 :   / / E R R _ P R I C E _ C H A N G E D 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) , " .   W a i t i n g   f o r   a   n e w   t i c k   t o   r e t r y . . " ) ) ; } 
                   i f   ( ! I s T e s t i n g ( ) )   { w h i l e ( R e f r e s h R a t e s ( ) = = f a l s e )   { S l e e p ( 1 ) ; } } 
                   r e t v a l = 1 ; 
                   b r e a k ; 
             c a s e   1 3 6 :   / / E R R _ O F F _ Q U O T E S 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) , " .   W a i t i n g   f o r   a   n e w   t i c k   t o   r e t r y . . " ) ) ; } 
                   i f   ( ! I s T e s t i n g ( ) )   { w h i l e ( R e f r e s h R a t e s ( ) = = f a l s e )   { S l e e p ( 1 ) ; } } 
                   r e t v a l = 1 ; 
                   b r e a k ; 
             c a s e   1 3 7 :   / / E R R _ B R O K E R _ B U S Y 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) , " .   R e t r y i n g . . " ) ) ; } 
                   S l e e p ( 1 0 0 0 ) ; 
                   r e t v a l = 1 ; 
                   b r e a k ; 
             c a s e   1 3 8 :   / / E R R _ R E Q U O T E 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) , " .   W a i t i n g   f o r   a   n e w   t i c k   t o   r e t r y . . " ) ) ; } 
                   i f   ( ! I s T e s t i n g ( ) )   { w h i l e ( R e f r e s h R a t e s ( ) = = f a l s e )   { S l e e p ( 1 ) ; } } 
                   r e t v a l = 1 ; 
                   b r e a k ; 
             c a s e   1 4 2 :   / / T h i s   c o d e   s h o u l d   b e   p r o c e s s e d   i n   t h e   s a m e   w a y   a s   e r r o r   1 2 8 . 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) , " .   R e t r y i n g . . " ) ) ; } 
                   R e f r e s h R a t e s ( ) ; 
                   r e t v a l = 1 ; 
                   b r e a k ; 
             c a s e   1 4 3 :   / / T h i s   c o d e   s h o u l d   b e   p r o c e s s e d   i n   t h e   s a m e   w a y   a s   e r r o r   1 2 8 . 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) , " .   R e t r y i n g . . " ) ) ; } 
                   R e f r e s h R a t e s ( ) ; 
                   r e t v a l = 1 ; 
                   b r e a k ; 
             / * c a s e   1 4 5 :   / / E R R _ T R A D E _ M O D I F Y _ D E N I E D 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) , " .   W a i t i n g   f o r   a   n e w   t i c k   t o   r e t r y . . " ) ) ; } 
                   w h i l e ( R e f r e s h R a t e s ( ) = = f a l s e )   { S l e e p ( 1 ) ; } 
                   r e t u r n ( 1 ) ; 
             * / 
             c a s e   1 4 6 :   / / E R R _ T R A D E _ C O N T E X T _ B U S Y 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) , " .   R e t r y i n g . . " ) ) ; } 
                   w h i l e ( I s T r a d e C o n t e x t B u s y ( ) )   { S l e e p ( 5 0 ) ; } 
                   R e f r e s h R a t e s ( ) ; 
                   r e t v a l = 1 ; 
                   b r e a k ; 
             / / - -   c r i t i c a l   e r r o r s 
             d e f a u l t : 
                   i f   ( m s g _ p r e f i x ! = " " )   { P r i n t ( S t r i n g C o n c a t e n a t e ( m s g _ p r e f i x , " :   " , E r r o r M e s s a g e ( e r r o r _ c o d e ) ) ) ; } 
                   r e t v a l = 2 ; 
                   b r e a k ; 
       } 
 
       i f   ( r e t v a l = = 0 )   { t r y o u t s = 0 ; } 
       e l s e   i f   ( r e t v a l = = 1 )   { 
             t r y o u t s + + ; 
             i f   ( t r y o u t s > = 1 0 )   { 
                   t r y o u t s = 0 ; 
                   r e t v a l = 2 ; 
             }   e l s e   { 
                   P r i n t ( " r e t r y   # " + ( s t r i n g ) t r y o u t s + "   o f   1 0 " ) ; 
             } 
       } 
       
       r e t u r n ( r e t v a l ) ; 
 }  
  
 b o o l   C l o s e T r a d e ( i n t   t i c k e t ,   d o u b l e   s l i p p a g e = 0 ,   c o l o r   a r r o w c o l o r = C L R _ N O N E ) 
 { 
       b o o l   s u c c e s s = f a l s e ; 
       i f   ( ! O r d e r S e l e c t ( t i c k e t , S E L E C T _ B Y _ T I C K E T , M O D E _ T R A D E S ) )   { r e t u r n ( f a l s e ) ; } 
       
       w h i l e ( t r u e ) 
       { 
             / / - -   w a i t   i f   n e e d e d   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
             W a i t T r a d e C o n t e x t I f B u s y ( ) ; 
             / / - -   c l o s e   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
             s u c c e s s = O r d e r C l o s e ( t i c k e t , a t t r L o t s ( ) , a t t r C l o s e P r i c e ( ) , ( i n t ) ( s l i p p a g e * P i p V a l u e ( a t t r S y m b o l ( ) ) ) , a r r o w c o l o r ) ; 
             i f   ( s u c c e s s = = t r u e )   { 
                   i f   ( U S E _ V I R T U A L _ S T O P S )   { 
                         V i r t u a l S t o p s D r i v e r ( " c l e a r " , t i c k e t ) ; 
                   } 
                   R e g i s t e r E v e n t ( " t r a d e " ) ; 
                   r e t u r n ( t r u e ) ; 
             } 
             / / - -   e r r o r s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
             i n t   e r r a c t i o n = C h e c k F o r T r a d i n g E r r o r ( G e t L a s t E r r o r ( ) ,   " C l o s i n g   t r a d e   # " + ( s t r i n g ) t i c k e t + "   e r r o r " ) ; 
             s w i t c h ( e r r a c t i o n ) 
             { 
                   c a s e   0 :   b r e a k ;         / /   n o   e r r o r 
                   c a s e   1 :   c o n t i n u e ;   / /   o v e r c o m a b l e   e r r o r 
                   c a s e   2 :   b r e a k ;         / /   f a t a l   e r r o r 
             } 
             b r e a k ; 
       } 
       r e t u r n ( f a l s e ) ; 
 }  
  
 s t r i n g   C u r r e n t S y m b o l ( s t r i n g   s y m b o l = " " )  
 {  
       s t a t i c   s t r i n g   m e m o r y = " " ;  
       i f   ( s y m b o l ! = " " )   { m e m o r y = s y m b o l ; }   e l s e  
       i f   ( m e m o r y = = " " )   { m e m o r y = S y m b o l ( ) ; }  
       r e t u r n ( m e m o r y ) ;  
 }  
  
 E N U M _ T I M E F R A M E S   C u r r e n t T i m e f r a m e ( E N U M _ T I M E F R A M E S   t f = - 1 ) 
 { 
 	 s t a t i c   E N U M _ T I M E F R A M E S   m e m o r y = 0 ; 
       i f   ( t f > = 0 )   { m e m o r y = t f ; } 
       r e t u r n ( m e m o r y ) ; 
 }  
  
 b o o l   D e l e t e O r d e r ( i n t   t i c k e t ,   c o l o r   a r r o w c o l o r ) 
 { 
       b o o l   s u c c e s s = f a l s e ; 
       i f   ( ! O r d e r S e l e c t ( t i c k e t , S E L E C T _ B Y _ T I C K E T , M O D E _ T R A D E S ) )   { r e t u r n ( f a l s e ) ; } 
       
       w h i l e ( t r u e ) 
       { 
             / / - -   w a i t   i f   n e e d e d   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
             W a i t T r a d e C o n t e x t I f B u s y ( ) ; 
             / / - -   d e l e t e   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
             s u c c e s s = O r d e r D e l e t e ( t i c k e t , a r r o w c o l o r ) ; 
             i f   ( s u c c e s s = = t r u e )   { 
                   i f   ( U S E _ V I R T U A L _ S T O P S )   { 
                         V i r t u a l S t o p s D r i v e r ( " c l e a r " , t i c k e t ) ; 
                   } 
                   R e g i s t e r E v e n t ( " t r a d e " ) ; 
                   r e t u r n ( t r u e ) ; 
             } 
             / / - -   e r r o r   c h e c k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
             i n t   e r r a c t i o n = C h e c k F o r T r a d i n g E r r o r ( G e t L a s t E r r o r ( ) ,   " D e l e t i n g   o r d e r   # " + ( s t r i n g ) t i c k e t + "   e r r o r " ) ; 
             s w i t c h ( e r r a c t i o n ) 
             { 
                   c a s e   0 :   b r e a k ;         / /   n o   e r r o r 
                   c a s e   1 :   c o n t i n u e ;   / /   o v e r c o m a b l e   e r r o r 
                   c a s e   2 :   b r e a k ;         / /   f a t a l   e r r o r 
             } 
             b r e a k ; 
       } 
       r e t u r n ( f a l s e ) ; 
 }  
  
 v o i d   D r a w S p r e a d I n f o ( ) 
 { 
       s t a t i c   b o o l   a l l o w _ d r a w   =   t r u e ; 
       i f   ( a l l o w _ d r a w = = f a l s e )   { r e t u r n ; } 
       i f   ( M Q L I n f o I n t e g e r ( M Q L _ T E S T E R )   & &   ! M Q L I n f o I n t e g e r ( M Q L _ V I S U A L _ M O D E ) )   { a l l o w _ d r a w = f a l s e ; }   / /   A l l o w e d   t o   d r a w   o n l y   o n c e   i n   t e s t i n g   m o d e 
 
       s t a t i c   b o o l   p a s s e d                   =   f a l s e ; 
       s t a t i c   d o u b l e   m a x _ s p r e a d       =   0 ; 
       s t a t i c   d o u b l e   m i n _ s p r e a d       =   E M P T Y _ V A L U E ; 
       s t a t i c   d o u b l e   a v g _ s p r e a d       =   0 ; 
       s t a t i c   d o u b l e   a v g _ a d d             =   0 ; 
       s t a t i c   d o u b l e   a v g _ c n t             =   0 ; 
 
       d o u b l e   c u s t o m _ p o i n t   =   C u s t o m P o i n t ( S y m b o l ( ) ) ; 
       d o u b l e   c u r r e n t _ s p r e a d   =   0 ; 
       i f   ( c u s t o m _ p o i n t   >   0 )   { 
             c u r r e n t _ s p r e a d   =   ( S y m b o l I n f o D o u b l e ( S y m b o l ( ) , S Y M B O L _ A S K ) - S y m b o l I n f o D o u b l e ( S y m b o l ( ) , S Y M B O L _ B I D ) ) / c u s t o m _ p o i n t ; 
       } 
       i f   ( c u r r e n t _ s p r e a d   >   m a x _ s p r e a d )   { m a x _ s p r e a d   =   c u r r e n t _ s p r e a d ; } 
       i f   ( c u r r e n t _ s p r e a d   <   m i n _ s p r e a d )   { m i n _ s p r e a d   =   c u r r e n t _ s p r e a d ; } 
       
       a v g _ c n t + + ; 
       a v g _ a d d           =   a v g _ a d d   +   c u r r e n t _ s p r e a d ; 
       a v g _ s p r e a d     =   a v g _ a d d   /   a v g _ c n t ; 
 
       i n t   x = 0 ;   i n t   y = 0 ; 
       s t r i n g   n a m e ; 
 
       / /   c r e a t e   o b j e c t s 
       i f   ( p a s s e d   = =   f a l s e ) 
       { 
             p a s s e d = t r u e ; 
             
             n a m e = " f x d _ s p r e a d _ c u r r e n t _ l a b e l " ; 
             i f   ( O b j e c t F i n d ( 0 ,   n a m e ) = = - 1 )   { 
                   O b j e c t C r e a t e ( 0 ,   n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ X D I S T A N C E ,   x + 1 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 1 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ F O N T S I Z E ,   1 8 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ,   c l r D a r k O r a n g e ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ T E X T ,   " S p r e a d : " ) ; 
             } 
             n a m e = " f x d _ s p r e a d _ m a x _ l a b e l " ; 
             i f   ( O b j e c t F i n d ( 0 ,   n a m e ) = = - 1 )   { 
                   O b j e c t C r e a t e ( 0 ,   n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ X D I S T A N C E ,   x + 1 4 8 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 1 7 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ F O N T S I Z E ,   7 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ,   c l r O r a n g e R e d ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ T E X T ,   " m a x : " ) ; 
             } 
             n a m e = " f x d _ s p r e a d _ a v g _ l a b e l " ; 
             i f   ( O b j e c t F i n d ( 0 ,   n a m e ) = = - 1 )   { 
                   O b j e c t C r e a t e ( 0 ,   n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ X D I S T A N C E ,   x + 1 4 8 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 9 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ F O N T S I Z E ,   7 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ,   c l r D a r k O r a n g e ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ T E X T ,   " a v g : " ) ; 
             } 
             n a m e = " f x d _ s p r e a d _ m i n _ l a b e l " ; 
             i f   ( O b j e c t F i n d ( 0 ,   n a m e ) = = - 1 )   { 
                   O b j e c t C r e a t e ( 0 ,   n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ X D I S T A N C E ,   x + 1 4 8 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 1 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ F O N T S I Z E ,   7 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ,   c l r G o l d ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ T E X T ,   " m i n : " ) ; 
             } 
             n a m e = " f x d _ s p r e a d _ c u r r e n t " ; 
             i f   ( O b j e c t F i n d ( 0 ,   n a m e ) = = - 1 )   { 
                   O b j e c t C r e a t e ( 0 ,   n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ X D I S T A N C E ,   x + 9 3 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 1 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ F O N T S I Z E ,   1 8 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ,   c l r D a r k O r a n g e ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ T E X T ,   " 0 " ) ; 
             } 
             n a m e = " f x d _ s p r e a d _ m a x " ; 
             i f   ( O b j e c t F i n d ( 0 ,   n a m e ) = = - 1 )   { 
                   O b j e c t C r e a t e ( 0 ,   n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ X D I S T A N C E ,   x + 1 7 3 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 1 7 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ F O N T S I Z E ,   7 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ,   c l r O r a n g e R e d ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ T E X T ,   " 0 " ) ; 
             } 
             n a m e = " f x d _ s p r e a d _ a v g " ; 
             i f   ( O b j e c t F i n d ( 0 ,   n a m e ) = = - 1 )   { 
                   O b j e c t C r e a t e ( 0 ,   n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ X D I S T A N C E ,   x + 1 7 3 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 9 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ F O N T S I Z E ,   7 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ,   c l r D a r k O r a n g e ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ T E X T ,   " 0 " ) ; 
             } 
             n a m e = " f x d _ s p r e a d _ m i n " ; 
             i f   ( O b j e c t F i n d ( 0 ,   n a m e ) = = - 1 )   { 
                   O b j e c t C r e a t e ( 0 ,   n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ X D I S T A N C E ,   x + 1 7 3 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 1 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ F O N T S I Z E ,   7 ) ; 
                   O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O L O R ,   c l r G o l d ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ; 
                   O b j e c t S e t S t r i n g ( 0 ,   n a m e ,   O B J P R O P _ T E X T ,   " 0 " ) ; 
             } 
       } 
       
       O b j e c t S e t S t r i n g ( 0 ,   " f x d _ s p r e a d _ c u r r e n t " ,   O B J P R O P _ T E X T ,   D o u b l e T o S t r ( c u r r e n t _ s p r e a d , 2 ) ) ; 
       O b j e c t S e t S t r i n g ( 0 ,   " f x d _ s p r e a d _ m a x " ,   O B J P R O P _ T E X T ,   D o u b l e T o S t r ( m a x _ s p r e a d , 2 ) ) ; 
       O b j e c t S e t S t r i n g ( 0 ,   " f x d _ s p r e a d _ a v g " ,   O B J P R O P _ T E X T ,   D o u b l e T o S t r ( a v g _ s p r e a d , 2 ) ) ; 
       O b j e c t S e t S t r i n g ( 0 ,   " f x d _ s p r e a d _ m i n " ,   O B J P R O P _ T E X T ,   D o u b l e T o S t r ( m i n _ s p r e a d , 2 ) ) ; 
 }  
  
 s t r i n g   D r a w S t a t u s ( s t r i n g   t e x t = " " )  
 {  
       s t a t i c   s t r i n g   m e m o r y ;  
       i f   ( t e x t = = " " )   {  
             r e t u r n ( m e m o r y ) ;  
       }  
        
       s t a t i c   b o o l   p a s s e d   =   f a l s e ;  
       i n t   x = 2 1 0 ;   i n t   y = 0 ;  
       s t r i n g   n a m e ;  
  
       / / - -   d r a w   t h e   o b j e c t s   o n c e  
       i f   ( p a s s e d   = =   f a l s e )  
       {  
             p a s s e d   =   t r u e ;  
             n a m e = " f x d _ s t a t u s _ t i t l e " ;  
             O b j e c t C r e a t e ( 0 , n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ;  
             O b j e c t S e t I n t e g e r ( 0 , n a m e ,   O B J P R O P _ B A C K ,   f a l s e ) ;  
             O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ;  
             O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ;  
             O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ;  
             O b j e c t S e t I n t e g e r ( 0 , n a m e ,   O B J P R O P _ X D I S T A N C E ,   x ) ;  
             O b j e c t S e t I n t e g e r ( 0 , n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 1 7 ) ;  
             O b j e c t S e t S t r i n g ( 0 , n a m e ,   O B J P R O P _ T E X T ,   " S t a t u s " ) ;  
             O b j e c t S e t S t r i n g ( 0 , n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ;  
             O b j e c t S e t I n t e g e r ( 0 , n a m e ,   O B J P R O P _ F O N T S I Z E ,   7 ) ;  
             O b j e c t S e t I n t e g e r ( 0 , n a m e ,   O B J P R O P _ C O L O R ,   c l r G r a y ) ;  
              
             n a m e = " f x d _ s t a t u s _ t e x t " ;  
             O b j e c t C r e a t e ( 0 , n a m e ,   O B J _ L A B E L ,   0 ,   0 ,   0 ) ;  
             O b j e c t S e t I n t e g e r ( 0 , n a m e ,   O B J P R O P _ B A C K ,   f a l s e ) ;  
             O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ C O R N E R ,   C O R N E R _ L E F T _ L O W E R ) ;  
             O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ A N C H O R ,   A N C H O R _ L E F T _ L O W E R ) ;  
             O b j e c t S e t I n t e g e r ( 0 ,   n a m e ,   O B J P R O P _ H I D D E N ,   t r u e ) ;  
             O b j e c t S e t I n t e g e r ( 0 , n a m e ,   O B J P R O P _ X D I S T A N C E ,   x + 2 ) ;  
             O b j e c t S e t I n t e g e r ( 0 , n a m e ,   O B J P R O P _ Y D I S T A N C E ,   y + 1 ) ;  
             O b j e c t S e t S t r i n g ( 0 , n a m e ,   O B J P R O P _ F O N T ,   " A r i a l " ) ;  
             O b j e c t S e t I n t e g e r ( 0 , n a m e ,   O B J P R O P _ F O N T S I Z E ,   1 2 ) ;  
             O b j e c t S e t I n t e g e r ( 0 , n a m e ,   O B J P R O P _ C O L O R ,   c l r A q u a ) ;  
       }  
  
       / / - -   u p d a t e   t h e   t e x t   w h e n   n e e d e d  
       i f   ( t e x t   ! =   m e m o r y )   {  
             m e m o r y = t e x t ;  
             O b j e c t S e t S t r i n g ( 0 , " f x d _ s t a t u s _ t e x t " ,   O B J P R O P _ T E X T ,   t e x t ) ;  
       }  
        
       r e t u r n ( t e x t ) ;  
 }  
  
 d o u b l e   D y n a m i c L o t s ( s t r i n g   m o d e = " b a l a n c e " ,   d o u b l e   v a l u e = 0 ,   d o u b l e   s l = 0 ,   s t r i n g   a l i g n = " a l i g n " ,   d o u b l e   R J F R _ i n i t i a l _ l o t s = 0 ) 
 { 
       d o u b l e   s i z e = 0 ; 
       s t r i n g   s y m b o l = G e t S y m b o l ( ) ; 
       d o u b l e   L o t S t e p = M a r k e t I n f o ( s y m b o l , M O D E _ L O T S T E P ) ; 
       d o u b l e   L o t S i z e = M a r k e t I n f o ( s y m b o l , M O D E _ L O T S I Z E ) ; 
       d o u b l e   M i n L o t s = M a r k e t I n f o ( s y m b o l , M O D E _ M I N L O T ) ; 
       d o u b l e   M a x L o t s = M a r k e t I n f o ( s y m b o l , M O D E _ M A X L O T ) ; 
       d o u b l e   T i c k V a l u e = M a r k e t I n f o ( s y m b o l , M O D E _ T I C K V A L U E ) ; 
       d o u b l e   p o i n t = M a r k e t I n f o ( s y m b o l , M O D E _ P O I N T ) ; 
       d o u b l e   t i c k s i z e = M a r k e t I n f o ( s y m b o l , M O D E _ T I C K S I Z E ) ; 
       d o u b l e   m a r g i n _ r e q u i r e d = M a r k e t I n f o ( s y m b o l , M O D E _ M A R G I N R E Q U I R E D ) ; 
       
       i f   ( m o d e = = " f i x e d "   | |   m o d e = = " l o t s " )           { s i z e = v a l u e ; } 
       e l s e   i f   ( m o d e = = " b l o c k - e q u i t y " )             { s i z e = ( v a l u e / 1 0 0 ) * A c c o u n t E q u i t y ( ) / m a r g i n _ r e q u i r e d ; } 
       e l s e   i f   ( m o d e = = " b l o c k - b a l a n c e " )           { s i z e = ( v a l u e / 1 0 0 ) * A c c o u n t B a l a n c e ( ) / m a r g i n _ r e q u i r e d ; } 
       e l s e   i f   ( m o d e = = " b l o c k - f r e e m a r g i n " )     { s i z e = ( v a l u e / 1 0 0 ) * A c c o u n t F r e e M a r g i n ( ) / m a r g i n _ r e q u i r e d ; } 
       e l s e   i f   ( m o d e = = " e q u i t y " )             { s i z e = ( v a l u e / 1 0 0 ) * A c c o u n t E q u i t y ( ) / ( L o t S i z e * T i c k V a l u e ) ; } 
       e l s e   i f   ( m o d e = = " b a l a n c e " )           { s i z e = ( v a l u e / 1 0 0 ) * A c c o u n t B a l a n c e ( ) / ( L o t S i z e * T i c k V a l u e ) ; } 
       e l s e   i f   ( m o d e = = " f r e e m a r g i n " )     { s i z e = ( v a l u e / 1 0 0 ) * A c c o u n t F r e e M a r g i n ( ) / ( L o t S i z e * T i c k V a l u e ) ; } 
       e l s e   i f   ( m o d e = = " e q u i t y R i s k " )           { s i z e = ( ( v a l u e / 1 0 0 ) * A c c o u n t E q u i t y ( ) ) / ( s l * ( ( T i c k V a l u e / t i c k s i z e ) * p o i n t ) * P i p V a l u e ( s y m b o l ) ) ; } 
       e l s e   i f   ( m o d e = = " b a l a n c e R i s k " )         { s i z e = ( ( v a l u e / 1 0 0 ) * A c c o u n t B a l a n c e ( ) ) / ( s l * ( ( T i c k V a l u e / t i c k s i z e ) * p o i n t ) * P i p V a l u e ( s y m b o l ) ) ; } 
       e l s e   i f   ( m o d e = = " f r e e m a r g i n R i s k " )   { s i z e = ( ( v a l u e / 1 0 0 ) * A c c o u n t F r e e M a r g i n ( ) ) / ( s l * ( ( T i c k V a l u e / t i c k s i z e ) * p o i n t ) * P i p V a l u e ( s y m b o l ) ) ; } 
       e l s e   i f   ( m o d e = = " f i x e d R i s k " )       { s i z e = ( v a l u e ) / ( s l * ( ( T i c k V a l u e / t i c k s i z e ) * p o i n t ) * P i p V a l u e ( s y m b o l ) ) ; } 
       e l s e   i f   ( m o d e = = " f i x e d R a t i o "   | |   m o d e = = " R J F R " )   { 
             
             / / / / / 
             / /   R y a n   J o n e s   F i x e d   R a t i o   M M   s t a t i c   d a t a 
             s t a t i c   d o u b l e   R J F R _ s t a r t _ l o t s = 0 ; 
             s t a t i c   d o u b l e   R J F R _ d e l t a = 0 ; 
             s t a t i c   d o u b l e   R J F R _ u n i t s = 1 ; 
             s t a t i c   d o u b l e   R J F R _ t a r g e t _ l o w e r = 0 ; 
             s t a t i c   d o u b l e   R J F R _ t a r g e t _ u p p e r = 0 ; 
             / / / / / 
             
             i f   ( R J F R _ s t a r t _ l o t s < = 0 )   { R J F R _ s t a r t _ l o t s = v a l u e ; } 
             i f   ( R J F R _ s t a r t _ l o t s < M i n L o t s )   { R J F R _ s t a r t _ l o t s = M i n L o t s ; } 
             i f   ( R J F R _ d e l t a < = 0 )   { R J F R _ d e l t a = s l ; } 
             i f   ( R J F R _ t a r g e t _ u p p e r < = 0 )   { 
                   R J F R _ t a r g e t _ u p p e r = A c c o u n t E q u i t y ( ) + ( R J F R _ u n i t s * R J F R _ d e l t a ) ; 
                   P r i n t ( " F i x e d   R a t i o   M M :   U n i t s = > " , R J F R _ u n i t s , " ;   D e l t a = " , R J F R _ d e l t a , " ;   U p p e r   T a r g e t   E q u i t y = > " , R J F R _ t a r g e t _ u p p e r ) ; 
             } 
             i f   ( A c c o u n t E q u i t y ( ) > = R J F R _ t a r g e t _ u p p e r ) 
             { 
                   w h i l e ( t r u e )   { 
                         P r i n t ( " F i x e d   R a t i o   M M   g o i n g   u p   t o   " , ( R J F R _ s t a r t _ l o t s * ( R J F R _ u n i t s + 1 ) ) , "   l o t s :   E q u i t y   i s   a b o v e   U p p e r   T a r g e t   E q u i t y   ( " , A c c o u n t E q u i t y ( ) , " > = " , R J F R _ t a r g e t _ u p p e r , " ) " ) ; 
                         R J F R _ u n i t s + + ; 
                         R J F R _ t a r g e t _ l o w e r = R J F R _ t a r g e t _ u p p e r ; 
                         R J F R _ t a r g e t _ u p p e r = R J F R _ t a r g e t _ u p p e r + ( R J F R _ u n i t s * R J F R _ d e l t a ) ; 
                         P r i n t ( " F i x e d   R a t i o   M M :   U n i t s = > " , R J F R _ u n i t s , " ;   D e l t a = " , R J F R _ d e l t a , " ;   L o w e r   T a r g e t   E q u i t y = > " , R J F R _ t a r g e t _ l o w e r , " ;   U p p e r   T a r g e t   E q u i t y = > " , R J F R _ t a r g e t _ u p p e r ) ; 
                         i f   ( A c c o u n t E q u i t y ( ) < R J F R _ t a r g e t _ u p p e r )   { b r e a k ; } 
                   } 
             } 
             e l s e   i f   ( A c c o u n t E q u i t y ( ) < = R J F R _ t a r g e t _ l o w e r ) 
             { 
                   w h i l e ( t r u e )   { 
                   i f   ( A c c o u n t E q u i t y ( ) > R J F R _ t a r g e t _ l o w e r )   { b r e a k ; } 
                         i f   ( R J F R _ u n i t s > 1 )   {                   
                               P r i n t ( " F i x e d   R a t i o   M M   g o i n g   d o w n   t o   " , ( R J F R _ s t a r t _ l o t s * ( R J F R _ u n i t s - 1 ) ) , "   l o t s :   E q u i t y   i s   b e l o w   L o w e r   T a r g e t   E q u i t y   |   " ,   A c c o u n t E q u i t y ( ) , "   < =   " , R J F R _ t a r g e t _ l o w e r , " ) " ) ; 
                               R J F R _ t a r g e t _ u p p e r = R J F R _ t a r g e t _ l o w e r ; 
                               R J F R _ t a r g e t _ l o w e r = R J F R _ t a r g e t _ l o w e r - ( ( R J F R _ u n i t s - 1 ) * R J F R _ d e l t a ) ; 
                               R J F R _ u n i t s - - ; 
                               P r i n t ( " F i x e d   R a t i o   M M :   U n i t s = > " , R J F R _ u n i t s , " ;   D e l t a = " , R J F R _ d e l t a , " ;   L o w e r   T a r g e t   E q u i t y = > " , R J F R _ t a r g e t _ l o w e r , " ;   U p p e r   T a r g e t   E q u i t y = > " , R J F R _ t a r g e t _ u p p e r ) ; 
                         }   e l s e   { b r e a k ; } 
                   } 
             } 
             s i z e = R J F R _ s t a r t _ l o t s * R J F R _ u n i t s ; 
       } 
       
 	 i f   ( s i z e = = E M P T Y _ V A L U E )   { s i z e = 0 ; } 
 	 
       s i z e = M a t h R o u n d ( s i z e / L o t S t e p ) * L o t S t e p ; 
       
       s t a t i c   b o o l   a l e r t _ m i n _ l o t s = f a l s e ; 
       i f   ( s i z e < M i n L o t s   & &   a l e r t _ m i n _ l o t s = = f a l s e )   { 
             a l e r t _ m i n _ l o t s = t r u e ; 
             A l e r t ( " Y o u   w a n t   t o   t r a d e   " , s i z e , "   l o t ,   b u t   y o u r   b r o k e r ' s   m i n i m u m   i s   " , M i n L o t s , "   l o t .   T h e   t r a d e / o r d e r   w i l l   c o n t i n u e   w i t h   " , M i n L o t s , "   l o t   i n s t e a d   o f   " , s i z e , "   l o t .   T h e   s a m e   r u l e   w i l l   b e   a p p l i e d   f o r   n e x t   t r a d e s / o r d e r s   w i t h   d e s i r e d   l o t   s i z e   l o w e r   t h a n   t h e   m i n i m u m .   Y o u   w i l l   n o t   s e e   t h i s   m e s s a g e   a g a i n   u n t i l   y o u   r e s t a r t   t h e   p r o g r a m . " ) ; 
       } 
       
       i f   ( a l i g n = = " a l i g n " )   { 
             i f   ( s i z e < M i n L o t s )   { s i z e = M i n L o t s ; } 
             i f   ( s i z e > M a x L o t s )   { s i z e = M a x L o t s ; } 
       } 
       
       r e t u r n   ( s i z e ) ; 
 }  
  
 s t r i n g   E r r o r M e s s a g e ( i n t   e r r o r _ c o d e = - 1 ) 
 { 
 	 s t r i n g   e   =   " " ; 
 	 
 	 i f   ( e r r o r _ c o d e   <   0 )   { e r r o r _ c o d e   =   G e t L a s t E r r o r ( ) ; } 
 	 
 	 s w i t c h ( e r r o r _ c o d e ) 
 	 { 
 	 	 / / - -   c o d e s   r e t u r n e d   f r o m   t r a d e   s e r v e r 
 	 	 c a s e   0 : 	 r e t u r n ( " " ) ; 
 	 	 c a s e   1 : 	 e   =   " N o   e r r o r   r e t u r n e d " ;   b r e a k ; 
 	 	 c a s e   2 : 	 e   =   " C o m m o n   e r r o r " ;   b r e a k ; 
 	 	 c a s e   3 : 	 e   =   " I n v a l i d   t r a d e   p a r a m e t e r s " ;   b r e a k ; 
 	 	 c a s e   4 : 	 e   =   " T r a d e   s e r v e r   i s   b u s y " ;   b r e a k ; 
 	 	 c a s e   5 : 	 e   =   " O l d   v e r s i o n   o f   t h e   c l i e n t   t e r m i n a l " ;   b r e a k ; 
 	 	 c a s e   6 : 	 e   =   " N o   c o n n e c t i o n   w i t h   t r a d e   s e r v e r " ;   b r e a k ; 
 	 	 c a s e   7 : 	 e   =   " N o t   e n o u g h   r i g h t s " ;   b r e a k ; 
 	 	 c a s e   8 : 	 e   =   " T o o   f r e q u e n t   r e q u e s t s " ;   b r e a k ; 
 	 	 c a s e   9 : 	 e   =   " M a l f u n c t i o n a l   t r a d e   o p e r a t i o n   ( n e v e r   r e t u r n e d   e r r o r ) " ;   b r e a k ; 
 	 	 c a s e   6 4 :     e   =   " A c c o u n t   d i s a b l e d " ;   b r e a k ; 
 	 	 c a s e   6 5 :     e   =   " I n v a l i d   a c c o u n t " ;   b r e a k ; 
 	 	 c a s e   1 2 8 :   e   =   " T r a d e   t i m e o u t " ;   b r e a k ; 
 	 	 c a s e   1 2 9 :   e   =   " I n v a l i d   p r i c e " ;   b r e a k ; 
 	 	 c a s e   1 3 0 :   e   =   " I n v a l i d   S l   o r   T P " ;   b r e a k ; 
 	 	 c a s e   1 3 1 :   e   =   " I n v a l i d   t r a d e   v o l u m e " ;   b r e a k ; 
 	 	 c a s e   1 3 2 :   e   =   " M a r k e t   i s   c l o s e d " ;   b r e a k ; 
 	 	 c a s e   1 3 3 :   e   =   " T r a d e   i s   d i s a b l e d " ;   b r e a k ; 
 	 	 c a s e   1 3 4 :   e   =   " N o t   e n o u g h   m o n e y " ;   b r e a k ; 
 	 	 c a s e   1 3 5 :   e   =   " P r i c e   c h a n g e d " ;   b r e a k ; 
 	 	 c a s e   1 3 6 :   e   =   " O f f   q u o t e s " ;   b r e a k ; 
 	 	 c a s e   1 3 7 :   e   =   " B r o k e r   i s   b u s y   ( n e v e r   r e t u r n e d   e r r o r ) " ;   b r e a k ; 
 	 	 c a s e   1 3 8 :   e   =   " R e q u o t e " ;   b r e a k ; 
 	 	 c a s e   1 3 9 :   e   =   " O r d e r   i s   l o c k e d " ;   b r e a k ; 
 	 	 c a s e   1 4 0 :   e   =   " O n l y   l o n g   t r a d e s   a l l o w e d " ;   b r e a k ; 
 	 	 c a s e   1 4 1 :   e   =   " T o o   m a n y   r e q u e s t s " ;   b r e a k ; 
 	 	 c a s e   1 4 5 :   e   =   " M o d i f i c a t i o n   d e n i e d   b e c a u s e   o r d e r   t o o   c l o s e   t o   m a r k e t " ;   b r e a k ; 
 	 	 c a s e   1 4 6 :   e   =   " T r a d e   c o n t e x t   i s   b u s y " ;   b r e a k ; 
 	 	 c a s e   1 4 7 :   e   =   " E x p i r a t i o n s   a r e   d e n i e d   b y   b r o k e r " ;   b r e a k ; 
 	 	 c a s e   1 4 8 :   e   =   " A m o u n t   o f   o p e n   a n d   p e n d i n g   o r d e r s   h a s   r e a c h e d   t h e   l i m i t " ;   b r e a k ; 
 	 	 c a s e   1 4 9 :   e   =   " H e d g i n g   i s   p r o h i b i t e d " ;   b r e a k ; 
 	 	 c a s e   1 5 0 :   e   =   " P r o h i b i t e d   b y   F I F O   r u l e s " ;   b r e a k ; 
 	 	 
 	 	 / / - -   m q l 4   e r r o r s 
 	 	 c a s e   4 0 0 0 :   e   =   " N o   e r r o r " ;   b r e a k ; 
 	 	 c a s e   4 0 0 1 :   e   =   " W r o n g   f u n c t i o n   p o i n t e r " ;   b r e a k ; 
 	 	 c a s e   4 0 0 2 :   e   =   " A r r a y   i n d e x   i s   o u t   o f   r a n g e " ;   b r e a k ; 
 	 	 c a s e   4 0 0 3 :   e   =   " N o   m e m o r y   f o r   f u n c t i o n   c a l l   s t a c k " ;   b r e a k ; 
 	 	 c a s e   4 0 0 4 :   e   =   " R e c u r s i v e   s t a c k   o v e r f l o w " ;   b r e a k ; 
 	 	 c a s e   4 0 0 5 :   e   =   " N o t   e n o u g h   s t a c k   f o r   p a r a m e t e r " ;   b r e a k ; 
 	 	 c a s e   4 0 0 6 :   e   =   " N o   m e m o r y   f o r   p a r a m e t e r   s t r i n g " ;   b r e a k ; 
 	 	 c a s e   4 0 0 7 :   e   =   " N o   m e m o r y   f o r   t e m p   s t r i n g " ;   b r e a k ; 
 	 	 c a s e   4 0 0 8 :   e   =   " N o t   i n i t i a l i z e d   s t r i n g " ;   b r e a k ; 
 	 	 c a s e   4 0 0 9 :   e   =   " N o t   i n i t i a l i z e d   s t r i n g   i n   a r r a y " ;   b r e a k ; 
 	 	 c a s e   4 0 1 0 :   e   =   " N o   m e m o r y   f o r   a r r a y   s t r i n g " ;   b r e a k ; 
 	 	 c a s e   4 0 1 1 :   e   =   " T o o   l o n g   s t r i n g " ;   b r e a k ; 
 	 	 c a s e   4 0 1 2 :   e   =   " R e m a i n d e r   f r o m   z e r o   d i v i d e " ;   b r e a k ; 
 	 	 c a s e   4 0 1 3 :   e   =   " Z e r o   d i v i d e " ;   b r e a k ; 
 	 	 c a s e   4 0 1 4 :   e   =   " U n k n o w n   c o m m a n d " ;   b r e a k ; 
 	 	 c a s e   4 0 1 5 :   e   =   " W r o n g   j u m p " ;   b r e a k ; 
 	 	 c a s e   4 0 1 6 :   e   =   " N o t   i n i t i a l i z e d   a r r a y " ;   b r e a k ; 
 	 	 c a s e   4 0 1 7 :   e   =   " d l l   c a l l s   a r e   n o t   a l l o w e d " ;   b r e a k ; 
 	 	 c a s e   4 0 1 8 :   e   =   " C a n n o t   l o a d   l i b r a r y " ;   b r e a k ; 
 	 	 c a s e   4 0 1 9 :   e   =   " C a n n o t   c a l l   f u n c t i o n " ;   b r e a k ; 
 	 	 c a s e   4 0 2 0 :   e   =   " E x p e r t   f u n c t i o n   c a l l s   a r e   n o t   a l l o w e d " ;   b r e a k ; 
 	 	 c a s e   4 0 2 1 :   e   =   " N o t   e n o u g h   m e m o r y   f o r   t e m p   s t r i n g   r e t u r n e d   f r o m   f u n c t i o n " ;   b r e a k ; 
 	 	 c a s e   4 0 2 2 :   e   =   " S y s t e m   i s   b u s y " ;   b r e a k ; 
 	 	 c a s e   4 0 5 0 :   e   =   " I n v a l i d   f u n c t i o n   p a r a m e t e r s   c o u n t " ;   b r e a k ; 
 	 	 c a s e   4 0 5 1 :   e   =   " I n v a l i d   f u n c t i o n   p a r a m e t e r   v a l u e " ;   b r e a k ; 
 	 	 c a s e   4 0 5 2 :   e   =   " S t r i n g   f u n c t i o n   i n t e r n a l   e r r o r " ;   b r e a k ; 
 	 	 c a s e   4 0 5 3 :   e   =   " S o m e   a r r a y   e r r o r " ;   b r e a k ; 
 	 	 c a s e   4 0 5 4 :   e   =   " I n c o r r e c t   s e r i e s   a r r a y   u s i n g " ;   b r e a k ; 
 	 	 c a s e   4 0 5 5 :   e   =   " C u s t o m   i n d i c a t o r   e r r o r " ;   b r e a k ; 
 	 	 c a s e   4 0 5 6 :   e   =   " A r r a y s   a r e   i n c o m p a t i b l e " ;   b r e a k ; 
 	 	 c a s e   4 0 5 7 :   e   =   " G l o b a l   v a r i a b l e s   p r o c e s s i n g   e r r o r " ;   b r e a k ; 
 	 	 c a s e   4 0 5 8 :   e   =   " G l o b a l   v a r i a b l e   n o t   f o u n d " ;   b r e a k ; 
 	 	 c a s e   4 0 5 9 :   e   =   " F u n c t i o n   i s   n o t   a l l o w e d   i n   t e s t i n g   m o d e " ;   b r e a k ; 
 	 	 c a s e   4 0 6 0 :   e   =   " F u n c t i o n   i s   n o t   c o n f i r m e d " ;   b r e a k ; 
 	 	 c a s e   4 0 6 1 :   e   =   " S e n d   m a i l   e r r o r " ;   b r e a k ; 
 	 	 c a s e   4 0 6 2 :   e   =   " S t r i n g   p a r a m e t e r   e x p e c t e d " ;   b r e a k ; 
 	 	 c a s e   4 0 6 3 :   e   =   " I n t e g e r   p a r a m e t e r   e x p e c t e d " ;   b r e a k ; 
 	 	 c a s e   4 0 6 4 :   e   =   " D o u b l e   p a r a m e t e r   e x p e c t e d " ;   b r e a k ; 
 	 	 c a s e   4 0 6 5 :   e   =   " A r r a y   a s   p a r a m e t e r   e x p e c t e d " ;   b r e a k ; 
 	 	 c a s e   4 0 6 6 :   e   =   " R e q u e s t e d   h i s t o r y   d a t a   i n   u p d a t e   s t a t e " ;   b r e a k ; 
 	 	 c a s e   4 0 9 9 :   e   =   " E n d   o f   f i l e " ;   b r e a k ; 
 	 	 c a s e   4 1 0 0 :   e   =   " S o m e   f i l e   e r r o r " ;   b r e a k ; 
 	 	 c a s e   4 1 0 1 :   e   =   " W r o n g   f i l e   n a m e " ;   b r e a k ; 
 	 	 c a s e   4 1 0 2 :   e   =   " T o o   m a n y   o p e n e d   f i l e s " ;   b r e a k ; 
 	 	 c a s e   4 1 0 3 :   e   =   " C a n n o t   o p e n   f i l e " ;   b r e a k ; 
 	 	 c a s e   4 1 0 4 :   e   =   " I n c o m p a t i b l e   a c c e s s   t o   a   f i l e " ;   b r e a k ; 
 	 	 c a s e   4 1 0 5 :   e   =   " N o   o r d e r   s e l e c t e d " ;   b r e a k ; 
 	 	 c a s e   4 1 0 6 :   e   =   " U n k n o w n   s y m b o l " ;   b r e a k ; 
 	 	 c a s e   4 1 0 7 :   e   =   " I n v a l i d   p r i c e   p a r a m e t e r   f o r   t r a d e   f u n c t i o n " ;   b r e a k ; 
 	 	 c a s e   4 1 0 8 :   e   =   " I n v a l i d   t i c k e t " ;   b r e a k ; 
 	 	 c a s e   4 1 0 9 :   e   =   " T r a d e   i s   n o t   a l l o w e d   i n   t h e   e x p e r t   p r o p e r t i e s " ;   b r e a k ; 
 	 	 c a s e   4 1 1 0 :   e   =   " L o n g s   a r e   n o t   a l l o w e d   i n   t h e   e x p e r t   p r o p e r t i e s " ;   b r e a k ; 
 	 	 c a s e   4 1 1 1 :   e   =   " S h o r t s   a r e   n o t   a l l o w e d   i n   t h e   e x p e r t   p r o p e r t i e s " ;   b r e a k ; 
 	 	 
 	 	 / / - -   o b j e c t s   e r r o r s 
 	 	 c a s e   4 2 0 0 :   e   =   " O b j e c t   i s   a l r e a d y   e x i s t " ;   b r e a k ; 
 	 	 c a s e   4 2 0 1 :   e   =   " U n k n o w n   o b j e c t   p r o p e r t y " ;   b r e a k ; 
 	 	 c a s e   4 2 0 2 :   e   =   " O b j e c t   i s   n o t   e x i s t " ;   b r e a k ; 
 	 	 c a s e   4 2 0 3 :   e   =   " U n k n o w n   o b j e c t   t y p e " ;   b r e a k ; 
 	 	 c a s e   4 2 0 4 :   e   =   " N o   o b j e c t   n a m e " ;   b r e a k ; 
 	 	 c a s e   4 2 0 5 :   e   =   " O b j e c t   c o o r d i n a t e s   e r r o r " ;   b r e a k ; 
 	 	 c a s e   4 2 0 6 :   e   =   " N o   s p e c i f i e d   s u b w i n d o w " ;   b r e a k ; 
 	 	 c a s e   4 2 0 7 :   e   =   " G r a p h i c a l   o b j e c t   e r r o r " ;   b r e a k ;     
 	 	 c a s e   4 2 1 0 :   e   =   " U n k n o w n   c h a r t   p r o p e r t y " ;   b r e a k ; 
 	 	 c a s e   4 2 1 1 :   e   =   " C h a r t   n o t   f o u n d " ;   b r e a k ; 
 	 	 c a s e   4 2 1 2 :   e   =   " C h a r t   s u b w i n d o w   n o t   f o u n d " ;   b r e a k ; 
 	 	 c a s e   4 2 1 3 :   e   =   " C h a r t   i n d i c a t o r   n o t   f o u n d " ;   b r e a k ; 
 	 	 c a s e   4 2 2 0 :   e   =   " S y m b o l   s e l e c t   e r r o r " ;   b r e a k ; 
 	 	 c a s e   4 2 5 0 :   e   =   " N o t i f i c a t i o n   e r r o r " ;   b r e a k ; 
 	 	 c a s e   4 2 5 1 :   e   =   " N o t i f i c a t i o n   p a r a m e t e r   e r r o r " ;   b r e a k ; 
 	 	 c a s e   4 2 5 2 :   e   =   " N o t i f i c a t i o n s   d i s a b l e d " ;   b r e a k ; 
 	 	 c a s e   4 2 5 3 :   e   =   " N o t i f i c a t i o n   s e n d   t o o   f r e q u e n t " ;   b r e a k ; 
 	 	 
 	 	 / / - -   f t p   e r r o r s 
 	 	 c a s e   4 2 6 0 :   e   =   " F T P   s e r v e r   i s   n o t   s p e c i f i e d " ;   b r e a k ; 
 	 	 c a s e   4 2 6 1 :   e   =   " F T P   l o g i n   i s   n o t   s p e c i f i e d " ;   b r e a k ; 
 	 	 c a s e   4 2 6 2 :   e   =   " F T P   c o n n e c t i o n   f a i l e d " ;   b r e a k ; 
 	 	 c a s e   4 2 6 3 :   e   =   " F T P   c o n n e c t i o n   c l o s e d " ;   b r e a k ; 
 	 	 c a s e   4 2 6 4 :   e   =   " F T P   p a t h   n o t   f o u n d   o n   s e r v e r " ;   b r e a k ; 
 	 	 c a s e   4 2 6 5 :   e   =   " F i l e   n o t   f o u n d   i n   t h e   M Q L 4 \ \ F i l e s   d i r e c t o r y   t o   s e n d   o n   F T P   s e r v e r " ;   b r e a k ; 
 	 	 c a s e   4 2 6 6 :   e   =   " C o m m o n   e r r o r   d u r i n g   F T P   d a t a   t r a n s m i s s i o n " ;   b r e a k ; 
 	 	 
 	 	 / / - -   f i l e s y s t e m   e r r o r s 
 	 	 c a s e   5 0 0 1 :   e   =   " T o o   m a n y   o p e n e d   f i l e s " ;   b r e a k ; 
 	 	 c a s e   5 0 0 2 :   e   =   " W r o n g   f i l e   n a m e " ;   b r e a k ; 
 	 	 c a s e   5 0 0 3 :   e   =   " T o o   l o n g   f i l e   n a m e " ;   b r e a k ; 
 	 	 c a s e   5 0 0 4 :   e   =   " C a n n o t   o p e n   f i l e " ;   b r e a k ; 
 	 	 c a s e   5 0 0 5 :   e   =   " T e x t   f i l e   b u f f e r   a l l o c a t i o n   e r r o r " ;   b r e a k ; 
 	 	 c a s e   5 0 0 6 :   e   =   " C a n n o t   d e l e t e   f i l e " ;   b r e a k ; 
 	 	 c a s e   5 0 0 7 :   e   =   " I n v a l i d   f i l e   h a n d l e   ( f i l e   c l o s e d   o r   w a s   n o t   o p e n e d ) " ;   b r e a k ; 
 	 	 c a s e   5 0 0 8 :   e   =   " W r o n g   f i l e   h a n d l e   ( h a n d l e   i n d e x   i s   o u t   o f   h a n d l e   t a b l e ) " ;   b r e a k ; 
 	 	 c a s e   5 0 0 9 :   e   =   " F i l e   m u s t   b e   o p e n e d   w i t h   F I L E _ W R I T E   f l a g " ;   b r e a k ; 
 	 	 c a s e   5 0 1 0 :   e   =   " F i l e   m u s t   b e   o p e n e d   w i t h   F I L E _ R E A D   f l a g " ;   b r e a k ; 
 	 	 c a s e   5 0 1 1 :   e   =   " F i l e   m u s t   b e   o p e n e d   w i t h   F I L E _ B I N   f l a g " ;   b r e a k ; 
 	 	 c a s e   5 0 1 2 :   e   =   " F i l e   m u s t   b e   o p e n e d   w i t h   F I L E _ T X T   f l a g " ;   b r e a k ; 
 	 	 c a s e   5 0 1 3 :   e   =   " F i l e   m u s t   b e   o p e n e d   w i t h   F I L E _ T X T   o r   F I L E _ C S V   f l a g " ;   b r e a k ; 
 	 	 c a s e   5 0 1 4 :   e   =   " F i l e   m u s t   b e   o p e n e d   w i t h   F I L E _ C S V   f l a g " ;   b r e a k ; 
 	 	 c a s e   5 0 1 5 :   e   =   " F i l e   r e a d   e r r o r " ;   b r e a k ; 
 	 	 c a s e   5 0 1 6 :   e   =   " F i l e   w r i t e   e r r o r " ;   b r e a k ; 
 	 	 c a s e   5 0 1 7 :   e   =   " S t r i n g   s i z e   m u s t   b e   s p e c i f i e d   f o r   b i n a r y   f i l e " ;   b r e a k ; 
 	 	 c a s e   5 0 1 8 :   e   =   " I n c o m p a t i b l e   f i l e   ( f o r   s t r i n g   a r r a y s - T X T ,   f o r   o t h e r s - B I N ) " ;   b r e a k ; 
 	 	 c a s e   5 0 1 9 :   e   =   " F i l e   i s   d i r e c t o r y ,   n o t   f i l e " ;   b r e a k ; 
 	 	 c a s e   5 0 2 0 :   e   =   " F i l e   d o e s   n o t   e x i s t " ;   b r e a k ; 
 	 	 c a s e   5 0 2 1 :   e   =   " F i l e   c a n n o t   b e   r e w r i t t e n " ;   b r e a k ; 
 	 	 c a s e   5 0 2 2 :   e   =   " W r o n g   d i r e c t o r y   n a m e " ;   b r e a k ; 
 	 	 c a s e   5 0 2 3 :   e   =   " D i r e c t o r y   d o e s   n o t   e x i s t " ;   b r e a k ; 
 	 	 c a s e   5 0 2 4 :   e   =   " S p e c i f i e d   f i l e   i s   n o t   d i r e c t o r y " ;   b r e a k ; 
 	 	 c a s e   5 0 2 5 :   e   =   " C a n n o t   d e l e t e   d i r e c t o r y " ;   b r e a k ; 
 	 	 c a s e   5 0 2 6 :   e   =   " C a n n o t   c l e a n   d i r e c t o r y " ;   b r e a k ; 
 	 	 
 	 	 / / - -   o t h e r   e r r o r s 
 	 	 c a s e   5 0 2 7 :   e   =   " A r r a y   r e s i z e   e r r o r " ;   b r e a k ; 
 	 	 c a s e   5 0 2 8 :   e   =   " S t r i n g   r e s i z e   e r r o r " ;   b r e a k ; 
 	 	 c a s e   5 0 2 9 :   e   =   " S t r u c t u r e   c o n t a i n s   s t r i n g s   o r   d y n a m i c   a r r a y s " ;   b r e a k ; 
 	 	 
 	 	 / / - -   h t t p   r e q u e s t 
 	 	 c a s e   5 2 0 0 :   e   =   " I n v a l i d   U R L " ;   b r e a k ; 
 	 	 c a s e   5 2 0 1 :   e   =   " F a i l e d   t o   c o n n e c t   t o   s p e c i f i e d   U R L " ;   b r e a k ; 
 	 	 c a s e   5 2 0 2 :   e   =   " T i m e o u t   e x c e e d e d " ;   b r e a k ; 
 	 	 c a s e   5 2 0 3 :   e   =   " H T T P   r e q u e s t   f a i l e d " ;   b r e a k ; 
 
 	 	 d e f a u l t : 	 e   =   " U n k n o w n   e r r o r " ; 
 	 } 
 
 	 e   =   S t r i n g C o n c a t e n a t e ( e ,   "   ( " ,   e r r o r _ c o d e ,   " ) " ) ; 
 	 
 	 r e t u r n   e ; 
 }  
  
 v o i d   E x p i r a t i o n D r i v e r ( ) 
 { 
       s t a t i c   i n t   l a s t _ c h e c k e d _ t i c k e t ; 
       s t a t i c   i n t   d b _ t i c k e t s [ ] ; 
       s t a t i c   i n t   d b _ e x p i r a t i o n s [ ] ; 
 
       s t a t i c   i n t   t o t a l ;   t o t a l       =   O r d e r s T o t a l ( ) ; 
       s t a t i c   i n t   s i z e ;     s i z e         =   0 ; 
       s t a t i c   i n t   d o _ r e s e t ;   d o _ r e s e t = f a l s e ; 
       s t a t i c   s t r i n g   p r i n t ; 
       s t a t i c   i n t   i ; 
       
       / / - -   c h e c k   e x p i r a t i o n s   a n d   c l o s e   t r a d e s 
       s i z e   =   A r r a y S i z e ( d b _ t i c k e t s ) ; 
       i f   ( s i z e > 0 ) 
       { 
             i f   ( t o t a l = = 0 )   { 
                   A r r a y R e s i z e ( d b _ t i c k e t s ,   0 ) ; 
                   A r r a y R e s i z e ( d b _ e x p i r a t i o n s ,   0 ) ; 
             } 
             e l s e 
             { 
                   f o r   ( i = 0 ;   i < s i z e ;   i + + ) 
                   { 
                         W a i t T r a d e C o n t e x t I f B u s y ( ) ; 
                         i f   ( ! O r d e r S e l e c t ( d b _ t i c k e t s [ i ] , S E L E C T _ B Y _ T I C K E T ,   M O D E _ T R A D E S ) )   { c o n t i n u e ; } 
                         i f   ( O r d e r S y m b o l ( )   ! =   S y m b o l ( ) )   { c o n t i n u e ; } 
                         
                         i f   ( T i m e C u r r e n t ( )   > =   O r d e r O p e n T i m e ( ) + d b _ e x p i r a t i o n s [ i ] )   { 
                               
                               / / - -   t r y i n g   t o   s k i p   c o n f l i c t s   w i t h   t h e   s a m e   f u n c t i o n a l i t y   r u n n i n g   f r o m   n e i g h b o u r   E A 
                               W a i t T r a d e C o n t e x t I f B u s y ( ) ; 
                               i f   ( ! O r d e r S e l e c t ( d b _ t i c k e t s [ i ] , S E L E C T _ B Y _ T I C K E T ,   M O D E _ T R A D E S ) )   { c o n t i n u e ; } 
                               i f   ( O r d e r C l o s e T i m e ( ) > 0 )   { c o n t i n u e ; } 
                               
                               / / - -   c l o s i n g   t h e   t r a d e 
                               i f   ( C l o s e T r a d e ( O r d e r T i c k e t ( ) ) )   
                               { 
                                     p r i n t   =   " # " + ( s t r i n g ) O r d e r T i c k e t ( ) + "   w a s   c l o s e d   d u e   t o   e x p i r a t i o n " ; 
                                     P r i n t ( p r i n t ) ; 
                                     l a s t _ c h e c k e d _ t i c k e t = 0 ; 
                                     d o _ r e s e t   =   t r u e ; 
                                     t o t a l         =   O r d e r s T o t a l ( ) ; 
                               } 
                         } 
                   } 
             } 
       } 
       
       / / - -   c h e c k   t h e   t i c k e t   o f   t h e   n e w e s t   t r a d e 
       i f   ( d o _ r e s e t = = f a l s e   & &   t o t a l > 0 ) 
       { 
             i f   ( O r d e r S e l e c t ( t o t a l - 1 , S E L E C T _ B Y _ P O S ) )   { 
                   i f   ( O r d e r T i c k e t ( ) ! = l a s t _ c h e c k e d _ t i c k e t )   { 
                         d o _ r e s e t   =   t r u e ; 
                   } 
             } 
       } 
 
       / / - -   r e b u i l d   t h e   d a t a b a s e   o f   t r a d e s   w i t h   e x p i r a t i o n s 
       i f   ( d o _ r e s e t = = t r u e ) 
       { 
             s t a t i c   s t r i n g   c o m m e n t ; 
             A r r a y R e s i z e ( d b _ t i c k e t s ,   0 ) ; 
             A r r a y R e s i z e ( d b _ e x p i r a t i o n s ,   0 ) ; 
             f o r   ( i n t   p o s = 0 ;   p o s < t o t a l ;   p o s + + ) 
             { 
                   i f   ( ! O r d e r S e l e c t ( p o s , S E L E C T _ B Y _ P O S ) )   { c o n t i n u e ; } 
                   l a s t _ c h e c k e d _ t i c k e t   =   O r d e r T i c k e t ( ) ; 
 
                   c o m m e n t   =   O r d e r C o m m e n t ( ) ; 
                   i n t   e x p _ p o s _ b e g i n   =   S t r i n g F i n d ( c o m m e n t ,   " [ e x p : " ) ; 
                   i f   ( e x p _ p o s _ b e g i n   > =   0 ) 
                   { 
                         e x p _ p o s _ b e g i n   =   e x p _ p o s _ b e g i n + 5 ; 
                         i n t   e x p _ p o s _ e n d   =   S t r i n g F i n d ( c o m m e n t ,   " ] " ,   e x p _ p o s _ b e g i n ) ; 
                         i f   ( e x p _ p o s _ e n d   = =   - 1 )   { c o n t i n u e ; } 
                         
                         s i z e   =   A r r a y S i z e ( d b _ t i c k e t s ) ; 
                         A r r a y R e s i z e ( d b _ t i c k e t s ,   s i z e + 1 ) ; 
                         A r r a y R e s i z e ( d b _ e x p i r a t i o n s ,   s i z e + 1 ) ; 
                         d b _ t i c k e t s [ s i z e ]           =   O r d e r T i c k e t ( ) ; 
                         d b _ e x p i r a t i o n s [ s i z e ]   =   ( i n t ) S t r i n g T o I n t e g e r ( S t r i n g S u b s t r ( c o m m e n t ,   e x p _ p o s _ b e g i n ,   e x p _ p o s _ e n d ) ) ; 
                   } 
             } 
       } 
 }  
  
 d a t e t i m e   E x p i r a t i o n T i m e ( s t r i n g   m o d e = " G T C " , i n t   d a y s = 0 ,   i n t   h o u r s = 0 ,   i n t   m i n u t e s = 0 ,   d a t e t i m e   c u s t o m = 0 ) 
 { 
 	 d a t e t i m e   e x p i r a t i o n = T i m e C u r r e n t ( ) ; 
       i f   ( m o d e = = " G T C "   | |   m o d e = = " " )       { e x p i r a t i o n = 0 ; } 
       e l s e   i f   ( m o d e = = " t o d a y " )   { e x p i r a t i o n = S t r T o T i m e ( ( s t r i n g ) T i m e Y e a r ( T i m e C u r r e n t ( ) ) + " . " + ( s t r i n g ) T i m e M o n t h ( T i m e C u r r e n t ( ) ) + " . " + ( s t r i n g ) T i m e D a y ( T i m e C u r r e n t ( ) ) ) + 8 6 4 0 0 ; } 
       e l s e   i f   ( m o d e = = " s p e c i f i e d " )   { 
             e x p i r a t i o n = 0 ; 
             i f   ( ( d a y s   +   h o u r s   +   m i n u t e s ) > 0 )   { 
                   e x p i r a t i o n = T i m e C u r r e n t ( ) + ( 8 6 4 0 0 * d a y s ) + ( 3 6 0 0 * h o u r s ) + ( 6 0 * m i n u t e s ) ; 
             } 
       } 
       e l s e 
       { 
             i f   ( c u s t o m   < =   T i m e C u r r e n t ( ) )   { 
                   i f   ( c u s t o m   <   3 1 5 5 7 6 0 0 )   { 
                         c u s t o m   =   T i m e C u r r e n t ( ) + c u s t o m ; 
                   } 
                   e l s e   { 
                         c u s t o m = 0 ; 
                   } 
             } 
             e x p i r a t i o n   =   c u s t o m ; 
       } 
       r e t u r n ( e x p i r a t i o n ) ; 
 }  
  
 b o o l   F e e d S t a t i s t i c s ( ) { G e t S t a t i s t i c s ( ) ; r e t u r n ( 0 ) ; }  
  
 b o o l   F i l t e r O r d e r B y ( s t r i n g   g r o u p _ m o d e = " a l l " ,   s t r i n g   g r o u p = " 0 " ,   s t r i n g   m a r k e t _ m o d e = " a l l " ,   s t r i n g   m a r k e t = " " ,   s t r i n g   B u y s O r S e l l s = " b o t h " ,   s t r i n g   L i m i t s O r S t o p s = " b o t h " ,   i n t   T r a d e s O r d e r s = 0 ,   b o o l   o n T r a d e   =   f a l s e ) 
 { 
 	 / /   T r a d e s O r d e r s = 0   -   t r a d e s   o n l y 
 	 / /   T r a d e s O r d e r s = 1   -   o r d e r s   o n l y 
 	 / /   T r a d e s O r d e r s = 2   -   t r a d e s   a n d   o r d e r s 
 
 	 / / - -   d b 
 	 s t a t i c   s t r i n g   m a r k e t s [ ] ; 
 	 s t a t i c   s t r i n g   m a r k e t 0       =   " - " ; 
 	 s t a t i c   i n t   m a r k e t s _ s i z e   =   0 ; 
 	 
 	 s t a t i c   s t r i n g   g r o u p s [ ] ; 
 	 s t a t i c   s t r i n g   g r o u p 0       =   " - " ; 
 	 s t a t i c   i n t   g r o u p s _ s i z e   =   0 ; 
 	 
 	 / / - -   l o c a l   v a r i a b l e s 
 	 b o o l   t y p e _ p a s s       =   f a l s e ; 
 	 b o o l   m a r k e t _ p a s s   =   f a l s e ; 
 	 b o o l   g r o u p _ p a s s     =   f a l s e ; 
 	 
 	 i n t   i ,   t y p e ,   m a g i c _ n u m b e r ; 
 	 s t r i n g   s y m b o l ; 
 	 
 	 / /   T r a d e s 
 	 i f   ( o n T r a d e   = =   f a l s e )   { 
 	 	 t y p e   =   O r d e r T y p e ( ) ; 
 	 	 m a g i c _ n u m b e r   =   O r d e r M a g i c N u m b e r ( ) ; 
 	 	 s y m b o l   =   O r d e r S y m b o l ( ) ; 
 	 } 
 	 e l s e   { 
 	 	 t y p e   =   e _ a t t r T y p e ( ) ; 
 	 	 m a g i c _ n u m b e r   =   e _ a t t r M a g i c N u m b e r ( ) ; 
 	 	 s y m b o l   =   e _ a t t r S y m b o l ( ) ; 
 	 } 
 	 
 	 i f   ( T r a d e s O r d e r s = = 0 ) 
 	 { 
 	 	 i f   ( 
 	 	 	 	 ( B u y s O r S e l l s = = " b o t h "     & &   ( t y p e = = O P _ B U Y   | |   t y p e = = O P _ S E L L ) ) 
 	 	 	 | |   ( B u y s O r S e l l s = = " b u y s "     & &   t y p e = = O P _ B U Y ) 
 	 	 	 | |   ( B u y s O r S e l l s = = " s e l l s "   & &   t y p e = = O P _ S E L L ) 
 	 	 	 
 	 	 	 ) 
 	 	 { 
 	 	 	 t y p e _ p a s s   =   t r u e ; 
 	 	 } 
 	 } 
 	 / /   P e n d i n g   o r d e r s 
 	 e l s e   i f   ( T r a d e s O r d e r s = = 1 ) 
 	 { 
 	 	 i f   ( 
 	 	 	 	 ( B u y s O r S e l l s = = " b o t h "   & &   ( t y p e = = O P _ B U Y L I M I T   | |   t y p e = = O P _ B U Y S T O P   | |   t y p e = = O P _ S E L L L I M I T   | |   t y p e = = O P _ S E L L S T O P ) ) 
 	 	 	 | | 	 ( B u y s O r S e l l s = = " b u y s "   & &   ( t y p e = = O P _ B U Y L I M I T   | |   t y p e = = O P _ B U Y S T O P ) ) 
 	 	 	 | |   ( B u y s O r S e l l s = = " s e l l s "   & &   ( t y p e = = O P _ S E L L L I M I T   | |   t y p e = = O P _ S E L L S T O P ) ) 
 	 	 	 ) 
 	 	 { 
 	 	 	 i f   ( 
 	 	 	 	 	 ( L i m i t s O r S t o p s = = " b o t h "   & &   ( t y p e = = O P _ B U Y S T O P   | |   t y p e = = O P _ S E L L S T O P   | |   t y p e = = O P _ B U Y L I M I T   | |   t y p e = = O P _ S E L L L I M I T ) ) 
 	 	 	 	 | | 	 ( L i m i t s O r S t o p s = = " s t o p s "   & &   ( t y p e = = O P _ B U Y S T O P   | |   t y p e = = O P _ S E L L S T O P ) ) 
 	 	 	 	 | |   ( L i m i t s O r S t o p s = = " l i m i t s "   & &   ( t y p e = = O P _ B U Y L I M I T   | |   t y p e = = O P _ S E L L L I M I T ) ) 	 	 	 	 	 
 	 	 	 	 ) 
 	 	 	 { 
 	 	 	 	 t y p e _ p a s s   =   t r u e ; 
 	 	 	 } 
 	 	 } 
 	 } 
 	 / / - -   T r a d e s   a n d   o r d e r s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 e l s e 
 	 { 
 	 	 i f   ( 
 	 	 	 	 ( B u y s O r S e l l s = = " b o t h " ) 
 	 	 	 | |   ( B u y s O r S e l l s = = " b u y s "     & &   ( t y p e = = O P _ B U Y   | |   t y p e = = O P _ B U Y L I M I T   | |   t y p e = = O P _ B U Y S T O P ) ) 
 	 	 	 | |   ( B u y s O r S e l l s = = " s e l l s "   & &   ( t y p e = = O P _ S E L L   | |   t y p e = = O P _ S E L L L I M I T   | |   t y p e = = O P _ S E L L S T O P ) ) 
 	 	 	 ) 
 	 	 { 
 	 	 	 t y p e _ p a s s   =   t r u e ; 
 	 	 } 
 	 } 
 	 i f   ( t y p e _ p a s s   = =   f a l s e )   { r e t u r n   f a l s e ; } 
 
 	 / / - -   c h e c k   g r o u p 
 	 i f   ( g r o u p _ m o d e = = " g r o u p " ) 
 	 { 
 	 	 i f   ( g r o u p   = =   " " ) 
 	 	 { 
 	 	 	 i f   ( m a g i c _ n u m b e r = = M a g i c S t a r t ) 
       	 	 { 
       	 	 	 g r o u p _ p a s s = t r u e ; 
       	 	 } 
 	       } 
 	       e l s e 
 	       { 
 	 	 	 i f   ( g r o u p 0 ! = g r o u p ) 
 	 	 	 { 
 	 	 	 	 g r o u p 0 = g r o u p ; 
 	 	 	 	 S t r i n g E x p l o d e ( " , " , g r o u p , g r o u p s ) ; 
 	 	 	 	 g r o u p s _ s i z e   =   A r r a y S i z e ( g r o u p s ) ; 
 	 	 	 	 f o r ( i = 0 ;   i < g r o u p s _ s i z e ;   i + + ) 
 	 	 	 	 { 
 	 	 	 	 	 g r o u p s [ i ] = S t r i n g T r i m R i g h t ( g r o u p s [ i ] ) ; 
 	 	 	 	 	 g r o u p s [ i ] = S t r i n g T r i m L e f t ( g r o u p s [ i ] ) ; 
 	 	 	 	 	 i f   ( g r o u p s [ i ] = = " " )   { g r o u p s [ i ] = " 0 " ; } 
 	 	 	 	 } 
 	 	 	 } 
 	 	 
 	 	 	 f o r ( i = 0 ;   i < g r o u p s _ s i z e ;   i + + ) 
 	 	 	 { 
 	 	 	 	 i f   ( m a g i c _ n u m b e r = = ( M a g i c S t a r t + ( i n t ) g r o u p s [ i ] ) ) 
 	 	 	 	 { 
 	 	 	 	 	 g r o u p _ p a s s = t r u e ; 
 	 	 	 	 	 b r e a k ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 	 } 
 	 e l s e   i f   ( g r o u p _ m o d e = = " a l l "   | |   ( g r o u p _ m o d e = = " m a n u a l "   & &   m a g i c _ n u m b e r = = 0 ) )   { 
 	 	 g r o u p _ p a s s   =   t r u e ;     
 	 } 
 	 i f   ( g r o u p _ p a s s   = =   f a l s e )   { r e t u r n   f a l s e ; } 
 	 
 	 / /   c h e c k   m a r k e t 
 	 i f   ( m a r k e t _ m o d e = = " a l l " )   { 
 	 	 m a r k e t _ p a s s = t r u e ; 
 	 } 
 	 e l s e 
 	 { 
 	 	 i f   ( s y m b o l   = =   m a r k e t ) 
 	       { 
 	             m a r k e t _ p a s s   =   t r u e ; 
 	       } 
             e l s e 
             { 
 	 	 	 i f   ( m a r k e t 0 ! = m a r k e t ) 
 	 	 	 { 
 	 	 	 	 m a r k e t 0 = m a r k e t ; 
 	 	 	 	 i f   ( m a r k e t = = " " ) 
 	 	 	 	 { 
 	 	 	 	 	 m a r k e t s _ s i z e   =   1 ; 
 	 	 	 	 	 A r r a y R e s i z e ( m a r k e t s , 1 ) ; 
 	 	 	 	 	 m a r k e t s [ 0 ] = S y m b o l ( ) ; 
 	 	 	 	 } 
 	 	 	 	 e l s e 
 	 	 	 	 { 
 	 	 	 	 	 S t r i n g E x p l o d e ( " , " ,   m a r k e t , m a r k e t s ) ; 
 	 	 	 	 	 m a r k e t s _ s i z e   =   A r r a y S i z e ( m a r k e t s ) ; 
 	 	 	 	 	 f o r ( i = 0 ;   i < m a r k e t s _ s i z e ;   i + + ) 
 	 	 	 	 	 { 
 	 	 	 	 	 	 m a r k e t s [ i ] = S t r i n g T r i m R i g h t ( m a r k e t s [ i ] ) ; 
 	 	 	 	 	 	 m a r k e t s [ i ] = S t r i n g T r i m L e f t ( m a r k e t s [ i ] ) ; 
 	 	 	 	 	 	 i f   ( m a r k e t s [ i ] = = " " )   { m a r k e t s [ i ] = S y m b o l ( ) ; } 
 	 	 	 	 	 } 
 	 	 	 	 } 
 	 	 	 } 
 	 	 	 f o r ( i = 0 ;   i < m a r k e t s _ s i z e ;   i + + )   { 
 	 	 	 	 i f   ( s y m b o l = = m a r k e t s [ i ] )   { 
 	 	 	 	 	 m a r k e t _ p a s s   =   t r u e ; 
 	 	 	 	 	 b r e a k ; 
 	 	 	 	 } 
 	 	 	 } 
 	 	 } 
 	 } 
 	 i f   ( m a r k e t _ p a s s   = =   f a l s e )   { r e t u r n   f a l s e ; } 
 	 
 	 r e t u r n   t r u e ; 
 }  
  
 d o u b l e   G e t S t a t i s t i c s ( s t r i n g   g e t = " " )   { 
       
       i f   ( f a l s e )   { F e e d S t a t i s t i c s ( ) ; } 
       / / / / / / 
       / /   m a i n   s t a t i c   v a r i a b l e s 
       s t a t i c   d a t e t i m e   s t a r t _ t i m e = - 1 ; 
       s t a t i c   d o u b l e   i n i t i a l _ m o n e y = - 1 ; 
       s t a t i c   d o u b l e   t o t a l _ n e t _ p r o f i t = - 1 ; 
       
       i n t   s h o r t s _ n o w _ c o u n t = 0 ; 
       i n t   l o n g s _ n o w _ c o u n t = 0 ; 
       
       s t a t i c   i n t   s h o r t s _ h i s t _ c o u n t = 0 ; 
       s t a t i c   i n t   l o n g s _ h i s t _ c o u n t = 0 ; 
       
       s t a t i c   d o u b l e   l o n g s _ h i s t _ p r o f i t = 0 ; 
       s t a t i c   d o u b l e   l o n g s _ h i s t _ l o s s = 0 ; 
       s t a t i c   d o u b l e   s h o r t s _ h i s t _ p r o f i t = 0 ; 
       s t a t i c   d o u b l e   s h o r t s _ h i s t _ l o s s = 0 ; 
       s t a t i c   d o u b l e   l o n g s _ h i s t _ p r o f i t _ c o u n t = 0 ; 
       s t a t i c   d o u b l e   l o n g s _ h i s t _ l o s s _ c o u n t = 0 ; 
       s t a t i c   d o u b l e   s h o r t s _ h i s t _ p r o f i t _ c o u n t = 0 ; 
       s t a t i c   d o u b l e   s h o r t s _ h i s t _ l o s s _ c o u n t = 0 ; 
       
       s t a t i c   d o u b l e   l a r g e s t _ p r o f i t _ t r a d e = 0 ; 
       s t a t i c   d o u b l e   s m a l l e s t _ p r o f i t _ t r a d e = 0 ; 
       s t a t i c   d o u b l e   l a r g e s t _ l o s s _ t r a d e = 0 ; 
       s t a t i c   d o u b l e   s m a l l e s t _ l o s s _ t r a d e = 0 ; 
       s t a t i c   d o u b l e   p r o f i t _ t r a d e s _ c o u n t = 0 ; 
       s t a t i c   d o u b l e   l o s s _ t r a d e s _ c o u n t = 0 ; 
       s t a t i c   d o u b l e   a v e r a g e _ p r o f i t _ t r a d e = 0 ; 
       s t a t i c   d o u b l e   a v e r a g e _ l o s s _ t r a d e = 0 ; 
       
       s t a t i c   i n t   c o n s e c _ w i n s = 0 ; 
       s t a t i c   i n t   c o n s e c _ l o s s = 0 ; 
       s t a t i c   d o u b l e   l a s t _ p r o f i t = 0 ; 
       s t a t i c   b o o l   c o n s e c _ c h e c k _ s t a r t e d = f a l s e ; 
       s t a t i c   i n t   m a x _ c o n s e c _ w i n s = 0 ; 
       s t a t i c   i n t   m a x _ c o n s e c _ l o s s = 0 ; 
       s t a t i c   d o u b l e   a v g _ c o n s e c _ w i n s = 0 ; 
       s t a t i c   d o u b l e   a v g _ c o n s e c _ l o s s = 0 ; 
       s t a t i c   i n t   c o n s e c _ p r o f i t s _ c o u n t = 0 ; 
       s t a t i c   i n t   c o n s e c _ l o s s e s _ c o u n t = 0 ; 
       
       s t a t i c   d o u b l e   p r o f i t _ f a c t o r = 1 ; 
       s t a t i c   d o u b l e   g r o s s _ p r o f i t = 0 ; 
       s t a t i c   d o u b l e   g r o s s _ l o s s = 0 ; 
       
       s t a t i c   d o u b l e   d r a w d o w n _ a b s = 0 ; 
       s t a t i c   d o u b l e   d r a w d o w n _ r e l = 0 ; 
       s t a t i c   d o u b l e   d r a w d o w n _ m a x = 0 ; 
       s t a t i c   d o u b l e   m a x p e a k = 0 ; 
       s t a t i c   d o u b l e   m i n p e a k = 0 ; 
       
       s t a t i c   d o u b l e   d r a w d o w n _ b a l a n c e _ a b s = 0 ; 
       s t a t i c   d o u b l e   d r a w d o w n _ b a l a n c e _ r e l = 0 ; 
       s t a t i c   d o u b l e   d r a w d o w n _ b a l a n c e _ m a x = 0 ; 
       s t a t i c   d o u b l e   m a x _ b a l a n c e _ p e a k = 0 ; 
       s t a t i c   d o u b l e   m i n _ b a l a n c e _ p e a k = 0 ; 
       
       d o u b l e   p r o f i t _ f a c t o r _ l i v e = 0 ; 
       d o u b l e   g r o s s _ p r o f i t _ n o w = 0 ; 
       d o u b l e   g r o s s _ p r o f i t _ l i v e = 0 ; 
       d o u b l e   g r o s s _ l o s s _ n o w = 0 ; 
       d o u b l e   g r o s s _ l o s s _ l i v e = 0 ; 
       / / / / / / 
       
       / / / / / / 
       / /   s y s t e m   s t a t i c   v a r i a b l e s 
       s t a t i c   i n t   l a s t _ c h e c k e d _ t r a d e s _ t i c k e t = - 1 ; 
       s t a t i c   i n t   l a s t _ c h e c k e d _ h i s t o r y _ t i c k e t = - 1 ; 
       s t a t i c   i n t   o r d e r s _ h i s t o r y _ t o t a l = 0 ; 
       s t a t i c   i n t   o r d e r s _ h i s t o r y _ t o t a l _ c h e c k e d = 0 ;   
       s t a t i c   i n t   o r d e r s _ t o t a l = 0 ; 
       d o u b l e   r e t v a l = 0 ; 
       / / / / / / 
       
       i n t   p o s = 0 ; 
       i f   ( i n i t i a l _ m o n e y = = - 1 )   { i n i t i a l _ m o n e y = A c c o u n t E q u i t y ( ) ; } 
       i f   ( s t a r t _ t i m e = = - 1 )   { s t a r t _ t i m e = T i m e C u r r e n t ( ) ; } 
       t o t a l _ n e t _ p r o f i t = A c c o u n t E q u i t y ( ) - i n i t i a l _ m o n e y ; 
       
       i f   ( O r d e r s H i s t o r y T o t a l ( ) ! = o r d e r s _ h i s t o r y _ t o t a l ) 
       { 
             o r d e r s _ h i s t o r y _ t o t a l = O r d e r s H i s t o r y T o t a l ( ) ; 
             f o r   ( p o s = O r d e r s H i s t o r y T o t a l ( ) - 1 ;   p o s > = 0 ;   p o s - - ) 
             { 
                   i f   ( O r d e r S e l e c t ( p o s , S E L E C T _ B Y _ P O S , M O D E _ H I S T O R Y ) ) 
                   { 
                         / / i f   ( O r d e r O p e n T i m e ( ) > = s t a r t _ t i m e )   { 
                               i f   ( o r d e r s _ h i s t o r y _ t o t a l   >   o r d e r s _ h i s t o r y _ t o t a l _ c h e c k e d ) 
                               { 
                                     o r d e r s _ h i s t o r y _ t o t a l _ c h e c k e d + + ; 
                                     d o u b l e   P u r e P r o f i t = O r d e r P r o f i t ( ) + O r d e r C o m m i s s i o n ( ) + O r d e r S w a p ( ) ; 
                                     i f   ( P u r e P r o f i t > l a r g e s t _ p r o f i t _ t r a d e )   { l a r g e s t _ p r o f i t _ t r a d e = P u r e P r o f i t ; } 
                                     i f   ( P u r e P r o f i t < l a r g e s t _ l o s s _ t r a d e )   { l a r g e s t _ l o s s _ t r a d e = P u r e P r o f i t ; } 
                                     i f   ( P u r e P r o f i t > 0   & &   ( P u r e P r o f i t < s m a l l e s t _ p r o f i t _ t r a d e   | |   s m a l l e s t _ p r o f i t _ t r a d e = = 0 ) )   { s m a l l e s t _ p r o f i t _ t r a d e = P u r e P r o f i t ; } 
                                     i f   ( P u r e P r o f i t < 0   & &   ( P u r e P r o f i t > s m a l l e s t _ l o s s _ t r a d e   | |   s m a l l e s t _ l o s s _ t r a d e = = 0 ) )   { s m a l l e s t _ l o s s _ t r a d e = P u r e P r o f i t ; } 
                               
                                     i f   ( O r d e r T y p e ( ) = = O P _ B U Y )   { l o n g s _ h i s t _ c o u n t + + ; } 
                                     i f   ( O r d e r T y p e ( ) = = O P _ S E L L )   { s h o r t s _ h i s t _ c o u n t + + ; } 
                               
                                     i f   ( P u r e P r o f i t > 0 ) 
                                     { 
                                           i f   ( O r d e r T y p e ( ) = = O P _ B U Y )   { l o n g s _ h i s t _ p r o f i t _ c o u n t + + ;   l o n g s _ h i s t _ p r o f i t = l o n g s _ h i s t _ p r o f i t + P u r e P r o f i t ; } 
                                           i f   ( O r d e r T y p e ( ) = = O P _ S E L L )   { s h o r t s _ h i s t _ p r o f i t _ c o u n t + + ;   s h o r t s _ h i s t _ p r o f i t = s h o r t s _ h i s t _ p r o f i t + P u r e P r o f i t ; } 
                                           g r o s s _ p r o f i t = g r o s s _ p r o f i t + P u r e P r o f i t ; 
                                           p r o f i t _ t r a d e s _ c o u n t + + ; 
                                           a v e r a g e _ p r o f i t _ t r a d e = g r o s s _ p r o f i t / p r o f i t _ t r a d e s _ c o u n t ; 
                                           i f   ( l a s t _ p r o f i t > 0   | |   c o n s e c _ c h e c k _ s t a r t e d = = f a l s e )   { 
                                                 c o n s e c _ c h e c k _ s t a r t e d = t r u e ;   c o n s e c _ w i n s + + ; 
                                           }   e l s e   { c o n s e c _ w i n s = 1 ;   c o n s e c _ l o s s = 0 ;   c o n s e c _ p r o f i t s _ c o u n t + + ; } 
                                         
                                           i f   ( c o n s e c _ w i n s > m a x _ c o n s e c _ w i n s )   { m a x _ c o n s e c _ w i n s = c o n s e c _ w i n s ; } 
                                           a v g _ c o n s e c _ w i n s = p r o f i t _ t r a d e s _ c o u n t / ( c o n s e c _ p r o f i t s _ c o u n t + 1 ) ; 
                                           l a s t _ p r o f i t = P u r e P r o f i t ; 
                                     } 
                                     e l s e   i f   ( P u r e P r o f i t < 0 ) 
                                     { 
                                           i f   ( O r d e r T y p e ( ) = = O P _ B U Y )   { l o n g s _ h i s t _ l o s s _ c o u n t + + ;   l o n g s _ h i s t _ l o s s = l o n g s _ h i s t _ l o s s + P u r e P r o f i t ; } 
                                           i f   ( O r d e r T y p e ( ) = = O P _ S E L L )   { s h o r t s _ h i s t _ l o s s _ c o u n t + + ;   s h o r t s _ h i s t _ l o s s = s h o r t s _ h i s t _ l o s s + P u r e P r o f i t ; } 
                                           g r o s s _ l o s s = g r o s s _ l o s s + P u r e P r o f i t ; 
                                           l o s s _ t r a d e s _ c o u n t + + ; 
                                           a v e r a g e _ l o s s _ t r a d e = g r o s s _ l o s s / l o s s _ t r a d e s _ c o u n t ; 
                                           i f   ( l a s t _ p r o f i t < 0   | |   c o n s e c _ c h e c k _ s t a r t e d = = f a l s e )   { 
                                                 c o n s e c _ c h e c k _ s t a r t e d = t r u e ;   c o n s e c _ l o s s + + ; 
                                           } 
                                           e l s e   { 
                                                 c o n s e c _ l o s s = 1 ; 
                                                 c o n s e c _ w i n s = 0 ; 
                                                 c o n s e c _ l o s s e s _ c o u n t + + ; 
                                           } 
                                     
                                           i f   ( c o n s e c _ l o s s > m a x _ c o n s e c _ l o s s )   { 
                                                 m a x _ c o n s e c _ l o s s = c o n s e c _ l o s s ; 
                                           } 
                                           a v g _ c o n s e c _ l o s s = l o s s _ t r a d e s _ c o u n t / ( c o n s e c _ l o s s e s _ c o u n t + 1 ) ; 
                                           l a s t _ p r o f i t = P u r e P r o f i t ; 
                                     } 
                               } 
                         / / }   e l s e   { b r e a k ; } 
                   } 
             } 
       } 
       
       / /   E q u i t y :   D r a w d o w n   M a x i m u m   & &   D r a w d o w n   R e l a t i v e 
       i f   ( A c c o u n t E q u i t y ( ) > m a x p e a k )   { m a x p e a k = A c c o u n t E q u i t y ( ) ; } 
       i f   ( ( m a x p e a k - A c c o u n t E q u i t y ( ) ) > d r a w d o w n _ m a x )   { d r a w d o w n _ m a x = ( m a x p e a k - A c c o u n t E q u i t y ( ) ) ;   d r a w d o w n _ r e l = N o r m a l i z e D o u b l e ( ( d r a w d o w n _ m a x / m a x p e a k ) * 1 0 0 , 2 ) ; } 
       
       / /   E q u i t y :   D r a w d o w n   A b s o l u t e 
       i f   ( ( A c c o u n t E q u i t y ( ) < i n i t i a l _ m o n e y   & &   ( i n i t i a l _ m o n e y - A c c o u n t E q u i t y ( ) ) > d r a w d o w n _ a b s )   | |   d r a w d o w n _ a b s = = 0 )   { d r a w d o w n _ a b s = ( i n i t i a l _ m o n e y - A c c o u n t E q u i t y ( ) ) ; } 
       
       / /   B a l a n c e :   D r a w d o w n   M a x i m u m   & &   D r a w d o w n   R e l a t i v e 
       i f   ( A c c o u n t B a l a n c e ( ) > m a x _ b a l a n c e _ p e a k )   { m a x _ b a l a n c e _ p e a k = A c c o u n t B a l a n c e ( ) ; } 
       i f   ( ( m a x _ b a l a n c e _ p e a k - A c c o u n t B a l a n c e ( ) ) > d r a w d o w n _ b a l a n c e _ m a x )   { d r a w d o w n _ b a l a n c e _ m a x = ( m a x _ b a l a n c e _ p e a k - A c c o u n t B a l a n c e ( ) ) ;   d r a w d o w n _ b a l a n c e _ r e l = N o r m a l i z e D o u b l e ( ( d r a w d o w n _ b a l a n c e _ m a x / m a x _ b a l a n c e _ p e a k ) * 1 0 0 , 2 ) ; } 
       
       / /   B a l a n c e :   D r a w d o w n   A b s o l u t e 
       i f   ( ( A c c o u n t B a l a n c e ( ) < i n i t i a l _ m o n e y   & &   ( i n i t i a l _ m o n e y - A c c o u n t B a l a n c e ( ) ) > d r a w d o w n _ b a l a n c e _ a b s )   | |   d r a w d o w n _ b a l a n c e _ a b s = = 0 )   { d r a w d o w n _ b a l a n c e _ a b s = ( i n i t i a l _ m o n e y - A c c o u n t B a l a n c e ( ) ) ; } 
       
       i f   ( g e t ! = " " )   { 
       
             f o r   ( p o s = O r d e r s T o t a l ( ) - 1 ;   p o s > = 0 ;   p o s - - ) 
             { 
                   i f   ( O r d e r S e l e c t ( p o s , S E L E C T _ B Y _ P O S , M O D E _ T R A D E S ) ) 
                   { 
                         / / i f   ( O r d e r O p e n T i m e ( ) > = s t a r t _ t i m e )   { 
                               i f   ( O r d e r T y p e ( ) = = O P _ B U Y )   { l o n g s _ n o w _ c o u n t + + ; } 
                               e l s e   i f   ( O r d e r T y p e ( ) = = O P _ S E L L )   { s h o r t s _ n o w _ c o u n t + + ; } 
 	 	 	 	     
                               i f   ( O r d e r P r o f i t ( ) + O r d e r C o m m i s s i o n ( ) + O r d e r S w a p ( ) > 0 )   { 
                                     g r o s s _ p r o f i t _ n o w = g r o s s _ p r o f i t _ n o w + O r d e r P r o f i t ( ) + O r d e r C o m m i s s i o n ( ) + O r d e r S w a p ( ) ; 
                               } 
                               e l s e   i f   ( O r d e r P r o f i t ( ) + O r d e r C o m m i s s i o n ( ) + O r d e r S w a p ( ) < 0 )   { 
                                     g r o s s _ l o s s _ n o w = g r o s s _ l o s s _ n o w + O r d e r P r o f i t ( ) + O r d e r C o m m i s s i o n ( ) + O r d e r S w a p ( ) ; 
                               } 
                               i f   ( O r d e r T i c k e t ( ) > l a s t _ c h e c k e d _ t r a d e s _ t i c k e t )   { 
                                     l a s t _ c h e c k e d _ t r a d e s _ t i c k e t = O r d e r T i c k e t ( ) ; 
                               } 
                         / / }   e l s e   { b r e a k ; } 
                   } 
             } 
             
             / /   P r o f i t   F a c t o r 
             i f   ( g r o s s _ l o s s < 0 )   { 
                   p r o f i t _ f a c t o r = M a t h A b s ( N o r m a l i z e D o u b l e ( g r o s s _ p r o f i t / g r o s s _ l o s s , 2 ) ) ; 
             } 
             e l s e   { 
                   p r o f i t _ f a c t o r = M a t h A b s ( N o r m a l i z e D o u b l e ( g r o s s _ p r o f i t , 2 ) ) ; 
             } 
             i f   ( p r o f i t _ f a c t o r = = 0 )   { p r o f i t _ f a c t o r = 1 ; } 
             
             / /   G r o s s   P r o f i t   /   L o s s   ( L i v e ) 
             g r o s s _ p r o f i t _ l i v e = g r o s s _ p r o f i t + g r o s s _ p r o f i t _ n o w ; 
             g r o s s _ l o s s _ l i v e = g r o s s _ l o s s + g r o s s _ l o s s _ n o w ; 
             
             / /   P r o f i t   F a c t o r   ( L i v e ) 
             i f   ( ( g r o s s _ l o s s + g r o s s _ l o s s _ n o w ) < 0 )   { 
                   p r o f i t _ f a c t o r _ l i v e = M a t h A b s ( N o r m a l i z e D o u b l e ( ( ( g r o s s _ p r o f i t + g r o s s _ p r o f i t _ n o w ) / ( g r o s s _ l o s s + g r o s s _ l o s s _ n o w ) ) , 2 ) ) ; 
             } 
             e l s e   { 
                   p r o f i t _ f a c t o r _ l i v e = M a t h A b s ( N o r m a l i z e D o u b l e ( ( g r o s s _ p r o f i t + g r o s s _ p r o f i t _ n o w ) , 2 ) ) ; 
             } 
             i f   ( p r o f i t _ f a c t o r _ l i v e = = 0 )   { p r o f i t _ f a c t o r _ l i v e = 1 ; } 
             
             / /   T o t a l   T r a d e s 
             i n t   l o n g s _ t o t a l _ c o u n t       = l o n g s _ h i s t _ c o u n t + l o n g s _ n o w _ c o u n t ; 
             i n t   s h o r t s _ t o t a l _ c o u n t     = s h o r t s _ h i s t _ c o u n t + s h o r t s _ n o w _ c o u n t ; 
             i n t   t r a d e s _ h i s t _ c o u n t       = l o n g s _ h i s t _ c o u n t + s h o r t s _ h i s t _ c o u n t ; 
             i n t   t r a d e s _ n o w _ c o u n t         = l o n g s _ n o w _ c o u n t + s h o r t s _ n o w _ c o u n t ; 
             i n t   t r a d e s _ t o t a l _ c o u n t     = l o n g s _ t o t a l _ c o u n t + s h o r t s _ t o t a l _ c o u n t ; 
             
             i f   ( g e t = = " i n i t i a l _ m o n e y " )                 { r e t u r n ( i n i t i a l _ m o n e y ) ; } 
             / / - - - 
             i f   ( g e t = = " p r o f i t _ f a c t o r _ h i s t o r y " ) { r e t u r n ( p r o f i t _ f a c t o r ) ; } 
             i f   ( g e t = = " p r o f i t _ f a c t o r _ t o t a l " )     { r e t u r n ( p r o f i t _ f a c t o r _ l i v e ) ; } 
             / / - - - 
             i f   ( g e t = = " g r o s s _ p r o f i t _ h i s t o r y " )   { r e t u r n ( g r o s s _ p r o f i t ) ; } 
             i f   ( g e t = = " g r o s s _ p r o f i t _ n o w " )           { r e t u r n ( g r o s s _ p r o f i t _ n o w ) ; } 
             i f   ( g e t = = " g r o s s _ p r o f i t _ t o t a l " )       { r e t u r n ( g r o s s _ p r o f i t _ l i v e ) ; } 
             / / - - - 
             i f   ( g e t = = " g r o s s _ l o s s _ h i s t o r y " )       { r e t u r n ( g r o s s _ l o s s ) ; } 
             i f   ( g e t = = " g r o s s _ l o s s _ n o w " )               { r e t u r n ( g r o s s _ l o s s _ n o w ) ; } 
             i f   ( g e t = = " g r o s s _ l o s s _ t o t a l " )           { r e t u r n ( g r o s s _ l o s s _ l i v e ) ; } 
             / / - - - 
             i f   ( g e t = = " t r a d e s _ c o u n t _ h i s t o r y " )   { r e t u r n ( t r a d e s _ h i s t _ c o u n t ) ; } 
             i f   ( g e t = = " t r a d e s _ c o u n t _ n o w " )           { r e t u r n ( t r a d e s _ n o w _ c o u n t ) ; } 
             i f   ( g e t = = " t r a d e s _ c o u n t _ t o t a l " )       { r e t u r n ( t r a d e s _ t o t a l _ c o u n t ) ; } 
             / / - - - 
             i f   ( g e t = = " l o n g s _ c o u n t _ h i s t o r y " )     { r e t u r n ( l o n g s _ h i s t _ c o u n t ) ; } 
             i f   ( g e t = = " l o n g s _ c o u n t _ n o w " )             { r e t u r n ( l o n g s _ n o w _ c o u n t ) ; } 
             i f   ( g e t = = " l o n g s _ c o u n t _ t o t a l " )         { r e t u r n ( l o n g s _ t o t a l _ c o u n t ) ; } 
             / / - - - 
             i f   ( g e t = = " s h o r t s _ c o u n t _ h i s t o r y " )   { r e t u r n ( s h o r t s _ h i s t _ c o u n t ) ; } 
             i f   ( g e t = = " s h o r t s _ c o u n t _ n o w " )           { r e t u r n ( s h o r t s _ n o w _ c o u n t ) ; } 
             i f   ( g e t = = " s h o r t s _ c o u n t _ t o t a l " )       { r e t u r n ( s h o r t s _ t o t a l _ c o u n t ) ; } 
             / / - - - 
             i f   ( g e t = = " d r a w d o w n _ e q u i t y _ r e l a t i v e " )   { r e t u r n ( d r a w d o w n _ r e l ) ; } 
             i f   ( g e t = = " d r a w d o w n _ e q u i t y _ a b s o l u t e " )   { r e t u r n ( d r a w d o w n _ a b s ) ; } 
             i f   ( g e t = = " d r a w d o w n _ e q u i t y _ m a x i m a l " )     { r e t u r n ( d r a w d o w n _ m a x ) ; } 
             / / - - - 
             i f   ( g e t = = " d r a w d o w n _ b a l a n c e _ r e l a t i v e " )   { r e t u r n ( d r a w d o w n _ b a l a n c e _ r e l ) ; } 
             i f   ( g e t = = " d r a w d o w n _ b a l a n c e _ a b s o l u t e " )   { r e t u r n ( d r a w d o w n _ b a l a n c e _ a b s ) ; } 
             i f   ( g e t = = " d r a w d o w n _ b a l a n c e _ m a x i m a l " )     { r e t u r n ( d r a w d o w n _ b a l a n c e _ m a x ) ; } 
             / / - - - 
             i f   ( g e t = = " c o n s e c _ w i n s _ m a x "   | |   g e t = = " c o n s e c _ w i n s _ m a x i m u m "   | |   g e t = = " c o n s e c _ w i n s _ m a x i m a l " )   { r e t u r n ( m a x _ c o n s e c _ w i n s ) ; } 
             i f   ( g e t = = " c o n s e c _ w i n s _ a v g "   | |   g e t = = " c o n s e c _ w i n s _ a v e r a g e " )   { r e t u r n ( a v g _ c o n s e c _ w i n s ) ; } 
             / / - - - 
             / / - - - 
             i f   ( g e t = = " c o n s e c _ l o s s e s _ m a x "   | |   g e t = = " c o n s e c _ l o s s e s _ m a x i m u m "   | |   g e t = = " c o n s e c _ l o s s e s _ m a x i m a l " )   { r e t u r n ( m a x _ c o n s e c _ l o s s ) ; } 
             i f   ( g e t = = " c o n s e c _ l o s s e s _ a v g "   | |   g e t = = " c o n s e c _ l o s s e s _ a v e r a g e " )   { r e t u r n ( a v g _ c o n s e c _ l o s s ) ; } 
       } 
       r e t u r n ( - 1 ) ; 
 }  
  
 s t r i n g   G e t S y m b o l ( s t r i n g   s y m b o l = " " )  
 {  
       s t a t i c   s t r i n g   m e m o r y = " " ;  
       i f   ( s y m b o l = = " " )   {  
             i f   ( m e m o r y = = " " )   { m e m o r y = S y m b o l ( ) ; }  
       }  
       e l s e   { m e m o r y = s y m b o l ; }  
       r e t u r n ( m e m o r y ) ;  
 }  
  
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * / 
 / *   C h e c k s   i f   e l e m e n t   e x i s t   i n   a r r a y                                       * / 
 / *   R e t u r n s   " t r u e "   i f   e x i s t s   a n d   " f a l s e "   i f   n o t   e x i s t s   * / 
 / * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * / 
 b o o l   I n A r r a y ( d o u b l e   & a r r a y [ ] ,   d o u b l e   v a l u e ) 
 { 
 	 i n t   i n d e x   =   A r r a y B s e a r c h ( a r r a y ,   v a l u e ) ; 
 	 r e t u r n   ( i n d e x   >   - 1   & &   a r r a y [ i n d e x ]   = =   v a l u e ) ; 
 } 
 b o o l   I n A r r a y ( f l o a t   & a r r a y [ ] ,   f l o a t   v a l u e ) 
 { 
 	 i n t   i n d e x   =   A r r a y B s e a r c h ( a r r a y ,   v a l u e ) ; 
 	 r e t u r n   ( i n d e x   >   - 1   & &   a r r a y [ i n d e x ]   = =   v a l u e ) ; 
 } 
 b o o l   I n A r r a y ( l o n g   & a r r a y [ ] ,   l o n g   v a l u e ) 
 { 
 	 i n t   i n d e x   =   A r r a y B s e a r c h ( a r r a y ,   v a l u e ) ; 
 	 r e t u r n   ( i n d e x   >   - 1   & &   a r r a y [ i n d e x ]   = =   v a l u e ) ; 
 } 
 b o o l   I n A r r a y ( i n t   & a r r a y [ ] ,   i n t   v a l u e ) 
 { 
 	 i n t   i n d e x   =   A r r a y B s e a r c h ( a r r a y ,   v a l u e ) ; 
 	 r e t u r n   ( i n d e x   >   - 1   & &   a r r a y [ i n d e x ]   = =   v a l u e ) ; 
 } 
 b o o l   I n A r r a y ( s h o r t   & a r r a y [ ] ,   s h o r t   v a l u e ) 
 { 
 	 i n t   i n d e x   =   A r r a y B s e a r c h ( a r r a y ,   v a l u e ) ; 
 	 r e t u r n   ( i n d e x   >   - 1   & &   a r r a y [ i n d e x ]   = =   v a l u e ) ; 
 } 
 b o o l   I n A r r a y ( c h a r   & a r r a y [ ] ,   c h a r   v a l u e ) 
 { 
 	 i n t   i n d e x   =   A r r a y B s e a r c h ( a r r a y ,   v a l u e ) ; 
 	 r e t u r n   ( i n d e x   >   - 1   & &   a r r a y [ i n d e x ]   = =   v a l u e ) ; 
 } 
 b o o l   I n A r r a y ( s t r i n g   & a r r a y [ ] ,   s t r i n g   v a l u e ) 
 { 
 	 i n t   i n d e x   =   - 1 ; 
       i n t   s i z e   =   A r r a y S i z e ( a r r a y ) ; 
 
       i f   ( s i z e   >   0 ) 
       { 
             f o r   ( i n t   i = 0 ;   i < s i z e ;   i + + ) 
             { 
                   i f   ( a r r a y [ i ]   = =   v a l u e )   { 
                         r e t u r n   t r u e ; 
                   } 
             } 
       } 
 	 r e t u r n   f a l s e ; 
 }  
  
 b o o l   I s O r d e r T y p e S e l l ( )   {  
       i f   (  
       O r d e r T y p e ( ) = = O P _ S E L L  
       | |  
       O r d e r T y p e ( ) = = O P _ S E L L S T O P  
       | |  
       O r d e r T y p e ( ) = = O P _ S E L L L I M I T  
       )   { r e t u r n ( t r u e ) ; }  
       r e t u r n ( f a l s e ) ;  
 }  
  
 b o o l   M o d i f y O r d e r ( 
       i n t   t i c k e t , 
       d o u b l e   o p , 
       d o u b l e   s l l = 0 , 
       d o u b l e   t p l = 0 , 
       d o u b l e   s l p = 0 , 
       d o u b l e   t p p = 0 , 
       d a t e t i m e   e x p = 0 , 
       c o l o r   c l r = C L R _ N O N E , 
       b o o l   o n t r a d e _ e v e n t = t r u e ) 
 { 
 / / - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
       i n t   b s = 1 ; 
       i f   ( 
                   O r d e r T y p e ( ) = = O P _ S E L L 
             | |   O r d e r T y p e ( ) = = O P _ S E L L S T O P 
             | |   O r d e r T y p e ( ) = = O P _ S E L L L I M I T 
             ) 
       { b s = - 1 ; }   / /   P o s i t i v e   w h e n   B u y ,   n e g a t i v e   w h e n   S e l l 
 
       w h i l e ( t r u e ) 
       { 
             u i n t   t i m e 0   =   G e t T i c k C o u n t ( ) ; 
             
             W a i t T r a d e C o n t e x t I f B u s y ( ) ; 
             
             i f   ( ! O r d e r S e l e c t ( t i c k e t , S E L E C T _ B Y _ T I C K E T ) )   { 
                   r e t u r n ( f a l s e ) ; 
             } 
             
             s t r i n g   s y m b o l             =   O r d e r S y m b o l ( ) ; 
             i n t   t y p e                       =   O r d e r T y p e ( ) ; 
             d o u b l e   a s k                   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ A S K ) ; 
             d o u b l e   b i d                   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ B I D ) ; 
             i n t   d i g i t s                   =   ( i n t ) S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ D I G I T S ) ; 
             d o u b l e   p o i n t               =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ P O I N T ) ; 
 	 	 d o u b l e   s t o p l e v e l       =   p o i n t   *   S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ T R A D E _ S T O P S _ L E V E L ) ; 
 	 	 d o u b l e   f r e e z e l e v e l   =   p o i n t   *   S y m b o l I n f o I n t e g e r ( s y m b o l ,   S Y M B O L _ T R A D E _ F R E E Z E _ L E V E L ) ; 
             
             i f   ( O r d e r T y p e ( ) < 2 )   { o p = O r d e r O p e n P r i c e ( ) ; }   e l s e   { o p = N o r m a l i z e D o u b l e ( o p , d i g i t s ) ; } 
             
 	 	 s l l   =   N o r m a l i z e D o u b l e ( s l l ,   d i g i t s ) ; 
             t p l   =   N o r m a l i z e D o u b l e ( t p l ,   d i g i t s ) ; 
             
 	 	 i f   ( o p < 0   | |   o p > = E M P T Y _ V A L U E )     { b r e a k ; } 
             i f   ( s l l < 0 )   { b r e a k ; } 
             i f   ( s l p < 0 )   { b r e a k ; } 
             i f   ( t p l < 0 )   { b r e a k ; } 
             i f   ( t p p < 0 )   { b r e a k ; } 
 	 	 
 	 	 / / - -   O P   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 / /   h t t p s : / / b o o k . m q l 4 . c o m / a p p e n d i x / l i m i t s 
 	 	 i f   ( t y p e   = =   O P _ B U Y L I M I T )   { 
 	 	 	 i f   ( a s k   -   o p   <   s t o p l e v e l )   { o p   =   a s k   -   s t o p l e v e l ; } 
 	 	 	 i f   ( a s k   -   o p   < =   f r e e z e l e v e l )   { o p   =   a s k   -   f r e e z e l e v e l   -   p o i n t ; } 
 	 	 } 
 	 	 e l s e   i f   ( t y p e   = =   O P _ B U Y S T O P )   { 
 	 	 	 i f   ( o p   -   a s k   <   s t o p l e v e l )   { o p   =   a s k   +   s t o p l e v e l ; } 
 	 	 	 i f   ( o p   -   a s k   < =   f r e e z e l e v e l )   { o p   =   a s k   +   f r e e z e l e v e l   +   p o i n t ; } 
 	 	 } 
 	 	 e l s e   i f   ( t y p e   = =   O P _ S E L L L I M I T )   { 
 	 	 	 i f   ( o p   -   b i d   <   s t o p l e v e l )   { o p   =   b i d   +   s t o p l e v e l ; } 
 	 	 	 i f   ( o p   -   b i d   < =   f r e e z e l e v e l )   { o p   =   b i d   +   f r e e z e l e v e l   +   p o i n t ; } 
 	 	 } 
 	 	 e l s e   i f   ( t y p e   = =   O P _ S E L L S T O P )   { 
 	 	 	 i f   ( b i d   -   o p   <   s t o p l e v e l )   { o p   =   b i d   -   s t o p l e v e l ; } 
 	 	 	 i f   ( b i d   -   o p   <   f r e e z e l e v e l )   { o p   =   b i d   -   f r e e z e l e v e l   -   p o i n t ; } 
 	 	 } 
 	 	 o p   =   N o r m a l i z e D o u b l e ( o p ,   d i g i t s ) ; 
             
             / / - -   S L   a n d   T P   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
             d o u b l e   s l = 0 ,   t p = 0 ,   v s l = 0 ,   v t p = 0 ; 
             s l   =   A l i g n S t o p L o s s ( s y m b o l ,   t y p e ,   o p ,   a t t r S t o p L o s s ( ) ,   s l l ,   s l p ) ; 
             i f   ( s l   <   0 )   { b r e a k ; } 
             t p   =   A l i g n T a k e P r o f i t ( s y m b o l ,   t y p e ,   o p ,   a t t r T a k e P r o f i t ( ) ,   t p l ,   t p p ) ; 
             i f   ( t p   <   0 )   { b r e a k ; } 
             
             i f   ( U S E _ V I R T U A L _ S T O P S ) 
             { 
                   / / - -   v i r t u a l   S L   a n d   T P   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
                   v s l   =   s l ; 
                   v t p   =   t p ; 
                   s l   =   0 ; 
 	 	 	 t p   =   0 ; 
             
                   d o u b l e   a s k b i d   =   a s k ; 
                   i f   ( b s   <   0 )   { a s k b i d   =   b i d ; } 
                   
                   i f   ( v s l > 0   | |   U S E _ E M E R G E N C Y _ S T O P S = = " a l w a y s " )   { 
                         i f   ( E M E R G E N C Y _ S T O P S _ R E L > 0   | |   E M E R G E N C Y _ S T O P S _ A D D > 0 ) 
                         { 
                               s l = v s l - E M E R G E N C Y _ S T O P S _ R E L * M a t h A b s ( a s k b i d - v s l ) * b s ; 
                               i f   ( s l < = 0 )   { s l = a s k b i d ; } 
                               s l = s l - t o D i g i t s ( E M E R G E N C Y _ S T O P S _ A D D , s y m b o l ) * b s ; 
                         } 
                   } 
                   i f   ( v t p > 0   | |   U S E _ E M E R G E N C Y _ S T O P S = = " a l w a y s " )   { 
                         i f   ( E M E R G E N C Y _ S T O P S _ R E L > 0   | |   E M E R G E N C Y _ S T O P S _ A D D > 0 ) 
                         { 
                               t p = v t p + E M E R G E N C Y _ S T O P S _ R E L * M a t h A b s ( v t p - a s k b i d ) * b s ; 
                               i f   ( t p < = 0 )   { t p = a s k b i d ; } 
                               t p = t p + t o D i g i t s ( E M E R G E N C Y _ S T O P S _ A D D , s y m b o l ) * b s ; 
                         } 
                   } 
                   v s l = N o r m a l i z e D o u b l e ( v s l , d i g i t s ) ; 
                   v t p = N o r m a l i z e D o u b l e ( v t p , d i g i t s ) ; 
             } 
             s l = N o r m a l i z e D o u b l e ( s l , d i g i t s ) ; 
             t p = N o r m a l i z e D o u b l e ( t p , d i g i t s ) ; 
 
             / / - -   m o d i f y   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
 	 	 R e s e t L a s t E r r o r ( ) ; 
 	 	 
             i f   ( U S E _ V I R T U A L _ S T O P S )   { 
                   i f   ( v s l ! = a t t r S t o p L o s s ( )   | |   v t p ! = a t t r T a k e P r o f i t ( ) )   { 
                         V i r t u a l S t o p s D r i v e r ( " s e t " ,   t i c k e t ,   v s l ,   v t p ,   t o P i p s ( M a t h A b s ( o p - v s l ) ,   s y m b o l ) ,   t o P i p s ( M a t h A b s ( v t p - o p ) ,   s y m b o l ) ) ; 
                   } 
             } 
 
             b o o l   s u c c e s s = f a l s e ; 
             
             i f   ( 
                         ( O r d e r T y p e ( ) > 1   & &   o p ! = N o r m a l i z e D o u b l e ( O r d e r O p e n P r i c e ( ) , d i g i t s ) ) 
                   | |   s l ! = N o r m a l i z e D o u b l e ( O r d e r S t o p L o s s ( ) , d i g i t s ) 
                   | |   t p ! = N o r m a l i z e D o u b l e ( O r d e r T a k e P r o f i t ( ) , d i g i t s ) 
                   | |   e x p ! = O r d e r E x p i r a t i o n ( ) 
             )   { 
                   s u c c e s s = O r d e r M o d i f y ( t i c k e t , o p , s l , t p , e x p , c l r ) ; 
             } 
                   
             / / - -   e r r o r   c h e c k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
             i n t   e r r a c t i o n = C h e c k F o r T r a d i n g E r r o r ( G e t L a s t E r r o r ( ) ,   " M o d i f y   e r r o r " ) ; 
             s w i t c h ( e r r a c t i o n ) 
             { 
                   c a s e   0 :   b r e a k ;         / /   n o   e r r o r 
                   c a s e   1 :   c o n t i n u e ;   / /   o v e r c o m a b l e   e r r o r 
                   c a s e   2 :   b r e a k ;         / /   f a t a l   e r r o r 
             } 
             
             / / - -   f i n i s h   w o r k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
             i f   ( s u c c e s s = = t r u e )   { 
                   i f   ( ! I s T e s t i n g ( )   & &   ! I s V i s u a l M o d e ( ) )   P r i n t ( " O p e r a t i o n   d e t a i l s :   S p e e d   " + ( s t r i n g ) ( G e t T i c k C o u n t ( ) - t i m e 0 ) + "   m s " ) ; 
                   i f   ( o n t r a d e _ e v e n t   = =   t r u e ) 
                   { 
                         O r d e r M o d i f i e d ( t i c k e t ) ; 
                         R e g i s t e r E v e n t ( " t r a d e " ) ; 
                   } 
                   i f   ( O r d e r S e l e c t ( t i c k e t , S E L E C T _ B Y _ T I C K E T ) )   { } 
                   r e t u r n ( t r u e ) ; 
             } 
             
             b r e a k ; 
       } 
 
       r e t u r n ( f a l s e ) ; 
 }  
  
 b o o l   M o d i f y S t o p s ( i n t   t i c k e t ,   d o u b l e   s l = - 1 ,   d o u b l e   t p = - 1 ,   c o l o r   c l r = C L R _ N O N E )  
 {  
       r e t u r n ( M o d i f y O r d e r ( t i c k e t , a t t r O p e n P r i c e ( ) , s l , t p , 0 , 0 , a t t r E x p i r a t i o n ( ) , c l r ) ) ;  
 }  
  
 i n t   O C O D r i v e r ( )  
 {  
 	 s t a t i c   i n t   l a s t _ k n o w n _ t i c k e t   =   0 ;  
       s t a t i c   i n t   o r d e r s 1 [ ] ;  
       s t a t i c   i n t   o r d e r s 2 [ ] ;  
       i n t   i ,   s i z e ;  
        
       i n t   t o t a l   =   O r d e r s T o t a l ( ) ;  
        
       f o r   ( i n t   p o s = t o t a l - 1 ;   p o s > = 0 ;   p o s - - )  
       {  
             i f   ( O r d e r S e l e c t ( p o s , S E L E C T _ B Y _ P O S , M O D E _ T R A D E S ) )  
             {  
                   i n t   t i c k e t   =   O r d e r T i c k e t ( ) ;  
                    
                   / / - -   e n d   h e r e   i f   w e   r e a c h   t h e   l a s t   k n o w n   t i c k e t  
                   i f   ( t i c k e t   = =   l a s t _ k n o w n _ t i c k e t )   { b r e a k ; }  
                    
                   / / - -   s e t   t h e   l a s t   k n o w n   t i c k e t ,   o n l y   i f   t h i s   i s   t h e   f i r s t   i t e r a t i o n  
                   i f   ( p o s   = =   t o t a l - 1 )   {  
                         l a s t _ k n o w n _ t i c k e t   =   t i c k e t ;  
                   }  
                    
                   / / - -   w e   a r e   s e a r c h i n g   f o r   p e n d i n g   o r d e r s ,   s k i p   t r a d e s  
                   i f   ( O r d e r T y p e ( )   < =   O P _ S E L L )   { c o n t i n u e ; }  
                    
                   / / - -  
                   i f   ( S t r i n g S u b s t r ( O r d e r C o m m e n t ( ) ,   0 ,   5 )   = =   " [ o c o : " )  
                   {  
                         i n t   t i c k e t _ o c o   =   S t r T o I n t e g e r ( S t r i n g S u b s t r ( O r d e r C o m m e n t ( ) ,   5 ,   S t r i n g L e n ( O r d e r C o m m e n t ( ) ) - 1 ) ) ;    
                          
                         b o o l   f o u n d   =   f a l s e ;  
                         s i z e   =   A r r a y S i z e ( o r d e r s 2 ) ;  
                         f o r   ( i = 0 ;   i < s i z e ;   i + + )  
                         {  
                               i f   ( o r d e r s 2 [ i ]   = =   t i c k e t _ o c o )   {  
                                     f o u n d   =   t r u e ;  
                                     b r e a k ;  
                               }  
                         }  
                          
                         i f   ( f o u n d   = =   f a l s e )   {  
                               A r r a y R e s i z e ( o r d e r s 1 ,   s i z e + 1 ) ;  
                               A r r a y R e s i z e ( o r d e r s 2 ,   s i z e + 1 ) ;  
                               o r d e r s 1 [ s i z e ]   =   t i c k e t _ o c o ;  
                               o r d e r s 2 [ s i z e ]   =   t i c k e t ;  
                         }  
                   }  
             }  
       }  
        
       s i z e   =   A r r a y S i z e ( o r d e r s 1 ) ;  
       i n t   d b r e m o v e   =   f a l s e ;  
       f o r   ( i = 0 ;   i < s i z e ;   i + + )  
       {  
             i f   ( O r d e r S e l e c t ( o r d e r s 1 [ i ] ,   S E L E C T _ B Y _ T I C K E T ,   M O D E _ T R A D E S )   = =   f a l s e   | |   O r d e r T y p e ( )   < =   O P _ S E L L )  
             {  
                   i f   ( O r d e r S e l e c t ( o r d e r s 2 [ i ] ,   S E L E C T _ B Y _ T I C K E T ,   M O D E _ T R A D E S ) )   {  
                         i f   ( D e l e t e O r d e r ( o r d e r s 2 [ i ] , c l r W h i t e ) )  
                         {  
                               d b r e m o v e   =   t r u e ;  
                         }  
                   }  
                   e l s e   {  
                         d b r e m o v e   =   t r u e ;  
                   }  
                    
                   i f   ( d b r e m o v e   = =   t r u e )  
                   {  
                         A r r a y S t r i p K e y ( o r d e r s 1 ,   i ) ;  
                         A r r a y S t r i p K e y ( o r d e r s 2 ,   i ) ;  
                   }  
             }  
       }  
        
       s i z e   =   A r r a y S i z e ( o r d e r s 2 ) ;  
       d b r e m o v e   =   f a l s e ;  
       f o r   ( i = 0 ;   i < s i z e ;   i + + )  
       {  
             i f   ( O r d e r S e l e c t ( o r d e r s 2 [ i ] ,   S E L E C T _ B Y _ T I C K E T ,   M O D E _ T R A D E S )   = =   f a l s e   | |   O r d e r T y p e ( )   < =   O P _ S E L L )  
             {  
                   i f   ( O r d e r S e l e c t ( o r d e r s 1 [ i ] ,   S E L E C T _ B Y _ T I C K E T ,   M O D E _ T R A D E S ) )   {  
                         i f   ( D e l e t e O r d e r ( o r d e r s 1 [ i ] , c l r W h i t e ) )  
                         {  
                               d b r e m o v e   =   t r u e ;  
                         }  
                   }  
                   e l s e   {  
                         d b r e m o v e   =   t r u e ;  
                   }  
                    
                   i f   ( d b r e m o v e   = =   t r u e )  
                   {  
                         A r r a y S t r i p K e y ( o r d e r s 1 ,   i ) ;  
                         A r r a y S t r i p K e y ( o r d e r s 2 ,   i ) ;  
                   }  
             }  
       }  
        
       r e t u r n   t r u e ;  
 }  
  
 b o o l   O n T i m e r S e t ( d o u b l e   s e c o n d s )  
 {  
       i f   ( F X D _ O N T I M E R _ T A K E N )  
       {  
             i f   ( s e c o n d s < = 0 )   {  
                   F X D _ O N T I M E R _ T A K E N _ I N _ M I L L I S E C O N D S   =   f a l s e ;  
                   F X D _ O N T I M E R _ T A K E N _ T I M E   =   0 ;  
             }  
             e l s e   i f   ( s e c o n d s   <   1 )   {  
                   F X D _ O N T I M E R _ T A K E N _ I N _ M I L L I S E C O N D S   =   t r u e ;  
                   F X D _ O N T I M E R _ T A K E N _ T I M E   =   s e c o n d s * 1 0 0 0 ;    
             }  
             e l s e   {  
                   F X D _ O N T I M E R _ T A K E N _ I N _ M I L L I S E C O N D S   =   f a l s e ;  
                   F X D _ O N T I M E R _ T A K E N _ T I M E   =   s e c o n d s ;  
             }  
              
             r e t u r n   t r u e ;  
       }  
  
       i f   ( s e c o n d s < = 0 )   {  
             E v e n t K i l l T i m e r ( ) ;  
       }  
       e l s e   i f   ( s e c o n d s   <   1 )   {  
             r e t u r n   ( E v e n t S e t M i l l i s e c o n d T i m e r ( ( i n t ) ( s e c o n d s * 1 0 0 0 ) ) ) ;      
       }  
       e l s e   {  
             r e t u r n   ( E v e n t S e t T i m e r ( ( i n t ) s e c o n d s ) ) ;  
       }  
        
       r e t u r n   t r u e ;  
 }  
  
 v o i d   O n T r a d e L i s t e n e r ( ) 
 { 
       i f   ( ! E N A B L E _ E V E N T _ T R A D E )   { r e t u r n ; } 
 
       i n t   i = - 1 ,   j = - 1 ,   k = - 1 ;   i n t   t i = - 1 ;   i n t   t y = - 1 ; 
       i n t   s i z e = - 1 ; 
       s t a t i c   d a t e t i m e   s t a r t _ t i m e = - 1 ; 
     
       i n t   p o s = 0 ; 
       
       i f   ( s t a r t _ t i m e = = - 1 )   { s t a r t _ t i m e = T i m e C u r r e n t ( ) ; } 
 
       s t r i n g   e _ r e a s o n = " " ; 
       s t r i n g   e _ d e t a i l = " " ; 
       
       / / / / / / / 
       / /   T R A D E S   A N D   O R D E R S 
       i n t   t i c k e t s _ n o w [ ] ;   A r r a y R e s i z e ( t i c k e t s _ n o w , 0 ) ; 
       i n t   t n = 0 ; 
       s t a t i c   i n t         m e m o r y _ t i [ ] ; 
       s t a t i c   i n t         m e m o r y _ t y [ ] ; 
       s t a t i c   d o u b l e   m e m o r y _ s l [ ] ; 
       s t a t i c   d o u b l e   m e m o r y _ t p [ ] ; 
       s t a t i c   d o u b l e   m e m o r y _ v l [ ] ; 
       s t a t i c   b o o l   l o a d e d = f a l s e ; 
       
       i n t   t o t a l = O r d e r s T o t a l ( ) ; 
       
       / /   i n i t i a l   f i l l   o f   t h e   l o c a l   D B 
       i f   ( l o a d e d = = f a l s e ) 
       { 
             l o a d e d = t r u e ; 
             f o r   ( p o s = t o t a l - 1 ;   p o s > = 0 ;   p o s - - ) 
             { 
                   i f   ( O r d e r S e l e c t ( p o s , S E L E C T _ B Y _ P O S , M O D E _ T R A D E S ) ) 
                   { 
                         A r r a y R e s i z e ( m e m o r y _ t i , t n + 1 ) ; 
                         A r r a y R e s i z e ( m e m o r y _ t y , t n + 1 ) ; 
                         A r r a y R e s i z e ( m e m o r y _ s l , t n + 1 ) ; 
                         A r r a y R e s i z e ( m e m o r y _ t p , t n + 1 ) ; 
                         A r r a y R e s i z e ( m e m o r y _ v l , t n + 1 ) ; 
                         m e m o r y _ t i [ t n ] = O r d e r T i c k e t ( ) ; 
                         m e m o r y _ t y [ t n ] = O r d e r T y p e ( ) ; 
                         m e m o r y _ s l [ t n ] = a t t r S t o p L o s s ( ) ; 
                         m e m o r y _ t p [ t n ] = a t t r T a k e P r o f i t ( ) ; 
                         m e m o r y _ v l [ t n ] = O r d e r L o t s ( ) ; 
                         t n + + ; 
                   } 
             } 
             r e t u r n ; 
       } 
       t n = 0 ; 
       
       b o o l   p e n d i n g _ o p e n s = f a l s e ; 
       
       f o r   ( p o s = t o t a l - 1 ;   p o s > = 0 ;   p o s - - ) 
       { 
             i f   ( O r d e r S e l e c t ( p o s , S E L E C T _ B Y _ P O S , M O D E _ T R A D E S ) ) 
             { 
                   A r r a y R e s i z e ( t i c k e t s _ n o w , t n + 1 ) ; 
                   t i c k e t s _ n o w [ t n ] = O r d e r T i c k e t ( ) ; 
                   t n + + ; 
                   
                   / /   T r a d e s   a n d   O r d e r s 
                   i = - 1 ;   t i = - 1 ;   t y = - 1 ;   s i z e = A r r a y S i z e ( m e m o r y _ t i ) ; 
                   
                   i f   ( s i z e > 0 ) 
                   { 
                       f o r   ( i = 0 ;   i < s i z e ;   i + + ) 
                       { 
                             i f   ( m e m o r y _ t i [ i ] = = O r d e r T i c k e t ( ) ) 
                             { 
                                   i f   ( m e m o r y _ t y [ i ] = = O r d e r T y p e ( ) )   { 
                                         t y = O r d e r T y p e ( ) ; 
                                     } 
                                     e l s e   { 
                                           p e n d i n g _ o p e n s = t r u e ; 
                                     } 
                                     t i = O r d e r T i c k e t ( ) ;   b r e a k ; 
                             } 
                       } 
                   } 
 
                   / /   O r d e r   b e c o m e   a   t r a d e 
                   i f   ( t i > 0   & &   t y < 0 ) 
                   { 
                         m e m o r y _ t i [ i ] = O r d e r T i c k e t ( ) ; 
                         m e m o r y _ t y [ i ] = O r d e r T y p e ( ) ; 
                       
                         m e m o r y _ s l [ i ] = a t t r S t o p L o s s ( ) ; 
                         m e m o r y _ t p [ i ] = a t t r T a k e P r o f i t ( ) ; 
                         m e m o r y _ v l [ i ] = O r d e r L o t s ( ) ; 
                         e _ r e a s o n = " n e w " ; 
                         e _ d e t a i l = " " ; 
                         b r e a k ; 
                   } 
 
                   / /   N e w   t r a d e / o r d e r   o p e n e d 
                   e l s e   i f   ( t i < 0   & &   t y < 0 ) 
                   { 
                         A r r a y R e s i z e ( m e m o r y _ t i , s i z e + 1 ) ;   m e m o r y _ t i [ s i z e ] = O r d e r T i c k e t ( ) ; 
                         A r r a y R e s i z e ( m e m o r y _ t y , s i z e + 1 ) ;   m e m o r y _ t y [ s i z e ] = O r d e r T y p e ( ) ; 
                         A r r a y R e s i z e ( m e m o r y _ s l , s i z e + 1 ) ;   m e m o r y _ s l [ s i z e ] = a t t r S t o p L o s s ( ) ; 
                         A r r a y R e s i z e ( m e m o r y _ t p , s i z e + 1 ) ;   m e m o r y _ t p [ s i z e ] = a t t r T a k e P r o f i t ( ) ; 
                         A r r a y R e s i z e ( m e m o r y _ v l , s i z e + 1 ) ;   m e m o r y _ v l [ s i z e ] = O r d e r L o t s ( ) ; 
                         e _ r e a s o n = " n e w " ; 
                         e _ d e t a i l = " " ; 
                         b r e a k ; 
                   } 
                   
                   / /   C h e c k   f o r   L o t s ,   S L   o r   T P   m o d i f i c a t i o n 
                   e l s e   i f   ( t y > = 0   & &   i > - 1 )   { 
                         i f   ( m e m o r y _ v l [ i ] ! = O r d e r L o t s ( ) ) 
                         { 
                               m e m o r y _ v l [ i ] = O r d e r L o t s ( ) ; 
                               e _ r e a s o n = " m o d i f y " ; 
                               e _ d e t a i l = " l o t s " ; 
                               b r e a k ; 
                         } 
                         e l s e   { 
                               i f   ( m e m o r y _ s l [ i ] ! = a t t r S t o p L o s s ( ) )       { m e m o r y _ s l [ i ] = a t t r S t o p L o s s ( ) ;   e _ r e a s o n = " m o d i f y " ;   e _ d e t a i l = " s l " ;   b r e a k ; } 
                               i f   ( m e m o r y _ t p [ i ] ! = a t t r T a k e P r o f i t ( ) )   { m e m o r y _ t p [ i ] = a t t r T a k e P r o f i t ( ) ;   e _ r e a s o n = " m o d i f y " ;   i f   ( e _ d e t a i l = = " s l " )   { e _ d e t a i l = " s l t p " ; }   e l s e   { e _ d e t a i l = " t p " ; }   b r e a k ; } 
                         } 
                   } 
             } 
       } 
       
       / /   C h e c k   f o r   c l o s e d   o r d e r s / t r a d e s 
       b o o l   m i s s i n g = t r u e ; 
       i f   ( e _ r e a s o n = = " "   & &   p e n d i n g _ o p e n s = = f a l s e   & &   A r r a y S i z e ( t i c k e t s _ n o w ) < A r r a y S i z e ( m e m o r y _ t i ) ) 
       { 
             f o r ( i = A r r a y S i z e ( m e m o r y _ t i ) - 1 ;   i > = 0 ;   i - - )   {   / /   f o r   e a c h   t i c k e t   i n   t h e   m e m o r y . . . 
                   f o r ( j = 0 ;   j < A r r a y S i z e ( t i c k e t s _ n o w ) ;   j + + )   {   / /   c h e c k   i f   t r a d e   e x i s t s   n o w 
                         i f   ( m e m o r y _ t i [ i ] = = t i c k e t s _ n o w [ j ] )   { m i s s i n g = f a l s e ;   b r e a k ; } 
                   } 
                   i f   ( m i s s i n g = = t r u e )   { 
                         i f   ( O r d e r S e l e c t ( m e m o r y _ t i [ i ] , S E L E C T _ B Y _ T I C K E T ) ) 
                         { 
                               / /   T h i s   c a n   h a p p e n   m o r e   t h a n   o n c e 
                               A r r a y S t r i p K e y ( m e m o r y _ t i , i ) ; 
                               A r r a y S t r i p K e y ( m e m o r y _ t y , i ) ; 
                               A r r a y S t r i p K e y ( m e m o r y _ s l , i ) ; 
                               A r r a y S t r i p K e y ( m e m o r y _ t p , i ) ; 
                               A r r a y S t r i p K e y ( m e m o r y _ v l , i ) ; 
                               
                               e _ r e a s o n = " c l o s e d " ; 
                               e _ d e t a i l = " " ; 
                               b r e a k ; 
                         } 
                   } 
                   m i s s i n g = t r u e ; 
             } 
       } 
       / /   T R A D E S   A N D   O R D E R S 
       / / / / / / / 
       
       i f   ( e _ r e a s o n ! = " " )   { 
             U p d a t e E v e n t V a l u e s ( e _ r e a s o n , e _ d e t a i l ) ; 
             E v e n t T r a d e ( ) ; 
             O n T r a d e L i s t e n e r ( ) ; 
             i f   ( U S E _ V I R T U A L _ S T O P S   & &   e _ r e a s o n = = " c l o s e d " )   { 
                   O b j e c t D e l e t e ( " # " + ( s t r i n g ) O r d e r T i c k e t ( ) + "   s l " ) ; 
                   O b j e c t D e l e t e ( " # " + ( s t r i n g ) O r d e r T i c k e t ( ) + "   t p " ) ; 
             } 
             r e t u r n ; 
       } 
 }  
  
 i n t   O n T r a d e Q u e u e ( i n t   q u e u e = 0 )  
 {  
       s t a t i c   i n t   m e m = 0 ;  
       m e m = m e m + q u e u e ;  
       r e t u r n ( m e m ) ;  
 }  
  
 i n t   O r d e r C r e a t e ( 
       s t r i n g   s y m b o l = " " , 
       i n t         t y p e = O P _ B U Y , 
       d o u b l e   l o t s = 0 , 
       d o u b l e   o p = 0 , 
       d o u b l e   s l l = 0 ,   / /   S L   l e v e l 
       d o u b l e   t p l = 0 ,   / /   T O   l e v e l 
       d o u b l e   s l p = 0 ,   / /   S L   a d j u s t   i n   p o i n t s 
       d o u b l e   t p p = 0 ,   / /   T P   a d j u s t   i n   p o i n t s 
       d o u b l e   s l i p p a g e = 0 , 
       i n t         m a g i c = 0 , 
       s t r i n g   c o m m e n t = " " , 
       c o l o r     a r r o w c o l o r = C L R _ N O N E , 
       d a t e t i m e   e x p i r a t i o n = 0 , 
       b o o l   o c o   =   f a l s e 
       ) 
 { 
       u i n t   t i m e 0 = G e t T i c k C o u n t ( ) ; 
       
       i n t   t i c k e t = - 1 ; 
       i n t   b s = 1 ; 
       i f   ( 
                   t y p e = = O P _ S E L L 
             | |   t y p e = = O P _ S E L L S T O P 
             | |   t y p e = = O P _ S E L L L I M I T 
             )   { b s = - 1 ; }   / /   P o s i t i v e   w h e n   B u y ,   n e g a t i v e   w h e n   S e l l 
       
       i f   ( s y m b o l = = " " )   { s y m b o l = S y m b o l ( ) ; } 
 
       l o t s = A l i g n L o t s ( l o t s ) ; 
       
       i n t   d i g i t s   =   0 ; 
       d o u b l e   a s k = 0 ,   b i d = 0 ,   p o i n t = 0 ,   t i c k s i z e = 0 ; 
       d o u b l e   s l = 0 ,   t p = 0 ; 
 	 d o u b l e   v s l = 0 ,   v t p = 0 ; 
 
       / / - -   a t t e m p t   t o   s e n d   t r a d e / o r d e r   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
       w h i l e ( ! I s S t o p p e d ( ) ) 
       { 
             / / P r i n t ( s l l + "   " + t p l + "   " + s l p + "   " + t p p ) ; 
             W a i t T r a d e C o n t e x t I f B u s y ( ) ; 
             
             s t a t i c   b o o l   n o t _ a l l o w e d _ m e s s a g e   =   f a l s e ; 
             i f   ( ! M Q L I n f o I n t e g e r ( M Q L _ T E S T E R )   & &   ! M a r k e t I n f o ( s y m b o l ,   M O D E _ T R A D E A L L O W E D ) )   { 
                   i f   ( n o t _ a l l o w e d _ m e s s a g e   = =   f a l s e )   { 
                         P r i n t ( " M a r k e t   ( " + s y m b o l + " )   i s   c l o s e d " ) ; 
                   } 
                   n o t _ a l l o w e d _ m e s s a g e   =   t r u e ; 
                   r e t u r n ( f a l s e ) ; 
             } 
             n o t _ a l l o w e d _ m e s s a g e   =   f a l s e ; 
             
             d i g i t s     =   ( i n t ) M a r k e t I n f o ( s y m b o l , M O D E _ D I G I T S ) ; 
             a s k           =   M a r k e t I n f o ( s y m b o l , M O D E _ A S K ) ; 
             b i d           =   M a r k e t I n f o ( s y m b o l , M O D E _ B I D ) ; 
             p o i n t       =   M a r k e t I n f o ( s y m b o l , M O D E _ P O I N T ) ; 
             t i c k s i z e =   M a r k e t I n f o ( s y m b o l ,   M O D E _ T I C K S I Z E ) ; 
             
             / / -   n o t   e n o u g h   m o n e y   c h e c k :   f i x   m a x i m u m   p o s s i b l e   l o t   b y   m a r g i n   r e q u i r e d ,   o r   q u i t 
             i f   ( t y p e = = O P _ B U Y   | |   t y p e = = O P _ S E L L ) 
             { 
                   d o u b l e   L o t S t e p                     =   M a r k e t I n f o ( s y m b o l , M O D E _ L O T S T E P ) ; 
                   d o u b l e   M i n L o t s                     =   M a r k e t I n f o ( s y m b o l , M O D E _ M I N L O T ) ; 
                   d o u b l e   m a r g i n _ r e q u i r e d     =   M a r k e t I n f o ( s y m b o l , M O D E _ M A R G I N R E Q U I R E D ) ; 
                   s t a t i c   b o o l   n o t _ e n o u g h _ m e s s a g e   =   f a l s e ; 
                   
                   i f   ( m a r g i n _ r e q u i r e d   ! =   0 ) 
                   { 
                         d o u b l e   m a x _ s i z e _ b y _ m a r g i n   =   A c c o u n t F r e e M a r g i n ( ) / m a r g i n _ r e q u i r e d ; 
                   
                         i f   ( l o t s   >   m a x _ s i z e _ b y _ m a r g i n )   { 
                               d o u b l e   s i z e _ o l d   =   l o t s ; 
                               l o t s   =   m a x _ s i z e _ b y _ m a r g i n ; 
                               i f   ( l o t s < M i n L o t s ) 
                               { 
                                     i f   ( n o t _ e n o u g h _ m e s s a g e = = f a l s e )   { 
                                           P r i n t ( " N o t   e n o u g h   m o n e y   t o   t r a d e   : (   T h e   r o b o t   i s   s t i l l   w o r k i n g ,   w a i t i n g   f o r   s o m e   f u n d s   t o   a p p e a r . . . " ) ; 
                                     } 
                                     n o t _ e n o u g h _ m e s s a g e   =   t r u e ; 
                                     r e t u r n ( f a l s e ) ; 
                               } 
                               e l s e 
                               { 
                                     l o t s   =   M a t h F l o o r ( l o t s / L o t S t e p ) * L o t S t e p ; 
                                     P r i n t ( " N o t   e n o u g h   m o n e y   t o   t r a d e   " + D o u b l e T o S t r i n g ( s i z e _ o l d ,   2 ) + " ,   t h e   v o l u m e   t o   t r a d e   w i l l   b e   t h e   m a x i m u m   p o s s i b l e   o f   " + D o u b l e T o S t r i n g ( l o t s ,   2 ) ) ; 
                               } 
                         } 
                   } 
                   n o t _ e n o u g h _ m e s s a g e   =   f a l s e ; 
             } 
             
             / / -   e x p i r a t i o n   f o r   t r a d e s 
             i f   ( t y p e = = O P _ B U Y   | |   t y p e = = O P _ S E L L ) 
             { 
                   i f   ( e x p i r a t i o n   >   0 ) 
                   { 
                         / / -   c o n v e r t   U N I X   t o   s e c o n d s 
                         i f   ( e x p i r a t i o n   >   T i m e C u r r e n t ( ) - 1 0 0 )   { 
                               e x p i r a t i o n   =   e x p i r a t i o n   -   T i m e C u r r e n t ( ) ; 
                         } 
                         
                         / / -   b o   b r o k e r ? 
                         i f   ( S t r i n g L e n ( s y m b o l ) > 6   & &   S t r i n g S u b s t r ( s y m b o l ,   S t r i n g L e n ( s y m b o l ) - 2 ) = = " b o " )   { 
                               c o m m e n t   =   " B O   e x p : " + ( s t r i n g ) e x p i r a t i o n ; 
                         } 
                         e l s e   { 
                               s t r i n g   e x p i r a t i o n _ s t r       =   " [ e x p : " + I n t e g e r T o S t r i n g ( e x p i r a t i o n ) + " ] " ; 
                               i n t   e x p i r a t i o n _ l e n             =   S t r i n g L e n ( e x p i r a t i o n _ s t r ) ; 
                               i n t   c o m m e n t _ l e n                   =   S t r i n g L e n ( c o m m e n t ) ; 
                               i f   ( c o m m e n t _ l e n   >   ( 2 7 - e x p i r a t i o n _ l e n ) ) 
                               { 
                                     c o m m e n t   =   S t r i n g S u b s t r ( c o m m e n t ,   0 ,   ( 2 7 - e x p i r a t i o n _ l e n ) ) ; 
                               } 
                               c o m m e n t   =   c o m m e n t   +   e x p i r a t i o n _ s t r ; 
                         } 
                   } 
             } 
 
             i f   ( t y p e = = O P _ B U Y   | |   t y p e = = O P _ S E L L ) 
             { 
                   o p = a s k ; 
                   i f   ( b s < 0 )   { 
                       o p = b i d ; 
                   } 
             } 
             
             o p         =   N o r m a l i z e D o u b l e ( o p ,   d i g i t s ) ; 
             s l l       =   N o r m a l i z e D o u b l e ( s l l , d i g i t s ) ; 
             t p l       =   N o r m a l i z e D o u b l e ( t p l , d i g i t s ) ; 
             i f   ( o p < 0   | |   o p > = E M P T Y _ V A L U E )     { b r e a k ; } 
             i f   ( s l l < 0   | |   s l p < 0   | |   t p l < 0   | |   t p p < 0 )   { b r e a k ; } 
 
             / / - -   S L   a n d   T P   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
             v s l = 0 ;   v t p = 0 ; 
             
             s l = A l i g n S t o p L o s s ( s y m b o l ,   t y p e ,   o p ,   0 ,   N o r m a l i z e D o u b l e ( s l l , d i g i t s ) ,   s l p ) ; 
             i f   ( s l < 0 )   { b r e a k ; } 
             t p = A l i g n T a k e P r o f i t ( s y m b o l ,   t y p e ,   o p ,   0 ,   N o r m a l i z e D o u b l e ( t p l , d i g i t s ) ,   t p p ) ; 
             i f   ( t p < 0 )   { b r e a k ; } 
             
             i f   ( U S E _ V I R T U A L _ S T O P S ) 
             { 
                   / / - -   v i r t u a l   S L   a n d   T P   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
                   v s l = s l ; 
                   v t p = t p ; 
                   s l = 0 ;   t p = 0 ; 
                   
                   d o u b l e   a s k b i d = a s k ; 
                   i f   ( b s < 0 )   { a s k b i d = b i d ; } 
                   
                   i f   ( v s l > 0   | |   U S E _ E M E R G E N C Y _ S T O P S = = " a l w a y s " )   { 
                         i f   ( E M E R G E N C Y _ S T O P S _ R E L > 0   | |   E M E R G E N C Y _ S T O P S _ A D D > 0 ) 
                         { 
                               s l = v s l - E M E R G E N C Y _ S T O P S _ R E L * M a t h A b s ( a s k b i d - v s l ) * b s ; 
                               i f   ( s l < = 0 )   { s l = a s k b i d ; } 
                               s l = s l - t o D i g i t s ( E M E R G E N C Y _ S T O P S _ A D D , s y m b o l ) * b s ; 
                         } 
                   } 
                   i f   ( v t p > 0   | |   U S E _ E M E R G E N C Y _ S T O P S = = " a l w a y s " )   { 
                         i f   ( E M E R G E N C Y _ S T O P S _ R E L > 0   | |   E M E R G E N C Y _ S T O P S _ A D D > 0 ) 
                         { 
                               t p = v t p + E M E R G E N C Y _ S T O P S _ R E L * M a t h A b s ( v t p - a s k b i d ) * b s ; 
                               i f   ( t p < = 0 )   { t p = a s k b i d ; } 
                               t p = t p + t o D i g i t s ( E M E R G E N C Y _ S T O P S _ A D D , s y m b o l ) * b s ; 
                         } 
                   } 
                   v s l = N o r m a l i z e D o u b l e ( v s l , d i g i t s ) ; 
                   v t p = N o r m a l i z e D o u b l e ( v t p , d i g i t s ) ; 
             } 
             
             s l = N o r m a l i z e D o u b l e ( s l , d i g i t s ) ; 
             t p = N o r m a l i z e D o u b l e ( t p , d i g i t s ) ; 
 
             / / - -   f i x   e x p i r a t i o n   f o r   p e n d i n g   o r d e r s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
             i f   ( e x p i r a t i o n > 0   & &   t y p e > O P _ S E L L )   { 
                   i f   ( ( e x p i r a t i o n - T i m e C u r r e n t ( ) ) < ( 1 1 * 6 0 ) )   { 
                         P r i n t ( " E x p i r a t i o n   t i m e   c a n n o t   b e   l e s s   t h a n   1 1   m i n u t e s ,   s o   i t   w a s   a u t o m a t i c a l l y   m o d i f i e d   t o   1 1   m i n u t e s . " ) ; 
                         e x p i r a t i o n = T i m e C u r r e n t ( ) + ( 1 1 * 6 0 ) ; 
                   } 
             } 
             
             / / - -   f i x   p r i c e s   b y   t i c k s i z e 
             o p   =   M a t h R o u n d ( o p / t i c k s i z e ) * t i c k s i z e ; 
             s l   =   M a t h R o u n d ( s l / t i c k s i z e ) * t i c k s i z e ; 
             t p   =   M a t h R o u n d ( t p / t i c k s i z e ) * t i c k s i z e ; 
 
             / / - -   s e n d   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
             R e s e t L a s t E r r o r ( ) ; 
             t i c k e t   =   O r d e r S e n d ( s y m b o l , t y p e , l o t s , o p , ( i n t ) ( s l i p p a g e * P i p V a l u e ( s y m b o l ) ) , s l , t p , c o m m e n t , m a g i c , e x p i r a t i o n , a r r o w c o l o r ) ; 
 
             / / - -   e r r o r   c h e c k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
             s t r i n g   m s g _ p r e f i x = " N e w   t r a d e   e r r o r " ; 
             i f   ( t y p e > O P _ S E L L )   { m s g _ p r e f i x = " N e w   o r d e r   e r r o r " ; } 
             i n t   e r r a c t i o n = C h e c k F o r T r a d i n g E r r o r ( G e t L a s t E r r o r ( ) ,   m s g _ p r e f i x ) ; 
             s w i t c h ( e r r a c t i o n ) 
             { 
                   c a s e   0 :   b r e a k ;         / /   n o   e r r o r 
                   c a s e   1 :   c o n t i n u e ;   / /   o v e r c o m a b l e   e r r o r 
                   c a s e   2 :   b r e a k ;         / /   f a t a l   e r r o r 
             } 
             
             / / - -   f i n i s h   w o r k   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
             i f   ( t i c k e t > 0 )   { 
                   i f   ( U S E _ V I R T U A L _ S T O P S )   { 
                         V i r t u a l S t o p s D r i v e r ( " s e t " ,   t i c k e t ,   v s l ,   v t p ,   t o P i p s ( M a t h A b s ( o p - v s l ) ,   s y m b o l ) ,   t o P i p s ( M a t h A b s ( v t p - o p ) ,   s y m b o l ) ) ; 
                   } 
                   
                   / / - -   s h o w   s o m e   i n f o 
                   d o u b l e   s l i p = 0 ; 
                   i f   ( O r d e r S e l e c t ( t i c k e t , S E L E C T _ B Y _ T I C K E T ) )   { 
                         i f   ( ! M Q L I n f o I n t e g e r ( M Q L _ T E S T E R )   & &   ! M Q L I n f o I n t e g e r ( M Q L _ V I S U A L _ M O D E )   & & ! M Q L I n f o I n t e g e r ( M Q L _ O P T I M I Z A T I O N ) ) 
 	 	 	 	 { 
                               s l i p = O r d e r O p e n P r i c e ( ) - o p ; 
 	 	 	 	 	 s t r i n g   p r i n t   =   " " ; 
                               p r i n t   =   S t r i n g C o n c a t e n a t e ( 
                                     " O p e r a t i o n   d e t a i l s :   S p e e d   " , 
                                     ( G e t T i c k C o u n t ( ) - t i m e 0 ) , 
                                     "   m s   |   S l i p p a g e   " , 
                                     D o u b l e T o S t r ( t o P i p s ( s l i p ,   s y m b o l ) , 1 ) , 
                                     "   p i p s " 
                               ) ; 
 	 	 	 	 	 P r i n t ( p r i n t ) ; 
                         } 
                   } 
                   
                   / / - -   f i x   s t o p s   i n   c a s e   o f   s l i p p a g e 
                   i f   ( ! M Q L I n f o I n t e g e r ( M Q L _ T E S T E R )   & &   ! M Q L I n f o I n t e g e r ( M Q L _ V I S U A L _ M O D E )   & & ! M Q L I n f o I n t e g e r ( M Q L _ O P T I M I Z A T I O N ) ) 
                   { 
                         s l i p   =   N o r m a l i z e D o u b l e ( O r d e r O p e n P r i c e ( ) ,   d i g i t s )   -   N o r m a l i z e D o u b l e ( o p ,   d i g i t s ) ; 
                         i f   ( s l i p   ! =   0   & &   ( O r d e r S t o p L o s s ( ) ! = 0   | |   O r d e r T a k e P r o f i t ( ) ! = 0 ) ) 
                         { 
                               P r i n t ( " C o r r e c t i n g   s t o p s   b e c a u s e   o f   s l i p p a g e . . . " ) ; 
                               s l   =   O r d e r S t o p L o s s ( ) ; 
                               t p   =   O r d e r T a k e P r o f i t ( ) ; 
                               i f   ( s l   ! =   0   | |   t p   ! =   0 ) 
                               { 
                                     i f   ( s l   ! =   0 )   { s l   =   N o r m a l i z e D o u b l e ( O r d e r S t o p L o s s ( ) + s l i p ,   d i g i t s ) ; } 
                                     i f   ( t p   ! =   0 )   { t p   =   N o r m a l i z e D o u b l e ( O r d e r T a k e P r o f i t ( ) + s l i p ,   d i g i t s ) ; } 
                                     M o d i f y O r d e r ( t i c k e t ,   O r d e r O p e n P r i c e ( ) ,   s l ,   t p ,   0 ,   0 ,   0 ,   C L R _ N O N E ,   f a l s e ) ; 
                               } 
                         } 
                   } 
                   
                   R e g i s t e r E v e n t ( " t r a d e " ) ; 
                   b r e a k ; 
             } 
             
             b r e a k ; 
       } 
       
       i f   ( o c o   = =   t r u e   & &   t i c k e t   >   0 ) 
       { 
             i f   ( U S E _ V I R T U A L _ S T O P S )   { 
                   s l   =   v s l ; 
                   t p   =   v t p ; 
             } 
             
             s l   =   ( s l   >   0 )   ?   N o r m a l i z e D o u b l e ( M a t h A b s ( o p - s l ) ,   d i g i t s )   :   0 ; 
             t p   =   ( t p   >   0 )   ?   N o r m a l i z e D o u b l e ( M a t h A b s ( o p - t p ) ,   d i g i t s )   :   0 ; 
             
             i n t   t y p e o c o   =   t y p e ; 
             i f   ( t y p e o c o   = =   O P _ B U Y S T O P )   { 
                   t y p e o c o   =   O P _ S E L L S T O P ; 
                   o p   =   b i d   -   M a t h A b s ( o p - a s k ) ; 
             } 
             e l s e   i f   ( t y p e o c o   = =   O P _ B U Y L I M I T )   { 
                   t y p e o c o   =   O P _ S E L L L I M I T ; 
                   o p   =   b i d   +   M a t h A b s ( o p - a s k ) ; 
             } 
             e l s e   i f   ( t y p e o c o   = =   O P _ S E L L S T O P )   { 
                   t y p e o c o   =   O P _ B U Y S T O P ; 
                   o p   =   a s k   +   M a t h A b s ( o p - b i d ) ; 
             } 
             e l s e   i f   ( t y p e o c o   = =   O P _ S E L L L I M I T )   { 
                   t y p e o c o   =   O P _ B U Y L I M I T ; 
                   o p   =   a s k   -   M a t h A b s ( o p - b i d ) ; 
             } 
             
             i f   ( t y p e o c o   = =   O P _ B U Y S T O P   | |   t y p e o c o   = =   O P _ B U Y L I M I T ) 
             { 
                   s l   =   ( s l   >   0 )   ?   o p   -   s l   :   0 ; 
                   t p   =   ( t p   >   0 )   ?   o p   +   t p   :   0 ; 
                   a r r o w c o l o r   =   c l r B l u e ; 
             } 
             e l s e   { 
                   s l   =   ( s l   >   0 )   ?   o p   +   s l   :   0 ; 
                   t p   =   ( t p   >   0 )   ?   o p   -   t p   :   0 ; 
                   a r r o w c o l o r   =   c l r R e d ; 
             } 
                   
             c o m m e n t   =   " [ o c o : " + ( s t r i n g ) t i c k e t + " ] " ; 
             
             O r d e r C r e a t e ( s y m b o l , t y p e o c o , l o t s , o p , s l , t p , 0 , 0 , s l i p p a g e , m a g i c , c o m m e n t , a r r o w c o l o r , e x p i r a t i o n , f a l s e ) ; 
       } 
       
       r e t u r n ( t i c k e t ) ; 
 }  
  
 b o o l   O r d e r M o d i f i e d ( d o u b l e   i d = - 1 ,   s t r i n g   a c t i o n = " s e t " )  
 {  
       s t a t i c   d o u b l e   m e m o r y [ ] ;  
        
       i f   ( i d = = - 1 )   {  
             i d = O r d e r T i c k e t ( ) ;  
             a c t i o n = " g e t " ;  
       }  
       e l s e   i f   ( i d > - 1   & &   a c t i o n ! = " c l e a r " )   {  
             a c t i o n = " s e t " ;  
       }  
        
       b o o l   m o d i f i e d _ s t a t u s = I n A r r a y ( m e m o r y , i d ) ;  
        
       i f   ( a c t i o n = = " s e t " )   {  
       / / -   S e t   T r a d e   I D  
             A r r a y V a l u e ( m e m o r y , i d ) ;  
             r e t u r n ( t r u e ) ;  
       }  
       e l s e   i f   ( a c t i o n = = " c l e a r " )   {  
       / / -   U n s e t   T r a d e   I D  
             A r r a y S t r i p ( m e m o r y , i d ) ;  
             r e t u r n ( t r u e ) ;  
       }  
       e l s e   i f   ( a c t i o n = = " g e t " )   {  
       / / -   G e t   S t a t e  
             r e t u r n ( m o d i f i e d _ s t a t u s ) ;  
       }  
        
       P r i n t ( " E r r o r :   T h e   s e c o n d   p a r a m e t e r   o f   t h e   f u n c t i o n   \ " O r d e r M o d i f i e d \ "   s h o u l d   b e   \ " s e t \ " ,   \ " g e t \ "   o r   \ " c l e a r \ " " ) ;  
       r e t u r n   ( f a l s e ) ;  
 }  
  
 d o u b l e   P i p V a l u e ( s t r i n g   s y m b o l = " " )  
 {  
       i f   ( s y m b o l = = " " )   { s y m b o l = G e t S y m b o l ( ) ; }  
       r e t u r n ( C u s t o m P o i n t ( s y m b o l ) / M a r k e t I n f o ( s y m b o l , M O D E _ P O I N T ) ) ;  
       / *  
       i f   ( s y m b o l = = " " )   { s y m b o l = G e t S y m b o l ( ) ; }  
       i n t   d i g i t s = M a r k e t I n f o ( s y m b o l , M O D E _ D I G I T S ) ;  
       i f   ( ( d i g i t s = = 2   | |   d i g i t s = = 4 ) )   { r e t u r n ( P O I N T _ F O R M A T / 0 . 0 0 0 1 ) ; }  
       i f   ( ( d i g i t s = = 3   | |   d i g i t s = = 5 ) )   { r e t u r n ( P O I N T _ F O R M A T / 0 . 0 0 0 0 1 ) ; }  
       i f   ( ( d i g i t s = = 6 ) )                             { r e t u r n ( P O I N T _ F O R M A T / 0 . 0 0 0 0 0 1 ) ; }  
       r e t u r n ( 1 ) ;  
       * /  
 }  
  
 / /   C o l l e c t   e v e n t s ,   i f   a n y  
 v o i d   R e g i s t e r E v e n t ( s t r i n g   c o m m a n d = " " )  
 {  
       i n t   t i c k e t = O r d e r T i c k e t ( ) ;  
 	 O n T r a d e L i s t e n e r ( ) ;  
       t i c k e t = O r d e r S e l e c t ( t i c k e t , S E L E C T _ B Y _ T I C K E T ) ;  
       r e t u r n ;  
 }  
  
 i n t   S e l l N o w ( 
       s t r i n g   s y m b o l , 
       d o u b l e   l o t s , 
       d o u b l e   s l l , 
       d o u b l e   t p l , 
       d o u b l e   s l p , 
       d o u b l e   t p p , 
       d o u b l e   s l i p p a g e = 0 , 
       i n t   m a g i c = 0 , 
       s t r i n g   c o m m e n t = " " , 
       c o l o r   a r r o w c o l o r = C L R _ N O N E , 
       d a t e t i m e   e x p i r a t i o n   =   0 
       ) 
 { 
       i n t   t i c k e t = O r d e r C r e a t e ( 
             s y m b o l , 
             O P _ S E L L , 
             l o t s , 
             0 , 
             s l l , 
             t p l , 
             s l p , 
             t p p , 
             s l i p p a g e , 
             m a g i c , 
             c o m m e n t , 
             a r r o w c o l o r , 
             e x p i r a t i o n 
             ) ; 
       r e t u r n ( t i c k e t ) ; 
 }  
  
 s t r i n g   S e t S y m b o l ( s t r i n g   s y m b o l = " " )  
 {  
 	 i f   ( s y m b o l = = " " )   { s y m b o l = S y m b o l ( ) ; }  
       G e t S y m b o l ( s y m b o l ) ;   r e t u r n ( s y m b o l ) ;  
 }  
  
 v o i d   S t r i n g E x p l o d e ( s t r i n g   d e l i m i t e r ,   s t r i n g   e x p l o d e ,   s t r i n g   & s R e t u r n [ ] ) 
 { 
       s t a t i c   i n t   i l B e g i n ;   i l B e g i n   =   - 1 ; 
       s t a t i c   i n t   i l E n d ;   i l E n d   =   0 ; 
       s t a t i c   i n t   i l E l e m e n t ;   i l E l e m e n t   =   0 ; 
       
       s t a t i c   s t r i n g   s D e l i m i t e r ;   s D e l i m i t e r   =   d e l i m i t e r ; 
       s t a t i c   s t r i n g   s E x p l o d e ;   s E x p l o d e   =   e x p l o d e ; 
       
       w h i l e   ( i l E n d   ! =   - 1 ) 
       { 
             i l E n d   =   S t r i n g F i n d ( s E x p l o d e ,   s D e l i m i t e r ,   i l B e g i n + 1 ) ; 
             A r r a y R e s i z e ( s R e t u r n , i l E l e m e n t + 1 ) ; 
             s R e t u r n [ i l E l e m e n t ]   =   " " ;           
             i f   ( i l E n d   = =   - 1 ) { 
                   i f   ( i l B e g i n + 1   ! =   S t r i n g L e n ( s E x p l o d e ) ) { 
                         s R e t u r n [ i l E l e m e n t ]   =   S t r i n g S u b s t r ( s E x p l o d e ,   i l B e g i n + 1 ,   S t r i n g L e n ( s E x p l o d e ) ) ; 
                   } 
             }   e l s e   {   
                   i f   ( i l B e g i n + 1   ! =   i l E n d ) { 
                         s R e t u r n [ i l E l e m e n t ]   =   S t r i n g S u b s t r ( s E x p l o d e ,   i l B e g i n + 1 ,   i l E n d - i l B e g i n - 1 ) ; 
                   } 
             }             
             i l B e g i n   =   S t r i n g F i n d ( s E x p l o d e ,   s D e l i m i t e r , i l E n d ) ;     
             i l E l e m e n t + + ;         
       } 
 } 
 
 v o i d   S t r i n g E x p l o d e ( s t r i n g   d e l i m i t e r ,   s t r i n g   e x p l o d e ,   i n t   & s R e t u r n [ ] ) 
 { 
       s t a t i c   i n t   i l B e g i n ;   i l B e g i n   =   - 1 ; 
       s t a t i c   i n t   i l E n d ;   i l E n d   =   0 ; 
       s t a t i c   i n t   i l E l e m e n t ;   i l E l e m e n t   =   0 ; 
       
       s t a t i c   s t r i n g   s D e l i m i t e r ;   s D e l i m i t e r   =   d e l i m i t e r ; 
       s t a t i c   s t r i n g   s E x p l o d e ;   s E x p l o d e   =   e x p l o d e ; 
 
       w h i l e   ( i l E n d   ! =   - 1 ) 
       { 
             i l E n d   =   S t r i n g F i n d ( s E x p l o d e ,   s D e l i m i t e r ,   i l B e g i n + 1 ) ; 
             A r r a y R e s i z e ( s R e t u r n , i l E l e m e n t + 1 ) ; 
             s R e t u r n [ i l E l e m e n t ]   =   0 ;           
             i f   ( i l E n d   = =   - 1 ) { 
                   i f   ( i l B e g i n + 1   ! =   S t r i n g L e n ( s E x p l o d e ) ) { 
                         s R e t u r n [ i l E l e m e n t ]   =   ( i n t ) S t r T o I n t e g e r ( S t r i n g S u b s t r ( s E x p l o d e ,   i l B e g i n + 1 ,   S t r i n g L e n ( s E x p l o d e ) ) ) ; 
                   } 
             }   e l s e   {   
                   i f   ( i l B e g i n + 1   ! =   i l E n d ) { 
                         s R e t u r n [ i l E l e m e n t ]   =   ( i n t ) S t r T o I n t e g e r ( S t r i n g S u b s t r ( s E x p l o d e ,   i l B e g i n + 1 ,   i l E n d - i l B e g i n - 1 ) ) ; 
                   } 
             }             
             i l B e g i n   =   S t r i n g F i n d ( s E x p l o d e ,   s D e l i m i t e r , i l E n d ) ;     
             i l E l e m e n t + + ;         
       } 
 } 
 
 v o i d   S t r i n g E x p l o d e ( s t r i n g   d e l i m i t e r ,   s t r i n g   e x p l o d e ,   d o u b l e   & s R e t u r n [ ] ) 
 { 
       s t a t i c   i n t   i l B e g i n ;   i l B e g i n   =   - 1 ; 
       s t a t i c   i n t   i l E n d ;   i l E n d   =   0 ; 
       s t a t i c   i n t   i l E l e m e n t ;   i l E l e m e n t   =   0 ; 
       
       s t a t i c   s t r i n g   s D e l i m i t e r ;   s D e l i m i t e r   =   d e l i m i t e r ; 
       s t a t i c   s t r i n g   s E x p l o d e ;   s E x p l o d e   =   e x p l o d e ; 
 
       w h i l e   ( i l E n d   ! =   - 1 ) 
       { 
             i l E n d   =   S t r i n g F i n d ( s E x p l o d e ,   s D e l i m i t e r ,   i l B e g i n + 1 ) ; 
             A r r a y R e s i z e ( s R e t u r n , i l E l e m e n t + 1 ) ; 
             s R e t u r n [ i l E l e m e n t ]   =   0 ;           
             i f   ( i l E n d   = =   - 1 ) { 
                   i f   ( i l B e g i n + 1   ! =   S t r i n g L e n ( s E x p l o d e ) ) { 
                         s R e t u r n [ i l E l e m e n t ]   =   ( d o u b l e ) S t r T o D o u b l e ( S t r i n g S u b s t r ( s E x p l o d e ,   i l B e g i n + 1 ,   S t r i n g L e n ( s E x p l o d e ) ) ) ; 
                   } 
             }   e l s e   {   
                   i f   ( i l B e g i n + 1   ! =   i l E n d ) { 
                         s R e t u r n [ i l E l e m e n t ]   =   ( d o u b l e ) S t r T o D o u b l e ( S t r i n g S u b s t r ( s E x p l o d e ,   i l B e g i n + 1 ,   i l E n d - i l B e g i n - 1 ) ) ; 
                   } 
             }             
             i l B e g i n   =   S t r i n g F i n d ( s E x p l o d e ,   s D e l i m i t e r , i l E n d ) ;     
             i l E l e m e n t + + ;         
       } 
 }  
  
 t e m p l a t e < t y p e n a m e   T > 
 s t r i n g   S t r i n g I m p l o d e ( s t r i n g   d e l i m e t e r ,   T   & a r r a y [ ] ) 
 { 
       s t r i n g   r e t v a l   =   " " ; 
       i n t   s i z e             =   A r r a y S i z e ( a r r a y ) ; 
 
       f o r   ( i n t   i   =   0 ;   i   <   s i z e ;   i + + ) 
 	 { 
             r e t v a l   =   S t r i n g C o n c a t e n a t e ( r e t v a l ,   ( s t r i n g ) a r r a y [ i ] ,   d e l i m e t e r ) ; 
       } 
 	 
       r e t u r n   S t r i n g S u b s t r ( r e t v a l ,   0 ,   ( S t r i n g L e n ( r e t v a l )   -   S t r i n g L e n ( d e l i m e t e r ) ) ) ; 
 }  
  
 s t r i n g   S t r i n g T r i m ( s t r i n g   t e x t )  
 {  
       s t a t i c   s t r i n g   t ;   t   =   t e x t ;  
       t   =   S t r i n g T r i m R i g h t ( t ) ;  
       t   =   S t r i n g T r i m L e f t ( t ) ;  
 	 r e t u r n ( t ) ;  
 }  
  
 d o u b l e   S y m b o l A s k ( s t r i n g   s y m b o l = " " )  
 {  
       i f   ( s y m b o l = = " " )   { s y m b o l = G e t S y m b o l ( ) ; }  
       r e t u r n ( M a r k e t I n f o ( s y m b o l , M O D E _ A S K ) ) ;  
 }  
  
 d o u b l e   S y m b o l B i d ( s t r i n g   s y m b o l = " " )  
 {  
       i f   ( s y m b o l = = " " )   { s y m b o l = G e t S y m b o l ( ) ; }  
       r e t u r n ( M a r k e t I n f o ( s y m b o l , M O D E _ B I D ) ) ;  
 }  
  
 i n t   S y m b o l D i g i t s ( s t r i n g   s y m b o l = " " ) 
 { 
       i f   ( s y m b o l = = " " )   { s y m b o l = G e t S y m b o l ( ) ; } 
       r e t u r n   ( i n t ) M a r k e t I n f o ( s y m b o l , M O D E _ D I G I T S ) ; 
 }  
  
 d o u b l e   T i c k s D a t a ( s t r i n g   s y m b o l = " " ,   i n t   t y p e = 0 ,   i n t   s h i f t = 0 ) 
 { 
       
       / / r e t u r n ( M a r k e t I n f o ( s y m b o l , t y p e ) ) ; 
       s t a t i c   b o o l   c o l l e c t i n g _ t i c k s = f a l s e ; 
       / / s t a t i c   s t r i n g   f e e d e d _ s y m b o l s [ ] ; 
       s t a t i c   s t r i n g   s y m b o l s [ ] ; 
       s t a t i c   i n t   z e r o _ s i d [ ] ; 
       s t a t i c   d o u b l e   m e m o r y A S K [ ] [ 1 0 0 ] ; 
       s t a t i c   d o u b l e   m e m o r y B I D [ ] [ 1 0 0 ] ; 
       i n t   s i d = 0 ,   s i z e = 0 ,   i = 0 ,   i d = 0 ; 
       d o u b l e   a s k = 0 ,   b i d = 0 ,   r e t v a l = 0 ; 
       b o o l   e x i s t s = f a l s e ; 
       
       i f   ( A r r a y S i z e ( s y m b o l s ) = = 0 ) 
       { 
             A r r a y R e s i z e ( s y m b o l s , 1 ) ; 
             A r r a y R e s i z e ( z e r o _ s i d , 1 ) ; 
             A r r a y R e s i z e ( m e m o r y A S K , 1 ) ; 
             A r r a y R e s i z e ( m e m o r y B I D , 1 ) ; 
             
             s y m b o l s [ 0 ]   =   _ S y m b o l ; 
       } 
 	 
       i f   ( t y p e > 0   & &   s h i f t > 0 )   { c o l l e c t i n g _ t i c k s = t r u e ; } 
       i f   ( c o l l e c t i n g _ t i c k s = = f a l s e )   { 
             i f   ( t y p e > 0   & &   s h i f t = = 0 )   { 
                   / /   g o i n g   t o   g e t   t i c k s 
             }   e l s e   { r e t u r n ( 0 ) ; } 
       } 
 	 
 	 i f   ( s y m b o l = = " " )   { s y m b o l = _ S y m b o l ; } 
       
 	 i f   ( t y p e = = 0 ) 
 	 { 
             / / S t r i n g E x p l o d e ( " , " , s y m b o l , f e e d e d _ s y m b o l s ) ; 
 	       / / f o r   ( s = 0 ;   s < A r r a y S i z e ( f e e d e d _ s y m b o l s ) ;   s + + ) 
 	       / / { 
 	             / / s y m b o l = f e e d e d _ s y m b o l s [ s ] ; 
                   / / i f   ( s y m b o l = = " " )   { s y m b o l = S y m b o l ( ) ; } 
 	             e x i s t s = f a l s e ; 
                   s i z e = A r r a y S i z e ( s y m b o l s ) ; 
 	             f o r   ( i = 0 ;   i < s i z e ;   i + + )   { 
 	                   i f   ( s y m b o l s [ i ] = = s y m b o l )   { e x i s t s = t r u e ;   s i d = i ;   b r e a k ; } 
 	             } 
                   i f   ( e x i s t s = = f a l s e )   { 
                         i n t   n e w s i z e = A r r a y S i z e ( s y m b o l s ) + 1 ; 
                         A r r a y R e s i z e ( s y m b o l s , n e w s i z e ) ;   s y m b o l s [ n e w s i z e - 1 ] = s y m b o l ; 
                         A r r a y R e s i z e ( z e r o _ s i d , n e w s i z e ) ; 
                         A r r a y R e s i z e ( m e m o r y A S K , n e w s i z e ) ; 
                         A r r a y R e s i z e ( m e m o r y B I D , n e w s i z e ) ; 
                         s i d = n e w s i z e ; 
                   } 
                   i f   ( s i d > = 0 )   { 
                         a s k = M a r k e t I n f o ( s y m b o l , M O D E _ A S K ) ; 
                         b i d = M a r k e t I n f o ( s y m b o l , M O D E _ B I D ) ; 
                         i f   ( b i d = = 0   & &   M Q L I n f o I n t e g e r ( M Q L _ T E S T E R ) )   { 
                               P r i n t ( " T i c k s   d a t a   c o l l e c t o r   e r r o r :   " + s y m b o l + "   c a n n o t   b e   b a c k t e s t e d .   O n l y   t h e   c u r r e n t   s y m b o l   c a n   b e   b a c k t e s t e d .   T h e   E A   w i l l   b e   t e r m i n a t e d . " ) ; 
                               E x p e r t R e m o v e ( ) ; 
                         } 
                         i f   ( s y m b o l = = _ S y m b o l   | |   a s k ! = m e m o r y A S K [ s i d ] [ 0 ]   | |   b i d ! = m e m o r y B I D [ s i d ] [ 0 ] ) 
                         { 
                               m e m o r y A S K [ s i d ] [ z e r o _ s i d [ s i d ] ] = a s k ; 
                               m e m o r y B I D [ s i d ] [ z e r o _ s i d [ s i d ] ] = b i d ; 
                               z e r o _ s i d [ s i d ] = z e r o _ s i d [ s i d ] + 1 ; 
                               i f   ( z e r o _ s i d [ s i d ] = = 1 0 0 )   { z e r o _ s i d [ s i d ] = 0 ; } 
 	                   } 
       	       } 
             / / } 
       } 
       e l s e   { 
             i f   ( s h i f t < = 0 )   { 
                   i f   ( t y p e = = M O D E _ A S K )   { 
                         r e t u r n ( M a r k e t I n f o ( s y m b o l ,   M O D E _ A S K ) ) ; 
                   } 
                   e l s e   i f   ( t y p e = = M O D E _ B I D )   { 
                         r e t u r n ( M a r k e t I n f o ( s y m b o l ,   M O D E _ B I D ) ) ;   
                   } 
                   e l s e   { 
                         d o u b l e   m i d = ( ( M a r k e t I n f o ( s y m b o l ,   M O D E _ A S K ) + M a r k e t I n f o ( s y m b o l ,   M O D E _ B I D ) ) / 2 ) ; 
                         r e t u r n ( m i d ) ; 
                   } 
             } 
             e l s e   { 
                   s i z e = A r r a y S i z e ( s y m b o l s ) ; 
                   f o r   ( i = 0 ;   i < s i z e ;   i + + )   { 
                         i f   ( s y m b o l s [ i ] = = s y m b o l )   { s i d = i ; } 
                   } 
                   i f   ( s h i f t < 1 0 0 )   { 
                         i d = z e r o _ s i d [ s i d ] - s h i f t - 1 ;   i f ( i d < 0 )   { i d = i d + 1 0 0 ; } 
                         
                         i f   ( t y p e = = M O D E _ A S K )   { 
                               r e t v a l = ( m e m o r y A S K [ s i d ] [ i d ] ) ; 
                               i f   ( r e t v a l = = 0 )   { r e t v a l = M a r k e t I n f o ( s y m b o l , M O D E _ A S K ) ; } 
                         } 
                         e l s e   i f   ( t y p e = = M O D E _ B I D )   { 
                               r e t v a l = ( m e m o r y B I D [ s i d ] [ i d ] ) ; 
                               i f   ( r e t v a l = = 0 )   { r e t v a l = M a r k e t I n f o ( s y m b o l , M O D E _ B I D ) ; } 
                         } 
                         / / P r i n t ( s h i f t + "   " + i d + "   " + r e t v a l ) ; 
                   } 
             } 
       } 
       r e t u r n ( r e t v a l ) ; 
 }  
  
 i n t   T i c k s P e r S e c o n d ( b o o l   g e t _ m a x   =   f a l s e ,   b o o l   s e t   =   f a l s e )  
 {  
       s t a t i c   d a t e t i m e   t i m e 0   =   0 ;  
       d a t e t i m e   t i m e 1   =   T i m e L o c a l ( ) ;  
       s t a t i c   i n t   t i c k s ,   t p s ,   t p s m a x ;  
        
       i f   ( s e t   = =   t r u e )  
       {  
             i f   ( t i m e 1   >   t i m e 0 )  
             {  
                   i f   ( t i m e 1 - t i m e 0   >   1 )  
                   {  
                         t p s   =   0 ;  
                   }  
                   e l s e  
                   {  
                         t p s   =   t i c k s ;  
                   }  
                   t i m e 0   =   t i m e 1 ;  
                   t i c k s   =   0 ;  
             }  
              
             t i c k s + + ;  
              
             i f   ( t p s   >   t p s m a x )   { t p s m a x   =   t p s ; }  
       }  
        
       i f   ( g e t _ m a x )  
       {  
             r e t u r n   t p s m a x ;  
       }  
        
       r e t u r n   t p s ;  
 }  
  
 d a t e t i m e   T i m e A t S t a r t ( s t r i n g   c m d = " s e r v e r " )  
 {  
       s t a t i c   d a t e t i m e   l o c a l = 0 ;  
       s t a t i c   d a t e t i m e   s e r v e r = 0 ;  
 	  
       i f   ( c m d = = " l o c a l " )   { r e t u r n ( l o c a l ) ; }  
       e l s e   i f   ( c m d = = " s e r v e r " )   { r e t u r n ( s e r v e r ) ; }  
       e l s e   i f   ( c m d = = " s e t " )   {  
             l o c a l = T i m e L o c a l ( ) ;  
             s e r v e r = T i m e C u r r e n t ( ) ;  
       }  
       r e t u r n ( 0 ) ;  
 }  
  
 d a t e t i m e   T i m e F r o m C o m p o n e n t s ( i n t   t i m e _ s r c = 0 ,   i n t   y = 0 ,   i n t   m = 0 ,   i n t   d = 0 ,   i n t   h = 0 ,   i n t   i = 0 ,   i n t   s = 0 ) 
 { 
       M q l D a t e T i m e   t m ; 
       i f   ( t i m e _ s r c   = =   0 )   { T i m e C u r r e n t ( t m ) ; } 
 	 e l s e   i f   ( t i m e _ s r c   = =   1 )   { T i m e L o c a l ( t m ) ; } 
 	 e l s e   i f   ( t i m e _ s r c   = =   2 )   { T i m e G M T ( t m ) ; } 
 
       i f   ( y > 0 )   { 
             i f   ( y < 1 0 0 )   { y = 2 0 0 0 + y ; } 
             t m . y e a r   =   y ; 
       } 
       i f   ( m > 0 )   { t m . m o n   =   m ; } 
       i f   ( d > 0 )   { t m . d a y   =   d ; } 
 
       t m . h o u r     =   h ; 
       t m . m i n       =   i ; 
       t m . s e c       =   s ; 
       
       r e t u r n   S t r u c t T o T i m e ( t m ) ; 
 }  
  
 v o i d   U p d a t e E v e n t V a l u e s ( s t r i n g   e _ r e a s o n = " " , s t r i n g   e _ d e t a i l = " " )  
 {  
       O n T r a d e Q u e u e ( 1 ) ;  
       e _ R e a s o n ( t r u e , e _ r e a s o n ) ;  
       e _ R e a s o n D e t a i l ( t r u e , e _ d e t a i l ) ;  
       e _ a t t r C l o s e P r i c e   ( t r u e , a t t r C l o s e P r i c e ( ) ) ;  
       e _ a t t r C o m m e n t         ( t r u e , a t t r C o m m e n t ( ) ) ;  
       e _ a t t r C o m m i s s i o n   ( t r u e , a t t r C o m m i s s i o n ( ) ) ;  
       e _ a t t r E x p i r a t i o n   ( t r u e , a t t r E x p i r a t i o n ( ) ) ;  
       e _ a t t r L o t s               ( t r u e , a t t r L o t s ( ) ) ;  
       e _ a t t r M a g i c N u m b e r ( t r u e , a t t r M a g i c N u m b e r ( ) ) ;  
       e _ a t t r O p e n P r i c e     ( t r u e , a t t r O p e n P r i c e ( ) ) ;  
       e _ a t t r P r o f i t           ( t r u e , a t t r P r o f i t ( ) ) ;  
       e _ a t t r S t o p L o s s       ( t r u e , a t t r S t o p L o s s ( ) ) ;  
       e _ a t t r S y m b o l           ( t r u e , a t t r S y m b o l ( ) ) ;  
       e _ a t t r T a k e P r o f i t   ( t r u e , a t t r T a k e P r o f i t ( ) ) ;  
       e _ a t t r T i c k e t           ( t r u e , a t t r T i c k e t ( ) ) ;  
       e _ a t t r T y p e               ( t r u e , a t t r T y p e ( ) ) ;  
       e _ a t t r O p e n T i m e ( t r u e , a t t r O p e n T i m e ( ) ) ;  
       e _ a t t r C l o s e T i m e ( t r u e , a t t r C l o s e T i m e ( ) ) ;  
       e _ a t t r S w a p ( t r u e , a t t r S w a p ( ) ) ;  
 }  
  
 d o u b l e   V i r t u a l S t o p s D r i v e r ( s t r i n g   _ c o m m a n d = " " ,   i n t   _ t i = 0 ,   d o u b l e   _ s l = 0 ,   d o u b l e   _ t p = 0 ,   d o u b l e   _ s l p = 0 ,   d o u b l e   _ t p p = 0 ) 
 { 
       i f   ( ! U S E _ V I R T U A L _ S T O P S )   { r e t u r n ( 0 ) ; }   / /   V i r t u a l   s t o p s   a r e   n o t   e n a b l e d   = >   s t o p   h e r e 
       
       s t a t i c   u l o n g   m e m _ t o _ t i [ ] ;   / /   t i c k e t s 
       s t a t i c   i n t   m e m _ t o [ ] ;         / /   t i m e o u t s 
       s t a t i c   u l o n g   l a s t _ c h e c k e d _ t i c k e t = 0 ; 
       
       s t a t i c   s t r i n g   c o m m a n d ;     c o m m a n d = _ c o m m a n d ; 
       s t a t i c   i n t   t i ;                     t i = _ t i ; 
       s t a t i c   d o u b l e   s l ;               s l = _ s l ; 
       s t a t i c   d o u b l e   t p ;               t p = _ t p ; 
       s t a t i c   d o u b l e   s l p ;             s l p = _ s l p ; 
       s t a t i c   d o u b l e   t p p ;             t p p = _ t p p ; 
       
       s t a t i c   i n t   i ;   i = 0 ; 
       s t a t i c   i n t   i i ;   i i = - 1 ; 
       s t a t i c   i n t   s i z e ;   s i z e = 0 ; 
       s t a t i c   i n t   e r r o r ;   e r r o r = 0 ; 
       s t a t i c   i n t   p o s ; 
       s t a t i c   i n t   t o t a l ; 
       s t a t i c   s t r i n g   n a m e ; 
       s t a t i c   d o u b l e   a s k ,   b i d ; 
       s t a t i c   s t r i n g   p r i n t ; 
       
       / /   L i s t e n   t r a d e s / o r d e r s 
       i f   ( c o m m a n d = = " "   | |   c o m m a n d = = " l i s t e n " ) 
       { 
             / / - -   d e l e t e   l i n e s   o f   v i r t u a l   s t o p s   o f   m a n u a l l y   c l o s e d   t r a d e s   - - - - - - 
             t o t a l   =   O r d e r s H i s t o r y T o t a l ( ) ; 
             i f   ( t o t a l > 0 ) 
             { 
                   s t a t i c   u l o n g   p r e v _ t i c k e t ;   p r e v _ t i c k e t = 0 ; 
                   f o r   ( p o s = t o t a l - 1 ;   p o s > = 0 ;   p o s - - ) 
                   { 
                         i f   ( O r d e r S e l e c t ( p o s , S E L E C T _ B Y _ P O S , M O D E _ H I S T O R Y ) ) 
                         { 
                               i f   ( O r d e r T i c k e t ( ) = = l a s t _ c h e c k e d _ t i c k e t )   { b r e a k ; } 
                               p r e v _ t i c k e t = O r d e r T i c k e t ( ) ; 
                               s t a t i c   b o o l   c l e a r ;   c l e a r = t r u e ; 
                               
                               n a m e   =   " # " + ( s t r i n g ) O r d e r T i c k e t ( ) + "   s l " ; 
                               i f   ( O b j e c t F i n d ( 0 ,   n a m e ) < 0 )   { 
                                     e r r o r = G e t L a s t E r r o r ( ) ; 
                               } 
                               e l s e   { 
                                     c l e a r = f a l s e ; 
                                     O b j e c t D e l e t e ( 0 ,   n a m e ) ; 
                               } 
                               
                               n a m e   =   " # " + ( s t r i n g ) O r d e r T i c k e t ( ) + "   t p " ; 
                               i f   ( O b j e c t F i n d ( 0 ,   n a m e ) < 0 )   { 
                                     c l e a r = t r u e ; 
                                     e r r o r = G e t L a s t E r r o r ( ) ; 
                               } 
                               e l s e   { 
                                     c l e a r = f a l s e ; 
                                     O b j e c t D e l e t e ( 0 ,   n a m e ) ; 
                               } 
                         } 
                   } 
             
                   i f   ( p r e v _ t i c k e t = = 0 )   { p r e v _ t i c k e t = O r d e r T i c k e t ( ) ; } 
                   l a s t _ c h e c k e d _ t i c k e t   =   p r e v _ t i c k e t ; 
             } 
             
             / / - -   p a r s e   t r a d e s   - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - 
             t o t a l   =   O r d e r s T o t a l ( ) ; 
             f o r   ( p o s = 0 ;   p o s < t o t a l ;   p o s + + ) 
             { 
                   i f   ( O r d e r S e l e c t ( p o s , S E L E C T _ B Y _ P O S ) ) 
                   { 
                         s t a t i c   u l o n g   t i c k e t ; 
                         s t a t i c   s t r i n g   s y m b o l ; 
                         s t a t i c   d o u b l e   l o t s ; 
                         s t a t i c   d o u b l e   c p ; 
                         t i c k e t       =   O r d e r T i c k e t ( ) ; 
                         s y m b o l       =   O r d e r S y m b o l ( ) ; 
                         l o t s           =   O r d e r L o t s ( ) ; 
                         c p               =   O r d e r C l o s e P r i c e ( ) ; 
                         
                         / /   c h e c k   S L   a n d   T P 
                         s t a t i c   d o u b l e   s l _ l v l ; 
                         s t a t i c   d o u b l e   t p _ l v l ; 
                         
                         n a m e   =   " # " + ( s t r i n g ) t i c k e t + "   s l " ; 
                         s l _ l v l   =   O b j e c t G e t D o u b l e ( 0 , n a m e , O B J P R O P _ P R I C E , 0 ) ; 
                         n a m e   =   " # " + ( s t r i n g ) t i c k e t + "   t p " ; 
                         t p _ l v l   =   O b j e c t G e t D o u b l e ( 0 , n a m e , O B J P R O P _ P R I C E , 0 ) ; 
                         
                         / /   c l o s e   t r a d e / o r d e r 
                         i f   ( O r d e r T y p e ( ) = = O P _ B U Y ) 
                         { 
                               b i d   =   S y m b o l I n f o D o u b l e ( s y m b o l , S Y M B O L _ B I D ) ; 
                               i f   ( ( s l _ l v l > 0   & &   b i d < = s l _ l v l )   | |   ( t p _ l v l > 0   & &   b i d > = t p _ l v l ) ) 
                               { 
                                     i f   ( V I R T U A L _ S T O P S _ T I M E O U T > 0   & &   ( s l _ l v l > 0   & &   b i d < = s l _ l v l ) ) 
                                     { 
                                           i = A r r a y S e a r c h ( m e m _ t o _ t i ,   t i c k e t ) ; 
                                           i f   ( i < 0 ) 
                                           {   / /   s t a r t   t i m e o u t 
                                                 s i z e   =   A r r a y S i z e ( m e m _ t o _ t i ) ; 
                                                 A r r a y R e s i z e ( m e m _ t o _ t i ,   s i z e + 1 ) ; 
                                                 A r r a y R e s i z e ( m e m _ t o ,   s i z e + 1 ) ; 
                                                 m e m _ t o _ t i [ s i z e ]       =   t i c k e t ; 
                                                 m e m _ t o [ s i z e ]             =   ( i n t ) T i m e L o c a l ( ) ; 
                                                 p r i n t   =   S t r i n g C o n c a t e n a t e ( " # " , t i c k e t , "   t i m e o u t   o f   " , V I R T U A L _ S T O P S _ T I M E O U T , "   s e c o n d s   s t a r t e d " ) ; 
                                                 P r i n t ( p r i n t ) ; 
                                                 r e t u r n ( 0 ) ; 
                                           } 
                                           e l s e   { 
                                                 i f   ( T i m e L o c a l ( ) - m e m _ t o [ i ]   < =   V I R T U A L _ S T O P S _ T I M E O U T )   { r e t u r n ( 0 ) ; } 
                                           } 
                                     } 
                                     i f   ( O r d e r C l o s e ( ( i n t ) t i c k e t ,   l o t s ,   c p ,   0 ,   c l r N O N E ) ) 
                                     { 
                                           O n T r a d e L i s t e n e r ( ) ;   / /   c h e c k   t h i s   b e f o r e   d e l e t i n g   t h e   l i n e s 
                                           n a m e   =   " # " + ( s t r i n g ) O r d e r T i c k e t ( ) + "   s l " ; 
                                           O b j e c t D e l e t e ( 0 ,   n a m e ) ; 
                                           n a m e   =   " # " + ( s t r i n g ) O r d e r T i c k e t ( ) + "   t p " ; 
                                           O b j e c t D e l e t e ( 0 ,   n a m e ) ; 
                                     } 
                                     r e t u r n ( 0 ) ; 
                               } 
                               e l s e 
                               { 
                                     i f   ( V I R T U A L _ S T O P S _ T I M E O U T > 0 )   { 
                                           i = A r r a y S e a r c h ( m e m _ t o _ t i , t i c k e t ) ; 
                                           i f   ( i > = 0 )   { 
                                                 A r r a y S t r i p K e y ( m e m _ t o _ t i , i ) ; 
                                                 A r r a y S t r i p K e y ( m e m _ t o , i ) ; 
                                           } 
                                     } 
                               } 
                         } 
                         e l s e   i f   ( O r d e r T y p e ( ) = = O P _ S E L L ) 
                         { 
                               a s k   =   S y m b o l I n f o D o u b l e ( s y m b o l , S Y M B O L _ A S K ) ; 
                               i f   ( ( s l _ l v l > 0   & &   a s k > = s l _ l v l )   | |   ( t p _ l v l > 0   & &   a s k < = t p _ l v l ) ) 
                               { 
                                     i f   ( V I R T U A L _ S T O P S _ T I M E O U T > 0   & &   ( s l _ l v l > 0   & &   a s k > = s l _ l v l ) ) 
                                     { 
                                           i = A r r a y S e a r c h ( m e m _ t o _ t i ,   t i c k e t ) ; 
                                           i f   ( i < 0 ) 
                                           {   / /   s t a r t   t i m e o u t 
                                                 s i z e   =   A r r a y S i z e ( m e m _ t o _ t i ) ; 
                                                 A r r a y R e s i z e ( m e m _ t o _ t i ,   s i z e + 1 ) ; 
                                                 A r r a y R e s i z e ( m e m _ t o ,   s i z e + 1 ) ; 
                                                 m e m _ t o _ t i [ s i z e ]       =   t i c k e t ; 
                                                 m e m _ t o [ s i z e ]             =   ( i n t ) T i m e L o c a l ( ) ; 
                                                 p r i n t   =   S t r i n g C o n c a t e n a t e ( " # " , t i c k e t , "   t i m e o u t   o f   " , V I R T U A L _ S T O P S _ T I M E O U T , "   s e c o n d s   s t a r t e d " ) ; 
                                                 P r i n t ( p r i n t ) ; 
                                                 r e t u r n ( 0 ) ; 
                                           } 
                                           e l s e   { 
                                                 i f   ( T i m e L o c a l ( ) - m e m _ t o [ i ]   < =   V I R T U A L _ S T O P S _ T I M E O U T )   { r e t u r n ( 0 ) ; } 
                                           } 
                                     } 
                                     i f   ( O r d e r C l o s e ( ( i n t ) t i c k e t ,   l o t s ,   c p ,   0 ,   c l r N O N E ) ) 
                                     { 
                                           O n T r a d e L i s t e n e r ( ) ;   / /   c h e c k   t h i s   b e f o r e   d e l e t i n g   t h e   l i n e s 
                                           n a m e   =   " # " + ( s t r i n g ) O r d e r T i c k e t ( ) + "   s l " ; 
                                           O b j e c t D e l e t e ( 0 ,   n a m e ) ; 
                                           n a m e   =   " # " + ( s t r i n g ) O r d e r T i c k e t ( ) + "   t p " ; 
                                           O b j e c t D e l e t e ( 0 ,   n a m e ) ; 
                                     } 
                                     r e t u r n ( 0 ) ; 
                               } 
                               e l s e 
                               { 
                                     i f   ( V I R T U A L _ S T O P S _ T I M E O U T > 0 ) 
                                     { 
                                           i = A r r a y S e a r c h ( m e m _ t o _ t i , t i c k e t ) ; 
                                           i f   ( i > = 0 )   { 
                                                 A r r a y S t r i p K e y ( m e m _ t o _ t i , i ) ; 
                                                 A r r a y S t r i p K e y ( m e m _ t o , i ) ; 
                                           } 
                                     } 
                               } 
                         } 
                   } 
             } 
       } 
       / /   S e t   S L   a n d   T P 
       e l s e   i f   ( ( c o m m a n d = = " s e t "   | |   c o m m a n d = = " m o d i f y "   | |   c o m m a n d = = " c l e a r "   | |   c o m m a n d = = " p a r t i a l " )   & &   t i > 0 ) 
       { 
             s t a t i c   s t r i n g   s e t t e x t ; 
             / /   u p d a t e   r e c o r d   ( a d d / m o d i f y ) 
             n a m e   =   " # " + ( s t r i n g ) t i + "   s l " ; 
             i f   ( s l > 0 )   { 
                   i f   ( O b j e c t F i n d ( 0 ,   n a m e ) = = - 1 ) 
                   { 
                         O b j e c t C r e a t e ( 0 , n a m e , O B J _ H L I N E , 0 , 0 , s l ) ; 
                         O b j e c t S e t I n t e g e r ( 0 , n a m e , O B J P R O P _ W I D T H , 1 ) ; 
                         O b j e c t S e t I n t e g e r ( 0 , n a m e , O B J P R O P _ C O L O R , D e e p P i n k ) ; 
                         O b j e c t S e t I n t e g e r ( 0 , n a m e , O B J P R O P _ S T Y L E , S T Y L E _ D O T ) ; 
                         s e t t e x t   =   n a m e + "   ( v i r t u a l ) " ; 
                         O b j e c t S e t S t r i n g ( 0 , n a m e , O B J P R O P _ T E X T , s e t t e x t ) ; 
                         e r r o r = G e t L a s t E r r o r ( ) ; 
                   } 
                   e l s e   { 
                         O b j e c t S e t D o u b l e ( 0 , n a m e , O B J P R O P _ P R I C E , 0 , s l ) ; 
                   } 
             }   e l s e   { O b j e c t D e l e t e ( 0 ,   n a m e ) ; } 
             
             n a m e = " # " + ( s t r i n g ) t i + "   t p " ; 
             i f   ( t p > 0 ) 
             { 
                   i f   ( O b j e c t F i n d ( 0 ,   n a m e ) = = - 1 )   { 
                         O b j e c t C r e a t e ( 0 , n a m e , O B J _ H L I N E , 0 , 0 , t p ) ; 
                         O b j e c t S e t I n t e g e r ( 0 , n a m e , O B J P R O P _ W I D T H , 1 ) ; 
                         O b j e c t S e t I n t e g e r ( 0 , n a m e , O B J P R O P _ C O L O R , D o d g e r B l u e ) ; 
                         O b j e c t S e t I n t e g e r ( 0 , n a m e , O B J P R O P _ S T Y L E , S T Y L E _ D O T ) ; 
                         s e t t e x t   =   n a m e + "   ( v i r t u a l ) " ; 
                         O b j e c t S e t S t r i n g ( 0 , n a m e , O B J P R O P _ T E X T , s e t t e x t ) ; 
                         e r r o r = G e t L a s t E r r o r ( ) ; 
                   } 
                   e l s e   { 
                         O b j e c t S e t D o u b l e ( 0 , n a m e , O B J P R O P _ P R I C E , 0 , t p ) ; 
                   } 
             } 
             e l s e   { 
                   O b j e c t D e l e t e ( 0 ,   n a m e ) ; 
             } 
             
             / /   p r i n t   m e s s a g e 
             i f   ( c o m m a n d = = " s e t "   | |   c o m m a n d = = " m o d i f y " )   { 
                   p r i n t   =   c o m m a n d + "   # " + ( s t r i n g ) t i + " :   v i r t u a l   s l   " + D o u b l e T o S t r ( s l , ( i n t ) S y m b o l I n f o I n t e g e r ( S y m b o l ( ) , S Y M B O L _ D I G I T S ) ) + "   t p   " + D o u b l e T o S t r ( t p , ( i n t ) S y m b o l I n f o I n t e g e r ( S y m b o l ( ) , S Y M B O L _ D I G I T S ) ) ; 
                   P r i n t ( p r i n t ) ; 
             } 
             r e t u r n ( 1 ) ; 
       } 
       
       / /   G e t   S L   o r   T P 
       e l s e   i f   ( ( c o m m a n d = = " g e t   s l "   | |   c o m m a n d = = " g e t   t p " )   & &   t i > 0 ) 
       { 
             i f   ( c o m m a n d = = " g e t   s l " ) 
             { 
                   n a m e   =   " # " + ( s t r i n g ) t i + "   s l " ; 
                   i f   ( O b j e c t F i n d ( 0 ,   n a m e )   = =   - 1 )   { e r r o r = G e t L a s t E r r o r ( ) ; r e t u r n ( 0 ) ; }   
                   r e t u r n ( O b j e c t G e t D o u b l e ( 0 , n a m e , O B J P R O P _ P R I C E , 0 ) ) ; 
             } 
             e l s e   i f   ( c o m m a n d = = " g e t   t p " ) 
             { 
                   n a m e   =   " # " + ( s t r i n g ) t i + "   t p " ; 
                   i f   ( O b j e c t F i n d ( 0 ,   n a m e )   = =   - 1 )   { e r r o r = G e t L a s t E r r o r ( ) ; r e t u r n ( 0 ) ; } 
                   r e t u r n ( O b j e c t G e t D o u b l e ( 0 , n a m e , O B J P R O P _ P R I C E , 0 ) ) ; 
             } 
             r e t u r n ( 0 ) ; 
       } 
       
       r e t u r n ( 1 ) ; 
 }  
  
 v o i d   W a i t T r a d e C o n t e x t I f B u s y ( )  
 {  
 	 i f ( I s T r a d e C o n t e x t B u s y ( ) )   {  
             w h i l e ( t r u e )  
             {  
                   S l e e p ( 1 ) ;  
                   i f ( ! I s T r a d e C o n t e x t B u s y ( ) )   {  
                         R e f r e s h R a t e s ( ) ;  
                         b r e a k ;  
                   }  
             }  
       }  
       r e t u r n ;  
 }  
  
 d o u b l e   a t t r C l o s e P r i c e ( s t r i n g   s e l = " " )  
 {  
       r e t u r n ( O r d e r C l o s e P r i c e ( ) ) ;  
 }  
  
 d a t e t i m e   a t t r C l o s e T i m e ( s t r i n g   s e l = " " )  
 {  
       r e t u r n ( O r d e r C l o s e T i m e ( ) ) ;  
 }  
  
 s t r i n g   a t t r C o m m e n t ( s t r i n g   s e l = " " )  
 {  
       r e t u r n ( O r d e r C o m m e n t ( ) ) ;  
 }  
  
 d o u b l e   a t t r C o m m i s s i o n ( s t r i n g   s e l = " " )  
 {  
       i f   ( s e l = = " e "   | |   s e l = = " e v e n t " )   { r e t u r n ( e _ a t t r C o m m i s s i o n ( ) ) ; }  
       r e t u r n ( O r d e r C o m m i s s i o n ( ) ) ;  
 }  
  
 d a t e t i m e   a t t r E x p i r a t i o n ( s t r i n g   s e l = " " )  
 {  
       r e t u r n ( O r d e r E x p i r a t i o n ( ) ) ;  
 }  
  
 d o u b l e   a t t r L o t s ( s t r i n g   s e l = " " )  
 {  
       r e t u r n ( O r d e r L o t s ( ) ) ;  
 }  
  
 i n t   a t t r M a g i c N u m b e r ( s t r i n g   s e l = " " )  
 {  
       r e t u r n ( O r d e r M a g i c N u m b e r ( ) ) ;  
 }  
  
 d o u b l e   a t t r O p e n P r i c e ( s t r i n g   s e l = " " )  
 {  
       r e t u r n ( O r d e r O p e n P r i c e ( ) ) ;  
 }  
  
 d a t e t i m e   a t t r O p e n T i m e ( s t r i n g   s e l = " " )  
 {  
       r e t u r n ( O r d e r O p e n T i m e ( ) ) ;  
 }  
  
 d o u b l e   a t t r P r o f i t ( s t r i n g   s e l = " " )  
 {  
       r e t u r n ( O r d e r P r o f i t ( ) ) ;  
 }  
  
 d o u b l e   a t t r S t o p L o s s ( ) 
 { 
       i f   ( U S E _ V I R T U A L _ S T O P S )   { r e t u r n ( V i r t u a l S t o p s D r i v e r ( " g e t   s l " , O r d e r T i c k e t ( ) ) ) ; } 
       r e t u r n ( O r d e r S t o p L o s s ( ) ) ; 
 }  
  
 d o u b l e   a t t r S w a p ( s t r i n g   s e l = " " )  
 {  
       r e t u r n ( O r d e r S w a p ( ) ) ;  
 }  
  
 s t r i n g   a t t r S y m b o l ( s t r i n g   s e l = " " )  
 {  
       r e t u r n ( O r d e r S y m b o l ( ) ) ;  
 }  
  
 d o u b l e   a t t r T a k e P r o f i t ( )  
 {  
       i f   ( U S E _ V I R T U A L _ S T O P S )   { r e t u r n ( V i r t u a l S t o p s D r i v e r ( " g e t   t p " , O r d e r T i c k e t ( ) ) ) ; }  
       r e t u r n ( O r d e r T a k e P r o f i t ( ) ) ;  
 }  
  
 i n t   a t t r T i c k e t ( )  
 {  
       r e t u r n ( O r d e r T i c k e t ( ) ) ;  
 }  
  
 i n t   a t t r T y p e ( ) 
 { 
       r e t u r n ( O r d e r T y p e ( ) ) ; 
 }  
  
 t e m p l a t e < t y p e n a m e   D T 1 ,   t y p e n a m e   D T 2 > 
 b o o l   c o m p a r e ( s t r i n g   s i g n ,   D T 1   v 1 ,   D T 2   v 2 ) 
 { 
 	           i f   ( s i g n   = =   " > " )   r e t u r n ( v 1   >   v 2 ) ; 
 	 e l s e   i f   ( s i g n   = =   " < " )   r e t u r n ( v 1   <   v 2 ) ; 
 	 e l s e   i f   ( s i g n   = =   " > = " )   r e t u r n ( v 1   > =   v 2 ) ; 
 	 e l s e   i f   ( s i g n   = =   " < = " )   r e t u r n ( v 1   < =   v 2 ) ; 
 	 e l s e   i f   ( s i g n   = =   " = = " )   r e t u r n ( v 1   = =   v 2 ) ; 
 	 e l s e   i f   ( s i g n   = =   " ! = " )   r e t u r n ( v 1   ! =   v 2 ) ; 
 	 e l s e   i f   ( s i g n   = =   " x > " )   r e t u r n ( v 1   >   v 2 ) ; 
 	 e l s e   i f   ( s i g n   = =   " x < " )   r e t u r n ( v 1   <   v 2 ) ; 
 
 	 r e t u r n   f a l s e ; 
 }  
  
 s t r i n g   e _ R e a s o n ( b o o l   s e t = f a l s e ,   s t r i n g   i n p = " " )   {  
       s t a t i c   s t r i n g   m e m [ ] ;  
       i n t   q u e u e = O n T r a d e Q u e u e ( ) - 1 ;  
       i f ( s e t = = t r u e ) {  
             A r r a y R e s i z e ( m e m , q u e u e + 1 ) ;  
             m e m [ q u e u e ] = i n p ;  
       }  
       r e t u r n ( m e m [ q u e u e ] ) ;  
 }  
  
 s t r i n g   e _ R e a s o n D e t a i l ( b o o l   s e t = f a l s e ,   s t r i n g   i n p = " " )   { s t a t i c   s t r i n g   m e m [ ] ; i n t   q u e u e = O n T r a d e Q u e u e ( ) - 1 ; i f ( s e t = = t r u e ) { A r r a y R e s i z e ( m e m , q u e u e + 1 ) ; m e m [ q u e u e ] = i n p ; } r e t u r n ( m e m [ q u e u e ] ) ; }  
  
 d o u b l e   e _ a t t r C l o s e P r i c e ( b o o l   s e t = f a l s e ,   d o u b l e   i n p = - 1 )   { s t a t i c   d o u b l e   m e m [ ] ; i n t   q u e u e = O n T r a d e Q u e u e ( ) - 1 ; i f ( s e t = = t r u e ) { A r r a y R e s i z e ( m e m , q u e u e + 1 ) ; m e m [ q u e u e ] = i n p ; } r e t u r n ( m e m [ q u e u e ] ) ; }  
  
 d a t e t i m e   e _ a t t r C l o s e T i m e ( b o o l   s e t = f a l s e ,   d a t e t i m e   i n p = - 1 )   { s t a t i c   d a t e t i m e   m e m [ ] ; i n t   q u e u e = O n T r a d e Q u e u e ( ) - 1 ; i f ( s e t = = t r u e ) { A r r a y R e s i z e ( m e m , q u e u e + 1 ) ; m e m [ q u e u e ] = i n p ; } r e t u r n ( m e m [ q u e u e ] ) ; }  
  
 s t r i n g   e _ a t t r C o m m e n t ( b o o l   s e t = f a l s e ,   s t r i n g   i n p = " " )   { s t a t i c   s t r i n g   m e m [ ] ; i n t   q u e u e = O n T r a d e Q u e u e ( ) - 1 ; i f ( s e t = = t r u e ) { A r r a y R e s i z e ( m e m , q u e u e + 1 ) ; m e m [ q u e u e ] = i n p ; } r e t u r n ( m e m [ q u e u e ] ) ; }  
  
 d o u b l e   e _ a t t r C o m m i s s i o n ( b o o l   s e t = f a l s e ,   d o u b l e   i n p = 0 )   { s t a t i c   d o u b l e   m e m [ ] ; i n t   q u e u e = O n T r a d e Q u e u e ( ) - 1 ; i f ( s e t = = t r u e ) { A r r a y R e s i z e ( m e m , q u e u e + 1 ) ; m e m [ q u e u e ] = i n p ; } r e t u r n ( m e m [ q u e u e ] ) ; }  
  
 d a t e t i m e   e _ a t t r E x p i r a t i o n ( b o o l   s e t = f a l s e ,   d a t e t i m e   i n p = 0 )   { s t a t i c   d a t e t i m e   m e m [ ] ; i n t   q u e u e = O n T r a d e Q u e u e ( ) - 1 ; i f ( s e t = = t r u e ) { A r r a y R e s i z e ( m e m , q u e u e + 1 ) ; m e m [ q u e u e ] = i n p ; } r e t u r n ( m e m [ q u e u e ] ) ; }  
  
 d o u b l e   e _ a t t r L o t s ( b o o l   s e t = f a l s e ,   d o u b l e   i n p = - 1 )   { s t a t i c   d o u b l e   m e m [ ] ; i n t   q u e u e = O n T r a d e Q u e u e ( ) - 1 ; i f ( s e t = = t r u e ) { A r r a y R e s i z e ( m e m , q u e u e + 1 ) ; m e m [ q u e u e ] = i n p ; } r e t u r n ( m e m [ q u e u e ] ) ; }  
  
 i n t   e _ a t t r M a g i c N u m b e r ( b o o l   s e t = f a l s e ,   i n t   i n p = - 1 )   { s t a t i c   i n t   m e m [ ] ; i n t   q u e u e = O n T r a d e Q u e u e ( ) - 1 ; i f ( s e t = = t r u e ) { A r r a y R e s i z e ( m e m , q u e u e + 1 ) ; m e m [ q u e u e ] = i n p ; } r e t u r n ( m e m [ q u e u e ] ) ; }  
  
 d o u b l e   e _ a t t r O p e n P r i c e ( b o o l   s e t = f a l s e ,   d o u b l e   i n p = - 1 )   { s t a t i c   d o u b l e   m e m [ ] ; i n t   q u e u e = O n T r a d e Q u e u e ( ) - 1 ; i f ( s e t = = t r u e ) { A r r a y R e s i z e ( m e m , q u e u e + 1 ) ; m e m [ q u e u e ] = i n p ; } r e t u r n ( m e m [ q u e u e ] ) ; }  
  
 d a t e t i m e   e _ a t t r O p e n T i m e ( b o o l   s e t = f a l s e ,   d a t e t i m e   i n p = - 1 )   { s t a t i c   d a t e t i m e   m e m [ ] ; i n t   q u e u e = O n T r a d e Q u e u e ( ) - 1 ; i f ( s e t = = t r u e ) { A r r a y R e s i z e ( m e m , q u e u e + 1 ) ; m e m [ q u e u e ] = i n p ; } r e t u r n ( m e m [ q u e u e ] ) ; }  
  
 d o u b l e   e _ a t t r P r o f i t ( b o o l   s e t = f a l s e ,   d o u b l e   i n p = 0 )   { s t a t i c   d o u b l e   m e m [ ] ; i n t   q u e u e = O n T r a d e Q u e u e ( ) - 1 ; i f ( s e t = = t r u e ) { A r r a y R e s i z e ( m e m , q u e u e + 1 ) ; m e m [ q u e u e ] = i n p ; } r e t u r n ( m e m [ q u e u e ] ) ; }  
  
 d o u b l e   e _ a t t r S t o p L o s s ( b o o l   s e t = f a l s e ,   d o u b l e   i n p = - 1 )   { s t a t i c   d o u b l e   m e m [ ] ; i n t   q u e u e = O n T r a d e Q u e u e ( ) - 1 ; i f ( s e t = = t r u e ) { A r r a y R e s i z e ( m e m , q u e u e + 1 ) ; m e m [ q u e u e ] = i n p ; } r e t u r n ( m e m [ q u e u e ] ) ; }  
  
 d o u b l e   e _ a t t r S w a p ( b o o l   s e t = f a l s e ,   d o u b l e   i n p = 0 )   { s t a t i c   d o u b l e   m e m [ ] ; i n t   q u e u e = O n T r a d e Q u e u e ( ) - 1 ; i f ( s e t = = t r u e ) { A r r a y R e s i z e ( m e m , q u e u e + 1 ) ; m e m [ q u e u e ] = i n p ; } r e t u r n ( m e m [ q u e u e ] ) ; }  
  
 s t r i n g   e _ a t t r S y m b o l ( b o o l   s e t = f a l s e ,   s t r i n g   i n p = " " )   { s t a t i c   s t r i n g   m e m [ ] ; i n t   q u e u e = O n T r a d e Q u e u e ( ) - 1 ; i f ( s e t = = t r u e ) { A r r a y R e s i z e ( m e m , q u e u e + 1 ) ; m e m [ q u e u e ] = i n p ; } r e t u r n ( m e m [ q u e u e ] ) ; }  
  
 d o u b l e   e _ a t t r T a k e P r o f i t ( b o o l   s e t = f a l s e ,   d o u b l e   i n p = - 1 )   { s t a t i c   d o u b l e   m e m [ ] ; i n t   q u e u e = O n T r a d e Q u e u e ( ) - 1 ; i f ( s e t = = t r u e ) { A r r a y R e s i z e ( m e m , q u e u e + 1 ) ; m e m [ q u e u e ] = i n p ; } r e t u r n ( m e m [ q u e u e ] ) ; }  
  
 i n t   e _ a t t r T i c k e t ( b o o l   s e t = f a l s e ,   i n t   i n p = - 1 )   { s t a t i c   i n t   m e m [ ] ; i n t   q u e u e = O n T r a d e Q u e u e ( ) - 1 ; i f ( s e t = = t r u e ) { A r r a y R e s i z e ( m e m , q u e u e + 1 ) ; m e m [ q u e u e ] = i n p ; } r e t u r n ( m e m [ q u e u e ] ) ; }  
  
 i n t   e _ a t t r T y p e ( b o o l   s e t = f a l s e ,   i n t   i n p = - 1 )   { s t a t i c   i n t   m e m [ ] ; i n t   q u e u e = O n T r a d e Q u e u e ( ) - 1 ; i f ( s e t = = t r u e ) { A r r a y R e s i z e ( m e m , q u e u e + 1 ) ; m e m [ q u e u e ] = i n p ; } r e t u r n ( m e m [ q u e u e ] ) ; }  
  
 i n t   i C a n d l e I D ( s t r i n g   S Y M B O L ,   i n t   T I M E F R A M E ,   d a t e t i m e   t i m e _ s t a m p ) 
 { 
       b o o l   T i m e S t a m p P r e v D a y S h i f t   =   t r u e ; 
       i n t   C a n d l e I D   =   0 ; 
       / / = =   c a l c u l a t e   c a n d l e   I D 
       / / - -   g e t   t h e   t i m e   r e s o l u t i o n   o f   t h e   d e s i r e d   p e r i o d ,   i n   m i n u t e s 
       i n t   m i n s _ t f   =   T I M E F R A M E ; 
       i n t   m i n s _ t f 0   =   0 ; 
       i f   ( T I M E F R A M E   = =   P E R I O D _ C U R R E N T ) 
       { 
             m i n s _ t f   =   ( i n t ) P e r i o d S e c o n d s ( P E R I O D _ C U R R E N T )   /   6 0 ; 
       } 
       
       / / - -   g e t   t h e   d i f f e r e n c e   b e t w e e n   n o w   a n d   t h e   t i m e   w e   w a n t ,   i n   m i n u t e s 
       / / i n t   t i m e _ s t a m p   =   S t r T o T i m e ( T i m e S t a m p ) ; 
       i n t   d a y s _ a d j u s t   =   0 ; 
       i f   ( T i m e S t a m p P r e v D a y S h i f t ) 
       { 
             / / - -   a u t o m a t i c a l l y   s h i f t   t o   t h e   p r e v i o u s   d a y 
             i f   ( t i m e _ s t a m p   >   T i m e C u r r e n t ( ) ) 
             { 
                   t i m e _ s t a m p   =   t i m e _ s t a m p   -   8 6 4 0 0 ; 
             } 
             / / - -   a l s o   s h i f t   w e e k d a y s 
             w h i l e   ( t r u e ) 
             { 
                   i n t   d o w   =   T i m e D a y O f W e e k ( t i m e _ s t a m p ) ; 
                   
                   i f   ( d o w   >   0   & &   d o w   <   6 )   { b r e a k ; } 
                   t i m e _ s t a m p   =   t i m e _ s t a m p   -   8 6 4 0 0 ; 
                   d a y s _ a d j u s t + + ; 
             } 
       } 
       
       i n t   m i n s _ d i f f   =   ( i n t ) ( T i m e C u r r e n t ( )   -   t i m e _ s t a m p ) ; 
       m i n s _ d i f f   =   m i n s _ d i f f   -   d a y s _ a d j u s t * 8 6 4 0 0 ; 
       m i n s _ d i f f   =   m i n s _ d i f f   /   6 0 ; 
       
       / / - -   t h e   d i f f e r e n c e   i s   n e g a t i v e   = >   q u i t   h e r e 
       i f   ( m i n s _ d i f f   <   0 )   { r e t u r n   ( i n t ) E M P T Y _ V A L U E ; } 
       
       / / - -   n o w   c a l c u l a t e   t h e   c a n d l e   I D ,   i t   i s   r e l a t i v e   t o   t h e   c u r r e n t   t i m e 
       i f   ( m i n s _ d i f f   >   0 )   { 
             C a n d l e I D   =   ( i n t ) M a t h C e i l ( ( d o u b l e ) m i n s _ d i f f / ( d o u b l e ) m i n s _ t f ) ; 
       } 
       / / P r i n t ( T i m e T o S t r ( T i m e C u r r e n t ( ) ) + "   " + T i m e T o S t r ( t i m e _ s t a m p )   + "   : : :   "   +   m i n s _ t f   +   "   "   +   d a y s _ a d j u s t   +   "   "   +   ( d a y s _ a d j u s t * 1 4 4 0 / m i n s _ t f )   +   "   "   +   C a n d l e I D ) ; 
       
       
       / / - -   n o w ,   a f t e r   a l l   t h e   s h i f t i n g   a n d   i n   c a s e   o f   m i s s i n g   c a n d l e s ,   t h e   c a l c u l a t e d   c a n d l e   i d   c a n   b e   f e w   c a n d l e s   e a r l y 
       / /   s o   w e   w i l l   s e a r c h   f o r   t h e   r i g h t   c a n d l e 
       w h i l e ( t r u e ) 
       { 
             i f   ( i T i m e ( S Y M B O L ,   T I M E F R A M E ,   C a n d l e I D )   > =   t i m e _ s t a m p )   { b r e a k ; } 
             
             C a n d l e I D - - ; 
 	 	 
 	 	 i f   ( C a n d l e I D   < =   0 )   { C a n d l e I D   =   0 ;   b r e a k ; } 
       } 
       
       r e t u r n   C a n d l e I D ; 
       
       / * 
       / /   t h i s   m e t h o d   d o e s   t h e   s a m e ,   b u t   i t   i s   s l o w e r 
       
       i f   ( 0 ) 
       { 
             C a n d l e I D   =   0 ; 
             d a t e t i m e   t   =   S t r T o T i m e ( T i m e S t a m p ) ; 
             d a t e t i m e   n o w   =   T i m e C u r r e n t ( ) ; 
             d a t e t i m e   c t i m e ; 
             w h i l e ( t r u e ) 
             { 
                   c t i m e   =   i T i m e ( S Y M B O L ,   T I M E F R A M E ,   C a n d l e I D ) ; 
                   / / 
                   i f   ( c t i m e   <   t ) 
                   { 
                         / / - -   i f   t h e   t i m e   i s   s t i l l   i n   t h e   f u t u r e ,   w e   w i l l   s h i f t   t o   a   p r e v i o u s   d a y 
                         i f   ( t   >   n o w ) 
                         { 
                               i f   ( T i m e S t a m p P r e v D a y S h i f t ) 
                               { 
                                     / / - -   s h i f t   t o   t h e   l a s t   d a y   t h a t   i s   n o t   s a t / s u n 
                                     w h i l e ( t r u e ) 
                                     { 
                                           t   =   t   -   8 6 4 0 0 ; 
                                           i n t   d o w   =   T i m e D a y O f W e e k ( t ) ; 
                                           i f   ( d o w   >   0   & &   d o w   <   6 )   { b r e a k ; } 
                                     } 
                                     c o n t i n u e ; 
                               } 
                               r e t u r n   E M P T Y _ V A L U E ; 
                         } 
                         b r e a k ; 
                   } 
                   C a n d l e I D + + ; 
             } 
       } 
       
       * / 
 }  
  
 d o u b l e   t o D i g i t s ( d o u b l e   p i p s ,   s t r i n g   s y m b o l = " " ) 
 { 
 	 i f   ( s y m b o l = = " " )   { s y m b o l = G e t S y m b o l ( ) ; } 
       r e t u r n ( 
             N o r m a l i z e D o u b l e ( 
                   p i p s * P i p V a l u e ( s y m b o l ) * M a r k e t I n f o ( s y m b o l , M O D E _ P O I N T ) , 
                   ( i n t ) M a r k e t I n f o ( s y m b o l , M O D E _ D I G I T S ) 
             ) 
       ) ; 
 }  
  
 d o u b l e   t o P i p s ( d o u b l e   d i g i t s , s t r i n g   s y m b o l = " " )  
 {  
       i f   ( s y m b o l = = " " )   { s y m b o l = G e t S y m b o l ( ) ; }  
       r e t u r n ( d i g i t s / ( P i p V a l u e ( s y m b o l ) * M a r k e t I n f o ( s y m b o l , M O D E _ P O I N T ) ) ) ;  
 }  
  
  
  
  
 i n t   C u s t o m D i g i t s ( s t r i n g   s y m b o l = " " )  
 {  
 	 i f   ( s y m b o l   = =   " " )   { s y m b o l   =   G e t S y m b o l ( ) ; }  
 	 d o u b l e   p o i n t   =   C u s t o m P o i n t ( s y m b o l ) ;  
 	 i f   ( p o i n t = = 0 )   { r e t u r n ( 0 ) ; }  
 	 i n t   d i g i t s = 0 ;  
  
 	 w h i l e ( t r u e )  
 	 {  
 	 	 i f   ( p o i n t > = 1 )   { b r e a k ; }  
 	 	 p o i n t   =   p o i n t * 1 0 ;  
 	 	 d i g i t s + + ;  
 	 }  
  
 	 r e t u r n ( d i g i t s ) ;  
 }  
  
 d o u b l e   C u s t o m P o i n t ( s t r i n g   s y m b o l = " " )  
 {  
 	 s t a t i c   s t r i n g   s y m b o l s [ ] ;  
 	 s t a t i c   d o u b l e   p o i n t s [ ] ;  
 	 s t a t i c   s t r i n g   l a s t _ s y m b o l   =   " - " ;  
 	 s t a t i c   d o u b l e   l a s t _ p o i n t     =   0 ;  
 	 s t a t i c   i n t   l a s t _ i                   =   0 ;  
 	 s t a t i c   i n t   s i z e                       =   0 ;  
  
 	 / / - -   v a r i a n t   A )   u s e   t h e   c a c h e   f o r   t h e   l a s t   u s e d   s y m b o l  
 	 i f   ( s y m b o l   = =   " " )   { s y m b o l   =   G e t S y m b o l ( ) ; }  
 	 i f   ( s y m b o l   = =   l a s t _ s y m b o l )  
 	 {  
 	 	 r e t u r n ( l a s t _ p o i n t ) ;  
 	 }  
  
 	 / / - -   v a r i a n t   B )   s e a r c h   i n   t h e   a r r a y   c a c h e  
 	 i n t   i 	 	 	 =   l a s t _ i ;  
 	 i n t   s t a r t _ i 	 =   i ;  
 	 b o o l   f o u n d 	 =   f a l s e ;  
  
 	 i f   ( s i z e > 0 )  
 	 {  
 	 	 w h i l e ( t r u e )  
 	 	 {  
 	 	 	 i f   ( s y m b o l s [ i ]   = =   s y m b o l )  
 	 	 	 {  
 	 	 	 	 l a s t _ s y m b o l 	 =   s y m b o l ;  
 	 	 	 	 l a s t _ p o i n t 	 =   p o i n t s [ i ] ;  
 	 	 	 	 l a s t _ i 	 	 =   i ;  
  
 	 	 	 	 r e t u r n ( l a s t _ p o i n t ) ;  
 	 	 	 }  
  
 	 	 	 i + + ;  
 	 	 	 i f   ( i   > =   s i z e )  
 	 	 	 {  
 	 	 	 	 i = 0 ;  
 	 	 	 }  
 	 	 	 i f   ( i   = =   s t a r t _ i )   { b r e a k ; }  
 	 	 }  
 	 }  
  
 	 / / - -   v a r i a n t   C )   a d d   t h i s   s y m b o l   t o   t h e   c a c h e  
 	 i 	 	 =   s i z e ;  
 	 s i z e 	 =   s i z e + 1 ;  
  
 	 A r r a y R e s i z e ( s y m b o l s ,   s i z e ) ;  
 	 A r r a y R e s i z e ( p o i n t s ,   s i z e ) ;  
  
 	 s y m b o l s [ i ] 	 =   s y m b o l ;  
 	 p o i n t s [ i ] 	 =   0 ;  
 	 l a s t _ s y m b o l 	 =   s y m b o l ;  
 	 l a s t _ i 	 	 =   i ;  
  
 	 / / - -   u n s e r i a l i z e   r u l e s   f r o m   F X D _ P O I N T _ F O R M A T _ R U L E S  
 	 s t r i n g   r u l e s [ ] ;  
 	 S t r i n g E x p l o d e ( " , " ,   P O I N T _ F O R M A T _ R U L E S ,   r u l e s ) ;  
  
 	 i n t   r u l e s _ c o u n t   =   A r r a y S i z e ( r u l e s ) ;  
  
 	 i f   ( r u l e s _ c o u n t   >   0 )  
 	 {  
 	 	 s t r i n g   r u l e [ ] ;  
 	 	 f o r   ( i n t   r = 0 ;   r   <   r u l e s _ c o u n t ;   r + + )  
 	 	 {  
 	 	 	 S t r i n g E x p l o d e ( " = " ,   r u l e s [ r ] ,   r u l e ) ;  
  
 	 	 	 / / - -   a   s i n g l e   r u l e   m u s t   c o n t a i n   2   p a r t s ,   [ 0 ]   f r o m   a n d   [ 1 ]   t o  
 	 	 	 i f   ( A r r a y S i z e ( r u l e )   ! =   2 )   { c o n t i n u e ; }  
 	 	 	 d o u b l e   f r o m   =   S t r i n g T o D o u b l e ( r u l e [ 0 ] ) ;  
 	 	 	 d o u b l e   t o 	 =   S t r i n g T o D o u b l e ( r u l e [ 1 ] ) ;  
  
 	 	 	 / / - -   " t o "   m u s t   b e   a   p o s i t i v e   n u m b e r ,   d i f f e r e n t   t h a n   0  
 	 	 	 i f   ( t o   < =   0 )   { c o n t i n u e ; }  
  
 	 	 	 / / - -   " f r o m "   c a n   b e   a   n u m b e r   o r   a   s t r i n g  
 	 	 	 / /   a )   s t r i n g  
 	 	 	 i f   ( f r o m   = =   0   & &   S t r i n g L e n ( r u l e [ 0 ] )   >   0 )  
 	 	 	 {  
 	 	 	 	 s t r i n g   s _ f r o m   =   r u l e [ 0 ] ;  
 	 	 	 	 i n t   p o s   =   S t r i n g F i n d ( s _ f r o m ,   " ? " ) ;  
  
 	 	 	 	 i f   ( p o s   <   0 )   / /   ?   n o t   f o u n d  
 	 	 	 	 {  
 	 	 	 	 	 i f   ( S t r i n g F i n d ( s y m b o l ,   s _ f r o m )   = =   0 )   { p o i n t s [ i ]   =   t o ; }  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   ( p o s   = =   0 )   / /   ?   i s   t h e   f i r s t   s y m b o l   = >   m a t c h   t h e   s e c o n d   s y m b o l  
 	 	 	 	 {  
 	 	 	 	 	 i f   ( S t r i n g F i n d ( s y m b o l ,   S t r i n g S u b s t r ( s _ f r o m ,   1 ) ,   3 )   = =   3 )   { p o i n t s [ i ]   =   t o ; }  
 	 	 	 	 }  
 	 	 	 	 e l s e   i f   ( p o s   >   0 )   / /   ?   i s   t h e   s e c o n d   s y m b o l   = >   m a t c h   t h e   f i r s t   s y m b o l  
 	 	 	 	 {  
 	 	 	 	 	 i f   ( S t r i n g F i n d ( s y m b o l ,   S t r i n g S u b s t r ( s _ f r o m ,   0 ,   p o s ) )   = =   0 )   { p o i n t s [ i ]   =   t o ; }  
 	 	 	 	 }  
 	 	 	 }  
  
 	 	 	 / /   b )   n u m b e r  
 	 	 	 i f   ( f r o m   = =   0 )   { c o n t i n u e ; }  
  
 	 	 	 i f   ( S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ P O I N T )   = =   f r o m )  
 	 	 	 {  
 	 	 	 	 p o i n t s [ i ]   =   t o ;  
 	 	 	 }  
 	 	 }  
 	 }  
  
 	 i f   ( p o i n t s [ i ]   = =   0 )   { p o i n t s [ i ]   =   S y m b o l I n f o D o u b l e ( s y m b o l ,   S Y M B O L _ P O I N T ) ; }  
 	 l a s t _ p o i n t = p o i n t s [ i ] ;  
  
 	 r e t u r n ( l a s t _ p o i n t ) ;  
 }  
  
  
 / /   B l o c k s   L o o k u p   F u n c t i o n s  
 s t r i n g   f x d B l o c k s L o o k u p T a b l e [ ] ;  
  
 i n t   f x d B l o c k s L o o k u p T a b l e T r a n s l a t e I D ( s t r i n g   i d )  
 {  
 	 r e t u r n   A r r a y S e a r c h ( f x d B l o c k s L o o k u p T a b l e ,   i d ) ;  
 }  
 s t r i n g   f x d B l o c k s L o o k u p T a b l e T r a n s l a t e I D ( i n t   i d )  
 {  
 	 r e t u r n   f x d B l o c k s L o o k u p T a b l e [ i d ] ;  
 }  
  
 i n t   f x d B l o c k T o g g l e ( i n t   i d )  
 {  
 	 _ b l o c k s _ [ i d ] . _ _ d i s a b l e d   =   ! _ b l o c k s _ [ i d ] . _ _ d i s a b l e d ;  
 	 r e t u r n   _ b l o c k s _ [ i d ] . _ _ d i s a b l e d ;  
 }  
  
 v o i d   f x d B l o c k T u r n O n ( i n t   i d )  
 {  
 	 _ b l o c k s _ [ i d ] . _ _ d i s a b l e d   =   f a l s e ;  
 }  
 v o i d   f x d B l o c k T u r n O f f ( i n t   i d )  
 {  
 	 _ b l o c k s _ [ i d ] . _ _ d i s a b l e d   =   t r u e ;  
 }  
  
 v o i d   f x d B l o c k R u n ( i n t   i d = 0 )  
 {  
 	 _ b l o c k s _ [ i d ] . r u n ( ) ;  
 }  
  
 v o i d   f x d G e t I n b o u n d B l o c k s ( i n t   b l o c k _ i d ,   i n t   & l i s t [ ] )  
 {  
 	 i f   ( b l o c k _ i d   >   - 1   & &   A r r a y S i z e ( _ b l o c k s _ )   >   b l o c k _ i d )   {  
 	 	 A r r a y C o p y ( l i s t ,   _ b l o c k s _ [ b l o c k _ i d ] . _ _ i n b o u n d _ b l o c k s ) ;  
 	 }  
 }  
  
 v o i d   f x d G e t I n b o u n d B l o c k s ( s t r i n g   b l o c k _ s t r i n g _ i d ,   i n t   & l i s t [ ] )  
 {  
 	 / /   f i r s t   w e   n e e d   t o   g e t   t h e   n u m e r i c   i d   o f   t h e   b l o c k  
 	 i n t   b l o c k _ i d   =   A r r a y S e a r c h ( f x d B l o c k s L o o k u p T a b l e ,   b l o c k _ s t r i n g _ i d ) ;  
  
 	 i f   ( b l o c k _ i d   >   - 1   & &   A r r a y S i z e ( _ b l o c k s _ )   >   b l o c k _ i d )   {  
 	 	 A r r a y C o p y ( l i s t ,   _ b l o c k s _ [ b l o c k _ i d ] . _ _ i n b o u n d _ b l o c k s ) ;  
 	 }  
 }  
  
 c l a s s   F x d W a i t i n g  
 {  
 	 p r i v a t e :  
 	 	 i n t   b e g i n n i n g _ i d ;  
 	 	 u s h o r t   b a n k     [ ] [ 2 ] [ 2 0 ] ;   / /   2   b a n k s ,   2 0   p o s s i b l e   p a r a l l e l   w a i t i n g   b l o c k s   p e r   c h a i n   o f   b l o c k s  
 	 	 u s h o r t   s t a t e   [ ] [ 2 ] ;           / /   s e c o n d   d i m e n t i o n   v a l u e s :   0   -   c o u n t   o f   t h e   b l o c k s   p u t   o n   h o l d ,   1   -   c u r r e n t   b a n k   i d  
  
 	 p u b l i c :  
 	 	 v o i d   I n i t i a l i z e ( i n t   c o u n t )  
 	 	 {  
 	 	 	 A r r a y R e s i z e ( b a n k ,   c o u n t ) ;  
 	 	 	 A r r a y R e s i z e ( s t a t e ,   c o u n t ) ;  
 	 	 }  
  
 	 	 b o o l   R u n ( i n t   i d   =   0 )  
 	 	 {  
 	 	 	 b e g i n n i n g _ i d   =   i d ;  
  
 	 	 	 i n t   r a n g e   =   A r r a y R a n g e ( s t a t e ,   0 ) ;  
 	 	 	 i f   ( r a n g e   <   i d + 1 )   {  
 	 	 	 	 A r r a y R e s i z e ( b a n k ,   i d + 1 ) ;  
 	 	 	 	 A r r a y R e s i z e ( s t a t e ,   i d + 1 ) ;  
  
 	 	 	 	 / /   s e t   v a l u e s   t o   0 ,   o t h e r w i s e   t h e y   h a v e   r a n d o m   v a l u e s  
 	 	 	 	 f o r   ( i n t   i i   =   r a n g e ;   i i   <   i d + 1 ;   i i + + )  
 	 	 	 	 {  
 	 	 	 	       s t a t e [ i i ] [ 0 ]   =   0 ;  
 	 	 	 	       s t a t e [ i i ] [ 1 ]   =   0 ;  
 	 	 	 	 }  
 	 	 	 }  
  
 	 	 	 / /   a r e   t h e r e   b l o c k s   p u t   o n   h o l d ?  
 	 	 	 i n t   c o u n t   =   s t a t e [ i d ] [ 0 ] ;  
 	 	 	 i n t   b a n k _ i d   =   s t a t e [ i d ] [ 1 ] ;  
  
 	 	 	 / /   i f   n o   b l o c k   a r e   p u t   o n   h o l d   - >   e s c a p e  
 	 	 	 i f   ( c o u n t   = =   0 )   { r e t u r n   f a l s e ; }  
 	 	 	 e l s e  
 	 	 	 {  
 	 	 	 	 s t a t e [ i d ] [ 0 ]   =   0 ;   / /   n u l l   t h e   c o u n t  
 	 	 	 	 s t a t e [ i d ] [ 1 ]   =   ( b a n k _ i d )   ?   0   :   1 ;   / /   s w i t c h   t o   t h e   o t h e r   b a n k  
 	 	 	 }  
  
 	 	 	 / / = =   n o w   w e   w i l l   r u n   t h e   b l o c k s   p u t   o n   h o l d  
  
 	 	 	 f o r   ( i n t   i   =   0 ;   i   <   c o u n t ;   i + + )  
 	 	 	 {  
 	 	 	 	 i n t   b l o c k _ t o _ r u n   =   b a n k [ i d ] [ b a n k _ i d ] [ i ] ;  
 	 	 	 	 _ b l o c k s _ [ b l o c k _ t o _ r u n ] . r u n ( ) ;  
 	 	 	 }  
  
 	 	 	 r e t u r n   t r u e ;  
 	 	 }  
  
 	 	 v o i d   A c c u m u l a t e ( i n t   b l o c k _ i d   =   0 )  
 	 	 {  
 	 	 	 i n t   c o u n t       =   + + s t a t e [ b e g i n n i n g _ i d ] [ 0 ] ;  
 	 	 	 i n t   b a n k _ i d   =   s t a t e [ b e g i n n i n g _ i d ] [ 1 ] ;  
  
 	 	 	 b a n k [ b e g i n n i n g _ i d ] [ b a n k _ i d ] [ c o u n t - 1 ]   =   ( u s h o r t ) b l o c k _ i d ;  
 	 	 }  
 } ;  
 F x d W a i t i n g   f x d W a i t ;  
  
  
  
 / / + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +  
 / / |   E N D                                                                                                                             |  
 / / |   C r e a t e d   w i t h   f x D r e e m a   E A   B u i l d e r                       h t t p s : / / f x d r e e m a . c o m /   |  
 / / + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +  
  
 / * < f x d r e e m a : e N r t H N l y 2 z j y V 1 S e l 9 2 q J M N L Z / Z F t u W J q 6 T I K y k z N f u i g k V I x p r X k l B i z Z T / f b t x 8 Z D o Y 0 J 7 k 4 1 S e Z D R j U b f j Q Z I k k F 3 8 G c 2 s O 3 B y S q O I r r i L I 6 y k / d k Y F u D P 9 n A g l 8 u Y r Q H J 2 t G A / / k f Q Z T T s 5 H F 8 N P 4 w X + 1 R m c Z P E 2 X V H 8 A + j Y a p C T d E O 5 G n R O 3 t + z g f 1 8 a s 4 h a h 1 B z X k + t c 4 h a p 6 g 5 j Y k q S u o e c + n 5 h 6 i 1 h X U 2 s + n 1 j 1 E r S 2 o d R r i r S e o d R u y a V 9 Q 6 z V h B Q c G L U G u 3 x Q 5 G L 2 / F + P X Q b y 6 l R F i Y 4 S g T z s 2 r t E T M c T T O J B g H I M J 8 9 8 n p 9 M x E r I G J 0 A m G / Q l I m E R T X H c G 5 w s 2 O o W f w I N n 2 X k O q D A 6 j W E n 2 C X 3 n G a y r C E q L w X L D F A w N U F O Z Y t V 9 u M x 6 G e 1 N O M S h F Q y F 3 G a a j W C G O f B k s m 1 I G x P 4 1 W 9 I q m m g s b 1 k x I S k I K 6 w L p O E 7 9 z E g g y C U M s o X h E d S b r U h A F T C K 0 5 A E g h L M y C j S 4 n F a E A A Z 4 o R v x Z C j L B R H 8 X q N U l l S K T 7 h p K g 3 Q O G M y 1 V s V 3 L d S m j a 4 o p v o A o U h M y K K l A J 6 J o j U d d q A w p M 4 3 E i V G d b S B Q w v h D G C 9 q O t z z Z 8 q x I g 8 E Y Y t i S M a r + F A S A 4 i r L s W 3 0 E b K 6 3 a T x N v L f r u I g T p X X / X R t U a c n Y q m N L q A g o P + f h H y 2 l 3 v Q E m y e k l x h Y O T P J G X o G Q U 1 2 u A I 1 2 A c m r 7 N + A 4 1 8 1 F n x o M + 6 e E Y z B n H h l / l S n J 1 F v l s J U y 1 Z J O h c p Y i g Z 4 i O h m C 3 l n s F 4 O m i 8 P Z D V v r k L Y U g c k Q H O l G I u O f 0 / P R c i 7 J o w D D J A k Y 9 a 9 S p o I Q 7 H 0 1 u z w b L T 9 c / v J B 2 b U S R U I h i 8 v J 6 G I 2 n I y K 6 4 F m 5 x 8 u L x b F M a R 4 N p 3 N R m e L y + n H 3 K X u B d O r O A Q H p S r U 7 / 6 h f s z 2 d K R i G n k O d 7 m q N D e T 4 f K C s L Q l b F n R m 9 P H m Y j F Q n q B k S X 4 Q q x t m t K I g w + H t L U 2 E G D w A w n W Y x p t + I 3 i y N U C 5 q q y t a r O x t P 5 S A f G c D G b b A P O U K / C x W D M e W c p R g F 6 Z Y z n Y q 6 0 N K 3 L C A I + i Q P C q U p M P N 1 S Z T e I 7 5 R n 0 0 g x s S Z B J p l o 5 7 A z K c 1 D K B / Y 5 m Y c f 9 l D c T X K h G Y Z 2 d A 9 B F s j z D G y 6 s G j k L B g D 9 x B 6 Z T J T r f r N Z W G K 2 T 8 J 7 s Y G m c C G X Q q E o U y j g w i Z e E 5 J 2 G i W L C s g a V V / y v L G E T w 5 X m J n G M A 8 2 r 0 F G B j F j J e M R l w P S P R h p 6 R y A 9 w 1 b Q 8 2 y v B R 1 J r q j x K q w i w Y N k U Q c z N N P 0 s P c e Q U G K l 2 r a W r c R C F g 3 G y B j G 6 m m 4 p n B O d l O V n c u 6 F N B f S S A 9 D c Q L y d 1 f C G U E r d I 4 y 7 4 w X 8 a M N G 5 t Z r X N 1 h d n L f e n N V a o 8 2 3 P V x Z r m H 4 W g x v j N v 0 7 q d R V l h 8 s 0 r Z X L t J O p + k i 7 T 5 W p C 8 u z s + G / c N F W r r L G n z i 7 R c K e Y x X t n V P K t H C q B w Q o w 3 + q X q P 7 7 d e 9 3 U N G k 9 / O 1 b r Y 7 V + 2 W r t H K v 1 s V q / Q r V 2 j 9 X 6 8 Z b a s c r V u t 3 + A a q 1 V 1 e t 2 8 Z F p 0 g h + w X 4 T c r m 3 c t a a M h f 4 2 A b U s x R O r U K B 3 t 7 T Q I S 5 T 2 x R J u z P 3 T g W e 9 s H b I 5 b M a y W 5 U 3 2 l Z 5 q g a J + t L W a 0 k Y 1 J i V K g W F j N X T 4 F N k q I A j D + y k s H 6 R s b 1 d i o 1 6 h m S x / K x T R r X Y K i 8 t p h Q t 2 Q P p A 6 h c s D v q z w i 4 6 q e I c a 0 Y D 6 d b t k 6 Z O d I 5 D a T f A 3 O O S a l h O N l c w n R G g n H M s w o D P Y m g 6 v N u G o 3 j r F S J H K u K c Z X G a 8 a L G y 0 M e 8 Q Z + j 4 u U S I i + e h X E E o 0 S q z O K M R i i U K 7 u I Q C 1 / F g u 0 6 n X l h X o 8 w o 1 J N s v 6 Y L G h f s O q 6 l 4 e B u K z y H l B V e Q 3 V / R L E G r 2 Z B R 3 A 0 J t f x d n V D U 1 p P r l N G H L O M a + + z 3 z h v 3 D f e m / a b T q 7 r H L V O V r H 0 n P 7 n l G T 0 w I K 2 A u e m g N k u L N U p z T 5 o C k c B 6 5 b u 6 K j 7 l M C u 3 e w k d M a A 6 X N I u L i u z h n i e P u O + l X 4 F U u y 8 i a i W w D K c F 5 c V Y I e 1 v E D j d R I R B v J H 9 4 O  
 + E m j q 5 Z F e m h d v 9 F 1 i w n o g Y V x e 0 J u q f Q P b U g P i 3 x E d V r P E Q q W b J u c U Q B L W 8 7 H F c E d t G W O 9 m r W x H W T h t d 9 m j 1 x Z b / h l Z 9 m U Q i t 0 V 2 i L Q n c / r I 4 U 9 s U G I f 9 d F b p s 2 H 0 A + z j s 6 p S k Q q L t p y W J u D G D S A H B L K 0 Q N i V H p J H b 1 a Q t 4 X C K W 7 R y x 2 F h j z U H a G a E S h b F d M h 2 U W K E 5 L e 0 l L m 6 h c n 4 a + 8 g 9 b c d B U K d P k Q B x H / n Z K 0 S K J X g U 9 A z p s i Q q e C A H o v g q v 0 0 Q A 6 Q z o l J s 0 K w h T V c l 1 C m V N Q t 1 9 C c X N t F 9 t E x 0 S 2 B q C A x R 4 A C 7 0 B C u l K 0 O L U 3 y i 9 L Q H d A r D g b / b e T O N 2 F a 3 J R X P f O w S W w h 4 E 3 7 I E e f L V 0 u Z A 4 l 4 e s c w D l i T q r E D e u w s n m + x A k a H e W A J g f h O n v A V t n 2 8 S 4 T B N 4 y 9 n u L 2 f 0 y B Q 8 T X D g v e V j Z 8 j n 3 K o 3 + v K O 9 b 9 o l p p F 7 0 G 2 k W s z S D d R 3 n c 8 p L N Y l v e X G t / x R t D 7 S l 4 G p n / 9 g o 4 b f O 7 i U a z J 4 V t R V L a Z 5 0 K u z 3 7 2 X 2 m V e 4 z 7 W f 2 m e u 1 Z V l W t c + U E P x X 0 2 1 6 2 E 4 G f m P X u w I z p S u e t 6 P t Y z t 6 b E e P 7 e i x H T 2 2 o 8 d 2 9 N i O H t v R Y z t 6 b E e P 7 W h D 7 a i F D 1 9 E m 0 I 3 6 h a 7 0 d P t T p E + F c H 5 j X S j 7 Q a 6 U Y C B d D 9 G M 9 o V s j 6 p F 3 X 7 5 T t P t + u 9 d i 9 q W b 1 v t B f t 1 P a i 5 V Z 0 v o o T v V P c 6 L a 0 v l M V h 0 K 7 E L g 3 E 4 X n 4 k h t J 2 s L m 2 Z T c W K U G Q V g e m 7 8 Y Y F O A / G G J v k Y T x M K U S T V 8 J 0 8 M t B D v v M E + c h J T i V 6 n O 5 r P z E w 7 J / 1 L y 7 + w h M D z c S M p C b f m / n B Q g W F P o b J U 8 L E 7 f b K Y W L / q G H S q w u T 3 r c Q J u h F + j d K I R Y 7 0 C z V 7 D b R 1 / K 9 p E I 8 p z S 5 Y t H t C 5 S p 3 k k z r 4 u d B X F G Z Q j + r z a H 1 u t t D t G w Q m I Z v N m j 0 e t 0 n X L 0 e v 2 v 3 S I + N 3 q 9 T s + 5 9 p 6 2 R V z q G P 7 Y 6 E t o / W 8 6 c r H A b X f f S + D 2 j 4 H 7 G o H r u u W 4 b V s / Y N z a V u 0 b z e a F C n 2 P U H f g r + G F Y 2 L X H K g Z Y P G Q O D 9 I 3 s e Q V w I 5 B v w 6 H U k r H j q o d h F 8 J e G a A X M Q 9 n + y r 7 b N Q d G e t o u p w 1 y 0 N L D p P k 0 p u R 1 9 p t F V z N T h 2 A u m D 7 e Q P u z 6 Q 6 E m 0 o T T V 8 K 1 K E j X S l C 8 1 t 8 o W d 3 I v P H 3 R / O G 5 3 Y q z 8 F 3 v u X E 8 e K b d r v 2 o w j y z a p v J g r l r U J K W P D b D S n d i u L N s Q C w a D O j a 5 p S / E S C e Z N L p 5 N O j o U H s o f y I a z A E V b I h Z 6 5 6 u B y V k R 3 5 X t R V 4 P k P b 5 5 Z 8 q x f m 6 / a b n W z 7 Z 5 W 0 c S r 7 k 8 7 Z X h + e 2 v y a Y g w V q g H L j J a Z f f M J w P Z w e u c z r K k e e c J v n t l K P f M C R 3 L N y G 5 r r a e e E 3 B H s o z j n b M H 7 o 9 t T R V 1 M i y L M D 0 n j V y z Z j r r 6 8 Q t m 7 d 6 x 7 j K b u R r D k M v Q B l 6 H J / n 2 5 p y H K 3 v O 9 6 / S c N k k P l k f p d Q D c p 9 4 2 o C L 5 g j t V E U z t r i N w V Y J 3 p a + J 1 9 I a u A d 9 g r K 9 X C G L q 3 B f G 8 A R M J n k m n D M F g P H K 2 p w L H 3 1 u R a i v Y 4 M e A U F l S l 4 k V 7 D 3 D i V 0 5 T 5 s k z B D 6 s b C 7 u J j Y V b T q D O S + 8 r O k 9 o S 6 x C W 2 K X 2 x K 8 4 m h 0 7 1 H I B i 3 Q Y f L M j U e / f E 5 o 9 9 0 f e O M h 0 z + o i o M 2 C 4 8 a I P t k x d l n u q y L E y S a p P G / 6 Y o v I / 0 Q A G j h J g 5 2 r Q 0 a q D U a V h H 5 z m x B 6 B 3 k C q 5 n r c D D l w G J N l t 1 b g A r T f 4 5 9 s w j i o Q D K 7 D l l B f 5 j o e p x e 6 + t R 3 4 v 3 D c g W s P L O d d p 9 f / V 2 k K R A 5 b 7 5 4 6 J S Q b t l p m M t 2 C 4 7 Z d 9 H s H c 5 R 8 R 3 k Z s O u U p L u l 2 X m V Q h W f K 9 C Y I p 7 r 8 N D / W E j T Z a b v 4 m E 1 S 3 E h K u 0 y 3 S o b u v q r c t o N 1 2 k c 6 s c 5 3 l n y q R b M v n H p S R f 1 8 b j q p K 6 c V J 3 W U c O 2 + U 5 c d W J P T 3 x g 5 r 3 M R N s M 0 j l L + Z Y E S 4 x Q X S k i M U G q s w A V T 7 2 I W F I N W l + S o K C g D W w i d w e I I E 4 F v k x p U H 3 I o 4 p C f L / a 2 2 I H w 7 N l o d L p b 2 M J  
 A h K 6 2 q 3 A p P q D E C o d I j j C U F t m C X i m v x T Z 1 4 D d H K w S n g J 0 c e N O k p t l n D K g T s y 7 z s D N I k 4 W 8 W n M R W 0 w h Q o I R D x 7 L M z x G w T A R 2 E E V s I H F A V 9 t O r 9 f w H O n J / X  
 : f x d r e e m a > * / 