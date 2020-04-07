using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Skilltest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Username"] == null)
        {

            Response.Redirect("Home.aspx");

        }
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("Test.aspx?Subject_name=" + DataList1.SelectedValue.ToString().Trim());
    }
}