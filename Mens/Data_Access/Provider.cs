using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Data_Access
{
    public class Provider
    {
        protected static SqlConnection ConnectDataBase()
        {
            string strcnn = ConfigurationManager.ConnectionStrings["cnn"].ConnectionString;
            SqlConnection cnn = new SqlConnection(strcnn);
            try
            {
                if (cnn != null && cnn.State == ConnectionState.Closed)
                {
                    cnn.Open();
                }
            }
            catch (Exception)
            {
                
            }
            return cnn;
        }
    }
}
