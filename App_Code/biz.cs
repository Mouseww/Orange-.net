using Orange.ViewModel;
using Orange商城;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
namespace Orange商城
{
    public class biz
    {
        LinqDataContext db = new LinqDataContext();


        /// <summary>
        /// 获取商品类型=
        /// </summary>
        /// <returns></returns>
        public IList<cc> bizGetCommodityCategory()
        {
            var r = db.Commodity_type.Select(a => new cc()
            {
                ID = a.ID,
                Type_Name = a.Type_Name
            }).ToList();
            return r;

        }
        /// <summary>
        /// 购物车ajax修改商品购买数量
        /// </summary>
        /// <param name="v"></param>
        /// <param name="id"></param>
        /// <returns></returns>
        public bool UpNumber(int v, int id)
        {

            var shop = db.Shopcarts.First(a => a.Id == id);
            var com = db.Commodity_attribute.First(b => b.Id == shop.Commodity_Id);
            if (com.Number >= v)
            {
                shop.Number = v;
                db.SubmitChanges();
                return true;
            }
            else
            {
                return false;
            }
        }

    

        public IList<cc> bizSelectType2(int type1_id, string typename)
        {
            var res1 = db.Commodity_1.Where(a => a.Commodity_type.ID == type1_id).Select(a => new cc()
            {
                ID = a.ID,
                Name = a.Name
            }).ToList();
            //var res2 = db.Commodity_2.Where(b => b.ID == type1_id).Select(b => new ViewModel.Commodity1
            //{
            //    Name = b.Name
            //}).ToList();
            return res1;
        }
        public IList<cc> bizSelectType3(int type1_id, string typename2)
        {

            var res = db.Commodity_2.Where(b => b.Commodity_1.ID == type1_id).Select(b => new cc()
            {
                ID = b.ID,
                Name = b.Name

            }).ToList();
            return res;

        }
        /// <summary>
        /// 商品添加
        /// </summary>
        /// <param name="Commodity_name"></param>
        /// <param name="Commodity_typec"></param>
        /// <param name="jianjie"></param>
        /// <param name="arry"></param>
        /// <param name="img"></param>
        /// <returns></returns>
        public bool AddCommodity(string Commodity_name, string Commodity_typec, string jianjie, string[] arry, string img)
        {
            var time = DateTime.Now.ToString().Replace("/", "").Replace(":", "").Replace(" ", "");
            var Commodity_2 = db.Commodity_2.First(a => a.Name == Commodity_typec);

            //添加到商品
            var Commodity = new Commodities();
            Commodity.Name = Commodity_name;
            Commodity.jieshao = jianjie;
            Commodity.Time = time;
            Commodity.Commodity_2 = Commodity_2;
            Commodity.img = img;
            db.Commodities.InsertOnSubmit(Commodity);
            db.SubmitChanges();
            var Commodity_new = db.Commodities.First(a => a.Time == time && a.Name == Commodity_name);
            //添加到选项
            var temp = new List<string>();
            var temp2 = new List<string>();


            //去重

            if (temp.Count == 0)
            {
                var option1 = new Commodity_option1();
                option1.type_name = "口味";
                option1.Time = time;
                option1.Commodity_Id = Commodity_new.Id;
                option1.option = arry[1];
                temp.Add(arry[1]);
                db.Commodity_option1.InsertOnSubmit(option1);
                var option2 = new Commodity_option2();
                option2.type_name = "规格";
                option2.Time = time;
                option2.Commodity_Id = Commodity_new.Id;
                option2.option = arry[0];
                temp2.Add(arry[0]);
                db.Commodity_option2.InsertOnSubmit(option2);
                db.SubmitChanges();

            }
            for (int j = 4; j < arry.Length; j += 4)
            {
                var flag = true;
                var flag2 = true;
                for (int te = 0; te < temp.Count; te++)
                {


                    if (temp[te] == arry[j + 1])
                    {

                        flag = false;
                        continue;
                    }

                }
                if (flag)
                {
                    var option1 = new Commodity_option1();
                    option1.type_name = "口味";
                    option1.Time = time;
                    option1.Commodity_Id = Commodity_new.Id;
                    option1.option = arry[j + 1];
                    temp.Add(arry[j + 1]);
                    db.Commodity_option1.InsertOnSubmit(option1);
                    db.SubmitChanges();

                }

                for (int te = 0; te < temp2.Count; te++)
                {

                    if (temp2[te] == arry[j])
                    {
                        flag2 = false;
                        continue;
                    }

                }
                if (flag2)

                {
                    var option2 = new Commodity_option2();
                    option2.type_name = "规格";
                    option2.Time = time;
                    option2.Commodity_Id = Commodity_new.Id;
                    option2.option = arry[j];
                    temp2.Add(arry[j]);
                    db.Commodity_option2.InsertOnSubmit(option2);

                    db.SubmitChanges();
                    continue;
                }

            }//j


            //插入商品属性
            var Commodity_option = db.Commodity_option1.Where(a => a.Time == time).ToList();
            var Commodity_option2 = db.Commodity_option2.Where(a => a.Time == time).ToList();
            for (int i = 0; i < Commodity_option.Count; i++)
            {
                for (int j = 0; j < Commodity_option2.Count; j++)
                {
                    for (int n = 0; n < arry.Length; n += 4)
                    {//从arry数组里匹配对应的行
                        if (Commodity_option[i].option == arry[n + 1] && Commodity_option2[j].option == arry[n])
                        {
                            var Commodity_attr = new Commodity_attribute();
                            Commodity_attr.Commodity_Id = Commodity.Id;
                            Commodity_attr.Commodity_option1 = Commodity_option[i];
                            Commodity_attr.Commodity_option2 = Commodity_option2[j];
                            Commodity_attr.Price = double.Parse(arry[n + 2]);
                            Commodity_attr.Price_old = double.Parse(arry[n + 2]) + 10;
                            Commodity_attr.Number = int.Parse(arry[n + 3]);

                            Commodity_attr.Name = Commodity_name;
                            db.Commodity_attribute.InsertOnSubmit(Commodity_attr);
                            continue;
                        }
                    }
                }
                db.SubmitChanges();
            }




            return true;
        }
        /// <summary>
        /// 删除地址
        /// </summary>
        /// <param name="caozuo"></param>
        /// <returns></returns>
        public bool DelectAddress(string caozuo)
        {
            int id = int.Parse(caozuo);

            var ress = db.Resses.First(a => a.id == id);
            db.Resses.DeleteOnSubmit(ress);
            db.SubmitChanges();


            return true;
        }
        /// <summary>
        /// 修改地址
        /// </summary>
        /// <param name="user_name"></param>
        /// <param name="user_phone"></param>
        /// <param name="sheng"></param>
        /// <param name="city"></param>
        /// <param name="quyu"></param>
        /// <param name="xiangxi"></param>
        /// <param name="id"></param>
        /// <returns></returns>
        public bool UpAddress(string user_name, string user_phone, string sheng, string city, string quyu, string xiangxi, string id)
        {
            var id1 = int.Parse(id);
            var address = db.Resses.First(a => a.id == id1);
            address.City = city;
            address.Province = sheng;
            address.telephone = user_phone;
            address.name = user_name;
            address.Township = quyu;
            address.xiangxi = xiangxi;
            db.SubmitChanges();
            return true;
        }
        /// <summary>
        /// 添加地址
        /// </summary>
        /// <param name="user_name"></param>
        /// <param name="user_phone"></param>
        /// <param name="sheng"></param>
        /// <param name="city"></param>
        /// <param name="quyu"></param>
        /// <param name="xiangxi"></param>
        /// <param name="ID"></param>
        /// <returns></returns>
        public bool Addaddress(string user_name, string user_phone, string sheng, string city, string quyu, string xiangxi, int ID)
        {
            var address = new Resses();
            address.moren = "2";
            address.name = user_name;
            address.telephone = user_phone;
            address.Province = sheng;
            address.City = city;
            address.Township = quyu;
            address.xiangxi = xiangxi;
            address.Users = db.Users.First(a => a.ID == ID);
            db.Resses.InsertOnSubmit(address);
            db.SubmitChanges();
            return true;
        }

        /// <summary>
        /// 修改默认地址
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public bool UpRess(int id)
        {
            try
            {
                var ress = db.Resses.First(a => a.moren == "1");
                if (ress != null)
                {
                    ress.moren = "2";
                    db.SubmitChanges();
                }
            }
            catch { }

            try {
                var ress1 = db.Resses.First(b => b.id == id);
                ress1.moren = "1";
                db.SubmitChanges();
            }
            catch { }
            return true;


        }
        /// <summary>
        /// 查询地址
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public List<Resses> SelectRess(int id)
        {
            return db.Resses.Where(a => a.Users.ID == id).ToList();
        }
        /// <summary>
        /// 修改用户信息
        /// </summary>
        /// <param name="name1"></param>
        /// <param name="name2"></param>
        /// <param name="telephone"></param>
        /// <param name="birthday"></param>
        /// <param name="sex"></param>
        /// <param name="username"></param>
        /// <returns></returns>
        public Boolean UpUSer_IN(string name1, string name2, string telephone, string birthday, string sex, string username)
        {
            int se = 0;
            if (sex == "男")
            {
                se = 1;
            }
            else
            {
                se = 0;
            }
            var user_in = db.User_IN.First(a => a.username == username);
            user_in.name = name2;
            user_in.nikename = name1;
            user_in.birthday = birthday;
            user_in.telephone = telephone;
            user_in.sex = se;
            db.SubmitChanges();
            return true;


        }
        /// <summary>
        /// 修改密码
        /// </summary>
        /// <param name="username"></param>
        /// <param name="oldpsw"></param>
        /// <param name="newpsw"></param>
        /// <returns></returns>
        public Boolean Uppsw(string username, string oldpsw, string newpsw)
        {
            try
            {var  User = db.Users.First(a => a.username == username && a.password == oldpsw);
                User.password = newpsw;
                db.SubmitChanges();
                return true; }

             catch
            {
                return false;
            }
           
        }

        /// <summary>
        /// 注册
        /// </summary>
        /// <param name="username"></param>
        /// <param name="password"></param>
        /// <returns></returns>
        public Boolean AddUser(string username, string password)
        {
            try { 
            var flag = db.Users.First(a => a.username == username);
            if (flag != null)
            {
                return false;
            }
            }
            catch { }
            User_IN user_in = new User_IN();
            user_in.username = username;


            db.User_IN.InsertOnSubmit(user_in);

            db.SubmitChanges();

            int ID = db.User_IN.First(a => a.username == username).ID;
            Users user = new Users();
            user.username = username;
            user.password = password;
            user.User_IN_ID = ID;
            db.Users.InsertOnSubmit(user);
            db.SubmitChanges();
            return true;



        }

        /// <summary>
        /// 添加到购物车
        /// </summary>
        /// <param name="Commodity_id"></param>
        /// <param name="attr"></param>
        /// <param name="attr2"></param>
        /// <param name="number"></param>
        /// <param name="username"></param>
        /// <returns></returns>
        public Boolean AddShopcart(string Commodity_id, string attr, string attr2, string number, string username, string Price, string Old_Price)
        {

            Shopcarts shopcart = new Shopcarts();
            shopcart.Number = int.Parse(number);
            shopcart.Commodity_option1_Id = int.Parse(attr);
            shopcart.Commodity_option2_Id = int.Parse(attr2);
            shopcart.Commodity_Id = int.Parse(Commodity_id);
            shopcart.Username = username;
            shopcart.Old_Price = double.Parse(Old_Price);
            shopcart.Price = double.Parse(Price);

            db.Shopcarts.InsertOnSubmit(shopcart);
            db.SubmitChanges();
            return true;




        }
        /// <summary>
        /// 批量删除购物车
        /// </summary>
        /// <param name="arry1"></param>
        /// <returns></returns>
        public bool DelectShopcartAll(Array arry1)
        {
            foreach (string arry in arry1)
            {
                int id = Int32.Parse(arry);
                var item = db.Shopcarts.Where(a => a.Id == id).ToList();
                db.Shopcarts.DeleteOnSubmit(item[0]);
            }
 db.SubmitChanges();
 return true; 
        }
        /// <summary>
        /// 根据类型取图片
        /// </summary>
        /// <param name="type"></param>
        /// <returns></returns>
        public List<IMGs> GETIMG(string type)
        {

            return db.IMGs.Where(a => a.type == type).ToList();
        }
        /// <summary>
        /// 删除购物车单个商品
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Boolean DelectShopcart(int id)
        {
            Shopcarts shopcart = new Shopcarts();

            var item = db.Shopcarts.Where(a => a.Id == id).ToList();
            db.Shopcarts.DeleteOnSubmit(item[0]);
    db.SubmitChanges();
           return true;
        }

        public List<Commodities> GetCommodity()
        {

            return db.Commodities.ToList();
        }
        /// <summary>
        /// 获取A级目录
        /// </summary>
        /// <returns></returns>
        public List<Commodity_type> GetCommodity_type()
        {

            return db.Commodity_type.ToList();

        }
        /// <summary>
        /// 获取B级目录
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public List<Commodity_1> GetCommodityT(int id)
        {

            if (id != null && id != 0)
            {
                return db.Commodity_1.Where(a => a.Commodity_type.ID == id).ToList();
            }
            return db.Commodity_1.ToList();
        }
        /// <summary>
        /// 获取单个B级目录对象
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Commodity_1 GetCommodityTD(int id)
        {


            return db.Commodity_1.Where(a => a.ID == id).ToList()[0];

        }
        /// <summary>
        /// 根据商品id获取商品对象
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public Commodities GetCommodityTD1(int id)//详情页
        {


            return db.Commodities.Where(a => a.Id == id).ToList()[0];

        }
        /// <summary>
        /// 获取C级目录
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public List<Commodity_2> GetCommodityTT(int id)
        {
            if (id != null && id != 0)
            {
                return db.Commodity_2.Where(a => a.Commodity_1.ID == id).ToList();
            }
            return db.Commodity_2.ToList();
        }
        /// <summary>
        /// 取商品vm视图
        /// </summary>
        /// <param name="type"></param>
        /// <returns></returns>
        public List<VMCommodity> GetMoK(string type)
        {
            var db1 = db.IMGs.Where(a => a.type == type)
                .Select(a => new VMCommodity
                {
                    Id = (int)a.Commodity_Id,
                    Name = ((Commodities)db.Commodities.First(b => b.Id ==a.Commodity_Id)).Name,
                    img = ((Commodities)db.Commodities.First(b => b.Id == a.Commodity_Id)).img,
                    jieshao = ((Commodities)db.Commodities.First(b => b.Id == a.Commodity_Id)).jieshao,
                    Price = ((Commodities)db.Commodities.First(b => b.Id == a.Commodity_Id)).Price,
                }
            ).ToList();
            return db1;
        }
        /// <summary>
        /// 获取商品列表
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public List<Commodities> GetCommodityTT1(int id)//
        {
            if (id != null && id != 0)
            {
                return db.Commodities.Where(a => a.Commodity_2.ID == id).ToList();
            }

            return db.Commodities.ToList();
        }
        /// <summary>
        /// 返回虚拟用户表(匿名类)
        /// </summary>
        /// <param name="username"></param>
        /// <returns></returns>
        public VMUser refresh(string username)
        {
            return db.Users.Where(a => a.username == username)
                .Select(a => new VMUser
                {
                    name = a.User_IN.name,
                    birthday = a.User_IN.birthday,
                    sex = a.User_IN.sex.ToString(),
                    telephone = a.User_IN.telephone,
                    username = a.username,
                    password = a.password,
                    nikename = a.User_IN.nikename,
                    ID = a.ID
                })
                .ToList()[0];
        }
        /// <summary>
        /// 登录验证
        /// </summary>
        /// <param name="user1"></param>
        /// <returns></returns>
        public List<VMUser> Login(Users user1)//login
        {
            return db.Users.Where(a => a.username == user1.username && a.password == user1.password)
                .Select(a => new VMUser
                {
                    name = a.User_IN.name,
                    birthday = a.User_IN.birthday,
                    sex = a.User_IN.sex.ToString(),
                    telephone = a.User_IN.telephone,
                    username = a.username,
                    password = a.password,
                    nikename = a.User_IN.nikename,
                    ID = a.ID
                })
                .ToList();
        }
        /// <summary>
        /// 获得商品选项1属性
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public List<Commodity_option1> show_option1(int id)
        {
            return db.Commodity_option1.Where(a => a.Commodity_Id == id).ToList();
        }
        /// <summary>
        /// 获得商品选项1属性
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public List<Commodity_option2> show_option2(int id)
        {
            return db.Commodity_option2.Where(a => a.Commodity_Id == id).ToList();
        }
        /// <summary>
        /// 获取用户的购物车
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public List<ShopCars> shopcart(VMUser user)
        {

            return db.Shopcarts.Where(a => a.Username == user.username)
                .Select(a => new ShopCars
                {
                    Id = a.Id,
                    shop_name = a.Commodity_attribute.Name,
                    option1 = a.Commodity_option1.option,
                    option1_id = a.Commodity_option1.Id,
                    option1_name = a.Commodity_option1.type_name,
                    option2 = a.Commodity_option2.option,
                    option2_id = a.Commodity_option2.Id,
                    option2_name = a.Commodity_option2.type_name,

                    img = a.Commodity_attribute.Commodities.img,
                   // img_small = a.Commodities.img_small,
                    Price = a.Price,
                    Old_Price = a.Old_Price,
                    Number = a.Number
                }).ToList();
        }
        /// <summary>
        /// 获取购物车已有商品数量
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public int shopcart_number(VMUser user)
        {
            var a = db.Shopcarts.Where(ab => ab.Username == user.username).ToList();
            return a.Count;
        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="Name"></param>
        /// <returns></returns>
        public List<VMSoure> GetSoure(string Name)
        {
            if (Name == null)
            {
                return db.Commodities.Select(b => new VMSoure
                {
                    id = b.Id,
                    Price = b.Price,
                    img = b.img,
                    Name = b.Name,
                    Ynumber = b.Number

                }).ToList();
            }
            return db.Commodities.Where(a => a.Name.Contains(Name) || a.Commodity_2.Name.Contains(Name) || a.Commodity_2.Commodity_1.Name.Contains(Name) || a.Commodity_2.Commodity_1.Commodity_type.Type_Name.Contains(Name))
                .Select(b => new VMSoure
                {
                    id = b.Id,
                    Price = b.Price,
                    img = b.img,
                    Name = b.Name,
                    Ynumber = b.Number

                }).ToList();
        }

        /// <summary>
        /// 动态获取价格
        /// </summary>
        /// <param name="attr_option1"></param>
        /// <param name="attr_option2"></param>
        /// <returns></returns>
        public IList<Commodity_attribute> bizChangePrice(int attr_option1, int attr_option2)
        {
            var price = db.Commodity_attribute.Where(a => a.Commodity_option1.Id == attr_option1 && a.Commodity_option2.Id == attr_option2).ToList();

            return price;
        }
        /// <summary>
        /// 获取商品属性表id
        /// </summary>
        /// <param name="id"></param>
        /// <param name="option1"></param>
        /// <param name="option2"></param>
        /// <returns></returns>
        public int SelectCommodity_attr_id(int id,int option1,int option2)
        {

            return db.Commodity_attribute.First(a => a.Commodity_option1_Id == option1 && a.Commodity_option2_Id == option2 && a.Commodity_Id == id).Id;
        }
        /// <summary>
        /// 添加订单
        /// </summary>
        /// <param name="Commodity_attr_id"></param>
        /// <param name="user_id"></param>
        /// <param name="buynum"></param>
        /// <param name="name"></param>
        /// <param name="phone"></param>
        /// <param name="sheng"></param>
        /// <param name="city"></param>
        /// <param name="quyu"></param>
        /// <param name="xiangxi"></param>
        /// <param name="Price"></param>
        /// <returns></returns>
        public bool insertOrder(int Commodity_attr_id,int user_id,int buynum, string name, string phone, string sheng, string city, string quyu, string xiangxi, string Price)
        { 
            var order = new Orders();
            order.Commodity_Id = Commodity_attr_id;
            order.BuyNum = buynum;
            order.user_id = user_id;
            order.ManName = name;
            order.Manphone = phone;
            order.Price = Price;
            order.sendAddress = sheng + "省" + city + "市" + quyu + "区" + xiangxi;
            order.Time = DateTime.Now.ToString();
            order.State = "待付款";
            db.Orders.InsertOnSubmit(order);
           db.SubmitChanges();
            return true;
        }
    }
}