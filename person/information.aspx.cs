using Orange.ViewModel;
using Orange商城;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class person_information : System.Web.UI.Page
{
    public bool flag = new bool();
    public VMUser VMUser = new VMUser();
    public VMUser user = new VMUser();
    protected void Page_Load(object sender, EventArgs e)
    {
        String name1 = Request.QueryString["name1"];
         user = (VMUser)Session["User"];

        if (user == null)
        {
            // Result = "请先登录";
            Response.Write("<script>alert('请先登陆')<script>");
        
            Response.Redirect("../home/index.aspx");
        }
   
        if (name1 != null)
        {
            string sex1 = Request.QueryString["sex"];

            flag = new biz().UpUSer_IN(Request.QueryString["name1"], Request.QueryString["name2"], Request.QueryString["telephone"], Request.QueryString["birthday"], sex1,user.username);
            Session["User"] = new biz().refresh(user.username);
            user = (VMUser)Session["User"];
        }
      //    return View();
    }
}