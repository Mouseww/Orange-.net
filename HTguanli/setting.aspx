<%@ Page Title="" Language="C#" MasterPageFile="~/HTguanli/MasterPage1.master" AutoEventWireup="true" CodeFile="setting.aspx.cs" Inherits="HTguanli_setting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style>
        #ContentPlaceHolder1_GridView1{
            position:absolute;
            top:20%;
            left:16%;
        }
         #ContentPlaceHolder1_GridView2{
            position:absolute;
            top:20%;
            left:45%;
        }
          #ContentPlaceHolder1_GridView3{
            position:absolute;
            top:20%;
            left:71%;
        }
    </style>

<section class="rt_wrap content mCustomScrollbar">
 <div class="rt_content">
      <div class="page_title">
       <h2 class="fl">商品分类管理</h2>
          <div style="position:absolute;right:5%;top:3%">
          <asp:Button ID="Button2" runat="server" class="group_btn" Text="添加B类" OnClick="Button2_Click" />
          <asp:Button ID="Button3" runat="server" class="group_btn" Text="添加C类" OnClick="Button3_Click" />
      </div>
          </div>
    </div>
    </section>
    
    <asp:GridView ID="GridView1" class="table" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="28%" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="A类编号" InsertVisible="False" ReadOnly="True" SortExpression="ID" >
            <HeaderStyle Width="20%" />
            </asp:BoundField>
            <asp:BoundField DataField="Type_Name" HeaderText="类名" SortExpression="Type_Name" />
            <asp:CommandField HeaderText="操作" ShowEditButton="True" ShowDeleteButton="True">
            <HeaderStyle Width="30%" />
            </asp:CommandField>
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource  ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspnet_Orange_20170331015318ConnectionString %>" DeleteCommand="DELETE FROM [Commodity_type] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Commodity_type] ([Type_Name], [img], [Time]) VALUES (@Type_Name, @img, @Time)" SelectCommand="SELECT * FROM [Commodity_type]" UpdateCommand="UPDATE [Commodity_type] SET [Type_Name] = @Type_Name, [img] = @img, [Time] = @Time WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Type_Name" Type="String" />
            <asp:Parameter Name="img" Type="String" />
            <asp:Parameter Name="Time" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Type_Name" Type="String" />
            <asp:Parameter Name="img" Type="String" />
            <asp:Parameter Name="Time" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView3" class="table"  runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource3" Width="28%" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="C类编号" InsertVisible="False" SortExpression="ID" ReadOnly="True" >
            <HeaderStyle Width="20%" />
            </asp:BoundField>
            <asp:BoundField DataField="Name" HeaderText="类名" SortExpression="Name" />
            <asp:BoundField DataField="ID_1_ID" HeaderText="B类编号" SortExpression="ID_1_ID" >
            <HeaderStyle Width="20%" />
            </asp:BoundField>
            <asp:CommandField HeaderText="操作" ShowEditButton="True" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:aspnet_Orange_20170331015318ConnectionString %>" DeleteCommand="DELETE FROM [Commodity_1] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Commodity_1] ([Name], [Slogan], [ID_1_ID], [Time]) VALUES (@Name, @Slogan, @ID_1_ID, @Time)" SelectCommand="SELECT * FROM [Commodity_1]" UpdateCommand="UPDATE [Commodity_1] SET [Name] = @Name, [Slogan] = @Slogan, [ID_1_ID] = @ID_1_ID, [Time] = @Time WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Slogan" Type="String" />
            <asp:Parameter Name="ID_1_ID" Type="Int32" />
            <asp:Parameter Name="Time" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Slogan" Type="String" />
            <asp:Parameter Name="ID_1_ID" Type="Int32" />
            <asp:Parameter Name="Time" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView2" class="table" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2" Width="25%" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="B类编号" InsertVisible="False" SortExpression="ID" >
            <HeaderStyle Width="20%" />
            </asp:BoundField>
            <asp:BoundField DataField="Name" HeaderText="类名" SortExpression="Name" />
            <asp:BoundField DataField="ID_1_ID" HeaderText="A类编号" SortExpression="ID_1_ID" >
            <HeaderStyle Width="20%" />
            </asp:BoundField>
            <asp:CommandField HeaderText="操作" ShowEditButton="True" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:aspnet_Orange_20170331015318ConnectionString %>" DeleteCommand="DELETE FROM [Commodity_2] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Commodity_2] ([Name], [ID_1_ID], [Time]) VALUES (@Name, @ID_1_ID, @Time)" SelectCommand="SELECT * FROM [Commodity_2]" UpdateCommand="UPDATE [Commodity_2] SET [Name] = @Name, [ID_1_ID] = @ID_1_ID, [Time] = @Time WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="ID_1_ID" Type="Int32" />
            <asp:Parameter Name="Time" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="ID_1_ID" Type="Int32" />
            <asp:Parameter Name="Time" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>



</asp:Content>

