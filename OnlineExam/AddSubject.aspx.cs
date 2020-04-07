using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class AddSubject : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["teststring"].ConnectionString);

    public int IncrementId(string tblName, string fieldName)
    {
        int val = 0;

        try
        {
            con.Open();
            string sel = "select top 1 " + fieldName + " from " + tblName + " ORDER BY " + fieldName + " DESC";
            cmd = new SqlCommand(sel, con);
            val = (Int32)cmd.ExecuteScalar();
            val += 1;
        }
        catch (NullReferenceException)
        {
            return 1;
        }
        catch (Exception)
        {
            // Response.Write(a);
            Response.Write(@"<script language='javascript'>alert('Error...Cant retrieve id');</script>");

        }
        finally
        {
            con.Close();
        }

        return val;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        txtID.Text = IncrementId("tblSubject", "SubjectId").ToString();
    }


    protected void btnAddsubject_Click(object sender, EventArgs e)
    {
        try
        {
            con.Open();
            string ins = "insert into tblSubject values('" + txtID.Text + "','" + txtSubject.Text + "')";
            cmd = new SqlCommand(ins, con);

            cmd.ExecuteNonQuery();
            Response.Write("<script language='javascript'>alert('Subject added successfully');</script>");

        }
        catch (Exception)
        {

            Response.Write(@"<script language='javascript'>alert('Subject already exists');</script>");
            //Response.Write(ex);

        }
        finally
        {
            con.Close();

        }
        Server.Transfer("AddSubject.aspx");
    }

    protected void lnkDelete_Click(object sender, EventArgs e)
    {

    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {

        try
        {
            con.Open();
            string del = "delete from tblSubject where SubjectName='" + txtDelete.Text + "'";
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
            Server.Transfer("AddSubject.aspx");
        }
    }

    protected void lnkAddSubject_Click(object sender, EventArgs e)
    {
        pnlAdd.Visible = true;
        pnlDelete.Visible = false;

    }
    protected void ViewPanel()
    {

    }
}