<%@ Page Title="" Language="C#" MasterPageFile="~/person/MasterPage1.master" AutoEventWireup="true" CodeFile="information.aspx.cs" Inherits="person_information" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


        <link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="../css/personal.css" rel="stylesheet" type="text/css">
		<link href="../css/infstyle.css" rel="stylesheet" type="text/css">
		<script src="../AmazeUI-2.4.2/assets/js/jquery.min.js" type="text/javascript"></script>
		<script src="../AmazeUI-2.4.2/assets/js/amazeui.js" type="text/javascript"></script>
     <!--日期插件的引用-->
    <link href="../css/lyz.calendar.css" rel="stylesheet" type="text/css" />
    <script src="../js/personDate/jquery123.js" type="text/javascript"></script>
    <script src="../js/personDate/lyz.calendar.min.js" type="text/javascript"></script>
    
   
      <!--日期插件的引用-->
    <% if (flag != null)

    {%>
         <%if (flag)
        {%>
    <script>alert('修改成功')</script><% }

    }%>



      <!--  日期插件的jquery代码 -->
        <script>
    $(function () {
        $("#txtBeginDate").calendar({

            controlId: "divDate",                                 // 弹出的日期控件ID，默认: $(this).attr("id") + "Calendar"

            speed: 200,                                           // 三种预定速度之一的字符串("slow", "normal", or "fast")或表示动画时长的毫秒数值(如：1000),默认：200

            complement: true,                                     // 是否显示日期或年空白处的前后月的补充,默认：true

            readonly: true,                                       // 目标对象是否设为只读，默认：true

            upperLimit: new Date(),                               // 日期上限，默认：NaN(不限制)

            lowerLimit: new Date("1917/01/01"),                   // 日期下限，默认：NaN(不限制)

            callback: function () {                               // 点击选择日期后的回调函数

            }

        });

        //$("#txtEndDate").calendar();

    });

        </script>

            <div class="main-wrap">

                <div class="user-info">
                    <!--标题 -->
                    <div class="am-cf am-padding">
                        <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">个人资料</strong> </div>
                    </div>
                    <hr />

                    <!--头像 -->
                    <div class="user-infoPic">

                        <div class="filePic">
                            <input type="file" class="inputPic" allowexts="gif,jpeg,jpg,png,bmp" accept="image/*">
                            <img class="am-circle am-img-thumbnail" src="../images/getAvatar.do.jpg" alt="" />
                        </div>

                        <p class="am-form-help">头像</p>

                        <div class="info-m">
                            <div><b>用户名：<i><%=user.username%></i></b></div>
                            <div class="u-level">
                                <span class="rank r2">
                                    <s class="vip1"></s><a class="classes" href="#">铜牌会员</a>
                                </span>
                            </div>
                            <div class="u-safety">
                                <a href="safety.html">
                                    账户安全
                                    <span class="u-profile"><i class="bc_ee0000" style="width: 60px;" width="0">60分</i></span>
                                </a>
                            </div>
                        </div>
                    </div>

                    <!--个人信息 -->
                    <div class="info-main">
                        <div class="am-form am-form-horizontal">

                            <div class="am-form-group">
                                <label for="user-name2" class="am-form-label">昵称</label>
                                <div class="am-form-content">
 <% 										
     if (user.nikename != null)
     {
                                        %>

        <input type="text" id="user-name1" value="<%=user.nikename%>">   
                                        <%            
}
else
{
                                        %>  
<input type="text" id="user-name1" placeholder="nikename">
                                                    
                                        
<% }%>

</div>
</div>

<div class="am-form-group">
                                <label for="user-name" class="am-form-label">姓名</label>
                                <div class="am-form-content">
                                        <% 										
     if (user.name != null)
     {
                                        %>

        <input type="text" id="user-name2" value="<%=user.name %>"> 
                                        <%            
}
else
{
                                        %>  
<input type="text" id="user-name2" placeholder="name">
                                                    
                                        
<% }%>
                                                                           </div>
                                                                                                                                        </div>

                                                                                                                                        <div class="am-form-group">
                                <label class="am-form-label">性别</label>
                                <div class="am-form-content sex">
                                    <label class="am-radio-inline">
                                      
                                        <input type="radio" class="Sex1" name="radio10"  value="男" data-am-ucheck> 男
                                        
                                       
</label>
                                    <label class="am-radio-inline">
                                        <input type="radio" class="Sex2" name="radio10" value="女" data-am-ucheck> 女
                                    </label>
                                  
                                        <% if (user.sex == "1")
                            {
                                       %>
                                <script>$('.Sex1').click();</script>
                         <%  }
                            else
                            { %>
                                <script>$('.Sex2').click();</script>
                           <% }  %>


                                </div>
                            </div>
                          <!--  @* 日期插件 *@-->
                            <div class="am-form-group">
                                <label for="user-birth" class="am-form-label">生日</label>
                                <div class="am-form-content">
                                    <% 
                                            if (user.birthday != null)
                                         {
                                                    %>
                                    <input class="am-form-label" value="<%=user.birthday%>" id="txtBeginDate" style="border:1px solid #E4EAEE"/>
                                   <% 
                                            }
                                               else
                                            {
                                                   %>
                                        <input class="am-form-label" id="txtBeginDate" style="border:1px solid #E4EAEE" />
                                   <%} %> 
									
                                </div>
                                
                               
                              

                            </div>
                            <div class="am-form-group">
                                <label for="user-phone" class="am-form-label">电话</label>
                                <div class="am-form-content">
                                   <% 										
     if (user.telephone!= null)
     {
 %>

        <input id="user-phone" value="<%=user.telephone%>" type="tel">
                                        <%            
}
else
{
                                        %>  
 <input id="user-phone" placeholder="telephonenumber" type="tel">
                                                    
                                        
<% }%>
                                </div>
                            </div>
                            <div class="am-form-group">
                                <label for="user-email" class="am-form-label">电子邮件</label>
                                <div class="am-form-content">
                                    <input id="user-email" disabled="" placeholder="<%=user.username%>" type="email">

                                </div>
                            </div>
                           
                            <div class="info-btn">
                                <div id="btn-in" class="am-btn am-btn-danger">保存修改</div>
                            </div>
                           
<script>

    var sex=0;
    $('.Sex1').click(function(){
        sex = $('.Sex1').val();
    })
    $('.Sex2').click(function () {
        sex = $('.Sex2').val();
    })
        $('#btn-in').click(function () {
            document.location.href = "../person/information.aspx?name1=" + $('#user-name1').val() + "&&name2=" + $('#user-name2').val() + "&&telephone=" + $('#user-phone').val() + "&&birthday=" + $('#txtBeginDate').val() + "&&sex=" + sex;
            })
</script>
                        </div>
                    </div>

                </div>

            </div>
				


   

</asp:Content>

