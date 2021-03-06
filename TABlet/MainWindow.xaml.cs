﻿using System;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Threading;
using Newtonsoft.Json;
using Microsoft.Win32;

namespace TABlet
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : CustomChromeLibrary.CustomChromeWindow
    {
        private readonly string SavePath = System.AppDomain.CurrentDomain.BaseDirectory + @"/list.json";

        JsonData jsonData = new JsonData();

        DispatcherTimer dt = new DispatcherTimer();
        Stopwatch sw = new Stopwatch();

        public MainWindow()
        {
            InitializeComponent();
            LoadList();

            this.DataContext = jsonData;
            jsonData.Icon = jsonData.BitmapToImageSource(TABlet.Properties.Resources.Icon.ToBitmap());
            dt.Interval = new TimeSpan(0, 0, 0, 0, 1);
            dt.Tick += Dt_Tick;
            dt.IsEnabled = true;
            dt.Start();
        }

        private void Dt_Tick(object sender, EventArgs e)
        {
            if (sw.IsRunning && sw.ElapsedMilliseconds >= 5000)
            {
                sw.Stop();
                Savelist();
                jsonData.Title = $"TABlet    *Auto Saved @ {DateTime.Now.ToString("dd/MM/yyyy hh:mm:ss tt")}*";
                Console.WriteLine("Autosaved");
            }
        }

        private void Np_PropertyChanged(object sender, System.ComponentModel.PropertyChangedEventArgs e)
        {
            sw.Restart();
        }

        private void Savelist()
        {
            JsonSerializerSettings jss = new JsonSerializerSettings() { NullValueHandling = NullValueHandling.Include, MissingMemberHandling = MissingMemberHandling.Ignore, Formatting = Formatting.Indented };

            string raw = JsonConvert.SerializeObject(jsonData, jss);
            System.IO.File.WriteAllText(SavePath, raw);
        }

        private void LoadList()
        {
            if (System.IO.File.Exists(SavePath))
            {
                string raw = System.IO.File.ReadAllText(SavePath);
                jsonData = JsonConvert.DeserializeObject<JsonData>(raw);
                Application.Current.Resources["BackGroundColor"] = ColorConverter.ConvertFromString(jsonData.BackGroundColor);
                Application.Current.Resources["BackGroundColorLight"] = ColorConverter.ConvertFromString(jsonData.BackGroundColorLight);
                Application.Current.Resources["ForeGroundColor"] = ColorConverter.ConvertFromString(jsonData.ForeGroundColor);
                Application.Current.Resources["BorderColor"] = ColorConverter.ConvertFromString(jsonData.BorderColor);


                foreach (Notepad np in jsonData._list)
                {
                    np.PropertyChanged += Np_PropertyChanged;
                }

            }
            else
            {
                jsonData._list = new ObservableCollection<Notepad>();
            }

            if (jsonData._list.Count == 0)
            {
                NewTab();
            }

            TabControl.ItemsSource = jsonData._list;
        }

        private void Window_Closed(object sender, EventArgs e)
        {
            Savelist();
        }

        private void NewTab()
        {
            Notepad np = new Notepad("*New*", "");
            np.PropertyChanged += Np_PropertyChanged;
            jsonData._list.Add(np);

            TabControl.SelectedIndex = TabControl.Items.Count - 1;

            Savelist();
        }

        private void NewCommandBinding_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            NewTab();
        }

        private void RemoveCommandBinding_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            Notepad np = TabControl.SelectedItem as Notepad;

            MessageBoxResult mbr = MessageBox.Show($"Are you sure you want to remove tab {np.Title}?", "Woah!", MessageBoxButton.YesNo);

            if (mbr == MessageBoxResult.Yes)
            {
                jsonData._list.Remove(np);
                Savelist();
            }
        }

        private void ExitMenuItem_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void ExitButton_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
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

        private void SettingsMenu_Click(object sender, RoutedEventArgs e)
        {
            Settings settings = new Settings(jsonData);
            settings.Show();
        }

        private void SaveCommandBinding_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            Notepad np = TabControl.SelectedItem as Notepad;
            SaveFileDialog sfd1 = new SaveFileDialog();
            sfd1.DefaultExt = ".txt";
            sfd1.Filter = ".txt|*.txt";
            sfd1.FileName = np.Title;
            if (sfd1.ShowDialog() == true)
            {
                System.IO.File.WriteAllText(sfd1.FileName, np.Content);
            }
        }
    }
}
