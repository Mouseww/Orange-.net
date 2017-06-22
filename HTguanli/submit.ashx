<%@ WebHandler Language="C#" Class="dropzone" %>

using System;
using System.Web;
using Orange商城;
using System.Web.SessionState;
public class dropzone : IHttpHandler,IRequiresSessionState {

    public void ProcessRequest (HttpContext context) {
        string Commodity_name = context.Request.Form["Commodity_name"];
        string Commodity_typec1 = context.Request.Form["Commodity_typec"];
        string jianjie = context.Request.Form["jianjie"];
        string option = context.Request.Form["option"];
        string img = context.Session["virpath"].ToString();

        var arry=option.Split(',');

        var flag = new biz().AddCommodity(Commodity_name,Commodity_typec1,jianjie,arry,img);
        //return Json(flag);
        context.Response.Write(flag);

    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}