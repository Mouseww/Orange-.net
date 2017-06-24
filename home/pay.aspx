<%@ Page Title="" Language="C#" MasterPageFile="~/home/MasterPage.master" AutoEventWireup="true" CodeFile="pay.aspx.cs" Inherits="home_pay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
		<link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />

		<link href="../basic/css/demo.css" rel="stylesheet" type="text/css" />
		<link href="../css/cartstyle.css" rel="stylesheet" type="text/css" />

		<link href="../css/jsstyle.css" rel="stylesheet" type="text/css" />

		<script type="text/javascript" src="../js/address.js"></script>
    <script src="../js/jquery.provincesCity.js"></script>
    <script src="../js/provincesData.js"></script>
    <div class="clear"></div>
			  <div class="concent">
        <!--地址 -->
        <div class="paycont">
            <div class="address">
                <h3>确认收货地址 </h3>
                <div class="control">
                    <div class="tc-btn createAddr theme-login am-btn am-btn-danger">使用新地址</div>
                </div>
                <div class="clear"></div>
                <ul>
                    <%foreach (var ressfirst in (ress.Where(a => a.moren == "1").Distinct()))
                    { %>
                    <div class="per-border"></div>
                    <li class="user-addresslist defaultAddr">

                        <div class="address-left">
                            <div class="user DefaultAddr">

                                <span class="buy-address-detail">
                                    <span class="buy-user"><%=ressfirst.name%> </span>
                                    <span class="buy-phone"><%=ressfirst.telephone%></span>
                                </span>
                            </div>
                            <div class="default-address DefaultAddr">
                                <span class="buy-line-title buy-line-title-type">收货地址：</span>
                                <span class="buy--address-detail">
                                    <span class="province"><%=ressfirst.Province%></span>省
                                    <span class="city"><%=ressfirst.City%></span>市
                                    <span class="dist"><%=ressfirst.Township%></span>区
                                    <span class="street"><%=ressfirst.xiangxi%></span>
                                </span>

                              
                            </div>
                            <ins class="deftip">默认地址</ins>
                        </div>
                        <div class="address-right">
                            <a href="../person/address.html">
                                <span class="am-icon-angle-right am-icon-lg"></span>
                            </a>
                        </div>
                        <div class="clear"></div>

                      <%--  <div class="new-addr-btn">
                            <a href="#" class="hidden">设为默认</a>
                            <span class="new-addr-bar hidden">|</span>
                            <a href="#">编辑</a>
                            <span class="new-addr-bar">|</span>
                            <a href="javascript:void(0);" onclick="delClick(this);">删除</a>
                        </div>--%>

                    </li>
                 <%   }
                     foreach (var ressfirst in (ress.Where(a => a.moren == "2")))
                     { %>
                    <div class="per-border"></div>
                    <li id="ress_@ressfirst.id" class="user-addresslist">
                        <div class="address-left">
                            <div class="user DefaultAddr">

     <span class="buy-address-detail">
        <span class="buy-user"><%=ressfirst.name%> </span>
        <span class="buy-phone"><%=ressfirst.telephone%></span>
     </span>
</div>
<div class="default-address DefaultAddr">
    <span class="buy-line-title buy-line-title-type">收货地址：</span>
    <span class="buy--address-detail">
        <span class="province"><%=ressfirst.Province%></span>省
        <span class="city"><%=ressfirst.City%></span>市
        <span class="dist"><%=ressfirst.Township%></span>区
        <span class="street"><%=ressfirst.xiangxi%></span>
    </span>

    
                        </div>
                            <ins class="deftip hidden">默认地址</ins>
                        </div>
                        <div class="address-right">
                            <span class="am-icon-angle-right am-icon-lg"></span>
                        </div>
                        <div class="clear"></div>

                       
                        </li>
<% }%>

                </ul>

                <div class="clear"></div>
            </div>
            <!--物流 -->
            
            <div class="clear"></div>

            <!--订单 -->
            <div class="concent">
                <div id="payTable">
                    <h3>确认订单信息</h3>
                    <div class="cart-table-th">
                        <div class="wp">

                            <div class="th th-item">
                                <div class="td-inner">商品信息</div>
                            </div>
                            <div class="th th-price">
                                <div class="td-inner">单价</div>
                            </div>
                            <div class="th th-amount">
                                <div class="td-inner">数量</div>
                            </div>
                            <div class="th th-sum">
                                <div class="td-inner">金额</div>
                            </div>
                            <div class="th th-oplist">
                                <div class="td-inner">配送方式</div>
                            </div>

                        </div>
                    </div>
                    
                </div>

                <tr id="J_BundleList_s_1911116345_1" class="item-list">
                    <div id="J_Bundle_s_1911116345_1_0" class="bundle  bundle-last">
                        <div class="bundle-main">
                            <ul class="item-content clearfix">
                                <div class="pay-phone">
                                    <li class="td td-item">
                                        <div class="item-pic">
                                            <a href="#" class="J_MakePoint">
                                                <img  style="width:100%" src="<%=Commodity.img %>" class="itempic J_ItemImg">
                                            </a>
                                        </div>
                                        <div class="item-info">
                                            <div class="item-basic-info">
                                                <a href="#" target="_blank" title="美康粉黛醉美唇膏 持久保湿滋润防水不掉色" class="item-title J_MakePoint" data-point="tbcart.8.11"><%=Commodity.shop_name %></a>
                                            </div>
                                        </div>
                                    </li>
                                    <li class="td td-info">
                                        <div class="item-props">
                                            <span class="sku-line"><%=Commodity.option1%> ：<%=@Commodity.option1_name%></span>
                                            <span class="sku-line"><%=Commodity.option2%> ：<%=Commodity.option2_name%></span>
                                        </div>
                                    </li>
                                    <li class="td td-price">
                                        <div class="item-price price-promo-promo">
                                            <div class="price-content">
                                                <em class="J_Price price-now"><%=Commodity.Price %></em>
                                            </div>
                                        </div>
                                    </li>
                                </div>

                                <li class="td td-amount">
                                    <div class="amount-wrapper ">
                                        <div class="item-amount ">
                                            <span class="phone-title">购买数量</span>
                                            <div class="sl">
                                                <input id="min" class="min am-btn" name="" type="button" value="-" />
                                                <input id="text_box" class="text_box" name="" type="text" value="<%=Commodity.Number%>" style="width:30px;" />
                                                <input id="add" class="add am-btn" name="" type="button" value="+" />
                                            </div>
                                            <script>
                                                $('.am-btn').click(function () {
                                                     setTimeout('newp()',100)
                                                   
                                                })
                                               
                                                function newp()
                                                {
                                                     var num = parseInt($('#text_box').val());
                                                    $('#text_box').val(num) ; 
                                                    $('#J_ActualFee').text(num*<%=Commodity.Price %>);
                                                    $('#jiagea').text(num*<%=Commodity.Price %>);
                                                }
                                             
                                            </script>
                                        </div>
                                    </div>
                                </li>
                                <li class="td td-sum">
                                    <div class="td-inner">
                                        <em tabindex="0" id="jiagea" class="J_ItemSum number"><%=Commodity.Price*Commodity.Number %></em>
                                    </div>
                                </li>
                                <li class="td td-oplist">
                                    <div class="td-inner">
                                        <span class="phone-title">配送方式</span>
                                        <div class="pay-logis">
                                            包邮
                                        </div>
                                    </div>
                                </li>

                            </ul>
                            <div class="clear"></div>

                        </div>
                </tr>
            </div>
            <div class="clear"></div>
            <div class="pay-total">
                <!--留言-->
                <div class="order-extra">
                    <div class="order-user-info">
                        <div id="holyshit257" class="memo">
                            <label>买家留言：</label>
                            <input type="text" title="选填,对本次交易的说明（建议填写已经和卖家达成一致的说明）" placeholder="选填,建议填写和卖家达成一致的说明" class="memo-input J_MakePoint c2c-text-default memo-close">
                            <div class="msg hidden J-msg">
                                <p class="error">最多输入500个字符</p>
                            </div>
                        </div>
                    </div>

                </div>
                <!--优惠券 -->
                
                <div class="clear"></div>
            </div>
           
            <!--信息 -->
            <div class="order-go clearfix">
                <div class="pay-confirm clearfix">
                    <div class="box">
                        <div tabindex="0" id="holyshit267" class="realPay">
                            <em class="t">实付款：</em>
                            <span class="price g_price ">
                                <span>¥</span> <em class="style-large-bold-red " id="J_ActualFee"><%=Commodity.Price*Commodity.Number %></em>
                            </span>
                        </div>
                         <%if ((ress.Where(a => a.moren == "1").Distinct()).Count()==0)
                             {%>

                        <div id="holyshit268" class="pay-address">

                            <p class="buy-footer-address">
                                <span class="buy-line-title buy-line-title-type">寄送至：</span>
                                <span class="buy--address-detail">
                                    <span id="sheng" class="province"></span>省
                                    <span id="city" class="city"></span>市
                                    <span id="quyu" class="dist"></span>区
                                    <span id="xiangxi" class="street"></span>
                               
                                </span>
                            </p>
                            <p class="buy-footer-address">
                                <span class="buy-line-title">收货人：</span>
                                <span class="buy-address-detail">
                                      <span id="name" class="buy-user"></span>
                                    <span id="phone" class="buy-phone"></span>
                                </span>
                            </p>
                        </div>
                       <%} %>
<%
    foreach (var ressfirst in (ress.Where(a => a.moren == "1").Distinct()))
    { %>
                        <div id="holyshit268" class="pay-address">

                            <p class="buy-footer-address">
                                <span class="buy-line-title buy-line-title-type">寄送至：</span>
                                <span class="buy--address-detail">
                                    <span id="sheng" class="province"><%=ressfirst.Province %></span>省
                                    <span id="city" class="city"><%=ressfirst.City%></span>市
                                    <span id="quyu" class="dist"><%=ressfirst.Township%></span>区
                                    <span id="xiangxi" class="street"><%=ressfirst.xiangxi%></span>
                               
                                </span>
                            </p>
                            <p class="buy-footer-address">
                                <span class="buy-line-title">收货人：</span>
                                <span class="buy-address-detail">
                                    <span id="name" class="buy-user"><%=ressfirst.name%> </span>
                                    <span id="phone" class="buy-phone"><%=ressfirst.telephone%></span>
                                </span>
                            </p>
                        </div>
                               <%}%>
                        
                        
                    </div>

                    <div id="holyshit269" class="submitOrder">
                        <div class="go-btn-wrap">
                            <a id="J_Go" href="javascript:sub()" class="btn-go" tabindex="0" title="点击此按钮，提交订单">提交订单</a>
                            <script type="text/javascript">
                                $('.user-addresslist').click(function(){
                                    var name= $(this).children('div')
                                         .children('div')
                                         .children('span')
                                         .children('span')
                                         .eq(0).text();
                                    $('#name').text(name);
                                    var phone=$(this).children('div')
                                         .children('div')
                                         .children('span')
                                         .children('span')
                                         .eq(1).text();
                                    $('#phone').text(phone);
                                    var sheng=$(this).children('div')
                                         .children('div')
                                         .children('span')
                                         .children('span')
                                         .eq(2).text();
                                    $('#sheng').text(sheng);
                                    var city=$(this).children('div')
                                         .children('div')
                                         .children('span')
                                         .children('span')
                                         .eq(3).text();
                                    $('#city').text(city);
                                    var quyu=$(this).children('div')
                                         .children('div')
                                         .children('span')
                                         .children('span')
                                         .eq(4).text();
                                    $('#quyu').text(quyu);
                                    var xiangxi=$(this).children('div')
                                         .children('div')
                                         .children('span')
                                         .children('span')
                                         .eq(5).text();
                                    $('#xiangxi').text(xiangxi);
                                })
                                function sub(){
                                    document.location.href="../home/success.aspx?id=<%=id%>&&option1=<%=opt1_id%>&&option2=<%=opt2_id%>&&buynum="+$('#text_box').val()+"&&sheng="+$('#sheng').text()+"&&city="+$('#city').text()+"&quyu="+$('#quyu').text()+"&&xiangxi="+$('#xiangxi').text()+"&&name="+$('#name').text()+"&&phone="+$('#phone').text()+"&&Price="+$('#J_ActualFee').text()

                                }
                                $(function(){
                                    $("#province").ProvinceCity()});
                            </script>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>

        <div class="clear"></div>
    </div>
    
    	<div class="theme-popover-mask"></div>
			<div class="theme-popover">

				<!--标题 -->
				<div class="am-cf am-padding">
					<div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">新增地址</strong> / <small>Add address</small></div>
				</div>
				<hr/>

				<div class="am-u-md-12">
					<div class="am-form am-form-horizontal">

						<div class="am-form-group">
							<label for="user-name"  class="am-form-label">收货人</label>
							<div class="am-form-content">
								<input type="text" id="user-name" placeholder="收货人"/>
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-phone" class="am-form-label">手机号码</label>
							<div class="am-form-content">
								<input id="user-phone" placeholder="手机号必填" type="email"/>
							</div>
						</div>

						<div class="am-form-group">
							<label for="user-phone" class="am-form-label">所在地</label>
                            <div id="province" style="width:50%;margin-left:16.5%"></div>
							<%--<div class="am-form-content address">
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
							</div>--%>
						</div>

						<div class="am-form-group">
							<label for="user-intro" class="am-form-label">详细地址</label>
							<div class="am-form-content">
								<textarea class="" rows="3" id="user-intro" placeholder="输入详细地址"></textarea>
								<small>100字以内写出你的详细地址...</small>
							</div>
						</div>

						<div class="am-form-group theme-poptit">
							<div class="am-u-sm-9 am-u-sm-push-3">
								<div class="am-btn am-btn-danger" id="save">保存</div>
								<div class="am-btn am-btn-danger close">取消</div>
                                <script type="text/javascript">
                                    $('#save').click(function(){
                                        var url=document.location.href;
                                        document.location.href=url.replace('','')+"&&user_name="+$('#user-name').val()
                                            +"&&user_phone="+$('#user-phone').val()
                                            +"&&sheng="+$('#province').children('select').eq(0).val()
                                            +"&&city="+$('#province').children('select').eq(1).val()
                                            +"&&quyu="+$('#province').children('select').eq(2).val()
                                        +"&&xiangxi="+$('#user-intro').val();
                                    })
                                </script>
							</div>
						</div>
					</div>
				</div>

			</div>

			<div class="clear"></div>

</asp:Content>

