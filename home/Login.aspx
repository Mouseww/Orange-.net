﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="home_Login" %>

<!DOCTYPE html>

<html>

	<head lang="en">
		<meta charset="UTF-8">
		<title>登录</title>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
		<meta name="format-detection" content="telephone=no">
		<meta name="renderer" content="webkit">
		<meta http-equiv="Cache-Control" content="no-siteapp" />

		<link rel="stylesheet" href="../AmazeUI-2.4.2/assets/css/amazeui.css" />
		<link href="../css/dlstyle.css" rel="stylesheet" type="text/css">
	</head>

	<body>
       
		<div class="login-boxtitle">
			<a href="home.html"><img alt="logo" src="../images/logobig.png" /></a>
		</div>

		<div class="login-banner">
			<div class="login-main">
				<div class="login-banner-bg"><span></span><img src="../images/big.jpg" /></div>
				  <form id="form1" runat="server"><div class="login-box">

							<h3 class="title">登录商城</h3>

							<div class="clear"></div>
						
						<div class="login-form">
						     
 

							   <div class="user-name">
								    <label for="user"><i class="am-icon-user"></i></label>
								    <asp:TextBox runat="server" ID="user" placeholder="邮箱/手机/用户名"/>
                 </div>
                 <div class="user-pass">
								    <label for="password"><i class="am-icon-lock"></i></label>
								    <asp:TextBox runat="server" type="password" ID="password" placeholder="请输入密码"/>
                 </div>
             
           </div>
            
            <div class="login-links">
               
								<br />
            </div>
								<div class="am-cf">
									<asp:Button runat="server" ID="submit"  Text="登 录" class="am-btn am-btn-primary am-btn-sm" OnClick="submit_Click"/>
								</div>
                      
								<div class="am-cf">
									<a href="register.aspx" ID="dl" style="font-size:1em"   class="am-btn am-btn-primary am-btn-sm">点击注册</a>
								</div>
						<div class="partner">		
								<h3>合作账号</h3>
							<div class="am-btn-group">
								<li><a href="#"><i class="am-icon-qq am-icon-sm"></i><span>QQ登录</span></a></li>
								<li><a href="#"><i class="am-icon-weibo am-icon-sm"></i><span>微博登录</span> </a></li>
								<li><a href="#"><i class="am-icon-weixin am-icon-sm"></i><span>微信登录</span> </a></li>
							</div>
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
									</p>
						</div>
					</div>
	</body>

</html>

