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
    public class BaivietBUS
    {
        public static DataTable Baiviet_Get()
        {
            return BaivietDAO.Get();
        }

        public static DataTable Baiviet_GetbyId(string Id)
        {
            return BaivietDAO.GetbyId(Id);
        }

        public static void Baiviet_Insert(Baiviet bv)
        {
            BaivietDAO.Insert(bv);
        }

        public static void Baiviet_Delete(Baiviet bv)
        {
            BaivietDAO.Delete(bv);
        }
    }
}
