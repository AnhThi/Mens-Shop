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
    public class BaivietDAO:Provider
    {
        public static DataTable Get()
        {
            using (SqlConnection cnn=ConnectDataBase())
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("sp_Baiviet_Get", cnn);
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

        public static DataTable GetbyId(string id)
        {
            using(SqlConnection cnn=ConnectDataBase())
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("sp_Baiviet_GetbyId", cnn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@id", id);
                try
                {
                    dt.Load(cmd.ExecuteReader());
                }
                catch (Exception)
                {
                    
                    throw;
                }
                return dt;
            }
        }

        public static void Insert(Baiviet bv)
        {
            using (SqlConnection cnn=ConnectDataBase())
            {
                SqlCommand cmd = new SqlCommand("sp_Baiviet_Insert", cnn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@mabv", bv.Mabv);
                cmd.Parameters.AddWithValue("@ngayviet", bv.Ngayviet);
                cmd.Parameters.AddWithValue("@anhbaiviet", bv.Anhbaiviet);
                cmd.Parameters.AddWithValue("@tieude", bv.Tieude);
                cmd.Parameters.AddWithValue("@noidung", bv.Noidung);

                try
                {
                    cmd.ExecuteNonQuery();
                }
                catch (Exception)
                {
                    
                }
            }
        }

        public static void Delete(Baiviet bv)
        {
            using (SqlConnection cnn = ConnectDataBase())
            {
                SqlCommand cmd = new SqlCommand("sp_Baiviet_Delete", cnn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@mabv", bv.Mabv);
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
