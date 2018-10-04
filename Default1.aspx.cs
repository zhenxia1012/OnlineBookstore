using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Page.DataBind();
    }
    protected void GO_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/unpaid1.aspx?id=20150713163744140");
    }
}