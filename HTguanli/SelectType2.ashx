<%@ WebHandler Language="C#" Class="SelectType2" %>

using System;
using System.Web;
using Orange商城;
using Orange.ViewModel;
using System.Web.Script.Serialization;
using System.Collections.Generic;
using System.Data;


public class SelectType2 : IHttpHandler {


    public void ProcessRequest (HttpContext context) {

        String id = context.Request.QueryString["id"];
        String typename = context.Request.QueryString["typename"];
        int type1_id = int.Parse(id);
        var res = new biz().bizSelectType2(type1_id, typename);

        //context.Response.Write(JsonConvert.SerializeObject(new { Result = 1, Msg = "获取数据成功", Data = res }));
            context.Response.ContentType = "application/json";
 
            context.Response.Cache.SetCacheability(HttpCacheability.NoCache);   //禁止浏览器的缓存作用；        
 
            System.Type type =res.GetType();  //获取userList的类型
 
            //序列化：
 
            System.Runtime.Serialization.Json.DataContractJsonSerializer serializer = new System.Runtime.Serialization.Json.DataContractJsonSerializer(type);     
 
            serializer.WriteObject(context.Response.OutputStream, res); 
    }

    public bool IsReusable {
        get {
            return false;
        }
    }

}