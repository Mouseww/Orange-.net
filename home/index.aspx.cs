using Orange.ViewModel;
using Orange商城;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home_index : System.Web.UI.Page
{
    public List<IMGs> Carousel = new List<IMGs>();
    public List<IMGs> Recommend = new List<IMGs>();
    public List<IMGs> Recommends = new List<IMGs>();
    public List<IMGs> huodong = new List<IMGs>();
    public List<IMGs> tianpinfirst = new List<IMGs>();
    public List<VMCommodity> tianpin = new List<VMCommodity>();
    public List<Commodity_type> Commodity_Type = new List<Commodity_type>();
    public List<List<Commodity_1>> Commodity_1 = new List<List<Commodity_1>>();
    public List<List<List<Commodity_2>>> Commodity = new List<List<List<Commodity_2>>>();
    public Commodity_1 Comm1 = new Commodity_1();
    public List<Commodity_2> Comm = new List<Commodity_2>();
    public List<Commodity_2> Commm = new List<Commodity_2>();
    public Commodity_1 Commm2 = new Commodity_1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["?remove_user"] == "1")
        {
            Session["User"] = null;
            Response.Redirect("../home/index.aspx");

        }
        Carousel = new biz().GETIMG("Carousel");///轮播图片
        Recommend = new biz().GETIMG("Recommend");//推荐子项
        Recommends = new biz().GETIMG("Recommends");
        huodong = new biz().GETIMG("huodong");
        tianpinfirst = new biz().GETIMG("tianpinfirst");

        tianpin = new biz().GetMoK("tianpin");


        Commodity_Type = new biz().GetCommodity_type();//取A级目录
        

       Commodity_1 = Details(Commodity_Type);//取B级目录
        

       Commodity = Details1(Commodity_1);//c
       

         Comm1 = new biz().GetCommodityTD(6);//取第一模块top标题
       


         Comm = Details5(Comm1);//
       
        //var Comm2 = Details2(Comm1, Comm);//取模块的每个目录的首个商品
        //Comm2 = Comm2;


         Commm2 = new biz().GetCommodityTD(7);
      
        Commm = Details5(Commm2);//
        Commm = Commm;


  
    }
    /// <summary>
    /// 单独取C级目录(用于主页模块)
    /// </summary>
    /// <param name="comm1"></param>
    /// <returns></returns>
    private List<Commodity_2> Details5(Commodity_1 comm1)
    {
        var Commod = new biz().GetCommodityTT(comm1.ID);
        return Commod;
    }
    /// <summary>
    /// 取C级目录
    /// </summary>
    /// <param name="Comname"></param>
    /// <returns></returns>
    public List<List<List<Commodity_2>>> Details1(List<List<Commodity_1>> Comname)
    {
        List<List<List<Commodity_2>>> Commodity3 = new List<List<List<Commodity_2>>>();

        foreach (var abc in Comname)
        {
            List<List<Commodity_2>> Commodity = new List<List<Commodity_2>>();
            foreach (var cba in abc)
            {
                int id = cba.ID;

                var Commodity2 = new biz().GetCommodityTT(id);
                Commodity.Add(Commodity2);
            }
            Commodity3.Add(Commodity);

        }
        return Commodity3;
    }
    /// <summary>
    /// 每个子集目录的首个商品
    /// </summary>
    /// <param name="Commodity_1"></param>
    /// <param name="Commod"></param>
    /// <returns></returns>
    public List<Commodities> Details2(Commodity_1 Commodity_1, List<Commodity_2> Commod)
    {
        var Comm1 = new List<Commodities>();

        foreach (var com in Commod)
        {
            var Comm = new biz().GetCommodityTT1(com.ID);
            if (Comm.Count != 0)
            {
                Comm1.Add(Comm[0]);
            }
        }
        return Comm1;
    }

    public Commodity_1 Details3()
    {
        var Comm = new biz().GetCommodityTD(6);
        return Comm;
    }

    // GET: Commodity/Details/5
    public List<List<Commodity_1>> Details(List<Commodity_type> Comname)
    {
        List<List<Commodity_1>> Commodity = new List<List<Commodity_1>>();



        foreach (var abc in Comname)
        {

            int id = abc.ID;


            var Commodity2 = new biz().GetCommodityT(id);
            Commodity.Add(Commodity2);


        }

        return Commodity;
    }
}