   M S B A M L   `   `   `  ���� A  =TABlet, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:TABletTABlet  W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089   MenuItem.Highlight.Border  BorderColor  �� Color  Menu.Disabled.Foreground * &MenuItem.Highlight.Disabled.Background & "MenuItem.Highlight.Disabled.Border  MenuItem.Selected.Border   MenuItem.Selected.Background  	Checkmark  Menu.Static.Foreground 	 ForeGroundColor �� 
TargetType �� 
ResourceId �� TypeInTargetAssembly ��Name J� SnapsToDevicePixels � ColumnDefinitions z� SharedSizeGroup ��Name	 F�Name
 ��Name J� Opacity m� InputGestureText �� Triggers P� Value P� Property �� 
TargetName �� Property �� Value 
 FadedBGBrush  BorderBrush ]� 
Conditions �� Property �� Value  BackGroundBrush  BackGroundColor  Menu.Static.Separator  UpArrow  MenuScrollButton �� 
TargetType �� BasedOn $  MenuScrollingVisibilityConverter  	DownArrow � RowDefinitions �� CanContentScroll �� LineUpCommand �� RelativeSource `� ConverterParameter `� 	Converter �� FallbackValue �� Path  �� LineDownCommand! �Name" � AllowsTransparency# � PlacementTarget$ �� ElementName% �� Padding& ��Name' �� ClearTypeHint( ��Name) ��Name-   'System.Windows.Input.KeyboardNavigation*    DirectionalNavigation+ � IsSharedSizeScope,    TabNavigation- P� 
SourceName  
RightArrow. � HorizontalOffset/ � VerticalOffset  MenuItemStyle10 �� AncestorType1 �� Triggers�� D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    :x,http://schemas.microsoft.com/winfx/2006/xaml     localclr-namespace:TABlet  %�$  &	        &	      &	 !     &	 6     &	 K     &	 `     &	 u     &	 �     (�� �     $ SubmenuItemTemplateKey��" m�)7  &	 W    &	 c    &	 x    &	 �    &	 U    &	 Z    (�� y    $ MenuScrollViewer��" �)7  7  7  7  7  7  (�� g    $ TopLevelHeaderTemplateKey��" m�)7  7  (�� �    $ TopLevelItemTemplateKey��" m�)7  &	 �    (��      $ SubmenuHeaderTemplateKey��" m�)7  &	 �    �� #  �  �� $  	#FF707070���� $  	#0A000000���� $  	#21000000���� $  	#FF26A0DA���� $  	#3D26A0DA���UQF1 M 10.0,1.2 L 4.7,9.1 L 4.5,9.1 L 0,5.2 L 1.3,3.5 L 4.3,6.1L 8.3,0 L 10.0,1.2 Z��� #  � 	 �� " m�.R��� $ templateRoot��#��z��#��z��#��z��$��22�� . ._�� $��-1q� �� $ MenuItemIconColumnGroup��$��0 ��� $��13 ��� $��* ��� $��30 ��� $ MenuItemIGTColumnGroup��$
��Auto ��� $��20 �.+��� $
 Icon��$
��Icon��$��Center=�$��16��$��3q�# z $��Center=�$��16���� $ 
GlyphPanel��#���  $��1q�#���  }�.  $��Center=�$��22��$��-1,0,0,0q�$y�Hidden=�$��Center=�$��22��._�F� $	 Glyph��8��  #���  $��LeftToRight=�$��11��$��10���� $ menuHeaderContainer��$��2��$��Header��$
��Left=�#��z����. # z $��Center=��� $
 menuGestureText��$��4��#��z��$	 0.7Q�#��z $��Center=� P�  Z�  �@m�Icon. ��� $
 Icon�� � y�$ 	Collapsed=�P�  �@m�	IsChecked . . ��� $ 
GlyphPanel�� � y�$ Visible=��� $
 Icon�� � y�$ 	Collapsed=�P�  �@m�IsHighlighted . . ��� $ templateRoot��# � 
  � ���� $ templateRoot��# �   � ��]�  ��  �@m�IsHighlighted . ��  � ��$ ExitMenu��./��� $ templateRoot�� � �� �	#3CFF0000�� $ templateRoot�� � �� �	#FFFF0000P�  � {� .  . ��� $ templateRoot��# �   � ���� $ Glyph��# �   � ��]�  ��  �@m�IsHighlighted . ��  � {� .  ./��� $ templateRoot��# �   � ���� $ templateRoot��# �   � ���� #  �  �� $  	#FFD7D7D7���M 0,4 L 3.5,0 L 7,4 Z��� " �� Z� .���  �@��	ClickMode$ Hover=���  � �� �� " ��.R��� $ templateRoot��
������ $��1q�
������  . ._��� $��Center=�$��6q�$��Center=�l� �M 0,0 L 3.5,4 L 7,0 Z��� " �� Z� .���  � ��$ Hidden=���  � ��$
 Auto=���  � �� �� " ��.R��  .  �� $��* � �� $
��Auto ��� $��* ��� $
��Auto �.+��� $��0��$��1��._��� # z��#��z���� $��0��#��Z |�.  $��0��8��  ����  �� *TemplatedParent+y�`� $ 0��8  $ Visibility.Collapsed��.1��� $) #ComputedVerticalScrollBarVisibility� �� *TemplatedParent+�� $ VerticalOffset� �� *TemplatedParent+�� $ ExtentHeight� �� *TemplatedParent+�� $ ViewportHeight� �� *TemplatedParent+.��F� 8�� #���  �� $��0��#��Z  |�.  $��2��8�� ����  �� *TemplatedParent+y�`� $	 100��8  $ Visibility.Collapsed��.1��� $) #ComputedVerticalScrollBarVisibility� �� *TemplatedParent+�� $ VerticalOffset� �� *TemplatedParent+�� $ ExtentHeight� �� *TemplatedParent+�� $ ViewportHeight� �� *TemplatedParent+.��F� 8�� #���  �� " m�.R��� $ templateRoot��#��z��#��z��#��z�� . ._�� $��Center=� �� $
��Auto ��� $
��Auto �.+��� $
 Icon��$
��Icon��$��Center=�$��16��$��3q�# z $��Center=�$��16��F� $	 
GlyphPanel��8��  #��z��$��LeftToRight=�$��3q�$y�	Collapsed=�$��Center=��� $��1��$��Header��#��z����. # z � $! 
PART_Popup��" . |�.  #��� -�$��Bottom=����� *IsSubmenuOpen+ �� *TemplatedParent+# �� $$ templateRoot��.���� $ SubMenuBorder��#���  $��1q�#���  $% 2q�._��� $& SubMenuScrollViewer����C� *�� $ MenuScrollViewer��" �+.��� $' Enabled=�.+��� $
��Left=�$��0��$	��Top=�$��0��.+��� $( 
OpaqueRect������ *
Background+$$ SubMenuBorder������ *ActualHeight+$$ SubMenuBorder������ *ActualWidth+$$ SubMenuBorder���� $y�	Collapsed=�8�� $
��Left=�$��29,2,0,2q�$��1���� $) ItemsPresenter��$* Cycle=�+ . # z $, Cycle=� P� " �@m�IsSuspendingPopupAnimation . . ��� $ 
PART_Popup�� � ��$
 None=�P�  Z�  �@m�Icon. ��� $
 Icon�� � y�$ 	Collapsed=�P�  �@m�	IsChecked . . ��� $ 
GlyphPanel�� � y�$ Visible=��� $
 Icon�� � y�$ 	Collapsed=�P�  �@m�IsHighlighted . . ��� $ templateRoot��# � 
  � ���� $ templateRoot��# �   � ��]�  ��  �@m�IsHighlighted . ��  � ��$ ExitMenu��./��� $ templateRoot�� � �� �	#3CFF0000�� $ templateRoot�� � �� �	#FFFF0000P�  � {� .  . ��� $ templateRoot��# �   � ���� $ 
GlyphPanel��# �   � ��P� $- SubMenuScrollViewer�� � �� .  . ��� $ 
OpaqueRect�� �� *VerticalOffset+$$ SubMenuScrollViewer�� �@��Top�� $ 
OpaqueRect�� �� *HorizontalOffset+$$ SubMenuScrollViewer�� �@��Left�� " m�.R��� $ templateRoot��#��z��#��z��#��z�� . ._�� $��Center=� �� $
��Auto ��� $
��Auto �.+��� $
 Icon��$
��Icon��$��Center=�$��16��$��3q�# z $��Center=�$��16��F� $	 
GlyphPanel��8��  #���  $��LeftToRight=�$��3q�$y�	Collapsed=�$��Center=��� $��1��$��Header��#��z����. # z  P�  Z�  �@m�Icon. ��� $
 Icon�� � y�$ 	Collapsed=�P�  �@m�	IsChecked . . ��� $ 
GlyphPanel�� � y�$ Visible=��� $
 Icon�� � y�$ 	Collapsed=�P�  �@m�IsHighlighted . . ��� $ templateRoot��# � 
  � ���� $ templateRoot��# �   � ��]�  ��  �@m�IsHighlighted . ��  � ��$ ExitMenu��./��� $ templateRoot�� � �� �	#3CFF0000�� $ templateRoot�� � �� �	#FFFF0000P�  � {� .  . ��� $ templateRoot��# �   � ���� $ 
GlyphPanel��# �   � ��]�  ��  �@m�IsHighlighted . ��  � {� .  ./��� $ templateRoot��# �   � ���� $ templateRoot��# �   � ���M 0,0 L 4,3.5 L 0,7 Z��� " m�.R��� $ templateRoot��#��z��#��z��#��z��$��22�� . ._�� $��-1q� �� $ MenuItemIconColumnGroup��$��0 ��� $��13 ��� $��* ��� $��30 ��� $ MenuItemIGTColumnGroup��$
��Auto ��� $��20 �.+��� $
 Icon��$
��Icon��$��Center=�$��16��$��3q�# z $��Center=�$��16���� $ 
GlyphPanel��#���  $��1q�#��� 
 $��22��$��-1,0,0,0q�$y�Hidden=�$��Center=�$��22��._�F� $	 Glyph��#���  #���  $��LeftToRight=�$��11��$��9���� $��2��$��Header��$
��Left=�#��z����. # z $��Center=��� $��4��#��z��$	 0.7Q�#��z $��Center=�F� $	 
RightArrow��$��5��8��  #���  $
��Left=�$��10,0,0,0q�$��Center=�� $! 
PART_Popup��" . |�.  $. -2��#��� -�$��Right=�$/ -3������ *IsSubmenuOpen+ �� *TemplatedParent+.���� $ SubMenuBorder��#���  $��1q�#���  $% 2q�._��� $& SubMenuScrollViewer����C� *�� $ MenuScrollViewer��" �+.��� $' Enabled=�.+��� $
��Left=�$��0��$	��Top=�$��0��.+��� $( 
OpaqueRect������ *
Background+$$ SubMenuBorder������ *ActualHeight+$$ SubMenuBorder������ *ActualWidth+$$ SubMenuBorder���� $y�	Collapsed=�#��� ��$
��Left=�$��29,2,0,2q�$��1���� $) ItemsPresenter��$* Cycle=�+ . # z $, Cycle=� P� " �@m�IsSuspendingPopupAnimation . . ��� $ 
PART_Popup�� � ��$
 None=�P�  Z�  �@m�Icon. ��� $
 Icon�� � y�$ 	Collapsed=�P�  �@m�	IsChecked . . ��� $ 
GlyphPanel�� � y�$ Visible=��� $
 Icon�� � y�$ 	Collapsed=�P�  �@m�IsHighlighted . . ��� $ templateRoot�� � ��
 ���� �� $ templateRoot��# �   � ��P�  � ��$ ExitMenu��. ��� $ templateRoot�� � �� �	#FF00FF00�� $ templateRoot�� � �� �	#FF00FF00P�  � {� .  . ��� $ templateRoot��# �   � ���� $ Glyph��# �   � ���� $ 
RightArrow��# �   � ��P� $- SubMenuScrollViewer�� � �� .  . ��� $ 
OpaqueRect�� �� *VerticalOffset+$$ SubMenuScrollViewer�� �@��Top�� $ 
OpaqueRect�� �� *HorizontalOffset+$$ SubMenuScrollViewer�� �@��Left�� " m�.���  � �� �� *HorizontalContentAlignment+ �� "0 ����  � �� �� *VerticalContentAlignment+ �� "0 ����  � ��
 ���� ��  � ��
 ���� ��  � ��$ 1q���  �@��PanningMode$
 Both=���  �@��IsFlicksEnabled .  ��  � �� C� *�� $ SubmenuItemTemplateKey��" m�+1 P�  �@m�Role$ TopLevelHeader=�. ���  � ��
 ���� ��  � ��
 ���� ��  � ��# �  ��  � �� C� *�� $ TopLevelHeaderTemplateKey��" m�+��  � ��$	 6,0q�P�  �@m�Role$ TopLevelItem=�. ���  � ��# �  ��  � ��# �  ��  � ��# �  ��  � �� C� *�� $ TopLevelItemTemplateKey��" m�+��  � ��$	 6,0q�P�  �@m�Role$ SubmenuHeader=�. ���  � �� C� *�� $ SubmenuHeaderTemplateKey��" m�+