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
    public class SizeDAO:Provider
    {
        public static DataTable GetbyId(string mamh)
        {
            using (SqlConnection cnn = ConnectDataBase())
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("sp_Size_GetbyId", cnn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@mamh", mamh);
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
        public static void Insert(string mamh, string loaisize)
        {
            using (SqlConnection cnn = ConnectDataBase())
            {
                SqlCommand cmd = new SqlCommand("sp_Size_Insert", cnn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@mamh", mamh);
                cmd.Parameters.AddWithValue("@loaisize", loaisize);

                try
                {
                    cmd.ExecuteNonQuery();
                }
                catch (Exception)
                {

                }
            }
        }

        public static void Delete(string mamh)
        {
            using (SqlConnection cnn = ConnectDataBase())
            {
                SqlCommand cmd = new SqlCommand("sp_Size_Delete", cnn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@mamh", mamh);
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
