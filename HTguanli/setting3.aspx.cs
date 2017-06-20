using Orange商城;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HTguanli_setting : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    


    protected void Button2_Click(object sender, EventArgs e)
    {
        new biz().addrowsC();
        
        Response.Redirect("setting3.aspx");
    }



    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("setting.aspx");
    }
}