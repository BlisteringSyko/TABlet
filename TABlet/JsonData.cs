using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Media.Imaging;
using Newtonsoft.Json;

namespace TABlet
{
    public class JsonData : INotifyPropertyChanged
    {
        //public string BackGroundColor;
        //public string BackGroundColorLight;
        //public string ForeGroundColor;
        //public string BorderColor;

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
        }//doh

        public ObservableCollection<notepad> _list = new ObservableCollection<notepad>();

        public JsonData()
        {
            Scale = 1;
            CaptionHeight = 22;
            Title = "TABlet";
            Icon = BitmapToImageSource(TABlet.Properties.Resources.Icon.ToBitmap());
        }

        public BitmapImage BitmapToImageSource(Bitmap bitmap)
        {
            using (MemoryStream memory = new MemoryStream())
            {
                bitmap.Save(memory, System.Drawing.Imaging.ImageFormat.Bmp);
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
