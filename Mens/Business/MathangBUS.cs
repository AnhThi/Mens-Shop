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
    public class MathangBUS
    {
        public static DataTable Mathang_Get()
        {
            return MathangDAO.Get();
        }
        public static DataTable Mathang_SearchText(string keyword)
        {
            return MathangDAO.SearchText(keyword);
        }
        public static DataTable Mathang_SearchNum(decimal keyword)
        {
            return MathangDAO.SearchNum(keyword);
        }
        public static DataTable Mathang_GetSale()
        {
            return MathangDAO.GetSale();
        }
        public static DataTable Mathang_GetSaleTop6()
        {
            return MathangDAO.GetSaleTop6();
        }

        public static DataTable Mathang_GetbySameCategory(string madm, string mamh)
        {
            return MathangDAO.GetbySameCategory(madm, mamh);
        }
        public static DataTable Mathang_GetbyNotSameCategory(string madm)
        {
            return MathangDAO.GetbyNotSameCategory(madm);
        }

        public static DataTable Mathang_GetbyId(string mamh)
        {
            return MathangDAO.GetbyId(mamh);
        }

        public static DataTable Mathang_GetbyDM(string dm)
        {
            return MathangDAO.GetbyDM(dm);
        }

        public static DataTable Mathang_GetbyDMTop1(string dm)
        {
            return MathangDAO.GetbyDMTop1(dm);
        }

        public static void Mathang_Insert(Mathang mh)
        {
            MathangDAO.Insert(mh);
        }

        public static void Mathang_Delete(string mamh)
        {
            MathangDAO.Delete(mamh);
        }

        public static void Mathang_Update(Mathang mh)
        {
            MathangDAO.Update(mh);
        }
    }
}
