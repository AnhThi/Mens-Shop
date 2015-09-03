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
    public class ThanhvienDAO:Provider
    {
        public static DataTable Login(string email, string matkhau)
        {
            using (SqlConnection cnn = ConnectDataBase())
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("sp_Thanhvien_Login", cnn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@matkhau", matkhau);

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
        public static void Active(string key)
        {
            using (SqlConnection cnn=ConnectDataBase())
            {
                SqlCommand cmd = new SqlCommand("sp_Thanhvien_Active", cnn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@makichhoat", key);
                try
                {
                    cmd.ExecuteNonQuery();
                }
                catch (Exception)
                {

                }
            }
        }

        public static void SumDiemTichLuy(string email, string cong)
        {
            using (SqlConnection cnn = ConnectDataBase())
            {
                SqlCommand cmd = new SqlCommand("sp_Thanhvien_SumDiemTichLuy", cnn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@cong", cong);
                try
                {
                    cmd.ExecuteNonQuery();
                }
                catch (Exception)
                {

                }
            }
        }

        public static void Set0DiemTichLuy(string email)
        {
            using (SqlConnection cnn = ConnectDataBase())
            {
                SqlCommand cmd = new SqlCommand("sp_Thanhvien_Set0DiemTichLuy", cnn);
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
        public static DataTable Get()
        {
            using (SqlConnection cnn=ConnectDataBase())
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("sp_Thanhvien_Get", cnn);
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

        public static DataTable GetbyId(string email)
        {
            using (SqlConnection cnn = ConnectDataBase())
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("sp_Thanhvien_GetbyId", cnn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@email", email);
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

        public static int Insert(Thanhvien tv)
        {
            using (SqlConnection cnn = ConnectDataBase())
            {
                SqlCommand cmd = new SqlCommand("sp_Thanhvien_Insert", cnn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@email", tv.Email);
                cmd.Parameters.AddWithValue("@matkhau", tv.Matkhau);
                cmd.Parameters.AddWithValue("@hoten", tv.Hoten);
                cmd.Parameters.AddWithValue("@diachi", tv.Diachi);
                cmd.Parameters.AddWithValue("@sdt", tv.Sdt);
                cmd.Parameters.AddWithValue("@kichhoat", tv.Kichhoat);
                cmd.Parameters.AddWithValue("@makichhoat", tv.Makichhoat);
                cmd.Parameters.AddWithValue("@diemtichluy", tv.Diemtichluy);

                cmd.Parameters.Add("@check", SqlDbType.Int).Direction = ParameterDirection.ReturnValue;

                try
                {
                    cmd.ExecuteNonQuery();
                    
                    
                }
                catch (Exception)
                {

                }
                int check = (int)cmd.Parameters["@check"].Value;
                return check;
            }
        }

        public static void Lock(string email)
        {
            using (SqlConnection cnn = ConnectDataBase())
            {
                SqlCommand cmd = new SqlCommand("sp_Thanvien_Lock", cnn);
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

        public static void Update(Thanhvien tv)
        {
            using (SqlConnection cnn = ConnectDataBase())
            {
                SqlCommand cmd = new SqlCommand("sp_Thanhvien_Update", cnn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@email", tv.Email);
                cmd.Parameters.AddWithValue("@matkhau", tv.Matkhau);
                cmd.Parameters.AddWithValue("@hoten", tv.Hoten);
                cmd.Parameters.AddWithValue("@diachi", tv.Diachi);
                cmd.Parameters.AddWithValue("@sdt", tv.Sdt);

                try
                {
                    cmd.ExecuteNonQuery();
                }
                catch (Exception)
                {

                }
            }
        }

        public static void UpdatePassword(string email, string matkhau)
        {
            using (SqlConnection cnn = ConnectDataBase())
            {
                SqlCommand cmd = new SqlCommand("sp_Thanhvien_UpdatePassword", cnn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@matkhau", matkhau);

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
