<%@ Page Title="" Language="C#" MasterPageFile="~/home/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="home_index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <style>
         .info{
             height:19px;
         }
     </style>
    <div class="banner">
                      <!--轮播 -->
						<div class="am-slider am-slider-default scoll" data-am-flexslider id="demo-slider-0">
							<ul class="am-slides">
								<%  var y = 1;
                foreach (var Com_first in Carousel) {
                   var class1="banner"+y;%>

                            <li class="<%=class1%>"><a href="#"><img src="<%=Com_first.img %>" /></a></li>
                   <% y++;
                } %>

							</ul>
						</div>
						<div class="clear"></div>	
			</div>
    		<div class="shopNav">
				<div class="slideall">

					   <div class="long-title"><span class="all-goods">全部分类</span></div>

					   <div class="nav-cont">
							<ul>
								<li class="../home/index.aspx"><a href="#">首页</a></li>
                                <li class="qc"><a href="#">闪购</a></li>
                                <li class="qc"><a href="#">限时抢</a></li>
                                <li class="qc"><a href="#">团购</a></li>
                                <li class="qc last"><a href="#">大包装</a></li>
							</ul>
						    <div class="nav-extra">
						    	<i class="am-icon-user-secret am-icon-md nav-user"></i><b></b>我的福利
						    	<i class="am-icon-angle-right" style="padding-left: 10px;"></i>
						    </div>
						</div>
		        				
						<!--侧边导航 -->
						<div id="nav" class="navfull">
							<div class="area clearfix">
								<div class="category-content" id="guide_2">
									
									<div class="category">
										<ul class="category-list" id="js_climit_li">
                               <% var vbx =Commodity_Type;
for (var i = 0; i < vbx.Count; i++)
{%> 
                                <li class="appliance js_toggle relative first">
                                    <div class="category-info">
                                        <h3 class="category-name b-category-name"><i><img src="<%=vbx[i].img %>""></i><a class="ml-22" title="点心"><%=vbx[i].Type_Name %></a></h3>
                                        <em>&gt;</em>
                                    </div>
                                    <div class="menu-item menu-in top">
                                        <div class="area-in">
                                            <div class="area-bg">
                                                <div class="menu-srot">
                                                    <div class="sort-side">
                                                     
                                                        <%for (var j = 0; j < Commodity_1[i].Count; j++)//Aid为1的2级目录名（1，2，3）
                                                        {%>

                                                        <dl class="dl-sort">
                                                            <dt><span title="蛋糕"><%=Commodity_1[i][j].Name %></span></dt>
                                                            
                                                           <%var Commodityv = Commodity[i];
                                                            for (var n = 0; n < Commodityv[j].Count; n++)
                                                            {
                                                                if (j < Commodityv.Count)
                                                                { %>
                                                            <dd><a title="<%=Commodityv[j][n].Name %>"" href="search.aspx?Name=<%=Commodityv[j][n].Name %>"><span><%=Commodityv[j][n].Name %></span></a></dd>
                                                               <% }
                                                                if (Commodityv.Count == 1) { break; }
                                                            } %>
                                                        </dl>
                                                        <%} %>

                                                           
                                                            
                                                        <div class="brand-side">
                                                            <dl class="dl-sort">
                                                                <dt><span>实力商家</span></dt>
                                                                <dd><a rel="nofollow" title="歌芙品牌旗舰店" target="_blank" href="#" rel="nofollow"><span class="red">歌芙品牌旗舰店</span></a></dd>
                                                                <dd><a rel="nofollow" title="爱丝蓝内衣厂" target="_blank" href="#" rel="nofollow"><span>爱丝蓝内衣厂</span></a></dd>
                                                                <dd><a rel="nofollow" title="炫点服饰" target="_blank" href="#" rel="nofollow"><span>炫点服饰</span></a></dd>
                                                                <dd><a rel="nofollow" title="雪茵美内衣厂批发" target="_blank" href="#" rel="nofollow"><span>雪茵美内衣厂批发</span></a></dd>
                                                                <dd><a rel="nofollow" title="金钻夫人" target="_blank" href="#" rel="nofollow"><span>金钻夫人</span></a></dd>
                                                                <dd><a rel="nofollow" title="伊美莎内衣" target="_blank" href="#" rel="nofollow"><span class="red">伊美莎内衣</span></a></dd>
                                                                <dd><a rel="nofollow" title="粉客内衣旗舰店" target="_blank" href="#" rel="nofollow"><span>粉客内衣旗舰店</span></a></dd>
                                                                <dd><a rel="nofollow" title="泽芳行旗舰店" target="_blank" href="#" rel="nofollow"><span>泽芳行旗舰店</span></a></dd>
                                                                <dd><a rel="nofollow" title="彩婷" target="_blank" href="#" rel="nofollow"><span class="red">彩婷</span></a></dd>
                                                                <dd><a rel="nofollow" title="黛兰希" target="_blank" href="#" rel="nofollow"><span>黛兰希</span></a></dd>
                                                                <dd><a rel="nofollow" title="香港优蓓尔防辐射" target="_blank" href="#" rel="nofollow"><span>香港优蓓尔防辐射</span></a></dd>
                                                                <dd><a rel="nofollow" title="蓉莉娜内衣批发" target="_blank" href="#" rel="nofollow"><span>蓉莉娜内衣批发</span></a></dd>
                                                            </dl>
                                                        </div>
                                                    </div>
                                                    
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <b class="arrow"></b>
                                </li>
  <% }%>  
                            </ul>
									</div>
								</div>

							</div>
						</div>
						
						<!--轮播 -->
						<script type="text/javascript">
							(function() {
								$('.am-slider').flexslider();
							});
							$(document).ready(function() {
								$("li").hover(function() {
									$(".category-content .category-list li.first .menu-in").css("display", "none");
									$(".category-content .category-list li.first").removeClass("hover");
									$(this).addClass("hover");
									$(this).children("div.menu-in").css("display", "block")
								}, function() {
									$(this).removeClass("hover")
									$(this).children("div.menu-in").css("display", "none")
								});
							})
						</script>


					<!--小导航 -->
					<div class="am-g am-g-fixed smallnav">
						<div class="am-u-sm-3">
							<a href="sort.html"><img src="../images/navsmall.jpg" />
								<div class="title">商品分类</div>
							</a>
						</div>
						<div class="am-u-sm-3">
							<a href="#"><img src="../images/huismall.jpg" />
								<div class="title">大聚惠</div>
							</a>
						</div>
						<div class="am-u-sm-3">
							<a href="#"><img src="../images/mansmall.jpg" />
								<div class="title">个人中心</div>
							</a>
						</div>
						<div class="am-u-sm-3">
							<a href="#"><img src="../images/moneysmall.jpg" />
								<div class="title">投资理财</div>
							</a>
						</div>
					</div>

					<!--走马灯 -->

					<div class="marqueen">
						<span class="marqueen-title">商城头条</span>
						<div class="demo">

							<ul>
								<li class="title-first"><a target="_blank" href="#">
									<img src="../images/TJ2.jpg"/>
									<span>[特惠]</span>商城爆品1分秒								
								</a></li>
								<li class="title-first"><a target="_blank" href="#">
									<span>[公告]</span>商城与广州市签署战略合作协议
								     <img src="../images/TJ.jpg"/>
								     <p>XXXXXXXXXXXXXXXXXX</p>
							    </a></li>
							    
						<div class="mod-vip">
						 <%if (Session["User"] == null)
                             { %>
                            <div class="member-logout">
                                <a class="am-btn-warning btn" href="../home/Login.aspx">登录</a>
                                <a class="am-btn-warning btn" href="../home/register.aspx">注册</a>
                            </div>
                            <%}
                                                  else
                                                  {  %><div class="m-baseinfo">
                                <a href="../Person/Index">
                                    <img src="../images/getAvatar.do.jpg">
                                </a>
                                <em>
                                    Hi,<span class="s-name"><%=((Orange.ViewModel.VMUser)Session["User"]).nikename%></span>
                                    <a href="#"><p>点击更多优惠活动</p></a>
                                </em>
                            </div>

                            <%} %>
							<div class="member-login">
								<a href="#"><strong>0</strong>待收货</a>
								<a href="#"><strong>0</strong>待发货</a>
								<a href="#"><strong>0</strong>待付款</a>
								<a href="#"><strong>0</strong>待评价</a>
							</div>
							<div class="clear"></div>	
						</div>																	    
							    
								<li><a target="_blank" href="#"><span>[特惠]</span>洋河年末大促，低至两件五折</a></li>
								<li><a target="_blank" href="#"><span>[公告]</span>华北、华中部分地区配送延迟</a></li>
								<li><a target="_blank" href="#"><span>[特惠]</span>家电狂欢千亿礼券 买1送1！</a></li>
								
							</ul>
                        <div class="advTip"><img src="../images/advTip.jpg"/></div>
						</div>
					</div>
					<div class="clear"></div>
				</div>
				<script type="text/javascript">
					if ($(window).width() < 640) {
						function autoScroll(obj) {
							$(obj).find("ul").animate({
								marginTop: "-39px"
							}, 500, function() {
								$(this).css({
									marginTop: "0px"
								}).find("li:first").appendTo(this);
							})
						}
						$(function() {
							setInterval('autoScroll(".demo")', 3000);
						})
					}
				</script>
			</div>
			<div class="shopMainbg">
				<div class="shopMain" id="shopmain">

					<!--今日推荐 -->

					<div class="am-g am-g-fixed recommendation">
						
            <!--今日推荐 -->
            <div class="am-g am-g-fixed recommendation">
            <div class="clock am-u-sm-3">
                <img src="<%=Recommends[0].img %>"/>
                <p>今日<br>推荐</p>
            </div>
            <% foreach (var Recommend1 in Recommend)
                {%>
                <div class="am-u-sm-4 am-u-lg-3 ">
                    <div class="info ">
                        <h3><%=Recommend1.describe1 %></h3>
                        <h4><%=Recommend1.describe2 %></h4>
                    </div>
                    <div class="recommendationMain ">
                        <img src="<%=Recommend1.img%>"></img>
                    </div>
                </div>

           <% }%> 

					</div>
					<div class="clear "></div>
					<!--热门活动 -->

					<div class="am-container activity ">
						<div class="shopTitle ">
							<h4>活动</h4>
							<h3>每期活动 优惠享不停 </h3>
							<span class="more ">
                               <a href="# ">全部活动<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                            </span>
						</div>
					
					  
                <div class="am-g am-g-fixed ">
                    <div class="am-u-sm-3 ">
                        <div class="icon-sale one "></div>
                        <h4><%=huodong[0].describe1 %></h4>
                        <div class="activityMain ">
                            <img src="<%=huodong[0].img %>"></img>
                        </div>
                        <div class="info">
                            <h3><%=huodong[0].describe2%></h3>
                        </div>
                    </div>

                    <div class="am-u-sm-3 ">
                        <div class="icon-sale two "></div>
                        <h4><%=huodong[1].describe1 %></h4>
                        <div class="activityMain ">
                            <img src="<%=huodong[1].img%>"></img>
                        </div>
                        <div class="info ">
                            <h3><%=huodong[1].describe2 %></h3>
                        </div>
                    </div>

                    <div class="am-u-sm-3 ">
                        <div class="icon-sale three "></div>
                        <h4><%=huodong[2].describe1 %></h4>
                        <div class="activityMain ">
                            <img src="<%=huodong[2].img %>"></img>
                        </div>
                        <div class="info ">
                            <h3><%=huodong[2].describe2 %></h3>
                        </div>
                    </div>

                    <div class="am-u-sm-3 last ">
                        <div class="icon-sale "></div>
                        <h4><%=huodong[3].describe1 %></h4>
                        <div class="activityMain ">
                            <img src="<%=huodong[3].img %>"/>
                        </div>
                        <div class="info ">
                            <h3><%=huodong[3].describe2 %></h3>
                        </div>
                    </div>

                </div>
                   </div>
					<div class="clear "></div>

					
        <!--甜点-->
        <div id="f1">
           
            <div class="am-container ">
                <div class="shopTitle ">
                    <h4><%=Comm1.Name %></h4>
                    <h3><%=Comm1.Slogan %></h3>


                    <div class="today-brands ">
                        <% foreach (var CommV in Comm)
                            {%>
                            <a href="introduction.aspx?Name=<%=CommV.Name %> "><%=CommV.Name %></a>
                       <% }%> 
                    </div>
                    <span class="more ">
                        <a class="more-link " href="# ">更多美味</a>
                    </span>

                </div>
            </div>
       

            <div class="am-g am-g-fixed floodFive ">
                <div style="width:20px;height:10px"></div>
                <div class="am-u-sm-5 am-u-md-3 text-one list">
                    <div class="word">
                        <a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
                        <a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
                    </div>
                    <a href="# ">
                        <div class="outer-con ">
                            <div class="title ">
                                <%=tianpinfirst[0].describe1%>
                            </div>
                            <div class="sub-title ">
                                <%=tianpinfirst[0].describe2 %>
                            </div>
                        </div>
                        <img src=" <%=tianpinfirst[0].img %>" />
                    </a>
                    <div class="triangle-topright"></div>
                </div>
                <div class="am-u-sm-7 am-u-md-5 am-u-lg-2 text-two">
                    <div class="outer-con ">
                        <div class="title ">
                          <%=tianpin[0].Name %>
                        </div>
                        <div class="sub-title ">
                            ¥<%=tianpin[0].Price %>
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md  seprate"></i>
                    </div>
                    <a href="introduction.aspx?id=<%=tianpin[1].Id %>"><img src="<%=tianpin[1].img %>" /></a>
                </div>

                <div class="am-u-md-2 am-u-lg-2 text-three sug">
                    <div class="outer-con ">
                        <div class="title ">
                            <%=tianpin[1].Name %>
                        </div>
                        <div class="sub-title ">
                            ¥<%=tianpin[1].Price %>
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md  seprate"></i>
                    </div>
                    <a href="introduction.aspx?id=<%=tianpin[1].Id%>"><img src="<%=tianpin[1].img %>" /></a>
                </div>
                <div class="am-u-md-2 am-u-lg-2 text-three big">
                    <div class="outer-con ">
                        <div class="title ">
                            <%=tianpin[2].Name %>
                        </div>
                        <div class="sub-title ">
                            ¥<%=tianpin[2].Price %>
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md  seprate"></i>
                    </div>
                    <a href="introduction.aspx?id=<%=tianpin[2].Id %>"><img src="<%=tianpin[2].img%>" /></a>
                </div>
                <div class="am-u-sm-4 am-u-md-5 am-u-lg-4 text-five">
                    <div class="outer-con ">
                        <div class="title ">
                            <%=tianpin[3].Name%>
                        </div>
                        <div class="sub-title ">
                            ¥<%=tianpin[3].Price%>
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md  seprate"></i>
                    </div>
                    <a href="introduction.aspx?id=<%=tianpin[3].Id %>"><img src="<%=tianpin[3].img %>" /></a>
                </div>
                <div class="am-u-sm-4 am-u-md-2 am-u-lg-2 text-six">
                    <div class="outer-con ">
                        <div class="title ">
                            <%=tianpin[4].Name %>
                        </div>
                        <div class="sub-title ">
                            ¥<%=tianpin[4].Price %>
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md  seprate"></i>
                    </div>
                    <a href="introduction.aspx?id=<%=tianpin[4].Id %>"><img src="<%=tianpin[4].img %>" /></a>
                </div>
                <div class="am-u-sm-4 am-u-md-2 am-u-lg-4 text-six big">
                    <div class="outer-con ">
                        <div class="title ">
                           <%=tianpin[5].Name %>
                        </div>
                        <div class="sub-title ">
                            ¥<%=tianpin[5].Price %>
                        </div>
                        <i class="am-icon-shopping-basket am-icon-md  seprate"></i>
                    </div>
                    <a href="introduction.aspx?id=<%=tianpin[5].Id %>"><img src="<%=tianpin[5].img %>" /></a>
                </div>
            </div>

            <div class="clear "></div>
        </div>

                    <div id="f2">
					<!--坚果-->
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>坚果</h4>
							<h3>酥酥脆脆，回味无穷</h3>
							<div class="today-brands ">
								<a href="# ">腰果</a>
								<a href="# ">松子</a>
								<a href="# ">夏威夷果 </a>
								<a href="# ">碧根果</a>
								<a href="# ">开心果</a>
								<a href="# ">核桃仁</a>
							</div>
							<span class="more ">
                                <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                            </span>
						</div>
					</div>
					<div class="am-g am-g-fixed floodFour">
						<div class="am-u-sm-5 am-u-md-4 text-one list ">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>
							<a href="# ">
								<div class="outer-con ">
									<div class="title ">
									开抢啦！
									</div>
									<div class="sub-title ">
										零食大礼包
									</div>									
								</div>
                                  <img src="../images/act1.png " />								
							</a>
							<div class="triangle-topright"></div>						
						</div>
						
							<div class="am-u-sm-7 am-u-md-4 text-two sug">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
									<div class="sub-title ">
										¥13.8
									</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>									
								</div>
								<a href="# "><img src="../images/6.jpg" /></a>
							</div>

							<div class="am-u-sm-7 am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>									
								</div>
								<a href="# "><img src="../images/7.jpg" /></a>
							</div>


						<div class="am-u-sm-3 am-u-md-2 text-three big">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/10.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three sug">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/9.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/8.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three last big ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/10.jpg" /></a>
						</div>

					</div>
                 <div class="clear "></div>                 
                 </div>				

					<!--甜点-->
					<div id="f3">
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>甜品</h4>
							<h3>每一道甜品都有一个故事</h3>
							<div class="today-brands ">
								<a href="# ">桂花糕</a>
								<a href="# ">奶皮酥</a>
								<a href="# ">栗子糕 </a>
								<a href="# ">马卡龙</a>
								<a href="# ">铜锣烧</a>
								<a href="# ">豌豆黄</a>
							</div>
							<span class="more ">
                                 <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                            </span>
						</div>
					</div>
					
					<div class="am-g am-g-fixed floodFive ">
												
						<div class="am-u-sm-5 am-u-md-3 text-one list">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>						
							<a href="# ">
								<img src="../images/act1.png " />
								<div class="outer-con ">
									<div class="title ">
										零食大礼包开抢啦
									</div>
									<div class="sub-title ">
										当小鱼儿恋上软豆腐
									</div>
								</div>
							</a>
							<div class="triangle-topright"></div>	
						</div>
						<div class="am-u-sm-7 am-u-md-5 am-u-lg-2 text-two">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>									
								</div>
								<a href="# "><img src="../images/1.jpg " /></a>						
						</div>
						
						<div class="am-u-md-2 am-u-lg-2 text-three sug">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>								
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/2.jpg" /></a>
						</div>
						<div class="am-u-md-2 am-u-lg-2 text-three big">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/5.jpg" /></a>
						</div>			
						<div class="am-u-sm-4 am-u-md-5 am-u-lg-4 text-five">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>								
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/3.jpg" /></a>
						</div>	
						<div class="am-u-sm-4 am-u-md-2 am-u-lg-2 text-six">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/4.jpg" /></a>
						</div>	
						<div class="am-u-sm-4 am-u-md-2 am-u-lg-4 text-six big">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/5.jpg" /></a>
						</div>							
					</div>
					<div class="clear "></div>
					</div>

                    <div id="f4">
					<!--坚果-->
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>坚果</h4>
							<h3>酥酥脆脆，回味无穷</h3>
							<div class="today-brands ">
								<a href="# ">腰果</a>
								<a href="# ">松子</a>
								<a href="# ">夏威夷果 </a>
								<a href="# ">碧根果</a>
								<a href="# ">开心果</a>
								<a href="# ">核桃仁</a>
							</div>
							<span class="more ">
                                <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                            </span>
						</div>
					</div>
					<div class="am-g am-g-fixed floodFour">
						<div class="am-u-sm-5 am-u-md-4 text-one list ">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>
							<a href="# ">
								<div class="outer-con ">
									<div class="title ">
									开抢啦！
									</div>
									<div class="sub-title ">
										零食大礼包
									</div>									
								</div>
                                  <img src="../images/act1.png " />								
							</a>
							<div class="triangle-topright"></div>						
						</div>
						
							<div class="am-u-sm-7 am-u-md-4 text-two sug">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
									<div class="sub-title ">
										¥13.8
									</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>									
								</div>
								<a href="# "><img src="../images/6.jpg" /></a>
							</div>

							<div class="am-u-sm-7 am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>									
								</div>
								<a href="# "><img src="../images/7.jpg" /></a>
							</div>


						<div class="am-u-sm-3 am-u-md-2 text-three big">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/10.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three sug">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/9.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/8.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three last big ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/10.jpg" /></a>
						</div>

					</div>
                 <div class="clear "></div>                 
                 </div>	
                 
					<!--甜点-->
					<div id="f5">
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>甜品</h4>
							<h3>每一道甜品都有一个故事</h3>
							<div class="today-brands ">
								<a href="# ">桂花糕</a>
								<a href="# ">奶皮酥</a>
								<a href="# ">栗子糕 </a>
								<a href="# ">马卡龙</a>
								<a href="# ">铜锣烧</a>
								<a href="# ">豌豆黄</a>
							</div>
							<span class="more ">
                                 <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                            </span>
						</div>
					</div>
					
					<div class="am-g am-g-fixed floodFive ">
												
						<div class="am-u-sm-5 am-u-md-3 text-one list">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>					
							<a href="# ">
								<img src="../images/act1.png " />
								<div class="outer-con ">
									<div class="title ">
										零食大礼包开抢啦
									</div>
									<div class="sub-title ">
										当小鱼儿恋上软豆腐
									</div>
								</div>
							</a>
							<div class="triangle-topright"></div>	
						</div>
						<div class="am-u-sm-7 am-u-md-5 am-u-lg-2 text-two">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>									
								</div>
								<a href="# "><img src="../images/1.jpg " /></a>						
						</div>
						
						<div class="am-u-md-2 am-u-lg-2 text-three sug">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>								
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/2.jpg" /></a>
						</div>
						<div class="am-u-md-2 am-u-lg-2 text-three big">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/5.jpg" /></a>
						</div>			
						<div class="am-u-sm-4 am-u-md-5 am-u-lg-4 text-five">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>								
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/3.jpg" /></a>
						</div>	
						<div class="am-u-sm-4 am-u-md-2 am-u-lg-2 text-six">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/4.jpg" /></a>
						</div>	
						<div class="am-u-sm-4 am-u-md-2 am-u-lg-4 text-six big">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/5.jpg" /></a>
						</div>							
					</div>
					<div class="clear "></div>
					</div>

                    <div id="f6">
					<!--坚果-->
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>坚果</h4>
							<h3>酥酥脆脆，回味无穷</h3>
							<div class="today-brands ">
								<a href="# ">腰果</a>
								<a href="# ">松子</a>
								<a href="# ">夏威夷果 </a>
								<a href="# ">碧根果</a>
								<a href="# ">开心果</a>
								<a href="# ">核桃仁</a>
							</div>
							<span class="more ">
                                <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                            </span>
						</div>
					</div>
					<div class="am-g am-g-fixed floodFour">
						<div class="am-u-sm-5 am-u-md-4 text-one list ">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>
							<a href="# ">
								<div class="outer-con ">
									<div class="title ">
									开抢啦！
									</div>
									<div class="sub-title ">
										零食大礼包
									</div>									
								</div>
                                  <img src="../images/act1.png " />								
							</a>
							<div class="triangle-topright"></div>						
						</div>
						
							<div class="am-u-sm-7 am-u-md-4 text-two sug">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
									<div class="sub-title ">
										¥13.8
									</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>									
								</div>
								<a href="# "><img src="../images/6.jpg" /></a>
							</div>

							<div class="am-u-sm-7 am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>									
								</div>
								<a href="# "><img src="../images/7.jpg" /></a>
							</div>


						<div class="am-u-sm-3 am-u-md-2 text-three big">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/10.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three sug">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/9.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>									
							</div>
							<a href="# "><img src="../images/8.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three last big ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>									
							</div>
							<a href="# "><img src="../images/10.jpg" /></a>
						</div>

					</div>
                 <div class="clear "></div>                 
                 </div>	
                 
					<!--甜点-->
					<div id="f7">
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>甜品</h4>
							<h3>每一道甜品都有一个故事</h3>
							<div class="today-brands ">
								<a href="# ">桂花糕</a>
								<a href="# ">奶皮酥</a>
								<a href="# ">栗子糕 </a>
								<a href="# ">马卡龙</a>
								<a href="# ">铜锣烧</a>
								<a href="# ">豌豆黄</a>
							</div>
							<span class="more ">
                                 <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                            </span>
						</div>
					</div>
					
					<div class="am-g am-g-fixed floodFive ">
												
						<div class="am-u-sm-5 am-u-md-3 text-one list">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>						
							<a href="# ">
								<img src="../images/act1.png " />
								<div class="outer-con ">
									<div class="title ">
										零食大礼包开抢啦
									</div>
									<div class="sub-title ">
										当小鱼儿恋上软豆腐
									</div>
								</div>
							</a>
							<div class="triangle-topright"></div>	
						</div>
						<div class="am-u-sm-7 am-u-md-5 am-u-lg-2 text-two">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>									
								</div>
								<a href="# "><img src="../images/1.jpg " /></a>						
						</div>
						
						<div class="am-u-md-2 am-u-lg-2 text-three sug">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>								
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/2.jpg" /></a>
						</div>
						<div class="am-u-md-2 am-u-lg-2 text-three big">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/5.jpg" /></a>
						</div>			
						<div class="am-u-sm-4 am-u-md-5 am-u-lg-4 text-five">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>								
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/3.jpg" /></a>
						</div>	
						<div class="am-u-sm-4 am-u-md-2 am-u-lg-2 text-six">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/4.jpg" /></a>
						</div>	
						<div class="am-u-sm-4 am-u-md-2 am-u-lg-4 text-six big">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/5.jpg" /></a>
						</div>							
					</div>

					<div class="clear "></div>
					</div>

                    <div id="f8">
					<!--坚果-->
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>坚果</h4>
							<h3>酥酥脆脆，回味无穷</h3>
							<div class="today-brands ">
								<a href="# ">腰果</a>
								<a href="# ">松子</a>
								<a href="# ">夏威夷果 </a>
								<a href="# ">碧根果</a>
								<a href="# ">开心果</a>
								<a href="# ">核桃仁</a>
							</div>
							<span class="more ">
                                <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                            </span>
						</div>
					</div>
					<div class="am-g am-g-fixed floodFour">
						<div class="am-u-sm-5 am-u-md-4 text-one list ">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>
							<a href="# ">
								<div class="outer-con ">
									<div class="title ">
									开抢啦！
									</div>
									<div class="sub-title ">
										零食大礼包
									</div>									
								</div>
                                  <img src="../images/act1.png " />								
							</a>
							<div class="triangle-topright"></div>						
						</div>
						
							<div class="am-u-sm-7 am-u-md-4 text-two sug">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
									<div class="sub-title ">
										¥13.8
									</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>									
								</div>
								<a href="# "><img src="../images/6.jpg" /></a>
							</div>

							<div class="am-u-sm-7 am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>									
								</div>
								<a href="# "><img src="../images/7.jpg" /></a>
							</div>


						<div class="am-u-sm-3 am-u-md-2 text-three big">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/10.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three sug">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/9.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/8.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three last big ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/10.jpg" /></a>
						</div>

					</div>
                 <div class="clear "></div>                 
                 </div>				

					<!--甜点-->
					<div id="f9">
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>甜品</h4>
							<h3>每一道甜品都有一个故事</h3>
							<div class="today-brands ">
								<a href="# ">桂花糕</a>
								<a href="# ">奶皮酥</a>
								<a href="# ">栗子糕 </a>
								<a href="# ">马卡龙</a>
								<a href="# ">铜锣烧</a>
								<a href="# ">豌豆黄</a>
							</div>
							<span class="more ">
                                 <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                            </span>
						</div>
					</div>
					
					<div class="am-g am-g-fixed floodFive ">
												
						<div class="am-u-sm-5 am-u-md-3 text-one list">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>							
							<a href="# ">
								<img src="../images/act1.png " />
								<div class="outer-con ">
									<div class="title ">
										零食大礼包开抢啦
									</div>
									<div class="sub-title ">
										当小鱼儿恋上软豆腐
									</div>
								</div>
							</a>
							<div class="triangle-topright"></div>	
						</div>
						<div class="am-u-sm-7 am-u-md-5 am-u-lg-2 text-two">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>									
								</div>
								<a href="# "><img src="../images/1.jpg " /></a>						
						</div>
						
						<div class="am-u-md-2 am-u-lg-2 text-three sug">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>								
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/2.jpg" /></a>
						</div>
						<div class="am-u-md-2 am-u-lg-2 text-three big">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/5.jpg" /></a>
						</div>			
						<div class="am-u-sm-4 am-u-md-5 am-u-lg-4 text-five">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>								
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/3.jpg" /></a>
						</div>	
						<div class="am-u-sm-4 am-u-md-2 am-u-lg-2 text-six">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/4.jpg" /></a>
						</div>	
						<div class="am-u-sm-4 am-u-md-2 am-u-lg-4 text-six big">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/5.jpg" /></a>
						</div>							
					</div>

					<div class="clear "></div>
					</div>

                    <div id="f10">
					<!--坚果-->
					<div class="am-container ">
						<div class="shopTitle ">
							<h4>坚果</h4>
							<h3>酥酥脆脆，回味无穷</h3>
							<div class="today-brands ">
								<a href="# ">腰果</a>
								<a href="# ">松子</a>
								<a href="# ">夏威夷果 </a>
								<a href="# ">碧根果</a>
								<a href="# ">开心果</a>
								<a href="# ">核桃仁</a>
							</div>
							<span class="more ">
                                <a href="# ">更多美味<i class="am-icon-angle-right" style="padding-left:10px ;" ></i></a>
                            </span>
						</div>
					</div>
					<div class="am-g am-g-fixed floodFour">
						<div class="am-u-sm-5 am-u-md-4 text-one list ">
							<div class="word">
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>	
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>
								<a class="outer" href="#"><span class="inner"><b class="text">核桃</b></span></a>									
							</div>
							<a href="# ">
								<div class="outer-con ">
									<div class="title ">
									开抢啦！
									</div>
									<div class="sub-title ">
										零食大礼包
									</div>									
								</div>
                                  <img src="../images/act1.png " />								
							</a>
							<div class="triangle-topright"></div>						
						</div>
						
							<div class="am-u-sm-7 am-u-md-4 text-two sug">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>									
									<div class="sub-title ">
										¥13.8
									</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>									
								</div>
								<a href="# "><img src="../images/6.jpg" /></a>
							</div>

							<div class="am-u-sm-7 am-u-md-4 text-two">
								<div class="outer-con ">
									<div class="title ">
										雪之恋和风大福
									</div>
									<div class="sub-title ">
										¥13.8
									</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>									
								</div>
								<a href="# "><img src="../images/7.jpg" /></a>
							</div>


						<div class="am-u-sm-3 am-u-md-2 text-three big">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/10.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three sug">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/9.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/8.jpg" /></a>
						</div>

						<div class="am-u-sm-3 am-u-md-2 text-three last big ">
							<div class="outer-con ">
								<div class="title ">
									小优布丁
								</div>
								<div class="sub-title ">
									¥4.8
								</div>
<i class="am-icon-shopping-basket am-icon-md  seprate"></i>								
							</div>
							<a href="# "><img src="../images/10.jpg" /></a>
						</div>

					</div>
                 <div class="clear "></div>                 
                 </div>				


				</div>
			</div>
</asp:Content>

