using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entities
{
    public class Thongtincuahang
    {
        string diachi, email, sdt, kinhdo, vido;

        public Thongtincuahang()
        {

        }

        public Thongtincuahang(string _diachi, string _email, string _sdt, string _kinhdo, string _vido)
        {
            this.Diachi = _diachi;
            this.Email = _email;
            this.Sdt = _sdt;
            this.Kinhdo = _kinhdo;
            this.Vido = _vido;
        }

        public string Diachi
        {
            get { return diachi; }
            set { diachi = value; }
        }

        public string Email
        {
            get { return email; }
            set { email = value; }
        }

        public string Sdt
        {
            get { return sdt; }
            set { sdt = value; }
        }

        public string Kinhdo
        {
            get { return kinhdo; }
            set { kinhdo = value; }
        }

        public string Vido
        {
            get { return vido; }
            set { vido = value; }
        }
    }
}
