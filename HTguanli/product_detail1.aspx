<%@ Page Title="" Language="C#" MasterPageFile="~/HTguanli/MasterPage1.master" AutoEventWireup="true" CodeFile="product_detail1.aspx.cs" Inherits="HTguanli_product_detail1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section class="rt_wrap content mCustomScrollbar">
        <asp:GridView class="table" ID="GridView1" runat="server" AutoGenerateColumns="False" Height="188px" Width="100%" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Name" HeaderText="商品名称" SortExpression="Name" />
                <asp:BoundField DataField="option" HeaderText="选项一" SortExpression="option" />
                <asp:BoundField DataField="Expr1" HeaderText="选项二" SortExpression="Expr1" />
                <asp:BoundField DataField="Price" HeaderText="现价" SortExpression="Price" />
                <asp:BoundField DataField="Price_old" HeaderText="原价" SortExpression="Price_old" />
                <asp:BoundField DataField="Number" HeaderText="库存量" SortExpression="Number" />
                <asp:BoundField DataField="Time" HeaderText="添加时间" SortExpression="Time" />
                <asp:CommandField HeaderText="操作" ShowDeleteButton="True" ShowEditButton="True" />
                <asp:HyperLinkField DataNavigateUrlFields="Commodity_Id" DataNavigateUrlFormatString="product_detail.aspx?Id={0}" DataTextFormatString="{0}" HeaderText="链接" Text="返回" />
            </Columns>
        </asp:GridView>


        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspnet_Orange_20170331015318ConnectionString %>" DeleteCommand="DELETE FROM [Commodity_attribute] WHERE [Id] = @Id" SelectCommand="SELECT Commodity_attribute.Id, Commodity_attribute.Name, Commodity_attribute.Number, Commodity_attribute.Commodity_Id, Commodity_attribute.Price, Commodity_attribute.Price_old, Commodity_attribute.Time, Commodity_option1.[option], Commodity_option2.[option] AS Expr1, Commodity_attribute.Commodity_option1_Id, Commodity_attribute.Commodity_option2_Id FROM Commodity_attribute INNER JOIN Commodity_option1 ON Commodity_attribute.Commodity_option1_Id = Commodity_option1.Id INNER JOIN Commodity_option2 ON Commodity_attribute.Commodity_option2_Id = Commodity_option2.Id WHERE (Commodity_attribute.Commodity_Id = @Commodity_Id)" UpdateCommand="UPDATE Commodity_attribute SET Name = @Name, Number = @Number, Commodity_Id = @Commodity_Id, Price = @Price, Commodity_option1_Id = @Commodity_option1_Id, Commodity_option2_Id = @Commodity_option2_Id, Price_old = @Price_old, Time = @Time FROM Commodity_attribute INNER JOIN Commodity_option1 ON Commodity_attribute.Commodity_option1_Id = Commodity_option1.Id INNER JOIN Commodity_option2 ON Commodity_attribute.Commodity_option2_Id = Commodity_option2.Id WHERE (Commodity_attribute.Id = @Id)" InsertCommand="INSERT INTO [Commodity_attribute] ([Name], [Number], [Commodity_Id], [Price], [Commodity_option1_Id], [Commodity_option2_Id], [Price_old], [Time]) VALUES (@Name, @Number, @Commodity_Id, @Price, @Commodity_option1_Id, @Commodity_option2_Id, @Price_old, @Time)">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Number" Type="Int32" />
                <asp:Parameter Name="Commodity_Id" Type="Int32" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="Commodity_option1_Id" Type="Int32" />
                <asp:Parameter Name="Commodity_option2_Id" Type="Int32" />
                <asp:Parameter Name="Price_old" Type="Double" />
                <asp:Parameter Name="Time" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter Name="Commodity_Id" QueryStringField="Id" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="Number" Type="Int32" />
                <asp:Parameter Name="Commodity_Id" Type="Int32" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="Commodity_option1_Id" Type="Int32" />
                <asp:Parameter Name="Commodity_option2_Id" Type="Int32" />
                <asp:Parameter Name="Price_old" Type="Double" />
                <asp:Parameter Name="Time" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>


        
    </section>

</asp:Content>

