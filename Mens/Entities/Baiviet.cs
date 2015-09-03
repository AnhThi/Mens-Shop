using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class Baiviet
    {
        private string mabv, anhbaiviet, tieude, noidung;
        public Baiviet()
        {

        }
        public Baiviet(string _mabv, string _anhbaiviet, string _tieude, string _noidung, DateTime _ngayviet)
        {

        }

        public string Mabv
        {
            get { return mabv; }
            set { mabv = value; }
        }

        public string Anhbaiviet
        {
            get { return anhbaiviet; }
            set { anhbaiviet = value; }
        }

        public string Tieude
        {
            get { return tieude; }
            set { tieude = value; }
        }

        public string Noidung
        {
            get { return noidung; }
            set { noidung = value; }
        }
        DateTime ngayviet;

        public DateTime Ngayviet
        {
            get { return ngayviet; }
            set { ngayviet = value; }
        }
    }
}
