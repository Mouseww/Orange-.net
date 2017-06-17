<%@ Page Title="" Language="C#" MasterPageFile="~/HTguanli/MasterPage1.master" AutoEventWireup="true" CodeFile="adjust_funding.aspx.cs" Inherits="HTguanli_adjust_funding" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<section class="rt_wrap content mCustomScrollbar">
 <div class="rt_content">
      <div class="page_title">
       <h2 class="fl">会员资金变动</h2>
       <a href="user_list.html" class="fr top_rt_btn">返回会员列表</a>
      </div>
      <table class="table">
       <tr>
        <td style="text-align:right;">当前余额：</td>
        <td>
         <input type="text" class="textbox" value="1999.00" readonly/>
         <span>元</span>
        </td>
        <td style="text-align:right;">冻结：</td>
        <td>
         <input type="text" class="textbox" value="0.00"/>
         <span>元</span>
        </td>
        <td rowspan="2">
         <a class="full_link_td" style="line-height:117px;">确认</a>
        </td>
       </tr>
       <tr>
        <td style="text-align:right;">增加：</td>
        <td>
         <input type="text" class="textbox" value="0.00"/>
         <span>元</span>
        </td>
        <td style="text-align:right;">减少：</td>
        <td>
          <input type="text" class="textbox" value="0.00"/>
          <span>元</span>
        </td>
        </tr>
      </table>
      <div class="page_title">
       <h2 class="fl">资金变动记录</h2>
      </div>
      <table class="table">
       <tr>
        <th>类型</th>
        <th>时间</th>
        <th>资金变动额</th>
        <th>当前余额</th>
       </tr>
       <tr>
        <td>订单：201602011534</td>
        <td><time>2016-02-01 15:34:48</time></td>
        <td>减少<strong class="rmb_icon">59.00</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
       </tr>
       <tr>
        <td>充值</td>
        <td><time>2016-02-01 15:34:48</time></td>
        <td>增加<strong class="rmb_icon">198.00</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
       </tr>
       <tr>
        <td>提现</td>
        <td><time>2016-02-01 15:34:48</time></td>
        <td>减少<strong class="rmb_icon">198.00</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
       </tr>
       <tr>
        <td>订单：201602011534</td>
        <td><time>2016-02-01 15:34:48</time></td>
        <td>减少<strong class="rmb_icon">59.00</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
       </tr>
       <tr>
        <td>充值</td>
        <td><time>2016-02-01 15:34:48</time></td>
        <td>增加<strong class="rmb_icon">198.00</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
       </tr>
       <tr>
        <td>提现</td>
        <td><time>2016-02-01 15:34:48</time></td>
        <td>减少<strong class="rmb_icon">198.00</strong></td>
        <td class="center"><strong class="rmb_icon">59.00</strong></td>
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

