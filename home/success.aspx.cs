using Orange.ViewModel;
using Orange商城;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home_success : System.Web.UI.Page
{
    public string msg;
    protected void Page_Load(object sender, EventArgs e)
    {
        var user = (VMUser)Session["User"];
        if (user == null)
        {
            Response.Redirect("../home/Login.aspx");
        }
        try
        {
            string array=Request.QueryString["arrayid"];
            string name = Request.QueryString["name"];
            string phone = Request.QueryString["phone"];
            string sheng = Request.QueryString["sheng"];
            string city = Request.QueryString["city"];
            string quyu = Request.QueryString["quyu"];
            string xiangxi = Request.QueryString["xiangxi"];
            string Price = Request.QueryString["Price"];
            var ress = false;
            if (array != null&&array!="") {

                    ress = new biz().insertOrder(array,user, name, phone, sheng, city, quyu, xiangxi, Price);
                

            }
            else { 
            int Com_id=int.Parse(Request.QueryString["id"]);
            int option1 = int.Parse(Request.QueryString["option1"]);
            int option2= int.Parse(Request.QueryString["option2"]);
            int buynum= int.Parse(Request.QueryString["buynum"]);
          
            var Commodity_attr_id = new biz().SelectCommodity_attr_id(Com_id, option1, option2);

            ress = new biz().insertOrder(Commodity_attr_id, user.ID, buynum, name, phone, sheng, city, quyu, xiangxi, Price);
            }
            if (ress)
            {
                Response.Redirect("../home/success.aspx?state=ok");
            }
            else
            {
                Response.Redirect("../home/success.aspx?state=false");
            }
        }
        catch
        {
            if (Request.QueryString["state"] == "ok")
            {
                msg = "下单成功";
            }
            else
            {
                msg = "出现异常错误";
            }
        }
    }
}