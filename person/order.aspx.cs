using Orange.ViewModel;
using Orange商城;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class person_order : System.Web.UI.Page
{
    public List<VMOrder> order = new List<VMOrder>();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
          var  user = (VMUser)Session["User"];
            if (user == null)
            {
                Response.Redirect("../home/Login.aspx");
            }
            order = new biz().selectorder(user.ID);
        }
        catch
        {
            Response.Redirect("../home/Login.aspx");
        }
    }
}