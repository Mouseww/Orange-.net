<%@ WebHandler Language="C#" Class="ChangeNumber" %>

using System;
using System.Web;
using Orange商城;
public class ChangeNumber : IHttpHandler {

    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
       var numbers = context.Request.Form["number"];
        var Id = context.Request.Form["id"];
        var num = new biz().UpNumber(int.Parse(numbers),int.Parse(Id));
        context.Response.Write(num);
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}