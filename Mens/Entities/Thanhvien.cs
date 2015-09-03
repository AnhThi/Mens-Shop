using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class Thanhvien
    {
        string email, matkhau, hoten, diachi, sdt, kichhoat, makichhoat;
        int diemtichluy;

        public Thanhvien()
        {

        }

        public Thanhvien(string _email, string _matkhau, string _hoten, string _diachi, string _sdt, string _kichhoat, string _makichhoat, int _diemtichluy)
        {
            this.Email = _email;
            this.Matkhau = _matkhau;
            this.Hoten = _hoten;
            this.Diachi = _diachi;
            this.Sdt = _sdt;
            this.Kichhoat = _kichhoat;
            this.Makichhoat = _makichhoat;
            this.Diemtichluy = _diemtichluy;
        }
        public string Email
        {
            get { return email; }
            set { email = value; }
        }

        public string Matkhau
        {
            get { return matkhau; }
            set { matkhau = value; }
        }

        public string Hoten
        {
            get { return hoten; }
            set { hoten = value; }
        }

        public string Diachi
        {
            get { return diachi; }
            set { diachi = value; }
        }

        public string Sdt
        {
            get { return sdt; }
            set { sdt = value; }
        }

        public string Kichhoat
        {
            get { return kichhoat; }
            set { kichhoat = value; }
        }

        public string Makichhoat
        {
            get { return makichhoat; }
            set { makichhoat = value; }
        }

        public int Diemtichluy
        {
            get { return diemtichluy; }
            set { diemtichluy = value; }
        }
    }
}
