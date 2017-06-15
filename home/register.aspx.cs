using Orange商城;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home_register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        if (psw.Text.Trim() != "" && email.Text.Trim() != "")
        {
            
            var reader = new biz().AddUser(email.Text.Trim(), psw.Text.Trim());
            if (reader)
            {
                Response.Write("<script>alert('注册成功')</script>");

            }
            else
            {
                Response.Write("<script>alert('用户名已存在')</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('用户名与密码不能为空')</script>");
        }
    }
}