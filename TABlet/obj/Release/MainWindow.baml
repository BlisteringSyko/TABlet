   M S B A M L   `   `   `  ���� N  JCustomChromeLibrary, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullV>clr-namespace:CustomChromeLibrary;assembly=CustomChromeLibraryCustomChromeLibrary  R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35L5clr-namespace:System.Diagnostics;assembly=WindowsBaseSystem.Diagnostics A =TABlet, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:TABletTABlet    TABlet.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    >d2http://schemas.microsoft.com/expression/blend/2008    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Ishell9http://schemas.microsoft.com/winfx/2006/xaml/presentation    Hmc;http://schemas.openxmlformats.org/markup-compatibility/2006    Lccl>clr-namespace:CustomChromeLibrary;assembly=CustomChromeLibrary    Ddiag5clr-namespace:System.Diagnostics;assembly=WindowsBase    $localclr-namespace:TABlet    -   $	��450��$	��800��  � Icon$  	study.png�� � WindowStyle$
 None=� � AllowsTransparency .  � Title ��  �� Path$ Title� �� UpdateSourceTrigger$ PropertyChanged=� J� CommandBindings )  #System.Windows.Input.CommandBinding  -      Command$	 New��  -   $	 New��  -   $ Delete��  -   $
 Save�� J� InputBindings �� 
	 �� Key$	 N��
 �� 	Modifiers$

 Ctrlf� �� Command$	 New���� $	 T��$

 Ctrlf�$	 New���� $	 W��$

 Ctrlf�$ Delete���� $	 E��$

 Ctrlf�$
 Save��'  !System.Windows.Shell.WindowChrome   WindowChrome      ResizeBorderThickness$ 6q�   CornerRadius$ 0,0,0,0��   GlassFrameThickness$ 0q�   CaptionHeight �� $ CaptionHeight� �� FallbackValue$ 25��$ PropertyChanged=�1  +System.Diagnostics.PresentationTraceSources   
TraceLevel$
 High=�.���� -    ��Name$ BORDER��$��2,2,2,2q�   BorderBrush#���     BackGroundBrush#���  ._��  � LayoutTransform �� -   ApplicationScaleTransform�� �� CenterX$ 0Q� �� CenterY$ 0Q� �� ScaleX �� $ Scale� �� ScaleY �� $ Scale� � ColumnDefinitions �� $��* � � RowDefinitions �� $��25 ��� $��* �.+��� $��0,0,0,2q�$��25��#���   $��0��#���  ._�� $��Stretch=�$
��20.8��$��0,0,0,0q�$	��Top=�����  �� RelativeSource �� *TemplatedParent+$ ActualWidth� �� $��25 ��� $	��170 ��� �� $��50 ��� $��50 ��� $��50 �.+��� $��0��$��4,2,0,0q�$��Uniform=����� $
 Icon�o� $��18��$	��Top=�$��1��#���    	ForeBrush#���  ���	#FF9370DB$��0,1,0,0q�.@�m� $
��File��#���     IsHitTestVisibleInChrome . .@�m� $	��New��#���  #���   .  m� Command$	 New�� m� InputGestureText$ Ctrl+N, Ctrl+T��m� $��Remove��#���  #���   . $ Delete��$ Ctrl+W���� #���   m� $��Export��#���  #���   . $
 Save��$ Ctrl+E��m� -   $��SettingsMenu��$��Settings��#���  #���   . �� #���   m� -	   $��ExitMenu��$
��Exit��#���  #���   . �� $��2��$��20��#���  #���  $��5,2,5,0q�$��Center=����� $ Title�$ PropertyChanged=�����  �� *TemplatedParent+$ ActualWidth��� -
   $��_��$��3��$
��Left=�$
��Auto��$��0,0,0,0q�$	��Top=�$��50�� .   MinimizeButtonStyle#���  �� -   $��O��$��4��$
��Left=�$
��Auto��$��0,0,0,0q�$	��Top=�$��50�� .   MaximizeButtonStyle#���  �� -   $��X��$��5��$
��Left=�$
��Auto��$��0,0,0,0q�$	��Top=�$��50�� .   ExitButtonStyle#���  � $��1��#���   �� $��* �.+��� -    ��Name$ 
TabControl��$��1��$��Stretch=�$��0,0,0,0q�$��Stretch=�#���  $��0q�����   �� 
TargetType"  ��.��� ! �� Property! � ��" �� Value
" � ����� ! � ��$" Stretch=��� ! � ��$" Stretch=��� ! � ��" �� *Title+�� ! � ��" �� # �� 
TargetType"# ��.R��� #���     BackGroundBrushLight#���  $��1,1,1,0q�$��2,0,2,0q�$ �� Padding$$ 3q�._��� #���  #���  ���� $ Title�$ PropertyChanged=�% �� ContentTemplate% �� .R�� #���    �� $��20 ��� $��1 ��� $��* ��� $��20 �.+��� $��0��#���  #���  $��0q����� $ Title�$ PropertyChanged=��� $��2��& �� TextWrapping$
& Wrap=�' �� AcceptsReturn' . #���  #���  $��0q����� $ Content�$ PropertyChanged=�� $��3��#���   �� $��* ��� $	��100 ��� $	��100 ��� $	��100 �.+��� $��0��$�� ���� $��1��$��Center=�#���  ���� $ Chars�$ PropertyChanged=��� $��2��$��Center=�#���  ���� $ Words�$ PropertyChanged=��� $��3��$��Center=�#���  ���� $ Lines�$ PropertyChanged=�