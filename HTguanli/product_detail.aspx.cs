using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class HTguanli_product_detail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        String a1 = TextBox1.Text;
        using (SqlConnection con = dbconnction.conn())
        {

            con.Open();
            string sql;
            if (a1 == "" && a1 == null)
            {
                sql = "select * from Commodities";
            }
            else { sql = "select *from Commodities where Name='" + a1 + "'"; }
         
            SqlDataSource1.SelectCommand = sql;

        }


    }

    public void grids()
    {

        using (SqlConnection con = dbconnction.conn())
        {

            con.Open();
            string sql = "select *from Commodity_attribute";
            DataSet ds = new DataSet();
            SqlDataAdapter sdp = new SqlDataAdapter(sql, con);
            sdp.Fill(ds, "table1");
            GridView1.DataBind();

        }

    }
    }