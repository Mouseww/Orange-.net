<%@ WebHandler Language="C#" Class="del_order" %>

using System;
using System.Web;
using Orange商城;

public class del_order : IHttpHandler {

    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        int id1=int.Parse(context.Request.Form["id"]);
        var flag = new biz().del_order(id1);
        context.Response.Write("删除成功");
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}