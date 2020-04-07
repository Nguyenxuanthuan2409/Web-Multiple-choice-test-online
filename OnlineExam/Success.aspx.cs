using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Success : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string Username = Session["Username"].ToString().Trim();
        lblUser.Text = "Dear " + Username;
        lblSuccess.Text = "Your Registration has been succefully completed. To start the test";
    }
}