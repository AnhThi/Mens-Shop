using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Entities;
using Data_Access;
using System.Data;

namespace Business
{
    public class CTGioHangBUS
    {
        public static void CTGioHang_insert(ChitietGiohang ct)
        {
            CTGioHangDAO.CTGioHang_insert(ct);
        }

        public static DataTable GTGioHang_GetbyId(string sogh)
        {
            return CTGioHangDAO.GetbyId(sogh);
        }
    }
}
