﻿using Orange.ViewModel;
using Orange商城;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class person_password : System.Web.UI.Page
{
    public bool flag = new bool();
    public VMUser user = new VMUser();

    String oldpsw, newpsw;
    protected void Page_Load(object sender, EventArgs e)
    {
        user = (VMUser)Session["User"];

        if (user == null)
        {
            Response.Write("<script>alert('请先登陆')<script>");
            Response.Redirect("../home/Login.aspx");          
        }
        if (oldpsw != null && newpsw != null)
        {
          flag = new biz().Uppsw(user.username, oldpsw, newpsw);

            if (flag)
            {
                var msg = "修改成功";
            }
            else
            {
              var msg = "原密码错误";
            }
        }
   
    }
}