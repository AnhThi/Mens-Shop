using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class Gioihang
    {
        public Gioihang()
        {

        }
        public Gioihang(string _sogh, DateTime _ngaylap,string _email)
        {
            this.Sogh = _sogh;
            this.Ngaylap = _ngaylap;
            this.Email = _email;
        }
        string sogh, email;

        public string Sogh
        {
            get { return sogh; }
            set { sogh = value; }
        }

        public string Email
        {
            get { return email; }
            set { email = value; }
        }
        DateTime ngaylap;

        public DateTime Ngaylap
        {
            get { return ngaylap; }
            set { ngaylap = value; }

        }
        string tenkh;

        public string Tenkh
        {
            get { return tenkh; }
            set { tenkh = value; }
        }
        string diachi;

        public string Diachi
        {
            get { return diachi; }
            set { diachi = value; }
        }
        string ghichu;

        public string Ghichu
        {
            get { return ghichu; }
            set { ghichu = value; }
        }
        string sdt;

        public string Sdt
        {
            get { return sdt; }
            set { sdt = value; }
        }
        bool tinhtrang;

        public bool Tinhtrang
        {
            get { return tinhtrang; }
            set { tinhtrang = value; }
        }

    }
}
