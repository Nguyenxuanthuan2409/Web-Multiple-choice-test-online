using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Home : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["teststring"].ConnectionString);

    SqlCommand command;
    SqlDataReader reader;
    String VerifyUser;
    String VerifyAdmin;
    String username;
    String SecurityQus;
    String SecurityAns;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] != null)
        {
            Session.Abandon();
        }

        VerifyUser = "Select Username from tblUserDetails where Username='" + txtUsername.Text + "' and Password='" + txtPassword.Text + "'";
        VerifyAdmin = "Select AdminName from tblAdminDetails where AdminName='" + txtUsername.Text + "' and Password='" + txtPassword.Text + "'";

    }



    protected void lnkForgetPassword_Click(object sender, EventArgs e)
    {

    }

    protected void btnSign_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            con.Open();
            command = new SqlCommand(VerifyAdmin, con);
            reader = command.ExecuteReader();
            if (reader.HasRows)
            {

                while (reader.Read())
                {
                    username = reader[0].ToString();
                    if ((username == txtUsername.Text.Trim()))
                    {
                        Session["Username"] = username;
                        Session["Usertype"] = "Admin";
                        Response.Redirect("AdminHome.aspx");
                    }
                    else
                    {
                        reader.Close();
                        lblComments.Text = "empty";
                    }
                }

            }
            else
            {
                reader.Close();
                command = new SqlCommand(VerifyUser, con);
                username = (String)command.ExecuteScalar();

                if (username.Trim() == txtUsername.Text.Trim())
                {
                    Session["Username"] = username;
                    Session["Usertype"] = "User";
                    Response.Redirect("Skilltest.aspx");
                }
                else
                {
                    lblComments.Text = "Check Username or Password";
                }
            }

        }
        catch (Exception exe)
        {
            lblComments.Text = "Invalid Username and Password";
        }
        finally
        {
            // reader.Close();
            con.Close();
        }

    }
    protected void lnkForgot_Click(object sender, EventArgs e)
    {
        Response.Redirect("Forgotpass.aspx");
    }
}