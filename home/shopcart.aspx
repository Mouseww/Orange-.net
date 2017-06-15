<%@ Page Title="" Language="C#" MasterPageFile="~/home/MasterPage.master" AutoEventWireup="true" CodeFile="shopcart.aspx.cs" Inherits="home_shopcart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    	<link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css" />
		<link href="../basic/css/demo.css" rel="stylesheet" type="text/css" />
		<link href="../css/cartstyle.css" rel="stylesheet" type="text/css" />
		<link href="../css/optstyle.css" rel="stylesheet" type="text/css" />
<script src="../js/jquery.js"></script>
    <%if (msg != null&&msg!="")
        { %>
    <script type="text/javascript">
        alert('<%=msg%>');
    </script>
    <%} %>
    			<div class="clear"></div>

			<!--购物车 -->
			<div class="concent">
        <div id="cartTable">
            <div class="cart-table-th">
                <div class="wp">
                    <div class="th th-chk">
                        <div id="J_SelectAll1" class="select-all J_SelectAll">

                        </div>
                    </div>
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
                    <div class="th th-op">
                        <div class="td-inner">操作</div>
                    </div>
                </div>
            </div>
            <div class="clear"></div>

            <tr class="item-list">
                <div class="bundle  bundle-last ">
                    <div class="bundle-hd">
                       
                    </div>
                    <div class="clear"></div>
                    <div class="bundle-main">
                        <script>
                            var check_id=new Array();
                            var all_price=0;
                            $('.check:checkbox').unbind();
                        </script>
                        <% foreach (var Commodity in ShopCar)
                            { %>
                        <ul class="item-content clearfix">
                            <li class="td td-chk">
                                <div class="cart-checkbox ">
                                    <input class="check" id="check_<%=Commodity.Id%>"com_id="<%=Commodity.Id%>" name="items[]" value="<%=Commodity.Price%>" type="checkbox">
                                    <label for="J_CheckBox_170037950254"></label>
                                    <script>

                                      <%--  $('#check_<%=Commodity.Id%>').toggle(
                                            function () {
                                                $(this).click(function(){
                                                   
                                                    $(this).attr('com_id', '<%=Commodity.Id%>');
                                                    return false;
                                                   
                                                })
                                            },
                                            function () {
                                                $(this).click(function () {
                                                
                                                    $(this).removeAttr('com_id');
                                                    return false;
                                                })

                                            }
                                        )--%>
                                    </script>
                                </div>
                            </li>
                            <li class="td td-item">
                                <div class="item-pic">
                                    <a href="#" target="_blank" data-title="<%=Commodity.shop_name%>" class="J_MakePoint" data-point="tbcart.8.12">
                                        <img  style="width:100%" src="<%=Commodity.img%>" class="itempic J_ItemImg">
                                    </a>
                                </div>
                                <div class="item-info">
                                    <div class="item-basic-info">
                                        <a href="#" target="_blank" title="<%=Commodity.shop_name%>" class="item-title J_MakePoint" data-point="tbcart.8.11"><%=Commodity.shop_name%></a>
                                    </div>
                                </div>
                            </li>
                            <li class="td td-info">
                                <div class="item-props item-props-can1">
                                  
                                 
                                        <span id="sku_<%=Commodity.option1_id%>" class="sku-line"><%=Commodity.option1_name%>:<%=Commodity.option1%></span>
                                        <span id="sku_<%=Commodity.option2_id%>" class="sku-line"><%=Commodity.option2_name%>:<%=Commodity.option2%></span>

                                  
                                </div>
                                
                            </li>
                            <li class="td td-price">
                                <div class="item-price price-promo-promo">
                                    <div class="price-content">
                                        <div class="price-line">
                                           原价:<em class="price-original" id="OldPrice_<%=Commodity.Id%>"><%=Commodity.Old_Price%></em>
                                        </div>
                                        <div class="price-line">
                                           现价:<em class="J_Price price-now" id="Pirce_<%=Commodity.Id%>" tabindex="0"><%=Commodity.Price%></em>
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="td td-amount">
                                <div class="amount-wrapper ">
                                    <div class="item-amount ">
                                        <div class="sl">
                                            <input class="min am-btn" id="del_<%=Commodity.Id%>" name="" type="button" value="-" />
                                            <input class="text_box" id="num_<%=Commodity.Id%>" name="" type="text" value="<%=Commodity.Number%>" style="width:30px;" />
                                            <input class="add am-btn" id="add_<%=Commodity.Id%>" name="" type="button" value="+" />
                                           
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="td td-sum">
                                <div class="td-inner">
                                    <em tabindex="0" id="zongjia_<%=Commodity.Id%>" class="J_ItemSum number">117.00</em>
                                </div>
                            </li>
                            <li class="td td-op">
                                <div class="td-inner">
                                    
                                    <a href="shopcart.aspx?delect_id=<%=Commodity.Id%>"; class="delete">
                                        删除
                                    </a>
                                 
                                </div>
                            </li>
                          
                        </ul>
                        <script>
                        
                            $(function () {

                                $('#zongjia_<%=Commodity.Id%>').text(parseInt($('#Pirce_<%=Commodity.Id%>').text())*parseInt($('#num_<%=Commodity.Id%>').val()));
                                $('#check_<%=Commodity.Id%>').val($('#zongjia_<%=Commodity.Id%>').text())
                            })
                            $('#num_<%=Commodity.Id%>').change(function () {

                                $.post("ChangeNumber.ashx", { "number": $('#num_<%=Commodity.Id%>').val(),"id": <%=Commodity.Id%>}, function (data) {
                                    if(data){
                                        $('#zongjia_<%=Commodity.Id%>').text(parseInt($('#Pirce_<%=Commodity.Id%>').text()) * parseInt($('#num_<%=Commodity.Id%>').val()));
                                        $('#check_<%=Commodity.Id%>').val($('#zongjia_<%=Commodity.Id%>').text())
                                    }
                                    else{
                                        alert('库存不足');
                                    }
                                })
                            })
                            $('#del_<%=Commodity.Id%>').click(function(){
                                if($('#num_<%=Commodity.Id%>').val()=="2"){
                                   
                                    $.post("ChangeNumber.ashx", { "number": $('#num_<%=Commodity.Id%>').val(),"id": <%=Commodity.Id%>}, function (data) {
                                        $('#zongjia_<%=Commodity.Id%>').text(parseInt($('#Pirce_<%=Commodity.Id%>').text()) * parseInt($('#num_<%=Commodity.Id%>').val()));
                                        $('#check_<%=Commodity.Id%>').val($('#zongjia_<%=Commodity.Id%>').text())
                                    })
                                    alert('数量若为0  则自动删除商品！')
                                }
                                else if($('#num_<%=Commodity.Id%>').val()=="1"){
                                    document.location.href="Index?delect_id=<%=Commodity.Id%>";
                                }
                                else{
                                    $.post("ChangeNumber.ashx", { "number": $('#num_<%=Commodity.Id%>').val(),"id": <%=Commodity.Id%>}, function (data) {
                                        $('#zongjia_<%=Commodity.Id%>').text(parseInt($('#Pirce_<%=Commodity.Id%>').text()) * parseInt($('#num_<%=Commodity.Id%>').val()));
                                        $('#check_<%=Commodity.Id%>').val($('#zongjia_<%=Commodity.Id%>').text())
                                    })
                                }
                            })
                            $('#add_<%=Commodity.Id%>').click(function(){

                                $.post("ChangeNumber.ashx", { "number": parseInt($('#num_<%=Commodity.Id%>').val())+1,"id":<%=Commodity.Id%>}, function (data) {
                                    if(data){
                                        $('#zongjia_<%=Commodity.Id%>').text(parseInt($('#Pirce_<%=Commodity.Id%>').text()) * parseInt($('#num_<%=Commodity.Id%>').val()));
                                        $('#check_<%=Commodity.Id%>').val($('#zongjia_<%=Commodity.Id%>').text())
                                    }else{
                                        alert('库存不足');
                                    }
                                    })


                            })
                        </script>


                        <% }%>
                       




                    </div>
                </div>
            </tr>
            <div class="clear"></div>

            
        </div>
        <div class="clear"></div>

        <div class="float-bar-wrapper">
            <div id="J_SelectAll2" class="select-all J_SelectAll">
                <div class="cart-checkbox">
                    <input class="check-all check1" id="J_SelectAllCbx2" name="select-all" value="0" type="checkbox">
                    <label for="J_SelectAllCbx2"></label>
                </div>
                <span>全选</span>
                <script>
                    $('#J_SelectAllCbx2').click(function () {
                        $('.check').click();
                      
                    })
                </script>
            </div>
            <div class="operations">
                <a href="javascript:delect_id()" hidefocus="true" class="deleteAll">删除</a>
               
            </div>
            <div class="float-bar-right">
                <div class="amount-sum">
                    <span class="txt">已选商品</span>
                    <em id="J_SelectedItemsCount">0</em><span class="txt">件</span>
                    <div class="arrow-box">
                        <span class="selected-items-arrow"></span>
                        <span class="arrow"></span>
                    </div>
                </div>
                <div class="price-sum">
                    <span class="txt">合计:</span>
                    <strong class="price">¥<em id="J_Total">0.00</em></strong>
                </div>
                <div class="btn-area">
                    <a href="pay.html" id="J_Go" class="submit-btn submit-btn-disabled" aria-label="请注意如果没有选择宝贝，将无法结算">
                        <span>结&nbsp;算</span>
                    </a>
                </div>
            </div>

        </div>
        <script>
            
            $('*').click(function(){
                setTimeout('chen()', 1000);
            } )
            function chen(){

                $('#J_Total').text('0.00');
                $('#J_SelectedItemsCount').text('0');
                var Priceitem=  $('.check:checkbox[checked]');
                for(var i=0;i<Priceitem.length;i++){
                    $('#J_SelectedItemsCount').text(parseInt($('#J_SelectedItemsCount').text())+1);
                    $('#J_Total').text(parseInt(($('#J_Total').text()))+parseInt(Priceitem[i].value));
                }
            }
            function delect_id() {
               
                var number = $('.check:checkbox[checked]');
                if (number == null||number.length==0) {
                    alert('请先选择要操作的商品！');
                    return false;
                }
                for(var i=0;i<number.length;i++){
                    check_id.push(number[i].id);
                }
                var check_id1=check_id.toString();
                
                document.location.href = "shopcart.aspx?arry=" + check_id1 + "";
            }</script>
        

    </div>

			


</asp:Content>

