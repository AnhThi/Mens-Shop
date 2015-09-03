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
    public class DanhmucBUS
    {
        public static DataTable Danhmuc_Get()
        {
            return DanhmucDAO.Get();
        }
    }
}
