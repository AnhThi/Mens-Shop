using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class ChitietGiohang
    {
        public ChitietGiohang()
        {

        }
        public ChitietGiohang(string _sogh, string _mamh, decimal _dongia, int _soluong)
        {
            this.Sogh = _sogh;
            this.Mamh = _mamh;
            this.Dongia = _dongia;
            this.Sl = _soluong;
        }
        string sogh, mamh;

        public string Sogh
        {
            get { return sogh; }
            set { sogh = value; }
        }

        public string Mamh
        {
            get { return mamh; }
            set { mamh = value; }
        }

        int sl;

        public int Sl
        {
            get { return sl; }
            set { sl = value; }
        }
        decimal dongia;

        public decimal Dongia
        {
            get { return dongia; }
            set { dongia = value; }
        }
        string size;

        public string Size
        {
            get { return size; }
            set { size = value; }
        }

    }
}
