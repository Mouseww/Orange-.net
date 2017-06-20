<%@ Page Title="" Language="C#" MasterPageFile="~/HTguanli/MasterPage1.master" AutoEventWireup="true" CodeFile="setting3.aspx.cs" Inherits="HTguanli_setting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
<section class="rt_wrap content mCustomScrollbar">
 <div class="rt_content" style="margin-bottom:0px">
      <div class="page_title">
       <h2 class="fl">商品分类管理</h2>
          <div style="position:absolute;right:5%;top:2%">
          <asp:Button ID="Button2" runat="server" class="group_btn" Text="添加C类" OnClick="Button2_Click" />
         <asp:Button ID="Button3" runat="server" class="group_btn" Text="返回上一级" OnClick="Button3_Click" />
    
                </div>
          </div>
    </div>
    
    
    <asp:GridView ID="GridView2" class="table" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2" Width="100%" AllowPaging="True" AllowSorting="True">
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="C类编号" InsertVisible="False" SortExpression="ID" >
            </asp:BoundField>
            <asp:BoundField DataField="Name" HeaderText="类名" SortExpression="Name" />
            <asp:BoundField DataField="ID_1_ID" HeaderText="B类编号" SortExpression="ID_1_ID" >
            </asp:BoundField>
            <asp:CommandField HeaderText="操作" ShowEditButton="True" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>

      <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:aspnet_Orange_20170331015318ConnectionString %>" DeleteCommand="DELETE FROM [Commodity_2] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Commodity_2] ([Name], [ID_1_ID], [Time]) VALUES (@Name, @ID_1_ID, @Time)" SelectCommand="SELECT * FROM [Commodity_2] WHERE ([ID_1_ID] = @ID)" UpdateCommand="UPDATE [Commodity_2] SET [Name] = @Name, [ID_1_ID] = @ID_1_ID, [Time] = @Time WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="ID_1_ID" Type="Int32" />
            <asp:Parameter Name="Time" Type="String" />
        </InsertParameters>
          <SelectParameters>
              <asp:QueryStringParameter Name="ID" QueryStringField="id" Type="Int32" />
          </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="ID_1_ID" Type="Int32" />
            <asp:Parameter Name="Time" Type="String" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
  
    </section>
   

</asp:Content>

