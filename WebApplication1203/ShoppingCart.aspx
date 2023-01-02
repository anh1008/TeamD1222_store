<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="WebApplication1203.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!--因為購物車做失敗所以沒辦法顯示...!-->
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Cart3">
        <Columns>
            <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
        </Columns>
    </asp:GridView>
    <br />
     <a class="btn btn-default" style="background-color:orange; border-radius:5px;border:0px">Checkout &raquo;</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="Cart3" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString7 %>" SelectCommand="SELECT [Title], [Price] FROM [ShoppingCar]"></asp:SqlDataSource>
</asp:Content>
