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
    public class ThongtincuahangBUS
    {
        public static DataTable Thongtincuahang_Get()
        {
            return ThongtincuahangDAO.Get();
        }
        
        public static void Thongtincuahang_Update(Thongtincuahang ttch)
        {
            ThongtincuahangDAO.Update(ttch);
        }
    }
}
