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
      </div>
          </div>
    </div>
    </section>
    
    <asp:GridView ID="GridView1" class="table" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Width="100%" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="A类编号" InsertVisible="False" ReadOnly="True" SortExpression="ID" >
            </asp:BoundField>
            <asp:BoundField DataField="Type_Name" HeaderText="类名" SortExpression="Type_Name" />
            <asp:CommandField HeaderText="操作" ShowEditButton="True" ShowDeleteButton="True">
            </asp:CommandField>
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="setting2.aspx?id={0}" DataTextFormatString="{0}" HeaderText="链接" Text="详情" />
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
    


</asp:Content>

