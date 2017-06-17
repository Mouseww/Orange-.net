<%@ Page Title="" Language="C#" MasterPageFile="~/HTguanli/MasterPage1.master" AutoEventWireup="true" CodeFile="pay_list.aspx.cs" Inherits="HTguanli_pay_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<section class="rt_wrap content mCustomScrollbar">
 <div class="rt_content">
      <div class="page_title">
       <h2 class="fl">支付方式</h2>
       <a href="product_detail.html" class="fr top_rt_btn add_icon">添加支付方式</a>
      </div>
      <table class="table">
       <tr>
        <th>缩略图</th>
        <th>支付名称</th>
        <th>支付描述</th>
        <th>操作</th>
       </tr>
       <tr>
        <td class="center"><img src="upload/alipay.png" width="165" height="65"/></td>
        <td>支付宝</td>
        <td><p>支付宝,全球领先的独立第三方支付平台,致力于为广大用户提供安全快速的电子支付/网上支付/安全支付/手机支付体验,及转账收款/水电煤缴费/信用卡还款/AA收款等生活...</p></td>
        <td class="center">
         <a href="product_detail.html" title="编辑" class="link_icon">&#101;</a>
         <a href="#" title="删除" class="link_icon">&#100;</a>
        </td>
       </tr>
       <tr>
        <td class="center"><img src="upload/tenpay.png" width="165" height="65"/></td>
        <td>财付通</td>
        <td><p>财付通（Tenpay）是腾讯公司于2005年9月正式推出专业在线支付平台，其核心业务是帮助在互联网上进行交易的双方完成支付和收款。致力于为互联网用户和企业提供安...</p></td>
        <td class="center">
         <a href="product_detail.html" title="编辑" class="link_icon">&#101;</a>
         <a href="#" title="删除" class="link_icon">&#100;</a>
        </td>
       </tr>
       <tr>
        <td class="center"><img src="upload/wechatpay.png" width="165" height="65"/></td>
        <td>微信支付</td>
        <td><p>微信支付是集成在微信客户端的支付功能，用户可以通过手机完成快速的支付流程。微信支付以绑定银行卡的快捷支付为基础，向用户提供安全、快捷、高效的支付服务。2014年9月26日...</p></td>
        <td class="center">
         <a href="product_detail.html" title="编辑" class="link_icon">&#101;</a>
         <a href="#" title="删除" class="link_icon">&#100;</a>
        </td>
       </tr>
      </table>
      <aside class="paging">
       <a>第一页</a>
       <a>1</a>
       <a>2</a>
       <a>3</a>
       <a>…</a>
       <a>1004</a>
       <a>最后一页</a>
      </aside>
 </div>
</section>


</asp:Content>

