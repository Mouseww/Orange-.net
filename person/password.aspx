<%@ Page Title="" Language="C#" MasterPageFile="~/person/MasterPage1.master" AutoEventWireup="true" CodeFile="password.aspx.cs" Inherits="person_password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
		<link href="../AmazeUI-2.4.2/assets/css/admin.css" rel="stylesheet" type="text/css">
		<link href="../AmazeUI-2.4.2/assets/css/amazeui.css" rel="stylesheet" type="text/css">

		<link href="../css/personal.css" rel="stylesheet" type="text/css">
		<link href="../css/stepstyle.css" rel="stylesheet" type="text/css">

		<script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
		<script src="../AmazeUI-2.4.2/assets/js/amazeui.js"></script>


				
            <div class="main-wrap">

                <div class="am-cf am-padding">
                    <div class="am-fl am-cf"><strong class="am-text-danger am-text-lg">修改密码</strong> / <small>Password</small></div>
                </div>
                <hr />
                <!--进度条-->
                <div class="m-progress">
                    <div class="m-progress-list">
                        <span id="step1" class="step-1 step">
                            <em class="u-progress-stage-bg"></em>
                            <i class="u-stage-icon-inner">1<em class="bg"></em></i>
                            <p class="stage-name">重置密码</p>
                        </span>
                        <span id="step2" class="step-2 step">
                            <em class="u-progress-stage-bg"></em>
                            <i class="u-stage-icon-inner">2<em class="bg"></em></i>
                            <p class="stage-name">完成</p>
                        </span>
                        <span class="u-progress-placeholder"></span>
                    </div>
                    <% if (msg != null)
                        {%>
                        <script>
                            $(function(){
                                $('#step1').attr('class', 'step-2 step');
                                $('#step2').attr('class', 'step-1 step');
                                $('#demopsw').hide();
                                $('#msg').show();
                                $('.u-progress-bar total-steps-2').after("<div><%=msg%></div>")
                            })
                            
                        </script>
                    <% }%>
                    <div class="u-progress-bar total-steps-2">
                        <div class="u-progress-bar-inner"></div>
                    </div>
                </div>
                <form class="am-form am-form-horizontal">
                    <div id="demopsw">
                        <div class="am-form-group">
                            <label for="user-old-password" class="am-form-label">原密码</label>
                            <div class="am-form-content">
                                <input type="password" id="user-old-password" placeholder="请输入原登录密码">
                            </div>
                        </div>
                        <div class="am-form-group">
                            <label for="user-new-password" class="am-form-label">新密码</label>
                            <div class="am-form-content">
                                <input type="password" id="user-new-password" placeholder="由数字、字母组合">
                            </div>
                        </div>
                        <div class="am-form-group">
                            <label for="user-confirm-password" class="am-form-label">确认密码</label>
                            <div class="am-form-content">
                                <input type="password" id="user-confirm-password" placeholder="请再次输入上面的密码"><p id="yanzheng" hidden="hidden" style="color:red">两次输入的密码不同</p>
                            </div>
                        </div>
                        <div class="info-btn">
                            <div id="inf-btn" class="am-btn am-btn-danger" disabled="">保存修改</div>
                        </div>
                    </div>
                    <div id="msg" hidden="hidden" style="text-align: center; padding-bottom: 30px;"><%if (msg != null) {%> <%=msg%><%} %></div>
                    <script>

                        $('#inf-btn').click(function () {
                        var oldpsw = $('#user-old-password').val();
                        var newpsw= $('#user-new-password').val();
                        var conpsw = $('#user-confirm-password').val();
                        if (oldpsw == "" || newpsw == "" || conpsw == "") {
                            alert('请填写完成后提交');
                        }
                        else {
                            document.location.href = "../person/password.aspx?oldpsw="+oldpsw+"&&newpsw="+newpsw;
                        }
                    
                        })
                        $('#user-confirm-password').change(function(){
                            if( $('#user-new-password').val()!=$('#user-confirm-password').val()){
                                $('#yanzheng').show();
                                $('#inf-btn').attr('disabled','');
                            }
                            else { $('#yanzheng').hide();
                            $('#inf-btn').removeAttr('disabled');
                            }
                        })
                    </script>
                </form>

            </div>


</asp:Content>

