using System;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Text.RegularExpressions;
using Newtonsoft.Json;

namespace TABlet
{
    public class Notepad : INotifyPropertyChanged
    {

        private string _title;
        public string Title
        {
            get { return _title; }
            set
            {
                _title = value;
                OnChange();
            }
        }

        private string _content;
        public string Content
        {
            get { return _content; }
            set
            {
                _content = value;
                GetStats(value);
                OnChange();
            }
        }

        private string _chars;
        [JsonIgnore]
        public string Chars
        {
            get { return _chars; }
            set
            {
                _chars = value;
                OnChange();
            }
        }

        private string _words;
        [JsonIgnore]
        public string Words
        {
            get { return _words; }
            set
            {
                _words = value;
                OnChange();
            }
        }

        private string _lines;
        [JsonIgnore]
        public string Lines
        {
            get { return _lines; }
            set
            {
                _lines = value;
                OnChange();
            }
        }

        public Guid Guid { get; set; }

        public Notepad(string title, string content)
        {
            Guid = Guid.NewGuid();
            this.Title = title;
            this.Content = content;
        }

        private void GetStats(string value)
        {
            Chars = "Length: " + Regex.Replace(value, "\t|\n|\r", "").Length;

            string[] words = value.Split(new char[] {' '}, StringSplitOptions.RemoveEmptyEntries);
            Words = "Words: " + words.Length;

            string[] lines = value.Split(new string[] { Environment.NewLine }, StringSplitOptions.None);
            Lines = "Lines: " + lines.Length;
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnChange([CallerMemberName] string propertyName = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

    }

}
