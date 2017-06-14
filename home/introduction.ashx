<%@ WebHandler Language="C#" Class="introduction" %>

using System;
using System.Web;
using Orange商城;

public class introduction : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {



         int attr_option1a = int.Parse(context.Request.Form["kouwei"]);
        int attr_option2a = int.Parse(context.Request.Form["guige"]);
       var price1 = new biz().bizChangePrice(attr_option1a, attr_option2a);
       var  price = price1[0];
        
        context.Response.Write(price.Number+","+price.Price+","+price.Price_old+","+price.Id);
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }
    /// <summary>
    /// 获取价格变动
    /// </summary>
    public void chenge_Price()
    {
       
    
    }

}