using Orange.ViewModel;
using Orange商城;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home_pay : System.Web.UI.Page
{
    public List<ShopCars> CommodityList = new List<ShopCars>();
    public List<Resses> ress = new List<Resses>();
    public VMUser user=new VMUser();
    public string id;
    public int opt1_id, opt2_id;
    public Double AllPrice;
    public string arraystr;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            user = (VMUser)Session["User"];
            if (user == null)
            {
                Response.Redirect("Login.aspx");
            }
        }
        catch
        {
            Response.Redirect("Login.aspx");
        }
        try
        {
            string name= Request.QueryString["user_name"];
            string phone = Request.QueryString["user_phone"];
            string sheng = Request.QueryString["sheng"];
            string city = Request.QueryString["city"];
            string quyu = Request.QueryString["quyu"];
            string xiangxi = Request.QueryString["xiangxi"];
            if (name != null) { 
            var flag=new biz().Addaddress(name, phone, sheng, city, quyu, xiangxi, user.ID);
            }

        }
        catch
        {

        }
        string array = Request.QueryString["array"];
        if (array != null&&array!="") {
                // CommodityList=new biz().get
                array = array.Replace("check_", "");
                arraystr = array;
                var arraylist = array.Split(',').ToList();

                foreach (var item in arraylist) {
                    var shopcar = new biz().shopcart(item);
                    CommodityList.Add(shopcar);
                }

        }
        else { 
        try
        {
             id = Request.QueryString["id"];
            string Commodity_id = Request.QueryString["Commodity_id"];
            opt1_id = int.Parse(Request.QueryString["attr_id"]);
            opt2_id = int.Parse(Request.QueryString["attr2_id"]);
            string op_type = Request.QueryString["op_type"];
            string op_type2 = Request.QueryString["op_type2"];
            string attr = Request.QueryString["attr"];
            string attr2 = Request.QueryString["attr2"];
            string number = Request.QueryString["number"];
            string Commodity_name = Request.QueryString["Commodity_name"];
            string Old_Price = Request.QueryString["Old_Price"];
            string Price = Request.QueryString["Price"];
            string img= Request.QueryString["img"];
          
                if (id != null && Commodity_id != null)
                {
                    var Commodity = new ShopCars();
                    Commodity.Commodity_id = int.Parse(Commodity_id);
                    Commodity.option1_name = attr;
                    Commodity.option2_name = attr2;
                    Commodity.option2 = op_type2;
                    Commodity.option1 = op_type2;
                    Commodity.Number = int.Parse(number);
                    Commodity.img = img;
                    Commodity.shop_name = Commodity_name;
                    Commodity.Price = double.Parse(Price);
                    Commodity.Old_Price = double.Parse(Old_Price);
                    CommodityList.Add(Commodity);
                   
                   

                }

            

        }
        catch
        {

        }
        }
        ress = new biz().SelectRess(user.ID);

    }
}