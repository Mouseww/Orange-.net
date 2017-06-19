<%@ Page Title="" Language="C#" MasterPageFile="~/home/MasterPage.master" AutoEventWireup="true" CodeFile="introduction.aspx.cs" Inherits="home_introduction" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css" />
		<link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />

		<link href="../basic/css/demo.css" rel="stylesheet" type="text/css" />

		<link type="text/css" href="../css/optstyle.css" rel="stylesheet" />
		<link type="text/css" href="../css/style.css" rel="stylesheet" />

		<script type="text/javascript" src="../basic/js/jquery-1.7.min.js"></script>
		<script type="text/javascript" src="../basic/js/quick_links.js"></script>

		<script type="text/javascript" src="../AmazeUI-2.4.2/assets/js/amazeui.js"></script>
		<script type="text/javascript" src="../js/jquery.imagezoom.min.js"></script>
		<script type="text/javascript" src="../js/jquery.flexslider.js"></script>
		<script type="text/javascript" src="../js/list.js"></script>

    		<div class="clear"></div>
            <b class="line"></b>
	<%if (msg != null)
        { %>
    <script>alert(msg);</script>
    <%} %>
			<div class="listMain">

				<!--分类-->
			<div class="nav-table">
					   <div class="long-title"><span class="all-goods">全部分类</span></div>
					   <div class="nav-cont">
							<ul>
								<li class="index"><a href="#">首页</a></li>
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
			</div>
				<ol class="am-breadcrumb am-breadcrumb-slash">
					<li><a href="#">首页</a></li>
					<li><a href="#">分类</a></li>
					<li class="am-active">内容</li>
				</ol>
				<script type="text/javascript">
					$(function() {});
					$(window).load(function() {
						$('.flexslider').flexslider({
							animation: "slide",
							start: function(slider) {
								$('body').removeClass('loading');
							}
						});
					});
				</script>
				<div class="scoll">
					<section class="slider">
						<div class="flexslider">
							<ul class="slides">
								<li>
                            <img src="<%=Introduction.img%>" title="pic" />
                        </li>
                        <li>
                            <img src="<%=Introduction.img%>" />
                        </li>
                        <li>
                            <img src="<%=Introduction.img%>" />
                        </li>
							</ul>
						</div>
					</section>
				</div>

				<!--放大镜-->

				<div class="item-inform">
					<div class="clearfixLeft" id="clearcontent">

						<div class="box">
							<script type="text/javascript">
								$(document).ready(function() {
									$(".jqzoom").imagezoom();
									$("#thumblist li a").click(function() {
										$(this).parents("li").addClass("tb-selected").siblings().removeClass("tb-selected");
										$(".jqzoom").attr('src', $(this).find("img").attr("mid"));
										$(".jqzoom").attr('rel', $(this).find("img").attr("big"));
									});
								});
							</script>

							<div class="tb-booth tb-pic tb-s310">
                        <a href="<%=Introduction.img%>"><img src="<%=Introduction.img%>" alt="细节展示放大镜特效" rel="<%=Introduction.img%>" class="jqzoom" /></a>
                    </div>
                    <ul class="tb-thumb" id="thumblist">
                        <li class="tb-selected">
                            <div class="tb-pic tb-s40">
                                <a href="#"><img src="<%=Introduction.img%>" mid="<%=Introduction.img%>" big="<%=Introduction.img%>"></a>
                            </div>
                        </li>

                    </ul>
						</div>

						<div class="clear"></div>
					</div>

					<div class="clearfixRight">

						<!--规格属性-->
						<!--名称-->
						<div class="tb-detail-hd">
							<h1>	
				 <%=Introduction.Name %>
	          </h1>
						</div>
						<div class="tb-detail-list">
							<!--价格-->
							<div class="tb-detail-price">
                                <!--活动	-->
							<div class="shopPromotion gold">
								<div class="hot">
									<dt class="tb-metatit">店铺优惠</dt>
									<div class="gold-list">
										<p>购物满2件打8折，满3件7折<span>点击领券<i class="am-icon-sort-down"></i></span></p>
									</div>
								</div>
								<div class="clear"></div>
								<div class="coupon">
									<dt class="tb-metatit">优惠券</dt>
									<div class="gold-list">
										<ul>
											<li>125减5</li>
											<li>198减10</li>
											<li>298减20</li>
										</ul>
									</div>
								</div>
							</div>
								<li class="price iteminfo_price">
									<dt>促销价</dt>
									<dd><em>¥</em><b class="sys_item_price"><%=Introduction.Price %></b>  </dd>                                 
								</li>
								<li class="price iteminfo_mktprice">
									<dt>原价</dt>
									<dd><em>¥</em><b class="sys_item_mktprice"><%=Introduction.Price_old %></b></dd>									
								</li>
								<div class="clear"></div>
							</div>

							<!--地址-->
							<dl class="iteminfo_parameter freight">
								<dt>配送至</dt>
								<div class="iteminfo_freprice">
									<div class="am-form-content address">
										<select data-am-selected>
											<option value="a">浙江省</option>
											<option value="b">湖北省</option>
										</select>
										<select data-am-selected>
											<option value="a">温州市</option>
											<option value="b">武汉市</option>
										</select>
										<select data-am-selected>
											<option value="a">瑞安区</option>
											<option value="b">洪山区</option>
										</select>
									</div>
									<div class="pay-logis">
										快递<b class="sys_item_freprice">10</b>元
									</div>
								</div>
							</dl>
							<div class="clear"></div>

							<!--销量-->
							<ul class="tm-ind-panel">
								<li class="tm-ind-item tm-ind-sellCount canClick">
									<div class="tm-indcon"><span class="tm-label">月销量</span><span class="tm-count">1015</span></div>
								</li>
								<li class="tm-ind-item tm-ind-sumCount canClick">
									<div class="tm-indcon"><span class="tm-label">累计销量</span><span class="tm-count">6015</span></div>
								</li>
								<li class="tm-ind-item tm-ind-reviewCount canClick tm-line3">
									<div class="tm-indcon"><span class="tm-label">累计评价</span><span class="tm-count">640</span></div>
								</li>
							</ul>
							<div class="clear"></div>

							<!--各种规格-->
							<dl class="iteminfo_parameter sys_item_specpara">
								<dt class="theme-login"><div class="cart-title">可选规格<span class="am-icon-angle-right"></span></div></dt>
								<dd>
									<!--操作页面-->
                                    <script>
                                var attr_id1 = null;
                                var attr_id2 = null;
                                var click_id = null;
                                var click_id2 = null;
                            </script>
									<div class="theme-popover-mask"></div>

									<div class="theme-popover">
										<div class="theme-span"></div>
										<div class="theme-poptit">
											<a href="javascript:;" title="关闭" class="close">×</a>
										</div>
										<div class="theme-popbod dform">
											<form class="theme-signin" name="loginform" action="" method="post">

												<div class="theme-signin-left">

													<div class="theme-options">
                                                <div id="cart-title1" class="cart-title"><%=attr_option1[0].type_name %></div>
                                                <ul>
                                                    <% foreach (var attribute in attr_option1)
                                                        {%>


                                                    <li id="attribute_<%=attribute.Id%>" class="sku-line"><%=attribute.option %><i></i></li>
                                                    <script>

                                                        $('#attribute_<%=attribute.Id%>').toggle(function () {
                                                            if (click_id != null) {
                                                                $('#attribute_' + click_id).click();
                                                            }
                                                            click_id = "<%=attribute.Id%>";
                                                                attr_id1 = "<%=attribute.Id%>";
                                                                attr_name1 = "<%=attribute.option%>";

                                                            }, function () {
                                                                attr_id1 = null;
                                                                attr_name1 = null;
                                                            })
                                                       
                                                    </script>



                                                   <% }%> 
                                                </ul>
                                            </div>
                                            <div class="theme-options">
                                                <div id="cart-title2" class="cart-title"><%=attr_option2[0].type_name%></div>
                                                <ul>
                                                    <%foreach (var attr in attr_option2)
                                                        { %>
                                                    <li id="attr_<%=attr.Id%>" class="sku-line"><%=attr.option%><i></i></li>
                                                    <script>

                                                       
                                                        $('#attr_<%=attr.Id%>').toggle(function () {
                                                            if (click_id2 != null) {
                                                                $('#attr_' + click_id2).click();
                                                            }
                                                            click_id2 = "<%=attr.Id%>";
                                                                attr_id2 = "<%=attr.Id%>";
                                                                attr_name2 = "<%=attr.option%>";
                                                            },
                                                            function () {
                                                                attr_id2 = null;
                                                                attr_name2 = null;
                                                            }
                                                            )
                                                       
                                                    </script>
                                                   <%} %> 
                                                </ul>
                                            </div>
													<div class="theme-options">
														<div class="cart-title number">数量</div>
														<dd>
															<input id="min" class="am-btn am-btn-default" name="" type="button" value="-" />
															<input id="text_box" name="" type="text" value="1" style="width:30px;" />
															<input id="add" class="am-btn am-btn-default" name="" type="button" value="+" />
															<span id="Stock" class="tb-hidden">库存<span class="stock">1000</span>件</span>
														</dd>

													</div>
													<div class="clear"></div>

													<div class="btn-op">
														<div class="btn am-btn am-btn-warning">确认</div>
														<div class="btn close am-btn am-btn-warning">取消</div>
													</div>
                                                    <div class="pay">
							<div class="pay-opt">
							<a href="home.html"><span class="am-icon-home am-icon-fw">首页</span></a>
							<a><span class="am-icon-heart am-icon-fw">收藏</span></a>
							
							</div>
							<li>
								<div class="clearfix tb-btn tb-btn-buy theme-login">
									<a id="LikBuy" title="点此按钮到下一步确认购买信息" href="javascript:void(0)">立即购买</a>
								</div>
							</li>
							<li>
								<div class="clearfix tb-btn tb-btn-basket theme-login">
									<a id="LikBasket" title="加入购物车" href="javascript:void(0)"><i></i>加入购物车</a>
								</div>
							</li>
						</div>
												</div>
												<div class="theme-signin-right">
													<div class="img-info">
														<img src="../images/songzi.jpg" />
													</div>
													<div class="text-info">
														<span class="J_Price price-now">¥<%=Introduction.Price %></span>
														<span id="Stock" class="tb-hidden">库存<span class="stock"><%=Introduction.Number%></span>件</span>
													</div>
												</div>

											</form>
										</div>
									</div>

                                    
								</dd>
							</dl>
                          
    <script>
        var Price = null;
        $(".sku-line").click(
            function () {
                if (attr_id1 == null || attr_id2 == null) {
                    return;
                }
                else {
                  
                    $.post("introduction.ashx", {"type":"chenge_Price","kouwei": attr_id1, "guige": attr_id2 }, function (data) {
                        var pri = data.split(',');
                        $(".sys_item_price").text(pri[1]);
                        Price = pri[3];
                        $(".stock").text(pri[0]);
                        $('.sys_item_mktprice').text(pri[2])


                    }
        );
                  
                }
            }
        )

    </script>
							<div class="clear"></div>
							
						</div>

						

					</div>

					<div class="clear"></div>

				</div>
                <script>
       
        $('a#LikBasket').click(function () {
            if (attr_id1 != null && attr_id2 != null) {
                var number = $('#text_box').val();
                //document.location.href = "../Introduction/Index?id=@ViewBag.Introduction.Id&&Commodity_id="+Price+"&&attr=" + attr_id1 + "&&attr2=" + attr_id2 + "&&number=" + number + "&&Price=" + $('.sys_item_price').text() + "&&Old_Price=" + $('.sys_item_mktprice').text();
                $.post("introduction.aspx", {"id":"<%=Introduction.Id%>", "type":"add_shopcar","Commodity_id": Price, "attr": attr_id1, "attr2": attr_id2, "number": number, "Price": $('.sys_item_price').text(), "Old_Price": $('.sys_item_mktprice').text() }, function (data) {
                    alert('添加成功');
                })
            }
            else {
                alert("请先选择商品属性");
            }
        })
        $('a#LikBuy').click(function () {
            if (attr_id1 != null && attr_id2 != null) {
                var number = $('#text_box').val();
                document.location.href = "pay.aspx?id=<%=Introduction.Id%>&&Commodity_id=<%=Introduction.Id%>&&op_type=<%=attr_option1[0].type_name%>&&op_type2=<%=attr_option2[0].type_name%>&&attr=" + attr_name1 + "&&attr2=" + attr_name2 + "&&number=" + number + "&&img=<%=Introduction.img%>" + "&&Commodity_name=<%=Introduction.Name%>&&Price=" + $('.sys_item_price').text() + "&&Old_Price=" + $('.sys_item_mktprice').text()+"&&attr_id="+attr_id1+"&&attr2_id="+attr_id2;
            }
            else {
                alert("请先选择商品属性");
            }
        })


    </script>
				<!--优惠套装-->
				<%--<div class="match">
					<div class="match-title">优惠套装</div>
					<div class="match-comment">
						<ul class="like_list">
							<li>
								<div class="s_picBox">
									<a class="s_pic" href="#"><img src="../images/cp.jpg"></a>
								</div> <a class="txt" target="_blank" href="#">萨拉米 1+1小鸡腿</a>
								<div class="info-box"> <span class="info-box-price">¥ 29.90</span> <span class="info-original-price">￥ 199.00</span> </div>
							</li>
							<li class="plus_icon"><i>+</i></li>
							<li>
								<div class="s_picBox">
									<a class="s_pic" href="#"><img src="../images/cp2.jpg"></a>
								</div> <a class="txt" target="_blank" href="#">ZEK 原味海苔</a>
								<div class="info-box"> <span class="info-box-price">¥ 8.90</span> <span class="info-original-price">￥ 299.00</span> </div>
							</li>
							<li class="plus_icon"><i>=</i></li>
							<li class="total_price">
								<p class="combo_price"><span class="c-title">套餐价:</span><span>￥35.00</span> </p>
								<p class="save_all">共省:<span>￥463.00</span></p> <a href="#" class="buy_now">立即购买</a> </li>
							<li class="plus_icon"><i class="am-icon-angle-right"></i></li>
						</ul>
					</div>
				</div>--%>
				<div class="clear"></div>
				
							
				<!-- introduce-->

				<div class="introduce">
					<%--<div class="browse">
					    <div class="mc"> 
						     <ul>					    
						     	<div class="mt">            
						            <h2>看了又看</h2>        
					            </div>
						     	
							      <li class="first">
							      	<div class="p-img">                    
							      		<a  href="#"> <img class="" src="../images/browse1.jpg"> </a>               
							      	</div>
							      	<div class="p-name"><a href="#">
							      		【三只松鼠_开口松子】零食坚果特产炒货东北红松子原味
							      	</a>
							      	</div>
							      	<div class="p-price"><strong>￥35.90</strong></div>
							      </li>
							      <li>
							      	<div class="p-img">                    
							      		<a  href="#"> <img class="" src="../images/browse1.jpg"> </a>               
							      	</div>
							      	<div class="p-name"><a href="#">
							      		【三只松鼠_开口松子】零食坚果特产炒货东北红松子原味
							      	</a>
							      	</div>
							      	<div class="p-price"><strong>￥35.90</strong></div>
							      </li>
							      <li>
							      	<div class="p-img">                    
							      		<a  href="#"> <img class="" src="../images/browse1.jpg"> </a>               
							      	</div>
							      	<div class="p-name"><a href="#">
							      		【三只松鼠_开口松子】零食坚果特产炒货东北红松子原味
							      	</a>
							      	</div>
							      	<div class="p-price"><strong>￥35.90</strong></div>
							      </li>							      
							      <li>
							      	<div class="p-img">                    
							      		<a  href="#"> <img class="" src="../images/browse1.jpg"> </a>               
							      	</div>
							      	<div class="p-name"><a href="#">
							      		【三只松鼠_开口松子】零食坚果特产炒货东北红松子原味
							      	</a>
							      	</div>
							      	<div class="p-price"><strong>￥35.90</strong></div>
							      </li>							      
							      <li>
							      	<div class="p-img">                    
							      		<a  href="#"> <img class="" src="../images/browse1.jpg"> </a>               
							      	</div>
							      	<div class="p-name"><a href="#">
							      		【三只松鼠_开口松子218g】零食坚果特产炒货东北红松子原味
							      	</a>
							      	</div>
							      	<div class="p-price"><strong>￥35.90</strong></div>
							      </li>							      
					      
						     </ul>					
					    </div>
					</div>--%>
					<div class="introduceMain">
						<div class="am-tabs" data-am-tabs>
							<ul class="am-avg-sm-3 am-tabs-nav am-nav am-nav-tabs">
								
									</ul>
									<div class="clear"></div>

								</div>

							</div>

						</div>

						

			
					</div>

				</div>
                </div>
    
			<div style="height:10px;width:100%"></div>

</asp:Content>

