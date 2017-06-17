<%@ WebHandler Language="C#" Class="address" %>

using System;
using System.Web;
using Orange.ViewModel;
using Orange商城;

public class address : IHttpHandler {

    public void ProcessRequest (HttpContext context) {

        string id = context.Request.Form["id"];
     var more = new biz().UpRess(int.Parse(id));
        context.Response.Write(true);
        
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}