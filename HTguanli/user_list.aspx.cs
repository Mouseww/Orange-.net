using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HTguanli_user_list : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Unnamed2_Click(object sender, EventArgs e)
    {
        string sql;
        if (txt.Text != null && txt.Text != "")
        {
            sql = "select * from Users where username='" + txt.Text.Trim() + "'";
        }
        else
        {
            sql = "select * from Users";
        }
        SqlDataSource1.SelectCommand = sql;
    }
}