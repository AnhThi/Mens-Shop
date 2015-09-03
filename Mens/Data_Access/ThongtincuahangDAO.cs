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
    public class ThongtincuahangDAO:Provider
    {
        public static DataTable Get()
        {
            using (SqlConnection cnn = ConnectDataBase())
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("sp_Thongtincuahang_Get", cnn);
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

        public static void Update(Thongtincuahang ttch)
        {
            using (SqlConnection cnn = ConnectDataBase())
            {
                SqlCommand cmd = new SqlCommand("sp_Thongtincuahang_Update", cnn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@diachi", ttch.Diachi);
                cmd.Parameters.AddWithValue("@email", ttch.Email);
                cmd.Parameters.AddWithValue("@sodienthoai", ttch.Sdt);
                cmd.Parameters.AddWithValue("@kinhdo", ttch.Kinhdo);
                cmd.Parameters.AddWithValue("@vido", ttch.Vido);

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
}
