using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class TestSettings : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["teststring"].ConnectionString);
    SqlCommand cmd;
    SqlDataReader reader;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnTest_Click(object sender, EventArgs e)
    {

        int num = 1;
        string SelectTestSettings = "Select * from tblTestSetting";
        string ins = "insert into tblTestSetting values(" + num + "," + txtTime.Text + "," + txtQuestions.Text + ")";
        string update = "Update tblTestSetting set TimeLimit=" + txtTime.Text + ", NumberOfQuestions= " + txtQuestions.Text + " where TestId=" + 1 + "";

        try
        {
            con.Open();
            cmd = new SqlCommand(SelectTestSettings, con);
            reader = cmd.ExecuteReader();

            if (!reader.HasRows)
            {
                reader.Close();
                cmd = new SqlCommand(ins, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script language='javascript'>alert('Time and Questions are set');</script>");
            }
            else
            {
                reader.Close();
                cmd = new SqlCommand(update, con);
                cmd.ExecuteNonQuery();
                Response.Write("<script language='javascript'>alert('Time and Questions are set');</script>");
            }

        }
        catch (Exception ex)
        {

            Response.Write(@"<script language='javascript'>alert('Cant Set Time and Questions');</script>");
            Response.Write(ex);

        }
        finally
        {
            con.Close();

        }
    }
}