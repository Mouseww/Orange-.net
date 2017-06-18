using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// dbconnction 的摘要说明
/// </summary>
public class dbconnction
{
    public dbconnction()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }
    public static SqlConnection conn() {
        string mystr = @"Data Source = www.ww1835.top; Initial Catalog = aspnet-Orange-20170331015318; User ID = sa; Password = 991835";
        SqlConnection mycon = new SqlConnection(mystr);
        return mycon;


    }
}