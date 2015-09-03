using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using Entities;

namespace Data_Access
{
    public class CTGioHangDAO:Provider
    {
        public static void CTGioHang_insert(ChitietGiohang ct)
        {
            using(SqlConnection cn=ConnectDataBase())
            {
                using(SqlCommand cmd= new SqlCommand("sp_ctgiohang_insert",cn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue(@"sogh", ct.Sogh);
                    cmd.Parameters.AddWithValue(@"mamh", ct.Mamh);
                    cmd.Parameters.AddWithValue(@"size", ct.Size);
                    cmd.Parameters.AddWithValue(@"sl", ct.Sl);
                    cmd.Parameters.AddWithValue(@"dgia", ct.Dongia);

                    try
                    {
                        cmd.ExecuteNonQuery();
                    }
                    catch (Exception)
                    {
                        
                        
                    }
                }
            }
        }

        public static DataTable GetbyId(string sogh)
        {
            using (SqlConnection cnn = ConnectDataBase())
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("sp_ChiTietGioHang_GetbyId", cnn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@sogh", sogh);
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
