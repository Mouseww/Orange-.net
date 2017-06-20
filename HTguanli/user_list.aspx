<%@ Page Title="" Language="C#" MasterPageFile="~/HTguanli/MasterPage1.master" AutoEventWireup="true" CodeFile="user_list.aspx.cs" Inherits="HTguanli_user_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<section class="rt_wrap content mCustomScrollbar">
 <div class="rt_content">
      <div class="page_title">
       <h2 class="fl">会员列表</h2>
     <%--  <a href="user_detail.html" class="fr top_rt_btn add_icon">添加新会员</a>--%>
      </div>
      <section class="mtb">
       
       <asp:TextBox runat="server" type="text" ID="txt" class="textbox textbox_225" placeholder="输入用户名"/>
       <asp:Button runat="server" type="button" Text="查询"  class="group_btn" OnClick="Unnamed2_Click"/>
      </section>
     <asp:GridView class="table" ID="GridView1" runat="server" Width="100%" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
         <Columns>
             <asp:BoundField DataField="ID" HeaderText="用户编号" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
             <asp:BoundField DataField="username" HeaderText="用户名" SortExpression="username" />
             <asp:BoundField DataField="password" HeaderText="密码" SortExpression="password" />
             <asp:BoundField DataField="User_IN_ID" HeaderText="User_IN_ID" SortExpression="User_IN_ID" Visible="False" />
             <asp:CommandField HeaderText="操作" ShowDeleteButton="True" ShowEditButton="True" />
         </Columns>
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspnet_Orange_20170331015318ConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Users] ([username], [password], [User_IN_ID]) VALUES (@username, @password, @User_IN_ID)" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [username] = @username, [password] = @password, [User_IN_ID] = @User_IN_ID WHERE [ID] = @ID">
          <DeleteParameters>
              <asp:Parameter Name="ID" Type="Int32" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="username" Type="String" />
              <asp:Parameter Name="password" Type="String" />
              <asp:Parameter Name="User_IN_ID" Type="Int32" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="username" Type="String" />
              <asp:Parameter Name="password" Type="String" />
              <asp:Parameter Name="User_IN_ID" Type="Int32" />
              <asp:Parameter Name="ID" Type="Int32" />
          </UpdateParameters>
      </asp:SqlDataSource>
      
 </div>
</section>


</asp:Content>

