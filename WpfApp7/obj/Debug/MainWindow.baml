   M S B A M L   `   `   `  ����B  >WpfApp7, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null!clr-namespace:WpfApp7WpfApp7  5   	       WpfApp7.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   'localclr-namespace:WpfApp7     5   	     � Title$  
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      �  � ShowGridLines .  � RowDefinitions 5
   
   �� 5      $
��auto �6   �� 5      �� 5      $��50 �6    � ColumnDefinitions 5   
   �� 5      $	��200 �6   �� 5      .+�5   
   �� $(��"C:\Users\User\Desktop\Img\bus.jpeg��5      $��2��5      �� 5   
    �� Orientation$ Vertical=�5   	   $��3��5   	   $��Bottom=�5   	   .+�5      �� -   5         ��Name$ 
ExitButton��5      $��
Выход��5      $��50��5!      5"      � 5$   
    � Orientation$ 
Horizontal=�5%   	   $��1��5&   	   $��50��5'   	   5)      &   System.Windows.Controls.DataGrid  5+   
   $��1��5,         CanUserAddRows .     AutoGenerateColumns .  $��0,50,0.286,0.429q�5/   %   $��2��6?   ��6   �� *	BusList+	   Columns	 50      0  *System.Windows.Controls.DataGridTextColumn  51      ,  &System.Windows.Controls.DataGridColumn
   Header$
 Автобус��52      1  +System.Windows.Controls.DataGridBoundColumn   Binding 53      �� *Buss+  54      $
 
Номер��55       56      �� *Number+  57      $"
 Плата за проезд��58       59      �� *Fare+  5:      $%
 Дата отправления��5;       5<      �� *	Departure+5>      5?      5B      