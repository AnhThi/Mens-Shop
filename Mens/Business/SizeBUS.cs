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
    public class SizeBUS
    {
        public static DataTable Size_GetbyId(string mamh)
        {
            return SizeDAO.GetbyId(mamh);
        }
        public static void Size_Insert(string mamh, string loaisize)
        {
            SizeDAO.Insert(mamh, loaisize);
        }

        public static void Size_Delete(string mamh)
        {
            SizeDAO.Delete(mamh);
        }
    }
}
