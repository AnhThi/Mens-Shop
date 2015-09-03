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
    public class MathangDAO:Provider
    {
        public static DataTable Get()
        {
            using (SqlConnection cnn = ConnectDataBase())
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("sp_Mathang_Get", cnn);
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

        public static DataTable SearchText(string keyword)
        {
            using (SqlConnection cnn = ConnectDataBase())
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("sp_Mathang_SearchText", cnn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@keyword", keyword);
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

        public static DataTable SearchNum(decimal keyword)
        {
            using (SqlConnection cnn = ConnectDataBase())
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("sp_Mathang_SearchNum", cnn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@keyword", keyword);
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

        public static DataTable GetSale()
        {
            using (SqlConnection cnn = ConnectDataBase())
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("sp_Mathang_Sales", cnn);
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
        public static DataTable GetSaleTop6()
        {
            using (SqlConnection cnn = ConnectDataBase())
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("sp_Mathang_SalesTop6", cnn);
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
        public static DataTable GetbySameCategory(string madm, string mamh)
        {
            using (SqlConnection cnn = ConnectDataBase())
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("sp_Mathang_GetbySameCategory", cnn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@madm", madm);
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
        public static DataTable GetbyNotSameCategory(string madm)
        {
            using (SqlConnection cnn = ConnectDataBase())
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("sp_Mathang_GetbyNotSameCategory", cnn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@madm", madm);

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
        public static DataTable GetbyId(string mamh)
        {
            using (SqlConnection cnn = ConnectDataBase())
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("sp_Mathang_GetbyId", cnn);
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

        public static DataTable GetbyDM(string dm)
        {
            using (SqlConnection cnn = ConnectDataBase())
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("sp_Mathang_GetbyDM", cnn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@madm", dm);

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

        public static DataTable GetbyDMTop1(string dm)
        {
            using (SqlConnection cnn = ConnectDataBase())
            {
                DataTable dt = new DataTable();
                SqlCommand cmd = new SqlCommand("sp_Mathang_GetbyDMTop1", cnn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@madm", dm);

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

        public static void Insert(Mathang mh)
        {
            using (SqlConnection cnn = ConnectDataBase())
            {
                SqlCommand cmd = new SqlCommand("sp_Mathang_Insert", cnn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@mamh", mh.Mamh);
                cmd.Parameters.AddWithValue("@tenmh", mh.Tenmh);
                cmd.Parameters.AddWithValue("@hinhdd", mh.Hinhdd);
                cmd.Parameters.AddWithValue("@madm", mh.Madm);
                cmd.Parameters.AddWithValue("@mota", mh.Mota);
                cmd.Parameters.AddWithValue("@giaban", mh.Giaban);
                cmd.Parameters.AddWithValue("@giagiam", mh.Giagiam);

                try
                {
                    cmd.ExecuteNonQuery();
                }
                catch (Exception)
                {

                }
            }
        }

        public static void Update(Mathang mh)
        {
            using (SqlConnection cnn = ConnectDataBase())
            {
                SqlCommand cmd = new SqlCommand("sp_Mathang_Update", cnn);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@mamh", mh.Mamh);
                cmd.Parameters.AddWithValue("@tenmh", mh.Tenmh);
                cmd.Parameters.AddWithValue("@giaban", mh.Giaban);
                cmd.Parameters.AddWithValue("@giagiam", mh.Giagiam);

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
            using (SqlConnection cnn=ConnectDataBase())
            {
                SqlCommand cmd = new SqlCommand("sp_Mathang_Delete", cnn);
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
