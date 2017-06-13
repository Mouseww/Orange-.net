using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Orange.ViewModel;

public partial class home_MasterPage : System.Web.UI.MasterPage
{
    public VMUser user = new VMUser(); 
    protected void Page_Load(object sender, EventArgs e)
    {
        user = (VMUser)Session["User"];
       
        
    }
}
