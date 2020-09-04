using System.Collections.ObjectModel;
using System.ComponentModel;
using System.IO;
using System.Runtime.CompilerServices;
using System.Windows;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using Newtonsoft.Json;

namespace TABlet
{
    public class JsonData : INotifyPropertyChanged
    {
        private string _backGroundColor;
        public string BackGroundColor
        {
            get
            {
                return _backGroundColor;
            }
            set
            {
                _backGroundColor = value;
                Color _color = (Color)System.Windows.Media.ColorConverter.ConvertFromString(value);
                Application.Current.Resources["BackGroundColor"] = _color;
                Application.Current.Resources["BackGroundBrush"] = new SolidColorBrush(_color);
                OnChange();
                OnChange();

            }
        }
        private string _backGroundColorLight;
        public string BackGroundColorLight
        {
            get
            {
                return _backGroundColorLight;
            }
            set
            {
                _backGroundColorLight = value;
                Color _color = (Color)ColorConverter.ConvertFromString(value);
                Application.Current.Resources["BackGroundColorLight"] = _color;
                Application.Current.Resources["BackGroundBrushLight"] = new SolidColorBrush(_color);
                OnChange();

            }
        }
        private string _foreGroundColor;
        public string ForeGroundColor
        {
            get
            {
                return _foreGroundColor;
            }
            set
            {
                _foreGroundColor = value;
                Color _color = (Color)ColorConverter.ConvertFromString(value);
                Application.Current.Resources["ForeGroundColor"] = _color;
                Application.Current.Resources["ForeBrush"] = new SolidColorBrush(_color);
                OnChange();

            }
        }
        private string _borderColor;
        public string BorderColor
        {
            get
            {
                return _borderColor;
            }
            set
            {
                _borderColor = value;
                Color _color = (Color)ColorConverter.ConvertFromString(value);
                Application.Current.Resources["BorderColor"] = _color;
                Application.Current.Resources["BorderBrush"] = new SolidColorBrush(_color);
                Application.Current.Resources["FadedBGBrush"] = new SolidColorBrush(_color) { Opacity= (double)Application.Current.Resources["FadedOpacity"] };
                OnChange();

            }
        }

        private string _title;
        [JsonIgnore]
        public string Title
        {
            get { return _title; }
            set
            {
                _title = value;
                OnChange();
            }
        }

        private BitmapImage _icon;
        [JsonIgnore]
        public BitmapImage Icon
        {
            get { return _icon; }
            set
            {
                _icon = value;
                OnChange();
            }
        }


        private double _scale;
        public double Scale
        {
            get
            {
                return _scale;
            }
            set
            {
                _scale = value;
                CaptionHeight = 22 * Scale;
                OnChange();
            }
        }

        private double _captionHeight;
        [JsonIgnore]
        public double CaptionHeight
        {
            get
            {
                return _captionHeight;
            }
            set
            {
                _captionHeight = value;
                OnChange();
            }
        }

        public ObservableCollection<Notepad> _list = new ObservableCollection<Notepad>();

        public JsonData()
        {
            ForeGroundColor = "#FFFFFFFF";
            BackGroundColor = "#FF181818";
            BackGroundColorLight = "#FF393939";
            BorderColor = "#FF9c1aff";

            Scale = 1;
            CaptionHeight = 22;
            Title = "TABlet";
            Icon = BitmapToImageSource(TABlet.Properties.Resources.Icon.ToBitmap());
        }

        public BitmapImage BitmapToImageSource(System.Drawing.Bitmap bitmap)
        {
            using (MemoryStream memory = new MemoryStream())
            {
                bitmap.Save(memory, System.Drawing.Imaging.ImageFormat.Png);
                memory.Position = 0;
                BitmapImage bitmapimage = new BitmapImage();
                bitmapimage.BeginInit();
                bitmapimage.StreamSource = memory;
                bitmapimage.CacheOption = BitmapCacheOption.OnLoad;
                bitmapimage.EndInit();

                return bitmapimage;
            }
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnChange([CallerMemberName] string propertyName = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}
