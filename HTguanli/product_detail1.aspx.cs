using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class HTguanli_product_detail1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            int a = int.Parse(Request.QueryString["Id"]);
            //grids();
        }
    }

    public void grids() {
        string a = Request.QueryString["Id"];


        using (SqlConnection con = dbconnction.conn()) {

            con.Open();
            string sql = "select  from Commodity_attribute,Commodity_option1,Commodity_option2 where Commodity_Id='" + a + "'";
            DataSet ds = new DataSet();
            SqlDataAdapter sdp = new SqlDataAdapter(sql, con);
            sdp.Fill(ds, "table1");
            GridView1.DataSource = ds.Tables["table1"];
            GridView1.DataBind();

        }



    } 
}