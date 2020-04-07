using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Deletequestion : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["teststring"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!(Session["Username"] != null) && (Session["Usertype"].ToString() == "Admin"))
        {
            Response.Redirect("Home.aspx");
        }
    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        int sno = Convert.ToInt32(txtSno.Text);
        try
        {
            con.Open();
            string del = "delete from tblQuestions where SerialNumber='" + sno + "'";
            cmd = new SqlCommand(del, con);

            cmd.ExecuteNonQuery();
            Response.Write("<script language='javascript'>alert('Deleted successfully');</script>");


        }
        catch (Exception)
        {

            Response.Write(@"<script language='javascript'>alert('Error...Not Deleted');</script>");
            //Response.Write(ex);

        }
        finally
        {
            con.Close();
            Server.Transfer("Deletequestion.aspx");
        }
    }
}