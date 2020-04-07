using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace OnlineExam
{
    public partial class Reporttest : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["teststring"].ConnectionString);
        CommonClass common;
        SqlCommand command;
        SqlDataReader reader;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblResult.Visible = false;
        }
        protected void imgSearch_Click(object sender, ImageClickEventArgs e)
        {
            String username = txtUsername.Text.Trim();
            common = new CommonClass();
            string SelectDetailsbyUser = "Select * from tblResult where Username='" + username + "'";
            bool UserExists = common.SelectUser(username);

            if (!UserExists)
            {
                lblResult.Visible = true;
                lblResult.Text = "No Such User";

            }
            else
            {
                try
                {
                    con.Open();
                    command = new SqlCommand(SelectDetailsbyUser, con);
                    reader = command.ExecuteReader();
                    GridView2.DataSource = reader;
                    GridView2.DataBind();
                    if (!reader.HasRows)
                    {
                        lblResult.Visible = true;
                        lblResult.Text = txtUsername.Text + " not attented any Test";
                    }

                }
                catch (Exception ex)
                {
                    lblResult.Text = ex.Message;

                }
            }

        }
    }
}