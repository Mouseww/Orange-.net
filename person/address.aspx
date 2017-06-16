<%@ Page Title="" Language="C#" MasterPageFile="~/person/MasterPage1.master" AutoEventWireup="true" CodeFile="address.aspx.cs" Inherits="person_address" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    	<link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">
    <link href="../css/personDate/lyz.calendar.css" rel="stylesheet" />

		<link href="../css/personal.css" rel="stylesheet" type="text/css">
		<link href="../css/addstyle.css" rel="stylesheet" type="text/css">
    <link href="../css/personDate/address.css" rel="stylesheet" />
    <script src="../layer/layer.js"></script>
  
    <script src="../js/personDate/address.js"></script>
       <script type="text/javascript">
        $(function () {
            $("#sjld").sjld("#shenfen", "#chengshi", "#quyu");

        });
    </script>
            <div class="main-wrap">
                <div class="user-address">
                    <!--标题 -->
                    <div class="am-cf am-padding">
                        <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">地址管理</strong></div>
                    </div>
                    <hr />         
                        <ul class="am-avg-sm-1 am-avg-md-3 am-thumbnails">
                             <% foreach (var ressfirst in ress.Where(a => a.moren == "1").Distinct())
                                 {%>
                                    
                                <li class="user-addresslist user-addresslist defaultAddr">
                                    <span class="new-option-r" id="<%=ressfirst.id %>"><i class="am-icon-check-circle"></i>设为默认</span>
                                    <p class="new-tit new-p-re">
                                        <span class="new-txt"><%=ressfirst.name%></span>
                                        <span class="new-txt-rd2"><%=ressfirst.telephone%></span>
                                    </p>
                                    <div class="new-mu_l2a new-p-re">
                                        <p class="new-mu_l2cw">
                                            <span class="title">地址：</span>
                                            <span class="province"><%=ressfirst.Province%></span>
                                            <span class="city"><%=ressfirst.City%></span>
                                            <span class="dist"><%=ressfirst.Township%></span>
                                            <span class="street"><%=ressfirst.xiangxi%></span>
                                        </p>
                                    </div>
                                    <div class="new-addr-btn">
                                        <a href="javascript:void(0)" onclick="upclick(this)" id="am_<%=ressfirst.id%>"><i class="am-icon-edit"></i>编辑</a>
                                        <span class="new-addr-bar">|</span>
                                        <a href="javascript:void(0);" onclick="delClick(this);"><i class="am-icon-trash"></i>删除</a>

                                    </div>
                                </li>
                           
                       
                                <script type="text/javascript">
                                    function delClick()
                                    {
                                    document.location.href="../person/address.aspx?caozuo=<%=ressfirst.id%>"
                                      }

                                    function upclick() {
                                        var sc_<%=ressfirst.id%> = "script";

                                        var script_<%=ressfirst.id%> = "<script>function sub_<%=ressfirst.id%> (){document.location.href =\"../person/address.aspx?user_name=\"+$('#user-name').val()+\"&&user_phone=\" +$('#user-phone').val()+ \"&&sheng=\" + $('#sheng_top').text()+\"&&city=\"+$('#City_top').text()+ \"&&quyu=\"+$('#town_top').text()+ \"&&xiangxi=\" +$('#xiangxi_top').val()+\"&&id=<%=ressfirst.id%>\"; }</" + sc_<%=ressfirst.id%> + ">";

                                        layer.open({
                                            type: 1
       , title: false //不显示标题栏
       , closeBtn: false
       , area: '400px;'
       , shade: 0.8
       , id: 'LAY_layuipro' //设定一个id，防止重复弹出
       , resize: false
       , btn: ['修改', '取消']
       , btnAlign: 'c'
       , moveType: 1 //拖拽模式，0或者1
       , content: '<div style="padding: 30px; line-height: 22px;overflow-x:hidden; background-color: #fff; color: #393D49;height:290px;font-weight: 350;">姓名:</br><input id="user-name" type="text" style="width:40%" value="<%=ressfirst.name%>"/></br>联系方式:<input id="user-phone" type="text" style="width:100%" value="<%=ressfirst.telephone%>"/></br>地址:</br>  <div id="sjld_top" class="am-form-content address" style="width:600px;margin:0px;position:relative;z-index:100;left:0.8%"><div class="m_zlxg" id="shenfen_top" ><p id="sheng_top" title=""><%=ressfirst.Province%></p><div class="m_zlxg2"  ><ul style="overflow-y:scroll;overflow-x:hidden;height:110px" value="<%=ressfirst.Province%>"></ul></div></div><div class="m_zlxg" id="chengshi_top"> <p id="City_top" title=""></p><div class="m_zlxg2"><ul style="overflow-x:hidden;overflow-y:scroll;height:110px"></ul> </div></div><div class="m_zlxg" id="quyu_top"><p id="town_top" title=""></p><div class="m_zlxg2"> <ul style="overflow-x:hidden;overflow-y:scroll;height:110px"></ul></div> </div><input id="sfdq_num" type="hidden" value="" /><input id="csdq_num" type="hidden" value="" /><input id="sfdq_tj" type="hidden" value="" /><input id="csdq_tj" type="hidden" value="" /><input id="qydq_tj" type="hidden" value="" /></div></br></br>详细地址:</br><textarea id="xiangxi_top" type="text" style="width:100%"/>' + script_<%=ressfirst.id%> + '</div>'
       , success: function (layero) {

           var btn = layero.find('.layui-layer-btn');
           btn.find('.layui-layer-btn0').attr({
               href: 'javascript:sub_<%=ressfirst.id%> ()'
             , target: '_blank'
           });
       }
                                        });
                                        $("#sjld").sjld("#shenfen_top", "#chengshi_top", "#quyu_top");
                                        $('#sheng_top').text("<%=ressfirst.Province%>");
                                        $('#City_top').text("<%=ressfirst.City%>");
                                        $('#xiangxi_top').text("<%=ressfirst.xiangxi%>");
                                        $('#town_top').text("<%=ressfirst.Township%>");
                                    }
                                       
                                    </script>
                                        <% }%>
                                        
                                        <script>
                                            $(document).ready(function () {
                                                $(".new-option-r").click(function () {
                                                    var Id = $(this).attr('id');
                                                    $(this).parent('.user-addresslist').addClass("defaultAddr").siblings().removeClass("defaultAddr");

                                                    $.post('/person/address_ajax', { "id": Id }, function (data) {


                                                    });
                                                    //$.ajax({
                                                    //    type: "POST",
                                                    //    url: "address_ajax",
                                                    //    data: { "id": Id},
                                                    //    dataType: "JSON",
                                                    //    success: function (data) {


                                                    //    }
                                                    //});
                                                });

                                                var $ww = $(window).width();
                                                if ($ww > 640) {
                                                    $("#doc-modal-1").removeClass("am-modal am-modal-no-btn")
                                                }

                                            })

                                    </script>
                           
                           

                           <% foreach (var ress1 in (ress.Where(a => a.moren == "2").Distinct()))
                              {%>
                                
                                <li class="user-addresslist">
                                    <span class="new-option-r" id="<%=ress1.id%>"><i class="am-icon-check-circle"></i>设为默认</span>
                                    <p class="new-tit new-p-re">
                                        <span class="new-txt"><%=ress1.name%></span>
                                        <span class="new-txt-rd2"><%=ress1.telephone%></span>
                                    </p>
                                    <div class="new-mu_l2a new-p-re">
                                        <p class="new-mu_l2cw">
                                            <span class="title">地址：</span>
                                            <span class="province"><%=ress1.Province%></span>
                                            <span class="city"><%=ress1.City%></span>
                                            <span class="dist"><%=ress1.Township%></span>
                                            <span class="street"><%=ress1.xiangxi%></span>
                                        </p>
                                    </div>
                                    <div class="new-addr-btn">
                                        <a href="javascript:void(0)" onclick="upclick<%=ress1.id%>()" id="am_<%=ress1.id%>"><i class="am-icon-edit"></i>编辑</a>
                                        <span class="new-addr-bar">|</span>
                                        <a href="javascript:void(0);" onclick="delClick_<%=ress1.id%>(this);"><i class="am-icon-trash"></i>删除</a>
                                    </div>
                                </li>
                           
                                <script type="text/javascript">
                                function delClick_<%=ress1.id%> () {
                                    document.location.href="../person/address1.aspx?caozuo=<%=ress1.id%>"
                                }
                                var sc_<%=ress1.id%> = "script";

                                var script_<%=ress1.id%>="<script>function sub_<%=ress1.id%> (){document.location.href =\"../person/address1.aspx?user_name=\"+$('#user-name1').val()+\"&&user_phone=\" +$('#user-phone1').val()+ \"&&sheng=\" + $('#sheng_top1').text()+\"&&city=\"+$('#City_top1').text()+ \"&&quyu=\"+$('#town_top1').text()+ \"&&xiangxi=\" +$('#xiangxi_top1').val()+\"&&id=<%=ress1.id%>\"; }</"+sc_<%=ress1.id%>+">";

                                    function upclick<%=ress1.id%>() {
                                        layer.open({
                                            type: 1
    , title: false //不显示标题栏
    , closeBtn: false
    , area: '400px;'
    , shade: 0.8
    , id: 'LAY_layuipro_<%=ress1.id%>' //设定一个id，防止重复弹出
    , resize: false
    , btn: ['修改', '取消']
    , btnAlign: 'c'
    , moveType: 1 //拖拽模式，0或者1
    , content: '<div style="padding: 30px; line-height: 22px;overflow-x:hidden; background-color: #fff; color: #393D49;height:290px;font-weight: 350;">姓名:</br><input id="user-name1" type="text" style="width:40%" value="<%=ress1.name%>"/></br>联系方式:<input id="user-phone1" type="text" style="width:100%" value="<%=ress1.telephone%>"/></br>地址:</br>  <div id="sjld_top" class="am-form-content address" style="width:600px;margin:0px;position:relative;z-index:100;left:0.8%"><div class="m_zlxg" id="shenfen_top" ><p id="sheng_top1" title=""></p><div class="m_zlxg2"  ><ul style="overflow-y:scroll;overflow-x:hidden;height:110px" value=""></ul></div></div><div class="m_zlxg" id="chengshi_top"> <p id="City_top1" title=""></p><div class="m_zlxg2"><ul style="overflow-x:hidden;overflow-y:scroll;height:110px"></ul> </div></div><div class="m_zlxg" id="quyu_top"><p id="town_top1" title=""></p><div class="m_zlxg2"> <ul style="overflow-x:hidden;overflow-y:scroll;height:110px"></ul></div> </div><input id="sfdq_num" type="hidden" value="" /><input id="csdq_num" type="hidden" value="" /><input id="sfdq_tj" type="hidden" value="" /><input id="csdq_tj" type="hidden" value="" /><input id="qydq_tj" type="hidden" value="" /></div></br></br>详细地址:</br><textarea id="xiangxi_top1" type="text" style="width:100%"/>' + script_<%=ress1.id%> + ' </div>'
    , success: function (layero) {

        var btn = layero.find('.layui-layer-btn');
        btn.find('.layui-layer-btn0').attr({
            href: 'javascript:sub_<%=ress1.id%> ()'
          , target: '_blank'
        });
    }
                                        });


                                        $("#sjld").sjld("#shenfen_top", "#chengshi_top", "#quyu_top");
                                        $('#sheng_top1').text("<%=ress1.Province%>");
                                        $('#City_top1').text("<%=ress1.City%>");
                                        $('#xiangxi_top1').text("<%=ress1.xiangxi%>");
                                        $('#town_top1').text("<%=ress1.Township%>");
                                    }
                                        </script>
                                        <% }%>



                            <script>
                                        $(document).ready(function () {
                                            $(".new-option-r").click(function () {
                                                var Id = $(this).attr('id');
                                                $(this).parent('.user-addresslist').addClass("defaultAddr").siblings().removeClass("defaultAddr");

                                                $.post('/person/address_ajax', { "id": Id }, function (data) {


                                                });
                                                //$.ajax({
                                                //    type: "POST",
                                                //    url: "address_ajax",
                                                //    data: { "id": Id},
                                                //    dataType: "JSON",
                                                //    success: function (data) {


                                                //    }
                                                //});
                                            });

                                            var $ww = $(window).width();
                                            if ($ww > 640) {
                                                $("#doc-modal-1").removeClass("am-modal am-modal-no-btn")
                                            }

                                        })


                                    </script>
                           

                        </ul>
         
                        <div class="clear"></div>
                        <a class="new-abtn-type" data-am-modal="{target: '#doc-modal-1', closeViaDimmer: 0}">添加新地址</a>
                        <!--例子-->
                        <div class="" id="doc-modal-1">

                            <div class="add-dress">

                                <!--标题 -->
                                <div class="am-cf am-padding">
                                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">新增地址</strong> / <small>Add&nbsp;address</small></div>
                                </div>
                                <hr />

                                <div class="am-u-md-12 am-u-lg-8" style="margin-top: 20px;">
                                    <div class="am-form am-form-horizontal">

                                        <div class="am-form-group">
                                            <label for="user-name" class="am-form-label">收货人</label>
                                            <div class="am-form-content">
                                                <input type="text" id="user-name" name="user_name" placeholder="收货人">
                                            </div>
                                        </div>

                                        <div class="am-form-group">
                                            <label for="user-phone" class="am-form-label">手机号码</label>
                                            <div class="am-form-content">
                                                <input id="user-phone" name="user_phone" placeholder="手机号必填" type="text">
                                            </div>
                                        </div>
                                        <div class="am-form-group">
                                            <label for="user-address" class="am-form-label">所在地</label>

                                            <div id="sjld" class="am-form-content address" style=" width:520px;margin:0px;position:relative;z-index:100;left:0.8%">
                                                <div class="m_zlxg" id="shenfen">
                                                    <p id="sheng" title="">选择省份</p>
                                                    <div class="m_zlxg2">
                                                        <ul style="overflow-y:scroll;overflow-x:hidden;height:185px"></ul>
                                                    </div>
                                                </div>
                                                <div class="m_zlxg" id="chengshi">
                                                    <p id="city" title="">选择城市</p>
                                                    <div class="m_zlxg2">
                                                        <ul style="overflow-y:scroll;overflow-x:hidden;height:200px"></ul>
                                                    </div>
                                                </div>
                                                <div class="m_zlxg" id="quyu">
                                                    <p id="quy" title="">选择区域</p>
                                                    <div class="m_zlxg2">
                                                        <ul style="overflow-y:scroll;overflow-x:hidden;height:200px"></ul>
                                                    </div>
                                                </div>
                                                <input id="sfdq_num" type="hidden" value="" />
                                                <input id="csdq_num" type="hidden" value="" />
                                                <input id="sfdq_tj" type="hidden" value="" />
                                                <input id="csdq_tj" type="hidden" value="" />
                                                <input id="qydq_tj" type="hidden" value="" />
                                            </div>


                                        </div>

                                        <div class="am-form-group">
                                            <label for="user-intro" class="am-form-label">详细地址</label>
                                            <div class="am-form-content">
                                                <textarea class="" rows="3" id="user-intro" placeholder="输入详细地址"></textarea>
                                                <small>100字以内写出你的详细地址...</small>
                                            </div>
                                        </div>

                                        <div class="am-form-group">
                                            <div class="am-u-sm-9 am-u-sm-push-3">
                                                <a class="am-btn am-btn-danger" href="javascript:void(0)" onclick="Save()">保存</a>
                                                <a href="javascript: void(0)" class="am-close am-btn am-btn-danger" data-am-modal-close>取消</a>
                                            </div>
                                        </div>
                                        <script>
                                        function Save() {
                                            document.location.href = "../person/address.aspx?user_name=" + $('#user-name').val() + "&&user_phone=" + $('#user-phone').val() + "&&sheng=" + $('#sheng').text() + "&&city=" + $('#city').text() + "&&quyu=" + $('#quy').text() + "&&xiangxi=" + $('#user-intro').val();
                                        }
                                        </script>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                </div>

                <div class="clear"></div>


</asp:Content>

