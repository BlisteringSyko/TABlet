   M S B A M L   `   `   `  ����N  JCustomChromeLibrary, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullV>clr-namespace:CustomChromeLibrary;assembly=CustomChromeLibraryCustomChromeLibrary  5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35L5clr-namespace:System.Diagnostics;assembly=WindowsBaseSystem.Diagnostics 5   	   A =TABlet, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:TABletTABlet 5	   	      TABlet.MainWindow   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   >d2http://schemas.microsoft.com/expression/blend/2008    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Ishell9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   Hmc;http://schemas.openxmlformats.org/markup-compatibility/2006    5   	   Lccl>clr-namespace:CustomChromeLibrary;assembly=CustomChromeLibrary    5   	   Ddiag5clr-namespace:System.Diagnostics;assembly=WindowsBase    5   	   $localclr-namespace:TABlet    5	   	   -   5        $	��450��5   K   $	��800��6X     � Icon$  	study.png��6{    � WindowStyle$
 None=�6�    � AllowsTransparency .  � Title 6	   ��  �� Path$ Title� �� UpdateSourceTrigger$ PropertyChanged=� J� CommandBindings 5      )  #System.Windows.Input.CommandBinding  5   
   -   5           Command$	 New��5      6'     5   
   -   5        $	 New��5      6'     5   
   -   5        $ Delete��5      6*     5   
   -   5        $
 Save��5      6(    J� InputBindings 5      �� 5   
   
	 �� Key$	 N��6   
 �� 	Modifiers$

 Ctrlf�6    �� Command$	 New��6.   �� 5   
   $	 T��6   $

 Ctrlf�6   $	 New��6.   �� 5   
   $	 W��6   $

 Ctrlf�6   $ Delete��6.   �� 5   
   $	 E��6   $

 Ctrlf�6   $
 Save��6.   '  !System.Windows.Shell.WindowChrome   WindowChrome 5        5   
      ResizeBorderThickness$ 6q�5         CornerRadius$ 0,0,0,0��5         GlassFrameThickness$ 0q�5         CaptionHeight 5      �� $ CaptionHeight� �� FallbackValue$ 25��$ PropertyChanged=�1  +System.Diagnostics.PresentationTraceSources   
TraceLevel$
 High=�5       .��5#      �� -   5         ��Name$ BORDER��5#      $��2,2,2,2q�6      BorderBrush#���   68     BackGroundBrush#���  6d   ._�5%   
   �  � LayoutTransform 5&      �� 5'      -   5        ApplicationScaleTransform�� �� CenterX$ 0Q�5(       �� CenterY$ 0Q�5)       �� ScaleX 5*      �� $ Scale� �� ScaleY 5+      �� $ Scale� � ColumnDefinitions 5.      �� 5/      $��* �6#    � RowDefinitions 51      �� 52      $��25 �6    �� 53      $��* �6    .+�57      �� $��0,0,0,2q�6   $��25��6/   #���   6;   $��0��6g   #���  6{   ._�58      � $��Stretch=�6   $
��20.8��6;   $��0,0,0,0q�6I   $	��Top=�6Z   ��6r   ��  �� RelativeSource �� *TemplatedParent+$ ActualWidth� 59      �� 5:      $��25 �61   �� 5;      $	��170 �61   �� 5<      �� 5=      $��50 �61   �� 5>      $��50 �61   �� 5?      $��50 �61   .+�5B      �� $��0��6"   $��4,2,0,0q�68   $��Uniform=�6f   ��6I   �� $
 Icon�6f   o� 5C      $��18��6   $	��Top=�6'   $��1��6?   #���  6U     	ForeBrush#���  6�   ���	#FF9370DB$��0,1,0,0q�6�   .@�5D      m� $
��File��6#   #���  61      IsHitTestVisibleInChrome . .@�5E      m� $	��New��6'   #���  64   #���  6c    .  m� Command$	 New��6�    m� InputGestureText$ Ctrl+N, Ctrl+T��6�   m� 5F      $��Remove��6'   #���  67   #���  6f    . $ Delete��6�   $ Ctrl+W��6�   �� 5G      #���   6(   m� 5H      $��Export��6'   #���  67   #���  6f    . $
 Save��6�   $ Ctrl+E��6�   m� 5I      -   5        $��SettingsMenu��5I   '   $��Settings��6;   #���  6h   #���  6�    . 6�   �� 5J      #���   6(   m� 5K      -	   5        $��ExitMenu��5K   '   $
��Exit��67   #���  6`   #���  6�    . 6�   5L      5M      �� 5N      $��2��6f   $��20��6|   #���  6�   #���  6  $��5,2,5,0q�64  $��Center=�6F  ��6"   �� $ Title�$ PropertyChanged=���6�   ��  �� *TemplatedParent+$ ActualWidth�6F  �� 5O      -
   5        $��_��5O   #   $��3��6/   $
��Left=�6E   $
��Auto��6`   $��0,0,0,0q�6n   $	��Top=�6   $��50��6�    .   MinimizeButtonStyle#���  6�   �� 5P      -   5        $��O��5P   #   $��4��6/   $
��Left=�6E   $
��Auto��6`   $��0,0,0,0q�6n   $	��Top=�6   $��50��6�    .   MaximizeButtonStyle#���  6�   �� 5Q      -   5        $��X��5Q   #   $��5��6/   $
��Left=�6E   $
��Auto��6`   $��0,0,0,0q�6n   $	��Top=�6   $��50��6�    .   ExitButtonStyle#���  6�   5R      5S      � 5V      $��1��6   #���  6!    5W      �� 5Y      $��* �6$   .+�5[      �� -   5         ��Name$ 
TabControl��5[      $��1��61   $��Stretch=�6>   $��0,0,0,0q�6\   $��Stretch=�6m   #���  6�   $��0q�6�   ��5]      �� 5^        �� 
TargetType"  ��6    .�5_      �� ! �� Property! � ��" �� Value
" � ���6;   �� 5`      ! � ��$" Stretch=�6I   �� 5a      ! � ��$" Stretch=�6K   �� 5b      ! � ��" 67   �� *Title+�� 5c      ! � ��" 5d   "   �� 5e   &   # �� 
TargetType"# ��66   .R�5f   *   �� #���   61     BackGroundBrushLight#���  6]   $��1,1,1,0q�6�   $��2,0,2,0q�6�   $ �� Padding$$ 3q�6�   ._�5g   .   �� #���  6z   #���  6�   ��68   �� $ Title�$ PropertyChanged=�6�   5h   +   5i   '   5k      5l      % �� ContentTemplate% 5o      �� 5p      .R�5q      � #���   6#    5r   "   �� 5s   &   $��20 �64   �� 5t   &   $��1 �64   �� 5u   &   $��* �64   �� 5v   &   $��20 �64   .+�5x   "   �� $��0��6*   #���  6x   #���  6�   $��0q�6�   ��67   �� $ Title�$ PropertyChanged=�6�   �� 5z   "   $��2��6*   & �� TextWrapping$
& Wrap=�67   ' �� AcceptsReturn' . #���  6�   #���  6�   $��0q�6  ��6a   �� $ Content�$ PropertyChanged=�6  � 5{   "   $��3��6'   #���  64    5|   &   �� 5}   *   $��* �6;   �� 5~   *   $	��100 �6;   �� 5   *   $	��100 �6;   �� 5�   *   $	��100 �6;   .+�5�   &   �� $��0��60   $�� ��6@   �� 5�   &   $��1��60   $��Center=�6�   #���  6�   ��6@   �� $ Chars�$ PropertyChanged=�6�   �� 5�   &   $��2��60   $��Center=�6�   #���  6�   ��6@   �� $ Words�$ PropertyChanged=�6�   �� 5�   &   $��3��60   $��Center=�6�   #���  6�   ��6@   �� $ Lines�$ PropertyChanged=�6�   5�   #   5�      5�      5�      5�      5�      5�      5�      