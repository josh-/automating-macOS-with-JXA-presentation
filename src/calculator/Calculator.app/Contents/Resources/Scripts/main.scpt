JsOsaDAS1.001.00bplist00�Vscriptox O b j C . i m p o r t ( ' C o c o a ' ) 
 
 c o n s t   r e s u l t S t r i n g   =   ( r e s u l t )   = >   ` R e s u l t :   $ {   r e s u l t   ?   r e s u l t . t o S t r i n g ( )   :   ' ' } ` 
 
 O b j C . r e g i s t e r S u b c l a s s ( { 
 	 n a m e :   ' A p p D e l e g a t e ' , 
 	 m e t h o d s :   { 
 	 	 ' c a l c u l a t e : ' :   { 
 	 	 	 t y p e s :   [ ' v o i d ' ,   [ ' i d ' ] ] , 
 	 	 	 i m p l e m e n t a t i o n :   f u n c t i o n   ( s e n d e r )   { 
 	 	 	 	 v a r   t o t a l   =   N u m b e r ( t e x t F i e l d 1 . s t r i n g V a l u e . j s )   +   N u m b e r ( t e x t F i e l d 2 . s t r i n g V a l u e . j s ) 
 	 	 	 	 r e s u l t T e x t F i e l d L a b e l . s t r i n g V a l u e   =   r e s u l t S t r i n g ( t o t a l ) 
 	 	 	 } 
 	 	 } 
 	 } 
 } ) 
 
 v a r   a p p D e l e g a t e   =   $ . A p p D e l e g a t e . a l l o c . i n i t 
 
 c o n s t   s t y l e M a s k   =   $ . N S T i t l e d W i n d o w M a s k   |   $ . N S C l o s a b l e W i n d o w M a s k   |   $ . N S M i n i a t u r i z a b l e W i n d o w M a s k 
 v a r   w i n d o w   =   $ . N S W i n d o w . a l l o c . i n i t W i t h C o n t e n t R e c t S t y l e M a s k B a c k i n g D e f e r ( 
 	 $ . N S M a k e R e c t ( 0 ,   0 ,   2 5 0 ,   1 2 0 ) , 
 	 s t y l e M a s k , 
 	 $ . N S B a c k i n g S t o r e B u f f e r e d , 
 	 f a l s e 
 ) 
 
 v a r   c a l c u l a t e B u t t o n   =   $ . N S B u t t o n . a l l o c . i n i t W i t h F r a m e ( $ . N S M a k e R e c t ( 2 5 ,   2 0 ,   2 0 0 ,   2 5 ) ) 
 c a l c u l a t e B u t t o n . t i t l e   =   ' C a l c u l a t e  �>�� &B� ' 
 c a l c u l a t e B u t t o n . b e z e l S t y l e   =   $ . N S R o u n d e d B e z e l S t y l e 
 c a l c u l a t e B u t t o n . b u t t o n T y p e   =   $ . N S M o m e n t a r y L i g h t B u t t o n 
 c a l c u l a t e B u t t o n . t a r g e t   =   a p p D e l e g a t e 
 c a l c u l a t e B u t t o n . a c t i o n   =   ' c a l c u l a t e : ' 
 c a l c u l a t e B u t t o n . k e y E q u i v a l e n t   =   ' \ r ' 
 
 w i n d o w . c o n t e n t V i e w . a d d S u b v i e w ( c a l c u l a t e B u t t o n ) 
 
 v a r   r e s u l t T e x t F i e l d L a b e l   =   $ . N S T e x t F i e l d . a l l o c . i n i t W i t h F r a m e ( $ . N S M a k e R e c t ( 2 5 ,   4 5 ,   2 0 0 ,   2 4 ) ) 
 r e s u l t T e x t F i e l d L a b e l . s t r i n g V a l u e   =   r e s u l t S t r i n g ( ) 
 r e s u l t T e x t F i e l d L a b e l . d r a w s B a c k g r o u n d   =   f a l s e 
 r e s u l t T e x t F i e l d L a b e l . e d i t a b l e   =   f a l s e 
 r e s u l t T e x t F i e l d L a b e l . b e z e l e d   =   f a l s e 
 r e s u l t T e x t F i e l d L a b e l . s e l e c t a b l e   =   t r u e 
 w i n d o w . c o n t e n t V i e w . a d d S u b v i e w ( r e s u l t T e x t F i e l d L a b e l ) 
 
 v a r   t e x t F i e l d 1   =   $ . N S T e x t F i e l d . a l l o c . i n i t W i t h F r a m e ( $ . N S M a k e R e c t ( 2 5 ,   8 0 ,   9 0 ,   2 4 ) ) 
 t e x t F i e l d 1 . s t r i n g V a l u e   =   ' ' 
 w i n d o w . c o n t e n t V i e w . a d d S u b v i e w ( t e x t F i e l d 1 ) 
 
 v a r   p l u s T e x t F i e l d L a b e l   =   $ . N S T e x t F i e l d . a l l o c . i n i t W i t h F r a m e ( $ . N S M a k e R e c t ( 1 2 0 ,   8 0 ,   2 4 ,   2 4 ) ) 
 p l u s T e x t F i e l d L a b e l . s t r i n g V a l u e   =   ' + ' 
 p l u s T e x t F i e l d L a b e l . d r a w s B a c k g r o u n d   =   f a l s e 
 p l u s T e x t F i e l d L a b e l . e d i t a b l e   =   f a l s e 
 p l u s T e x t F i e l d L a b e l . b e z e l e d   =   f a l s e 
 p l u s T e x t F i e l d L a b e l . s e l e c t a b l e   =   t r u e 
 w i n d o w . c o n t e n t V i e w . a d d S u b v i e w ( p l u s T e x t F i e l d L a b e l ) 
 
 v a r   t e x t F i e l d 2   =   $ . N S T e x t F i e l d . a l l o c . i n i t W i t h F r a m e ( $ . N S M a k e R e c t ( 1 3 5 ,   8 0 ,   9 0 ,   2 4 ) ) 
 t e x t F i e l d 2 . s t r i n g V a l u e   =   ' ' 
 w i n d o w . c o n t e n t V i e w . a d d S u b v i e w ( t e x t F i e l d 2 ) 
 
 w i n d o w . c e n t e r 
 w i n d o w . t i t l e   =   ' S c i e n t i f i c   C a l c u l a t o r  �=�H ' 
 w i n d o w . m a k e K e y A n d O r d e r F r o n t ( w i n d o w )                              jscr  ��ޭ