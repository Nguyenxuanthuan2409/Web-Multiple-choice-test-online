using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class Register : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["teststring"].ConnectionString);

    SqlCommand command;
    SqlDataReader reader;
    static int NewUserId;
    protected void Page_Load(object sender, EventArgs e)
    {
        NewUserId = CreateUserID();
        lblSuccess.Visible = false;
        lblMessage.Visible = false;
    }

    protected int CreateUserID()
    {
        string SelectLastUserId = "Select top 1 UserId from tblUserDetails order by UserId desc";
        int LastUserId = 0;
        int NewUserId = 0;
        try
        {
            con.Open();
            command = new SqlCommand(SelectLastUserId, con);
            LastUserId = (Int32)command.ExecuteScalar();
            NewUserId = LastUserId + 1;
            return NewUserId;
        }
        catch (NullReferenceException nul)
        {
            return 1;
        }
        catch (Exception ex)
        {
            lblMessage.Text = ex.Message;
        }
        finally
        {
            con.Close();
        }
        return NewUserId;
    }

    protected void txtUsername_TextChanged(object sender, EventArgs e)
    {
        Boolean exists = SelectUser(txtUsername.Text.Trim());
        if (exists == true)
        {
            lblMessage.Text = "Username Exists";
            txtUsername.Text = "";
            txtUsername.Focus();

        }


    }
    protected Boolean SelectUser(String username)
    {

        String SelectUsername = "Select Username from tblUserDetails where Username='" + txtUsername.Text.Trim() + "'";
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
    public void ClearText()
    {
        txtFirstname.Text = "";
        txtLastname.Text = "";
        txtUsername.Text = "";
        txtPassword.Text = "";
        txtRePassword.Text = "";
        txtSecurityAns.Text = "";
        txtPhoneNumber.Text = "";
        txtEmailId.Text = "";

    }
    protected void imgRegister_Click(object sender, ImageClickEventArgs e)
    {
        string AA = "User";
        String InsertUserDetails = "Insert into tblUserDetails(UserId,Firstname,Lastname,Username,Password,Email,PhoneNumber,SecurityQuestion,SecurityAnswer,Usertype) values(" + NewUserId + ",'" + txtFirstname.Text + "','" + txtLastname.Text + "','" + txtUsername.Text + "','" + txtPassword.Text + "','" + txtEmailId.Text + "','" + txtPhoneNumber.Text + "','" + drpSecurityQus.Text + "','" + txtSecurityAns.Text + "','"+ AA +"')";
        try
        {
            con.Open();
            command = new SqlCommand(InsertUserDetails, con);
            command.ExecuteNonQuery();
            Session["Username"] = txtUsername.Text;
            //   Response.Redirect("Success.aspx");

            //  Response.Write("The user Registration Success!");
            lblSuccess.Visible = true;
            lblSuccess.Text = "Your Registration has been succefully completed. To start the test " + "<a href='Skilltest.aspx'>click here</a>";
            con.Close();
            ClearText();

        }
        catch (Exception exe)
        {
            Response.Write("Error: " + exe);
        }
        finally
        {
            con.Close();
        }
    }
}