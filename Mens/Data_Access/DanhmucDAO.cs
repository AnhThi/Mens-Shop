using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


using System.Data;
using System.Data.SqlClient;
using Entities;

namespace Data_Access
{
    public class DanhmucDAO:Provider
    {
        public static DataTable Get()
        {
            using (SqlConnection cnn=ConnectDataBase())
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("sp_Danhmuc_Get", cnn);
                cmd.CommandType = CommandType.StoredProcedure;
                try
                {
                    dt.Load(cmd.ExecuteReader());
                }
                catch (Exception)
                {
                    
                }
                return dt;
            }
        }
    }
}
