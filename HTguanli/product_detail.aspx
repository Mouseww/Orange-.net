<%@ Page Title="" Language="C#" MasterPageFile="~/HTguanli/MasterPage1.master" AutoEventWireup="true" CodeFile="product_detail.aspx.cs" Inherits="HTguanli_product_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <style>
    
     th{
        height:20px
     }

 </style>
   

<section class="rt_wrap content mCustomScrollbar">
    <div class="page_title">
       <h2 class="fl">商品列表</h2>
       <a href="product_list.aspx" class="fr top_rt_btn add_icon">添加商品</a>
      </div>
    <asp:Label ID="Label1" runat="server" Text="商品名称"></asp:Label>
    <asp:TextBox ID="TextBox1" class="textbox textbox_225" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" class="group_btn" Text="查询" OnClick="Button1_Click" />
    <asp:GridView class="table" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="125px" Width="100%" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" Visible="False" />
            <asp:BoundField DataField="Name" HeaderText="商品名称" SortExpression="Name" >
            <ItemStyle VerticalAlign="Middle" />
            </asp:BoundField>
            <asp:BoundField DataField="jieshao" HeaderText="商品介绍" SortExpression="jieshao" />
            <asp:BoundField DataField="Price_old" HeaderText="原价" SortExpression="Price_old" />
            <asp:BoundField DataField="Price" HeaderText="现价" SortExpression="Price" />
            <asp:BoundField DataField="Number" HeaderText="库存量" SortExpression="Number" />
            <asp:ImageField DataImageUrlField="img" HeaderText="图片">
                <ControlStyle Height="50px" />    
            </asp:ImageField>
            <asp:CommandField ShowEditButton="True" HeaderText="操作" ShowDeleteButton="True" />
            <asp:BoundField DataField="img" HeaderText="img" SortExpression="img" Visible="False" />
            <asp:BoundField DataField="img_small" HeaderText="img_small" SortExpression="img_small" Visible="False" />
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="product_detail1.aspx?Id={0}" DataTextFormatString="{0}" HeaderText="链接" Text="详情" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspnet_Orange_20170331015318ConnectionString %>" DeleteCommand="DELETE FROM [Commodities] WHERE [Id] = @original_Id" InsertCommand="INSERT INTO [Commodities] ([Name], [Number], [Price], [img], [ID_ID], [img_small], [jieshao], [Price_old], [Time]) VALUES (@Name, @Number, @Price, @img, @ID_ID, @img_small, @jieshao, @Price_old, @Time)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Commodities]" UpdateCommand="UPDATE [Commodities] SET [Name] = @Name, [Number] = @Number, [Price] = @Price, [img] = @img, [ID_ID] = @ID_ID, [img_small] = @img_small, [jieshao] = @jieshao, [Price_old] = @Price_old, [Time] = @Time WHERE [Id] = @original_Id">
        <DeleteParameters>
            <asp:Parameter Name="original_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Number" Type="Int32" />
            <asp:Parameter Name="Price" Type="Double" />
            <asp:Parameter Name="img" Type="String" />
            <asp:Parameter Name="ID_ID" Type="Int32" />
            <asp:Parameter Name="img_small" Type="String" />
            <asp:Parameter Name="jieshao" Type="String" />
            <asp:Parameter Name="Price_old" Type="Double" />
            <asp:Parameter Name="Time" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Number" Type="Int32" />
            <asp:Parameter Name="Price" Type="Double" />
            <asp:Parameter Name="img" Type="String" />
            <asp:Parameter Name="ID_ID" Type="Int32" />
            <asp:Parameter Name="img_small" Type="String" />
            <asp:Parameter Name="jieshao" Type="String" />
            <asp:Parameter Name="Price_old" Type="Double" />
            <asp:Parameter Name="Time" Type="String" />
            <asp:Parameter Name="original_Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</section>
</asp:Content>

