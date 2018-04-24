using Orange.ViewModel;
using Orange商城;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home_introduction : System.Web.UI.Page
{
    public Commodities Introduction = new Commodities();
    public List<Commodity_option1> attr_option1 = new List<Commodity_option1>();
    public List<Commodity_option2> attr_option2 = new List<Commodity_option2>();
    public string msg;
    public VMUser user=new VMUser();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        
        user = (VMUser)Session["User"];

        int id = 0;
        try { id = int.Parse(Request["id"]);
          
           
        }
        catch {
            
        }


        Introduction = new biz().GetCommodityTD1(id);

        attr_option1 = new biz().show_option1(id);

        attr_option2 = new biz().show_option2(id);
        if ("add_shopcar" == Request.Form["type"])
        {

            msg = add_shopcar();
        }




    }
    
    public string add_shopcar()
    {
    var user = (VMUser)Session["User"];
    var Commodity_id=Request.Form["Commodity_id"];
    string attr = Request.Form["attr"];
    string attr2 = Request.Form["attr2"];
    string number = Request.Form["number"];
    string Price = Request.Form["Price"];
    string Old_Price = Request.Form["Old_Price"];
        if (Commodity_id != null)
        {
            if (user != null)
            {
                var fl = new biz().AddShopcart(Commodity_id, attr, attr2, number, user.username, Price, Old_Price);
                if (fl)
                {
                    return "添加成功";
                }
                else
                {
                    return "添加失败";
                }

            }
            else
            {
                return "请先登录";
            }
            
        }
        return "出现异常错误";

    }
}