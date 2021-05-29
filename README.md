<table style="width: 100%;">
  <tr>
    <td style="text-align: center; border: none;">
    Министерство образования и науки РФ<br>
Государственное бюджетное профессиональное образовательное учреждение Республики Марий Эл<br>
Йошкар-Олинский технологический колледж
</td>
  </tr>
  <tr>
    <td style="text-align: center; border: none; height: 15em;">
    <h2 style="font-size:3em;">Отчет</h2>
      <h3>по лабораторной работе<br><br> по дисциплине "Основы алгоритмизации и программирования"<br><br> Тема:<b> "Каркас приложения. Модель данных. Привязка данных. Табличный вывод."<b> </h3></td>
  </tr>
  <tr>
    <br><br><td style="text-align: right; border: none; height: 20em;">
      Разработал:<br/>
      Смирнов Евгений <br>
      Группа: И-21<br>
      Преподаватель:<br>
      Колесников Евгений Иванович
    </td>
  </tr>
  <tr>
    <td style="text-align: center; border: none; height: 5em;">
    г.Йошкар-Ола,<br> 2021</td>
  </tr>
</table>

<div style="page-break-after: always;"></div>

# Цели и задачи:

Используя материалы лекций Фильтрация данных и Поиск, сортировка доработать WPF-приложение из прошлой лабы.
 # Краткий материал.

В приложениях часто требуется отфильтровать данные либо по словарному полю, либо по каким-либо условиям. На втором варианте мы пока останавливаться не будем - сделаем фильтрацию по словарю.

Суть фильтрации сводится к тому, что возвращается не полный список объектов, а отфильтрованный по какому-то признаку. Для получения фильтрованного списка реализуем геттер и сеттер для списка

# Что же сделал?  

Создал фильтрацию данных.
     
    ```
    <Window x:Class="WpfApp7.MainWindow"
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        xmlns:d="http://schemas.microsoft.com/expression/blend/2008"
        xmlns:mc="http://schemas.openxmlformats.org/markup-compatibility/2006"
        xmlns:local="clr-namespace:WpfApp7"
        mc:Ignorable="d"
        Title="MainWindow" Height="450" Width="800">
    <Grid ShowGridLines="True">
        <Grid.RowDefinitions>
            <RowDefinition Height="auto"/>
            <RowDefinition />
            <RowDefinition Height="50"/>
        </Grid.RowDefinitions>
        <Grid.ColumnDefinitions>
            <ColumnDefinition Width="200"/>
            <ColumnDefinition/>
        </Grid.ColumnDefinitions>

        <!-- типа логотип компании -->
        <Image 
            Source="C:\Users\User\Desktop\Img\bus.jpeg" 
            Grid.RowSpan="2"/>

        <StackPanel 
        Orientation="Vertical"
        Grid.RowSpan="3"
        VerticalAlignment="Bottom">
            <Button 
            x:Name="ExitButton"
            Content="Выход" 
            Click="ExitButton_Click"
            Height="50"/>
        </StackPanel>

        <WrapPanel
        Orientation="Horizontal"
        Grid.Column="1"
        MinHeight="50">
            <!-- минимальную высоту я тут поставил, чтобы верхнюю строку сетки было видно. В реальном приложении она не нужна -->
        </WrapPanel>

        <DataGrid
    Grid.Column="1"
    CanUserAddRows="False"
    AutoGenerateColumns="False"
    ItemsSource="{Binding BusList}" Margin="0,50,0.286,0.429" Grid.RowSpan="2">
            <DataGrid.Columns>
                <DataGridTextColumn
            Header="Автобус"
            Binding="{Binding Buss}"/>
                <DataGridTextColumn
            Header="Номер"
            Binding="{Binding Number}"/>
                <DataGridTextColumn
            Header="Плата за проезд"
            Binding="{Binding Fare}"/>
                <DataGridTextColumn
            Header="Дата отправления"
            Binding="{Binding Departure}"/>
            </DataGrid.Columns>
        </DataGrid>
    </Grid>


</Window>

 
 ![](./lab1.png)
