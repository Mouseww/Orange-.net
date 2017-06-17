using Orange.ViewModel;
using Orange商城;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class person_address : System.Web.UI.Page
{
    public VMUser user = new VMUser();
    public string caozuo,msg;
    public bool end = new bool();
    public List<Resses> ress = new List<Resses>();
  

    protected void Page_Load(object sender, EventArgs e)
    {
        string caozuo = Request.QueryString["caozuo"];
        string user_name = Request.QueryString["user_name"];
        string user_phone = Request.QueryString["user_phone"];
        string sheng = Request.QueryString["sheng"];
        string city = Request.QueryString["city"];
        string quyu = Request.QueryString["quyu"];
        string xiangxi = Request.QueryString["xiangxi"];
        string id = Request.QueryString["id"];
        try
        { user = (VMUser)Session["User"];
            if (user == null)
            {
                Response.Redirect("../home/Login.aspx");
            }
        }
        catch
        {
            Response.Redirect("../home/Login.aspx");
        }
        if (caozuo != null)
        {
            try
            {
                end = new biz().DelectAddress(caozuo);
                if (end)
                {
                    msg = "操作成功";
                }
            }
            catch { }
        }
        if (user_name != null)
        {
            if (id != null)
            {
               end = new biz().UpAddress(user_name, user_phone, sheng, city, quyu, xiangxi, id);
                if (end)
                {
                    msg = "操作成功";
                }
            }
            else
            {
               end = new biz().Addaddress(user_name, user_phone, sheng, city, quyu, xiangxi, user.ID);
                if (end)
                {
                    msg = "操作成功";
                }
            }
            Response.Redirect("../person/address.aspx");
        }
             ress = new biz().SelectRess(user.ID);
            
       
    }
}