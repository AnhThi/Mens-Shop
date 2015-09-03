using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class Mathang
    {
        string mamh, tenmh, hinhdd, madm, mota;
        public Mathang()
        {

        }

        public Mathang(string _madm, string _tendm, string _hinhdd, string _danhmuc, string _mota, decimal _giaban, decimal _giagiam)
        {
            this.Madm = _madm;
            this.Tenmh = _tendm;
            this.Hinhdd = _hinhdd;
            this.Madm = _madm;
            this.Mota = _mota;
            this.Giaban = _giaban;
            this.Giagiam = _giagiam;
        }

        public string Mamh
        {
            get { return mamh; }
            set { mamh = value; }
        }

        public string Tenmh
        {
            get { return tenmh; }
            set { tenmh = value; }
        }

        public string Hinhdd
        {
            get { return hinhdd; }
            set { hinhdd = value; }
        }

        public string Madm
        {
            get { return madm; }
            set { madm = value; }
        }

        public string Mota
        {
            get { return mota; }
            set { mota = value; }
        }
        decimal giaban, giagiam;

        public decimal Giaban
        {
            get { return giaban; }
            set { giaban = value; }
        }

        public decimal Giagiam
        {
            get { return giagiam; }
            set { giagiam = value; }
        }
    }
}
