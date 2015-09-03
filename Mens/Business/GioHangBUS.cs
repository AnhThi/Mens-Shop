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
    public class GioHangBUS
    {
        public static void giohang_insert(Gioihang gh)
        {
            GioHangDAO.giohang_insert(gh);
        }
        public static DataTable giohang_select()
        {
            return GioHangDAO.giohang_select();
        }
        public static DataTable Giohang_GetbyEmail(string email)
        {
            return GioHangDAO.GetbyEmail(email);
        }
        public static void giohang_delete(string sogh)
        {
            GioHangDAO.giohang_delete(sogh);
        }
        public static void Giohang_DeletebyEmail(string email)
        {
            GioHangDAO.Giohang_DeleteByEmail(email);
        }
        public static void giohang_update(string sogh,bool tinhtrang)
        {
            GioHangDAO.giohang_update(sogh, tinhtrang);
        }
        public static DataTable giohang_selectBytinhtrang(bool tinhtrang)
        {
            return GioHangDAO.giohang_selectBytinhtrang(tinhtrang);
        }
        public static DataTable giohang_selectBySogh(string sogh)
        {
            return GioHangDAO.giohang_selectBySogh(sogh);
        }
    }
}
