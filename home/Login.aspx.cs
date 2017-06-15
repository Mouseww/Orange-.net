using Orange.ViewModel;
using Orange商城;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        if (user.Text == "" || password.Text == "")
        {
            Response.Write("<script>alert('用户名和密码不能为空')</script>");
        }
        else
        {
            Users user1 = new Users();
            user1.username = user.Text.Trim();
            user1.password = password.Text.Trim();
            var reader = new biz().Login(user1);
            if (reader.Count>0)
            {
                Session["User"] =(VMUser)reader[0];
                Response.Redirect("index.aspx");
            }
            else
            {
                Response.Write("<script>alert('用户名或密码错误')</script>");
            }
        }
    }
}