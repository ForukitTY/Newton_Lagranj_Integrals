   M S B A M L   `   `   `  ����?  ;Boz3, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:Boz3Boz3  5   	       Boz3.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   $localclr-namespace:Boz3     5   	     � Title$  Work1��5   	   $	��520��6   $	��960��6$    � ShowInTaskbar . .��5	      �� $��0q�6   $��0,2,0,0q�6   .@�5
   
   �� $��Интерполяция��6   $��-2,-2,-81,0q�6(   .��5      � ���	#FFEAD7F9 � ColumnDefinitions 5      �� 5      $��78 �6'   �� 5      $
��150* �6'   �� 5      $
��150* �6'   �� 5      $
��150* �6'   �� 5      $
��150* �6'    � RowDefinitions 5      �� 5      $	��40* �6$   �� 5      $	��45* �6$   �� 5      $
��367* �6$   .+�5      �� $��0��6   $��0��6)    �� TextAlignment$ Center=�69   $��Center=�6P   $��Center=�6m   �� 5      $��30(�6   .�6(   X6+    �� 5      $��15(�6   $��Italic$�6(   .�6;   i6>   5      �� 5      $��1��6   $��0��6)   $ Center=�69   $��Center=�6P   $��Center=�6m   �� 5      $��30(�6   .�6(   y6+    �� 5       $��15(�6   $��Italic$�6(   .�6;   i6>   5!      �� 5#      -   5        $��x1��5#      $��0��6%   $��1��62   $��-1��6B    �� TextAlignment$ Center=�6L   $��30(�6c   $��Center=�6q   $��Center=�6�   �� 5$      -   5        $��x2��5$      $��0��6$   $��2��61   $��0��6A   $ Center=�6J   $��30(�6a   $��Center=�6o   $��Center=�6�   �� 5%      -   5        $��x3��5%      $��0��6$   $��3��61   $	��0.5��6A   $ Center=�6L   $��30(�6c   $��Center=�6q   $��Center=�6�   �� 5&      -   5        $��x4��5&      $��0��6$   $��4��61   $��1��6A   $ Center=�6J   $��30(�6a   $��Center=�6o   $��Center=�6�   �� 5'      -   5        $��y1��5'      $��1��6$   $��1��61   $��0��6A   $ Center=�6J   $��30(�6b   $��Center=�6p   $��Center=�6�   �� 5(      -   5        $��y2��5(      $��1��6$   $��2��61   $��2��6A   $ Center=�6J   $��30(�6a   $��Center=�6o   $��Center=�6�   �� 5)      -   5        $��y3��5)      $��1��6$   $��3��61   $��1.125��6A   $ Center=�6N   $��30(�6e   $��Center=�6s   $��Center=�6�   �� 5*      -   5        $��y4��5*      $��1��6$   $��4��61   $��0��6A   $ Center=�6J   $��30(�6a   $��Center=�6o   $��Center=�6�   �� 5+      
���   �$��1q�6-   $
��Left=�6A   $��1��6\   $��1��6g   $	��Top=�6t   $��78��6�   �� 5,      
���   �$��1q�6-   $
��Left=�6A   $��1��6\   $��2��6g   $	��Top=�6t   $��78��6�   �� 5-      -	   5        $��Посчитать��5-      $��4��6-   $��
10,0,10,10q�6=   $��2��6Q   ���	#FFB461EE$��16(�6�    J� RenderTransformOrigin$	 0,0&�6�    J� Opacity$
 0.94Q�6�   $��43��6�   $��Bottom=�6�   �� 5.      $��5��6    $��55,10,55,80q�64   $��2��6I   
���   ����	#FFF9BABA$��19(�6�   $��Lucida Calligraphy)�6�   .��5/      �� -
   5         ��Name$	 TB1��5/       $
��Wrap=�6-   50      �� 51      -   5        $��Очистить��51      $��
10,0,88,10q�6,   $��2��6@   ���	#FF999FE4$��2��6{   $��16(�6�   $��43��6�   $��Bottom=�6�   �� 52      $
��Wrap=�6   $��155,0,188,17q�61   $��2��6G   $��2��6T   $��При Х = ��6h   $��25(�6x   $��35��6�   $��Bottom=�6�   $��2��6�   �� 53      $��
10,0,10,52q�6   $��2��6/   $��4��6<   $��26��6L   $��Bottom=�6X   .@�55      �� -   5        	 ��Name$		 lag��55   #   
 �� 
IsSelected
 . .��6B   Метод Лагранжа6R   �� 56      -   5        $	 newton��56   #   
 .  .��6F   Метод Ньютона6U   58      �� 59      -   5         ��Name$
 x_cr��59      $��2��6(   $��4��65   $��18��6I   $ Center=�6S   $��30(�6j   $��Center=�6x   $��Center=�6�   $��
0,0,104,10q�6�   $��43��6�   $��Bottom=�6�   $��Right=�6�   $��84��6  5:      5;      �� 5<   
   $��Интегралы��6   $��81,-2,-168,0q�6%   .��5=      � ���	#FFA3ACE2.+�5>      �� $
��Left=�6   $��45��67   $��	15,29,0,0q�6C   $
��Wrap=�6V   $��f(x)=��6j   $	��Top=�6w   $��67��6�   $��30(�6�   �� 5?      -   5        $	 TB2��5?      $��77��6'   $��82,10,400,0q�63    �� TextWrapping$
 Wrap=�6H   $	��Top=�6\   $
��Left=�6t   $��Center=�6�   $��25(�6�   $	��x+1��6�   �� 5@      -   5        $	 tbA��5@      $��43��6'   $��
0,13,214,0q�63   $
 Wrap=�6G   $	��Top=�6\   $��24(�6t   $��Right=�6�   $��85��6�   $��0��6�   �� 5A      -   5        $	 tbB��5A      $��45��6'   $��
0,84,214,0q�63   $
 Wrap=�6G   $	��Top=�6\   $��24(�6t   $��Right=�6�   $��85��6�   $��3��6�   �� 5B      $��
0,13,299,0q�6   $
��Wrap=�60   $��a=��6D   $	��Top=�6N   $��22(�6f   $��43��6t   $��Right=�6�   $��38��6�   �� 5C      $��
0,84,299,0q�6   $
��Wrap=�60   $��b=��6D   $	��Top=�6N   $��22(�6f   $��45��6t   $��Right=�6�   $��38��6�   �� 5D      $��0,131,188,0q�6   $
��Wrap=�61   $1��+Границы интегрирования��6E   $	��Top=�6c   $��20��6{   $��Right=�6�   $	��158��6�   $
��Bold"�6�   �� 5E      -   5        $	 tbN��5E      $��38��6'   $��0,7,29,0q�63   $
 Wrap=�6E   $	��Top=�6Z   $��24(�6r   $��Right=�6�   $��86��6�   $��20��6�   �� 5F      $��	0,7,121,0q�6   $
��Wrap=�6/   $��n=��6C   $	��Top=�6M   $��22(�6e   $��38��6s   $��Right=�6   $��33��6�   �� 5G      $��	0,45,10,0q�6   $
��Wrap=�6/   $	��Top=�6C   $��35��6[   $��Right=�6g   $	��162��6�   $
��Bold"�6�   $ Center=�6�   �� 6�   $�Начальное ��6�   �� 6�   $�к��6�   �� 6�   $)�#оличество отрезков��6�   6  �� 5H      -   5        $	 Res��5H      $	��500��6(   $��488,215,326,0q�68   $
 Wrap=�6O   $	��Top=�6c   ���	#FFE2E3FF���	#FF7B9CFD$��2q�6�   $��57��6�   �� 5I      $��323,163,326,0q�6   $
��Wrap=�63   $��Результаты:��6G   $	��Top=�6Z   $��46��6r   $ Center=�6~   $��28(�6�   �� 5J      -   5        $��Посчитать��5J      $��0,226,214,0q�6-   $	��Top=�6B   $��36��6Z   $��Right=�6f   $	��107��6�   6�   �� 5K      $��366,215,0,0q�6   $
��Wrap=�61   $/��)Метод прямоугольников��6E   $	��Top=�6b   $��46��6z   $
 left=�6�   $
��Left=�6�   $	��117��6�   $��14(�6�   $��	Underline{�6�   �� 5L      $
��Left=�6   $��366,277,0,0q�67   $
��Wrap=�6L   $	��Top=�6`   $��57��6x   $��83��6�   $
 left=�6�   $��14(�6�   $��	Underline{�6�   $ 
0.12,0.509&�6�   �� 6�   $�Метод ��6�   �� 6  �� 6  �� 6  $�трапеций��6  6/  �� 5M      $
��Left=�6   $��366,338,0,0q�67   $
��Wrap=�6L   $	��Top=�6`   $��57��6x   $��83��6�   $
 left=�6�   $��14(�6�   $��	Underline{�6�   �� 6�   $�Метод ��6�   �� 6�   �� 6�   �� 6�   $�Симпсона��6�   6  �� 5N      -   5        $ Res_trap��5N      $��57��6-   $��488,277,326,0q�69   $
 Wrap=�6P   $�� ��6d   $	��Top=�6l   ���	#FFE2E3FF���	#FF7B9CFD$��2q�6�   �� 5O      -   5        $ Res_simp��5O      $��57��6-   $��488,338,326,0q�69   $
 Wrap=�6P   $�� ��6d   $	��Top=�6l   ���	#FFE2E3FF���	#FF7B9CFD$��2q�6�   �� 5P      -   5        $ tbEps��5P      $��39��6)   $��	0,84,29,0q�65   $
 Wrap=�6H   $	��Top=�6]   $��24(�6u   $��Right=�6�   $��86��6�   $	��0.5��6�   �� 5Q      $��
0,85,120,0q�6   $
��Wrap=�60   $	��Top=�6D   $��22(�6\   $��39��6j   $��Right=�6v   $��33��6�   �� 6�   $�е��6�   �� 6�   $�=��6�   6�   �� 5R      $��
0,129,14,0q�6   $
��Wrap=�60   $��Погрешность��6D   $	��Top=�6W   $��20��6o   $��Right=�6{   $	��147��6�   $
��Bold"�6�   $ Center=�6�   �� 5S      -   5        $
 tbn1��5S      $
��Left=�6+   $��745,237,0,0q�6F   $
��Wrap=�6[   $��n=��6o   $	��Top=�6y   $��25��6�   $��85��6�   �� 5T      -   5        $
 tbn2��5T      $
��Left=�6+   $��745,297,0,0q�6F   $
��Wrap=�6[   $��n=��6o   $	��Top=�6y   $��25��6�   $��85��6�   �� 5U      -   5        $
 tbn3��5U      $
��Left=�6+   $��745,359,0,0q�6F   $
��Wrap=�6[   $��n=��6o   $	��Top=�6y   $��25��6�   $��85��6�   �� 5V      -   5        $��Посчитать��5V      $��0,287,214,0q�6-   $	��Top=�6B   $��36��6Z   $��Right=�6f   $	��107��6�   6�   �� 5W      -   5        $��Посчитать��5W      $��0,349,214,0q�6-   $	��Top=�6B   $��36��6Z   $��Right=�6f   $	��107��6�   6�   5Y      5Z      �� 5[   
   $��Метод Гаусса��6   $��168,-2,-257,0q�6(   .��5\      � 
�������$��	0,-2,0,-6q�6)    5]      �� 5^      $��23 �6'   �� 5_      $��76 �6'   �� 5`      $	��44* �6'   �� 5a      $	��75* �6'   �� 5b      $	��50* �6'   �� 5c      $	��71* �6'   �� 5d      $	��46* �6'   �� 5e      $	��73* �6'   �� 5f      $	��34* �6'   �� 5g      $	��26* �6'   �� 5h      $	��91* �6'   �� 5i      $
��341* �6'    5k      �� 5l      $	��41* �6$   �� 5m      $	��46* �6$   �� 5n      $	��46* �6$   �� 5o      $	��46* �6$   �� 5p      $
��284* �6$   .+�5s      �� $��4��6   $�� ��6.   $��30(�67   �� 5t      $��0��6   $��9��6)   $��=��6:   $��30(�6C   �� 5u      $��1��6   $��9��6)   $��=��6:   $��30(�6C   �� 5v      $��2��6   $��9��6)   $��=��6:   $��30(�6C   �� 5w      $��3��6   $��9��6)   $��=��6:   $��30(�6C   �� 5y      -   5        $	��a00��5y      $��0��6%   $��1��62   $��2��6B   $ Center=�6K   $��30(�6b   $��Center=�6p   $��Center=�6�   �� 5z      -   5        $	��a01��5z      $��0��6&   $��3��63   $��1��6C   $ Center=�6L   $��30(�6c   $��Center=�6q   $��Center=�6�   �� 5{      -   5        $	��a02��5{      $��0��6%   $��5��62   $��-1��6B   $ Center=�6L   $��30(�6c   $��Center=�6q   $��Center=�6�   �� 5|      -    5        $	��a03��5|      $��0��6%   $��7��62   $��3��6B   $ Center=�6K   $��30(�6b   $��Center=�6p   $��Center=�6�   �� 5}      -!   5        $	��a10��5}      $��1��6%   $��1��62   $��5��6B   $ Center=�6K   $��30(�6b   $��Center=�6p   $��Center=�6�   �� 5~      -"   5        $	��a11��5~      $��1��6%   $��3��62   $��-1��6B   $ Center=�6L   $��30(�6d   $��Center=�6r   $��Center=�6�   �� 5      -#   5        $	��a12��5      $��1��6%   $��5��62   $��2��6B   $ Center=�6K   $��30(�6b   $��Center=�6p   $��Center=�6�   �� 5�      -$   5        $	��a13��5�      $��1��6%   $��7��62   $��-1��6B   $ Center=�6L   $��30(�6c   $��Center=�6q   $��Center=�6�   �� 5�      -%   5        $	��a20��5�      $��2��6%   $��1��62   $��-3��6B   $ Center=�6L   $��30(�6c   $��Center=�6q   $��Center=�6�   �� 5�      -&   5        $	��a21��5�      $��2��6&   $��3��63   $��2��6C   $ Center=�6L   $��30(�6c   $��Center=�6q   $��Center=�6�   �� 5�      -'   5        $	��a22��5�      $��2��6%   $��5��62   $��-1��6B   $ Center=�6L   $��30(�6c   $��Center=�6q   $��Center=�6�   �� 5�      -(   5        $	��a23��5�      $��2��6%   $��7��62   $��2��6B   $ Center=�6K   $��30(�6b   $��Center=�6p   $��Center=�6�   �� 5�      -)   5        $	��a30��5�      $��3��6%   $��1��62   $��1��6B   $ Center=�6K   $��30(�6b   $��Center=�6p   $��Center=�6�   �� 5�      -*   5        $	��a31��5�      $��3��6%   $��3��62   $��-1��6B   $ Center=�6L   $��30(�6d   $��Center=�6r   $��Center=�6�   �� 5�      -+   5        $	��a32��5�      $��3��6%   $��5��62   $��4��6B   $ Center=�6K   $��30(�6b   $��Center=�6p   $��Center=�6�   �� 5�      -,   5        $	��a33��5�      $��3��6%   $��7��62   $��-5��6B   $ Center=�6L   $��30(�6c   $��Center=�6q   $��Center=�6�   �� 5�      --   5        $��b0��5�      $��0��6$   $��10��61   $��20��6B   $ Center=�6L   $��30(�6c   $��Center=�6q   $��Center=�6�   �� 5�      -.   5        $��b1��5�      $��1��6$   $��10��61   $��17��6B   $ Center=�6L   $��30(�6c   $��Center=�6q   $��Center=�6�   �� 5�      -/   5        $��b2��5�      $��2��6$   $��10��61   $��1��6B   $ Center=�6K   $��30(�6c   $��Center=�6q   $��Center=�6�   �� 5�      -0   5        $��b3��5�      $��3��6$   $��10��61   $��-4��6B   $ Center=�6L   $��30(�6c   $��Center=�6q   $��Center=�6�   �� 5�      $��0��6   $��2��6)   $ Center=�69   $
��left=�6P   $��44��6k   �� 6w   $��30(�6{   $�x��6�   �� 6�   $� ��6�   �� 6�   $��Italic$�6�   $��15(�6�   $�1��6�   �� 6�   $��26(�6�   $�+��6�   6�   �� 5�      $��1��6   $��2��6*   $ Center=�6:   $
��left=�6Q   $��41��6l   �� 6x   $��30(�6|   $�x��6�   �� 6�   $� ��6�   �� 6�   $��Italic$�6�   $��15(�6�   $�1��6�   �� 6�   $��26(�6�   $�+��6�   6�   �� 5�      $��0��6   $��4��6*   $ Center=�6:   $
��left=�6Q   $��50��6l   �� 5�      $��30(�6   .�6)   x6,    �� 5�      $��15(�6   $��Italic$�6(   .�6;   26>    �� 5�      $�+��6   $��26(�6#   5�      �� 5�      $��1��6   $��4��6*   $ Center=�6:   $
��left=�6Q   $��50��6l   �� 5�      $��30(�6   .�6)   x6,    �� 5�      $��15(�6   $��Italic$�6(   .�6;   26>    �� 5�      $�+��6   $��26(�6#   5�      �� 5�      $��0��6   $��6��6*   $ Center=�6:   $
��left=�6Q   $��46��6l   �� 5�      $��30(�6   .�6)   x6,    �� 5�      $��15(�6   $��Italic$�6(   .�6;   26>    �� 5�      $�+��6   $��26(�6#   5�      �� 5�      $��1��6   $��6��6*   $ Center=�6:   $
��left=�6Q   $��46��6l   �� 5�      $��30(�6   .�6)   x6,    �� 5�      $��15(�6   $��Italic$�6(   .�6;   36>    �� 5�      $�+��6   $��26(�6#   5�      �� 5�      $��0��6   $��8��6*   $ Center=�6:   $
��left=�6Q   $��27��6l   �� 5�      $��30(�6   .�6)   x6,    �� 5�      $��15(�6   $��Italic$�6(   .�6;   46>   5�      �� 5�      $��1��6   $��8��6*   $ Center=�6:   $
��left=�6Q   $��27��6l   �� 5�      $��30(�6   .�6)   x6,    �� 5�      $��15(�6   $��Italic$�6(   .�6;   46>   5�      �� 5�      $��2��6   $��2��6*   $ Center=�6:   $
��left=�6Q   $��44��6l   �� 6x   $��30(�6|   $�x��6�   �� 6�   $� ��6�   �� 6�   $��Italic$�6�   $��15(�6�   $�1��6�   �� 6�   $��26(�6�   $�+��6�   6�   �� 5�      $��2��6   $��4��6*   $ Center=�6:   $
��left=�6Q   $��50��6l   �� 5�      $��30(�6   .�6)   x6,    �� 5�      $��15(�6   $��Italic$�6(   .�6;   26>    �� 5�      $�+��6   $��26(�6#   5�      �� 5�      $��2��6   $��6��6*   $ Center=�6:   $
��Left=�6Q   $��46��6l   �� 5�      $��30(�6   .�6)   x6,    �� 5�      $��15(�6   $��Italic$�6(   .�6;   36>    �� 5�      $�+��6   $��26(�6#   5�      �� 5�      $��2��6   $��8��6*   $ Center=�6:   $
��left=�6Q   $��27��6l   �� 5�      $��30(�6   .�6)   x6,    �� 5�      $��15(�6   $��Italic$�6(   .�6;   46>    �� 5�      $�+��6   $��26(�6#   5�      �� 5�      $��3��6   $��2��6*   $ Center=�6:   $
��left=�6Q   $��44��6l   �� 6x   $��30(�6|   $�x��6�   �� 6�   $� ��6�   �� 6�   $��Italic$�6�   $��15(�6�   $�1��6�   �� 6�   $��26(�6�   $�+��6�   6�   �� 5�      $��3��6   $��4��6*   $ Center=�6:   $
��left=�6Q   $��50��6l   �� 5�      $��30(�6   .�6)   x6,    �� 5�      $��15(�6   $��Italic$�6(   .�6;   26>    �� 5�      $�+��6   $��26(�6#   5�      �� 5�      $��3��6   $��6��6*   $ Center=�6:   $
��left=�6Q   $��46��6l   �� 5�      $��30(�6   .�6)   x6,    �� 5�      $��15(�6   $��Italic$�6(   .�6;   36>    �� 5�      $�+��6   $��26(�6#   5�      �� 5�      $��3��6   $��8��6*   $ Center=�6:   $
��left=�6Q   $��27��6l   �� 5�      $��30(�6   .�6)   x6,    �� 5�      $��15(�6   $��Italic$�6(   .�6;   46>    �� 5�      $�+��6   $��26(�6#   5�      �� 5�      -1   5        $��Посчитать��5�      $��
0,238,10,0q�6-   $	��Top=�6A   $��36��6Y   $��Right=�6e   $	��107��6�   $��11��6�   $��4��6�   5�      5�      5�      5�      