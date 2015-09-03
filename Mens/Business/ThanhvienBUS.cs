using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using System.Data.SqlClient;
using Data_Access;
using Entities;


namespace Business
{
    public class ThanhvienBUS
    {
        public static DataTable Thanhvien_Login(string email, string matkhau)
        {
            return ThanhvienDAO.Login(email, matkhau);
        }
        public static void Thanhvien_Active(string key)
        {
            ThanhvienDAO.Active(key);
        }
        public static void Thanhvien_Set0DiemTichLuy(string email)
        {
            ThanhvienDAO.Set0DiemTichLuy(email);
        }
        public static void Thanhvien_SumDiemTichLuy(string email, string cong)
        {
            ThanhvienDAO.SumDiemTichLuy(email, cong);
        }
        public static DataTable Thanhvien_Get()
        {
            return ThanhvienDAO.Get();
        }

        public static DataTable Thanhvien_GetbyId(string email)
        {
            return ThanhvienDAO.GetbyId(email);
        }

        public static int Thanhvien_Insert(Thanhvien tv)
        {
            return ThanhvienDAO.Insert(tv);
        }

        public static void Thanhvien_Lock(string email)
        {
            ThanhvienDAO.Lock(email);
        }

        public static void Thanhvien_Update(Thanhvien tv)
        {
            ThanhvienDAO.Update(tv);
        }

        public static void Thanhvien_UpdatePassword(string email, string matkhau)
        {
            ThanhvienDAO.UpdatePassword(email, matkhau);
        }
    }
}
