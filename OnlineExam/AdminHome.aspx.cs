using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
public partial class AdminHome : System.Web.UI.Page
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

        if ((Session["Username"] != null) && (Session["Usertype"].ToString() == "Admin"))
        {
            lblSno.Text = IncrementId("tblQuestions", "SerialNumber").ToString();
        }
        else
        {
            Session.Abandon();
            Response.Redirect("Home.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int sno = Convert.ToInt32(lblSno.Text);

        try
        {
            con.Open();
            string ins = "insert into tblQuestions values('" + sno + "','" + ddlSubject.SelectedValue + "','" + txtQuestion.Text + "','" + txtAnswera.Text + "','" + txtAnswerb.Text + "','" + txtAnswerc.Text + "','" + txtAnswerd.Text + "','" + txtCorrectAnswer.Text + "','" + choose.SelectedValue + "')";
            cmd = new SqlCommand(ins, con);

            cmd.ExecuteNonQuery();
            Response.Write("<script language='javascript'>alert('Questions & Answers added successfully');</script>");


        }
        catch (Exception ex)
        {
            Response.Write(ex);
            Response.Write(@"<script language='javascript'>alert('Error...Not Added');</script>");


        }
        finally
        {
            con.Close();
        }
    }

    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtQuestion.Text = "";
        txtAnswera.Text = "";
        txtAnswerb.Text = "";
        txtAnswerc.Text = "";
        txtAnswerd.Text = "";
        txtCorrectAnswer.Text = "";

    }
        
}