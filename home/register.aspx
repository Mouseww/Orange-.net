<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="home_register" %>

<!DOCTYPE html>

<html>

	<head lang="en">
		<meta charset="UTF-8">
		<title>注册</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp" />

		<link rel="stylesheet" href="../AmazeUI-2.4.2/assets/css/amazeui.min.css" />
		<link href="../css/dlstyle.css" rel="stylesheet" type="text/css">
		<script src="../AmazeUI-2.4.2/assets/js/jquery.min.js"></script>
		<script src="../AmazeUI-2.4.2/assets/js/amazeui.min.js"></script>

	</head>

	<body>

		<div class="login-boxtitle">
			<a href="home/demo.html"><img alt="" src="../images/logobig.png" /></a>
		</div>
        <div class="login-banner">
			<div class="login-main">
				<div class="login-banner-bg"><span></span><img src="../images/big.jpg" /></div>
				  <form id="form2" runat="server"><div class="login-box">

							<h3 class="title">邮箱注册</h3>

							<div class="clear"></div>
						
						<div class="login-form">
						     
 

							   <div class="user-name">
								    <label for="email"><i class="am-icon-envelope-o"></i></label>
										<asp:TextBox runat="server" type="email" ID="email" placeholder="请输入邮箱账号"/>
                 </div>
                              <div>  <p id="email_ok" style="color:lawngreen" hidden="hidden">通过</p>
                                    <p id="email_error" style="color:red" hidden="hidden">邮箱格式错误</p></div>
                <div class="user-pass">
								    <label for="password"><i class="am-icon-lock"></i></label>
								    <asp:TextBox runat="server" ID="psw" type="password" placeholder="设置密码"/>
                 </div>										
                 <div class="user-pass">
								    <label for="passwordRepeat"><i class="am-icon-lock"></i></label>
								    <input type="password" name="" id="passwordRepeat" placeholder="确认密码">
                 </div>	
            <div>
                                    <p style="color:red" id="tishi" hidden="hidden">两次输入的密码不一致</p>
                                </div>
                
                   <script>
                                $('#passwordRepeat').change(function () {
                                    var pswr = $(this).val();
                                    var psw = $('#psw').val();
                                    if (pswr != psw) {
                                        $('#tishi').show();
                                    }
                                    else {
                                        $('#tishi').hide();
                                    }
                                })
                                $("#email").change(function () {
                                    var str = $("#email").val();
                                    var ret = /^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/;
                                    if (ret.test(str)) {
                                        $('#email_error').hide();
                                        $('#email_ok').show();
                                    } else {
                                        $('#email_ok').hide();
                                        $('#email_error').show();
                                    }
                                });
                            </script>
           </div>
            
            
								<div class="am-cf">
									<asp:Button runat="server" ID="submit"  Text="注 册" class="am-btn am-btn-primary am-btn-sm" OnClick="submit_Click"/>
								</div>
						
								<div class="am-cf">
									<a href="Login.aspx" ID="dl" style="font-size:1em"   class="am-btn am-btn-primary am-btn-sm">返回登录</a>
								</div>

				</div> </form>
			</div>
		</div>
		
					<div class="footer ">
						<div class="footer-hd ">
							<p>
								<a href="# ">恒望科技</a>
								<b>|</b>
								<a href="# ">商城首页</a>
								<b>|</b>
								<a href="# ">支付宝</a>
								<b>|</b>
								<a href="# ">物流</a>
							</p>
						</div>
						<div class="footer-bd ">
							<p>
								<a href="# ">关于恒望</a>
								<a href="# ">合作伙伴</a>
								<a href="# ">联系我们</a>
								<a href="# ">网站地图</a>
								<em>© 2015-2025 Hengwang.com 版权所有. 更多模板 <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></em>
							</p>
						</div>
					</div>
	</body>

</html>
