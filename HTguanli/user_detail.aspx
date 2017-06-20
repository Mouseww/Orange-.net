<%@ Page Title="" Language="C#" MasterPageFile="~/HTguanli/MasterPage1.master" AutoEventWireup="true" CodeFile="user_detail.aspx.cs" Inherits="HTguanli_user_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <section class="rt_wrap content mCustomScrollbar">
        <asp:DataList ID="DataList1" class="table" runat="server" DataKeyField="ID" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                姓名:
                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                <br />
                昵称:
                <asp:Label ID="nikenameLabel" runat="server" Text='<%# Eval("nikename") %>' />
                <br />
                联系方式:
                <asp:Label ID="telephoneLabel" runat="server" Text='<%# Eval("telephone") %>' />
                <br />
                性别:
                <asp:Label ID="sexLabel" runat="server" Text='<%# Eval("sex") %>' />
                <br />
                生日:
                <asp:Label ID="birthdayLabel" runat="server" Text='<%# Eval("birthday") %>' />
                <br />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspnet_Orange_20170331015318ConnectionString %>" DeleteCommand="DELETE FROM [User_IN] WHERE [ID] = @ID" InsertCommand="INSERT INTO [User_IN] ([name], [nikename], [telephone], [sex], [birthday], [username]) VALUES (@name, @nikename, @telephone, @sex, @birthday, @username)" SelectCommand="SELECT * FROM [User_IN] WHERE ([ID] = @ID)" UpdateCommand="UPDATE [User_IN] SET [name] = @name, [nikename] = @nikename, [telephone] = @telephone, [sex] = @sex, [birthday] = @birthday, [username] = @username WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="nikename" Type="String" />
                <asp:Parameter Name="telephone" Type="String" />
                <asp:Parameter Name="sex" Type="Int32" />
                <asp:Parameter Name="birthday" Type="String" />
                <asp:Parameter Name="username" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="ID" QueryStringField="id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="nikename" Type="String" />
                <asp:Parameter Name="telephone" Type="String" />
                <asp:Parameter Name="sex" Type="Int32" />
                <asp:Parameter Name="birthday" Type="String" />
                <asp:Parameter Name="username" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
</section>

</asp:Content>

