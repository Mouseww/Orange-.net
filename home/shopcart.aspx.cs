using Orange.ViewModel;
using Orange商城;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home_shopcart : System.Web.UI.Page
{
    public string msg;
    public List<ShopCars> ShopCar = new List<ShopCars>();
    protected void Page_Load(object sender, EventArgs e)
    {

        var user = (VMUser)Session["User"];
        var arry1 = Request.QueryString["arry"];
        var delect_id = Request.QueryString["delect_id"];
        if (user == null)
        {

            Response.Redirect("Login.aspx");
        }
       
        if (arry1 != null)
        {
            Array arry2 = null;
            arry1 = arry1.Replace("check_", "");
            arry2 = arry1.Split(',');
            var flag = new biz().DelectShopcartAll(arry2);
            msg = "删除成功";
        }


        if (delect_id != null)
        {
            int delect_id1 = int.Parse(delect_id);
            var flag = new biz().DelectShopcart(delect_id1);
            msg = "删除成功";
        }
        ShopCar = new biz().shopcart(user);
    }
}