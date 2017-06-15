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
    string caozuo, user_name,id;
    public bool end = new bool();
    public List<Resses> ress = new List<Resses>();
  

    protected void Page_Load(object sender, EventArgs e)
    {
        
          
         user = (VMUser)Session["User"];
        if (caozuo != null)
        {
            try
            {
                end = new biz().DelectAddress(caozuo);
                if (end)
                {
                    Response.Write("<script>alert('操作成功')<script>");
                }
            }
            catch { }
        }
        if (user_name != null)
        {
            if (id != null)
            {
               end = new biz().UpAddress(Request.QueryString["user_name"], Request.QueryString["user_phone"], Request.QueryString["sheng"], Request.QueryString["city"], Request.QueryString["quyu"], Request.QueryString["xiangxi"], Request.QueryString["id"]);
                if (end)
                {
                    Response.Write("<script>alert('操作成功')<script>");
                }
            }
            else
            {
               end = (bool)new biz().Addaddress(Request.QueryString["user_name"], Request.QueryString["user_phone"], Request.QueryString["sheng"], Request.QueryString["city"], Request.QueryString["quyu"], Request.QueryString["xiangxi"], Request.QueryString[user.ID]);
                if (end)
                {
                    Response.Write("<script>alert('操作成功')<script>");
                }
            }
        }
             ress = new biz().SelectRess(user.ID);
             ress = ress;
       
    }
}