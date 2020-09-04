using System;
using System.Windows;


namespace TABlet
{
    /// <summary>
    /// Interaction logic for Settings.xaml
    /// </summary>
    public partial class Settings : CustomChromeLibrary.CustomChromeWindow
    {
        public Settings(JsonData jsondata)
        {
            InitializeComponent();
            this.DataContext = jsondata;

        }

        private void ExitButton_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void MaximizeButton_Click(object sender, RoutedEventArgs e)
        {
            if (WindowState == WindowState.Maximized)
            {
                WindowState = WindowState.Normal;
            }
            else
            {
                WindowState = WindowState.Maximized;

            }
        }

        private void MinimizeButton_Click(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }

        private void CustomChromeWindow_StateChanged(object sender, EventArgs e)
        {
            if (WindowState == WindowState.Maximized)
            {

                BORDER.BorderThickness = new Thickness(8);
            }
            else
            {
                BORDER.BorderThickness = new Thickness(2);
            }
        }

        private void ResetButton_Click(object sender, RoutedEventArgs e)
        {
            ((JsonData)this.DataContext).ForeGroundColor = "#FFFFFFFF";
            ((JsonData)this.DataContext).BackGroundColor = "#FF181818";
            ((JsonData)this.DataContext).BackGroundColorLight = "#FF393939";
            ((JsonData)this.DataContext).BorderColor = "#FF9c1aff";
            ((JsonData)this.DataContext).Scale = 1;
        }
    }
}
