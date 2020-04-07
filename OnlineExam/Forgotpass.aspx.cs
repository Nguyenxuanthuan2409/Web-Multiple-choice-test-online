using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

public partial class Forgotpass : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["teststring"].ConnectionString);
    SqlCommand command;
    SqlDataReader reader;
    String SecurityQus;
    String Username;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblusername.Visible = false;
        lblwrongans.Visible = false;
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        SecurityQus = "Select SecurityQuestion from tblUserDetails where username='" + txtForgetUser.Text.Trim() + "'";
        lblForgetMessage.Text = "";
        try
        {
            con.Open();
            command = new SqlCommand(SecurityQus, con);
            reader = command.ExecuteReader();
            if (reader.HasRows)
            {

                while (reader.Read())
                {
                    txtSecurityQus.Text = reader["SecurityQuestion"].ToString();
                }
            }
            else
            {
                lblusername.Visible = true;
                lblusername.Text = "Invalid User.";
                txtSecurityQus.Text = "";

            }


        }
        catch (NullReferenceException exe)
        {
            lblForgetMessage.Text = exe.ToString();

        }
        catch (Exception ex)
        {
            lblForgetMessage.Text = ex.ToString();
        }
        finally
        {
            reader.Close();
            con.Close();
        }

    }

    protected void txtSecurityAns_TextChanged(object sender, EventArgs e)
    {
        string YourAns = txtSecurityAns.Text.Trim();
        string Recover = "Select * from tblUserDetails where username='" + txtForgetUser.Text + "'";
        try
        {
            con.Open();
            command = new SqlCommand(Recover, con);
            reader = command.ExecuteReader();
            while (reader.Read())
            {
                string DBAnswer = reader["SecurityAnswer"].ToString().Trim();


                if (DBAnswer.Equals(YourAns))
                {
                    Username = reader["Username"].ToString();
                    // Response.Redirect("Skilltest.aspx");
                    txtNewpassword.Enabled = true;
                    txtConfirmpassword.Enabled = true;

                }
                else
                {

                    lblwrongans.Visible = true;
                    lblwrongans.Text = "Wrong answer";
                    txtNewpassword.Enabled = false;
                    txtConfirmpassword.Enabled = false;
                }
            }
        }
        catch (NullReferenceException exe)
        {
            lblForgetMessage.Text = exe.ToString();

        }
        catch (Exception ex)
        {
            lblForgetMessage.Text = ex.ToString();
        }

        finally
        {
            reader.Close();
            con.Close();
        }
    }

    protected void imgChangePass_Click(object sender, ImageClickEventArgs e)
    {
        String update = "Update tblUserDetails set Password ='" + txtNewpassword.Text.Trim() + "' where UserName = '" + Username + "'";
        try
        {
            con.Open();
            command = new SqlCommand(update, con);
            command.ExecuteNonQuery();


            ClearText();
            lblForgetMessage.Text = "New password set successfully." + "<br/><a  href='Home.aspx'>Click here</a> to login ";


        }
        catch (Exception exe)
        {
            lblForgetMessage.Text = "Error" + exe;
        }
        finally
        {
            con.Close();
        }
    }
    public void ClearText()
    {
        txtConfirmpassword.Text = "";
        txtNewpassword.Text = "";
        txtSecurityAns.Text = "";
        txtSecurityQus.Text = "";
    }
}