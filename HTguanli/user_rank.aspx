<%@ Page Title="" Language="C#" MasterPageFile="~/HTguanli/MasterPage1.master" AutoEventWireup="true" CodeFile="user_rank.aspx.cs" Inherits="HTguanli_user_rank" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<section class="rt_wrap content mCustomScrollbar">
 <div class="rt_content">
      <div class="page_title">
       <h2 class="fl">添加/更新会员等级</h2>
      </div>
      <table class="table">
       <tr>
        <td style="text-align:right;">会员等级：</td>
        <td>
         <input type="text" class="textbox" value="" placeholder="等级名称"/>
        </td>
        <td style="text-align:right;">享受折扣率：</td>
        <td>
         <input type="text" class="textbox" value="" placeholder="0-100" />
         <span>%</span>
        </td>
        <td>
         <a class="full_link_td" style="line-height:58px">确认</a>
        </td>
       </tr>
      </table>
      <div class="page_title">
       <h2 class="fl">等级列表</h2>
      </div>
      <table class="table">
       <tr>
        <th>Id</th>
        <th>会员等级</th>
        <th>享受折扣率</th>
        <th>操作</th>
       </tr>
       <tr>
        <td class="center">001</td>
        <td class="center">普通会员</td>
        <td>80%</td>
        <td class="center">
         <a href="#" title="编辑" class="link_icon">&#101;</a>
         <a href="#" title="删除" class="link_icon">&#100;</a>
        </td>
       </tr>
       <tr>
        <td class="center">001</td>
        <td class="center">普通会员</td>
        <td>80%</td>
        <td class="center">
         <a href="#" title="编辑" class="link_icon">&#101;</a>
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

