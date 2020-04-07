using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;
namespace OnlineExam
{
    public class ProcessDb
    {
        string  connect = ConfigurationManager.ConnectionStrings["teststring"].ToString();
        public static bool RunActionQuery (string sql)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["teststring"].ToString());
            SqlCommand com = new SqlCommand(sql, con);
            try
            {
                con.Open();
                com.ExecuteNonQuery();
                com.Dispose();
                con.Close();
                return true;
            }
            catch (Exception ex)
            {
                string error = ex.Message;
            }
            finally
            {
                com.Dispose();
                con.Close();
            }
            return false;
        }
    }
}