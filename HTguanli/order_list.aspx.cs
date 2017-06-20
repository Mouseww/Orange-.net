using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HTguanli_order_list : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            var zt = Request.QueryString["zt"];
            string sql;
            if (zt == "全部")
            {
                sql = "select * from Orders";
            }
            else
            {
                sql = "select * from Orders where state='" + zt + "'";
            }
            
            SqlDataSource1.SelectCommand = sql;
        }
        catch
        {

        }
    }

    protected void Unnamed1_Click(object sender, EventArgs e)
    {
        string sql;
        if (txt.Text != null && txt.Text != "")
        {
            sql = "select * from Orders where ManName='" + txt.Text.Trim()+"'";
        }
        else
        {
            sql = "select * from Orders";
        }
        SqlDataSource1.SelectCommand = sql;
    }
}