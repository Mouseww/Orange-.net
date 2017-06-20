using Orange商城;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HTguanli_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["re"] == "1")
        {
            Session["HTUser"] = null;
        }

          string user=  Request.QueryString["user"];
            string pwd = Request.QueryString["pwd"];
        if (user != null && user != "") { 
        try
        {
            var users = new biz().HTLogin(user, pwd);
            if (users != null)
            {
                Session["HTUser"] = users;
                Response.Redirect("index.aspx");
            }
            else
            {
                Response.Write("<script>alert('帐号或密码错误')</script>");
            }

        }
        catch
        {
            Response.Write("<script>alert('帐号或密码错误')</script>");
        }
        }
    }
}