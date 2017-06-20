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
    public string id;
    public string iid;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["id"];
        iid = Request.QueryString["iid"];
    }

    


    protected void Button2_Click(object sender, EventArgs e)
    {
        new biz().addrowsC(int.Parse(id));
        
        Response.Redirect("setting3.aspx?id="+id+"&&iid="+iid);
    }



    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("setting2.aspx?id="+iid);
    }
}