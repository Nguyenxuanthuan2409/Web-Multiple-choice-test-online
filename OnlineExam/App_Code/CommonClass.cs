using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Configuration;


/// <summary>
/// Summary description for Class1
/// </summary>
namespace OnlineExam
{
    public class CommonClass
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["teststring"].ConnectionString);

        SqlCommand command;
        SqlDataReader reader;

        public CommonClass()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        public Boolean SelectUser(String username)
        {

            String SelectUsername = "Select Username from tblUserDetails where Username='" + username + "'";
            con.Open();
            command = new SqlCommand(SelectUsername, con);
            reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                return true;
            }
            else
            {
                return false;
            }
        }


    }
}