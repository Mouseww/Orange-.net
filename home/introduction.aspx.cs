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
    
    public VMUser user=new VMUser();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        user = (VMUser)Session["User"];
        if (!IsPostBack)
        {
            try
            {
                int id = int.Parse(Request.QueryString["id"]);
                Introduction = new biz().GetCommodityTD1(id);

                attr_option1 = new biz().show_option1(id);

                attr_option2 = new biz().show_option2(id);
            }
            catch
            {
                try {
                    int Introduction_id1 = int.Parse(Request.Form["Introduction_id"]);
                    Introduction = new biz().GetCommodityTD1(Introduction_id1);

                    attr_option1 = new biz().show_option1(Introduction_id1);

                    attr_option2 = new biz().show_option2(Introduction_id1);
                }
                catch { }
            }
            try
            {

                if (Request.Form["type"] == "add_shopcar")
                {
                    if (user != null)
                    {
                        var flag = add_shopcar();
                        if (flag)
                        {
                            Response.Write("添加成功！");
                        }
                        else
                        {
                            Response.Write("添加失败！");
                        }
                    }
                    else
                    {
                        Response.Write("请先登录！");
                    }
                }


            }
            catch { }

        }



    }
    
    public bool add_shopcar()
    {
       
        var Commodity_id=Request.Form["Commodity_id"];
        string attr = Request.Form["attr"];
    string attr2 = Request.Form["attr2"];
    string number = Request.Form["number"];
    string Price = Request.Form["Price"];
    string Old_Price = Request.Form["Old_Price"];
        if (Commodity_id != null)
        {
              var fl = new biz().AddShopcart(Commodity_id, attr, attr2, number, user.username, Price, Old_Price);
                if (fl)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
        return false;
    }
       

    
}