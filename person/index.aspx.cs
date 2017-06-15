using Orange.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class person_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        var user = (VMUser)Session["User"];
        if (user == null)
        {

            Response.Redirect("Login.aspx");
        }

    }
}