<%@ Page Title="" Language="C#" MasterPageFile="~/HTguanli/MasterPage1.master" AutoEventWireup="true" CodeFile="setting2.aspx.cs" Inherits="HTguanli_setting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<section class="rt_wrap content mCustomScrollbar">
 <div class="rt_content" style="margin-bottom:0px">
      <div class="page_title">
       <h2 class="fl">商品分类管理</h2>
          <div style="position:absolute;right:5%;top:2%">
          <asp:Button ID="Button2" runat="server" class="group_btn" Text="添加B类" OnClick="Button2_Click" />
          <asp:Button ID="Button3" runat="server" class="group_btn" Text="返回上级" OnClick="Button3_Click" />
      </div>
          </div>
    </div>
    
    
    <asp:GridView ID="GridView2" class="table" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2" Width="100%" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="B类编号" InsertVisible="False" SortExpression="ID" >
            </asp:BoundField>
            <asp:BoundField DataField="Name" HeaderText="类名" SortExpression="Name" />
            <asp:BoundField DataField="ID_1_ID" HeaderText="A类编号" SortExpression="ID_1_ID" >
            </asp:BoundField>
            <asp:CommandField HeaderText="操作" ShowEditButton="True" ShowDeleteButton="True" />
            <asp:HyperLinkField DataNavigateUrlFields="Id,ID_1_ID" DataNavigateUrlFormatString="setting3.aspx?id={0}&amp;&amp;iid={1}" DataTextFormatString="{0},{1}" HeaderText="链接" Text="详情" />
        </Columns>
    </asp:GridView>

      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:aspnet_Orange_20170331015318ConnectionString %>" DeleteCommand="DELETE FROM [Commodity_1] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Commodity_1] ([Name], [Slogan], [ID_1_ID], [Time]) VALUES (@Name, @Slogan, @ID_1_ID, @Time)" SelectCommand="SELECT * FROM [Commodity_1] WHERE ([ID_1_ID] = @ID_1_ID)" UpdateCommand="UPDATE [Commodity_1] SET [Name] = @Name, [Slogan] = @Slogan, [ID_1_ID] = @ID_1_ID, [Time] = @Time WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Slogan" Type="String" />
            <asp:Parameter Name="ID_1_ID" Type="Int32" />
            <asp:Parameter Name="Time" Type="String" />
        </InsertParameters>
          <SelectParameters>
              <asp:QueryStringParameter Name="ID_1_ID" QueryStringField="id" Type="Int32" />
          </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Slogan" Type="String" />
            <asp:Parameter Name="ID_1_ID" Type="Int32" />
            <asp:Parameter Name="Time" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
  
    </section>
   

</asp:Content>

