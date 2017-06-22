<%@ WebHandler Language="C#" Class="SelectType3" %>

using System;
using System.Web;
using Orange商城;
using Orange.ViewModel;
public class SelectType3 : IHttpHandler {

    public void ProcessRequest (HttpContext context) {
        try {
            string id2 = context.Request.QueryString["id2"];
            string typename2 = context.Request.QueryString["typename2"];
            int type1_id = int.Parse(id2);
            var res = new biz().bizSelectType3(type1_id, typename2);


            context.Response.ContentType = "application/json";

            context.Response.Cache.SetCacheability(HttpCacheability.NoCache);   //禁止浏览器的缓存作用；        

            System.Type type =res.GetType();  //获取userList的类型

            //序列化：

            System.Runtime.Serialization.Json.DataContractJsonSerializer serializer = new System.Runtime.Serialization.Json.DataContractJsonSerializer(type);

            serializer.WriteObject(context.Response.OutputStream, res);

        }
        catch { }
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}