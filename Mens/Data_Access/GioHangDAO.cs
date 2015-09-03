using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using Entities;
using System.Data;

namespace Data_Access
{
    public class GioHangDAO:Provider
    {
        public static DataTable giohang_select()
        {
            using(SqlConnection cn= ConnectDataBase())
            {
                using(SqlCommand cmd= new SqlCommand("sp_giohang_select",cn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    DataTable dt = new DataTable();
                    try
                    {
                        dt.Load(cmd.ExecuteReader());
                    }
                    catch (Exception)
                    {

                        dt = null;
                    }
                    return dt;
                }
            }
        }

        public static DataTable GetbyEmail(string email)
        {
            using (SqlConnection cn = ConnectDataBase())
            {
                using (SqlCommand cmd = new SqlCommand("sp_Giohang_GetbyEmail", cn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@email", email);
                    DataTable dt = new DataTable();
                    try
                    {
                        dt.Load(cmd.ExecuteReader());
                    }
                    catch (Exception)
                    {
                        dt = null;
                    }
                    return dt;
                }
            }
        }
        public static DataTable giohang_selectBytinhtrang(bool tinhtrang)
        {
            using (SqlConnection cn = ConnectDataBase())
            {
                using (SqlCommand cmd = new SqlCommand("sp_giohang_select_Bytinhtrang", cn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue(@"tinhtrang", tinhtrang);
                    DataTable dt = new DataTable();
                    try
                    {
                        dt.Load(cmd.ExecuteReader());
                    }
                    catch (Exception)
                    {

                        dt = null;
                    }
                    return dt;
                }
            }
        }
        public static DataTable giohang_selectBySogh(string sogh)
        {
            using (SqlConnection cn = ConnectDataBase())
            {
                using (SqlCommand cmd = new SqlCommand("sp_giohang_selectBysogh", cn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue(@"sogh", sogh);
                    DataTable dt = new DataTable();
                    try
                    {
                        dt.Load(cmd.ExecuteReader());
                    }
                    catch (Exception)
                    {

                        dt = null;
                    }
                    return dt;
                }
            }
        }
        public static void giohang_insert(Gioihang gh)
        {
            using(SqlConnection cn = ConnectDataBase())
            {
                using(SqlCommand cmd= new SqlCommand("sp_giohang_insert",cn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue(@"sogh",gh.Sogh);
                    cmd.Parameters.AddWithValue(@"ngaylap",gh.Ngaylap);
                    cmd.Parameters.AddWithValue(@"email",gh.Email);
                    cmd.Parameters.AddWithValue(@"tenkh",gh.Tenkh);
                    cmd.Parameters.AddWithValue(@"sdt",gh.Sdt);
                    cmd.Parameters.AddWithValue(@"diachi",gh.Diachi);
                    cmd.Parameters.AddWithValue(@"ghichu",gh.Ghichu);
                    cmd.Parameters.AddWithValue(@"tinhtrang", gh.Tinhtrang);

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

        public static void giohang_delete(string sogh)
        {
            using (SqlConnection cn = ConnectDataBase())
            {
                using (SqlCommand cmd = new SqlCommand("sp_giohang_delete", cn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue(@"sogh", sogh);
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

        public static void Giohang_DeleteByEmail(string email)
        {
            using (SqlConnection cn = ConnectDataBase())
            {
                using (SqlCommand cmd = new SqlCommand("sp_Giohang_DeletebyEmail", cn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@email", email);
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
        public static void giohang_update(string sogh,bool tinhtrang)
        {
            using (SqlConnection cn = ConnectDataBase())
            {
                using (SqlCommand cmd = new SqlCommand("sp_giohang_update", cn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue(@"sogh", sogh);
                    cmd.Parameters.AddWithValue(@"tinhtrang", tinhtrang);
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
}
