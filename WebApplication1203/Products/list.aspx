<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="WebApplication1203.Products.list" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <asp:SqlDataSource ID="cart1" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString7 %>" InsertCommand="INSERT INTO ShoppingCar(ProductID, Title, Category_ID, Price) VALUES (@ProductID, @Title, @Category_ID, @Price)" SelectCommand="SELECT * FROM [ShoppingCar]">
        <InsertParameters>
            <asp:Parameter Name="ProductID" />
            <asp:Parameter Name="Title" />
            <asp:Parameter Name="Category_ID" />
            <asp:Parameter Name="Price" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView2" runat="server" DataKeyNames="Product_ID" DataSourceID="cart1" DefaultMode="Insert" OnPageIndexChanging="FormView1_PageIndexChanging">
        <EditItemTemplate>
            Product_ID:
            <asp:Label ID="Product_IDLabel1" runat="server" Text='<%# Eval("Product_ID") %>' />
            <br />
            Title:
            <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
            <br />
            Category_ID:
            <asp:TextBox ID="Category_IDTextBox" runat="server" Text='<%# Bind("Category_ID") %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="ID" DataTextField="Product_ID" DataValueField="Product_ID" SelectedValue='<%# Bind("Product_ID") %>' Visible="False">
            </asp:DropDownList>
            <asp:SqlDataSource ID="ID" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString7 %>" SelectCommand="SELECT Product_ID FROM Products WHERE (Title = @Title)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TitleTextBox0" Name="Title" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="Cat" DataTextField="Category_ID" DataValueField="Category_ID" SelectedValue='<%# Bind("Category_ID") %>' Visible="False">
            </asp:DropDownList>
            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="Price2" DataTextField="Price" DataValueField="Price" SelectedValue='<%# Bind("Price") %>' Visible="False">
            </asp:DropDownList>
            <br />
            <asp:SqlDataSource ID="Cat" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString7 %>" SelectCommand="SELECT Category_ID FROM Products WHERE (Title = @Title)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TitleTextBox0" Name="Title" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="Price2" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString7 %>" SelectCommand="SELECT Price FROM Products WHERE (Title = @Title)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TitleTextBox0" Name="Title" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            To buy books,please enter Title here:
            <asp:TextBox ID="TitleTextBox0" runat="server" Text='<%# Bind("Title") %>' />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="加入購物車" />
            <br />
            &nbsp;<br />
        </InsertItemTemplate>
        <ItemTemplate>
            Product_ID:
            <asp:Label ID="Product_IDLabel" runat="server" Text='<%# Eval("Product_ID") %>' />
            <br />
            Title:
            <asp:Label ID="TitleLabel" runat="server" Text='<%# Bind("Title") %>' />
            <br />
            Category_ID:
            <asp:Label ID="Category_IDLabel" runat="server" Text='<%# Bind("Category_ID") %>' />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
        </ItemTemplate>
    </asp:FormView>
                <a href="https://localhost:44345/Shoppingcart" class="btn btn-default" style="background-color:orange; border-radius:5px;border:0px">Check cart &raquo;</a>;
<br />
     <h1>
                &nbsp;</h1>
<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Description" DataValueField="Category_ID">
</asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;
   
&nbsp;<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
   
&nbsp;<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Product_ID" DataSourceID="Products">
    <Columns>
        <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" ReadOnly="True" SortExpression="Product_ID" />
        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
        <asp:BoundField DataField="Payment_seller" HeaderText="Payment_seller" SortExpression="Payment_seller" />
        <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
        <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
        <asp:BoundField DataField="Condition" HeaderText="Condition" SortExpression="Condition" />
        <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="Products" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString %>" SelectCommand="SELECT * FROM [Products] WHERE ([Category_ID] = @Category_ID)" OnSelecting="Products_Selecting">
    <SelectParameters>
        <asp:ControlParameter ControlID="DropDownList1" Name="Category_ID" PropertyName="SelectedValue" Type="Int32" />
    </SelectParameters>
</asp:SqlDataSource>
</asp:Content>
