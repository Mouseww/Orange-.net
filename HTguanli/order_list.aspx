<%@ Page Title="" Language="C#" MasterPageFile="~/HTguanli/MasterPage1.master" AutoEventWireup="true" CodeFile="order_list.aspx.cs" Inherits="HTguanli_order_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section class="rt_wrap content mCustomScrollbar">
 <div class="rt_content">
      <div class="page_title">
       <h2 class="fl">订单列表</h2>
       
      </div>
      <section class="mtb">
       <select class="select">
        <option>订单状态</option>
        <option>待付款</option>
        <option>待发货</option>
        <option>待评价</option>
       </select>
       <input type="text" class="textbox textbox_225" placeholder="输入订单编号或收件人姓名/电话..."/>
       <input type="button" value="查询" class="group_btn"/>
      </section>
     <asp:GridView class="table" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="100%">
         <Columns>
             <asp:BoundField DataField="Id" HeaderText="订单编号" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
             <asp:BoundField DataField="Commodity_Id" HeaderText="商品详细编号" SortExpression="Commodity_Id" ApplyFormatInEditMode="True" />
             <asp:BoundField DataField="user_id" HeaderText="用户编号" SortExpression="user_id" />
             <asp:BoundField DataField="BuyNum" HeaderText="购买数量" SortExpression="BuyNum" />
             <asp:BoundField DataField="Price" HeaderText="金额" SortExpression="Price" />
             <asp:BoundField DataField="sendAddress" HeaderText="收货地址" SortExpression="sendAddress" />
             <asp:BoundField DataField="ManName" HeaderText="收件人" SortExpression="ManName" />
             <asp:BoundField DataField="Manphone" HeaderText="联系方式" SortExpression="Manphone" />
             <asp:BoundField DataField="Time" HeaderText="订单时间" SortExpression="Time" />
             <asp:BoundField DataField="State" HeaderText="状态" SortExpression="State" />
             <asp:CommandField HeaderText="操作" ShowDeleteButton="True" ShowEditButton="True" />
         </Columns>
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspnet_Orange_20170331015318ConnectionString %>" DeleteCommand="DELETE FROM [Orders] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Orders] ([Commodity_Id], [user_id], [BuyNum], [sendAddress], [ManName], [Manphone], [Time], [State], [Price]) VALUES (@Commodity_Id, @user_id, @BuyNum, @sendAddress, @ManName, @Manphone, @Time, @State, @Price)" SelectCommand="SELECT * FROM [Orders]" UpdateCommand="UPDATE [Orders] SET [Commodity_Id] = @Commodity_Id, [user_id] = @user_id, [BuyNum] = @BuyNum, [sendAddress] = @sendAddress, [ManName] = @ManName, [Manphone] = @Manphone, [Time] = @Time, [State] = @State, [Price] = @Price WHERE [Id] = @Id">
          <DeleteParameters>
              <asp:Parameter Name="Id" Type="Int32" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="Commodity_Id" Type="Int32" />
              <asp:Parameter Name="user_id" Type="Int32" />
              <asp:Parameter Name="BuyNum" Type="Int32" />
              <asp:Parameter Name="sendAddress" Type="String" />
              <asp:Parameter Name="ManName" Type="String" />
              <asp:Parameter Name="Manphone" Type="String" />
              <asp:Parameter Name="Time" Type="String" />
              <asp:Parameter Name="State" Type="String" />
              <asp:Parameter Name="Price" Type="String" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="Commodity_Id" Type="Int32" />
              <asp:Parameter Name="user_id" Type="Int32" />
              <asp:Parameter Name="BuyNum" Type="Int32" />
              <asp:Parameter Name="sendAddress" Type="String" />
              <asp:Parameter Name="ManName" Type="String" />
              <asp:Parameter Name="Manphone" Type="String" />
              <asp:Parameter Name="Time" Type="String" />
              <asp:Parameter Name="State" Type="String" />
              <asp:Parameter Name="Price" Type="String" />
              <asp:Parameter Name="Id" Type="Int32" />
          </UpdateParameters>
      </asp:SqlDataSource>
 </div>
</section>


</asp:Content>

