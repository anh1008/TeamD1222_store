<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sell.aspx.cs" Inherits="WebApplication1203.Sell" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- 我試了兩種方法但就是跑不出來QAQ !-->
    <table>
        <tr>
            <td class="modal-sm">Category</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="Sell_Category" DataTextField="Description" DataValueField="Category_ID" style="margin-top: 0" Width="200px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="Sell_Category" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString6 %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="modal-sm">Title</td>
            <td>
                <asp:TextBox ID="TB1" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm">Payment_seller</td>
            <td>
                <asp:TextBox ID="TB2" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm">Location</td>
            <td>
                <asp:TextBox ID="TB3" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm">Country</td>
            <td>
                <asp:TextBox ID="TB4" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm">Condition</td>
            <td>
                <asp:TextBox ID="TB5" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm">Price</td>
            <td>
                <asp:TextBox ID="TB6" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="modal-sm"></td>
            <td>
                <asp:Button ID="BT1" runat="server" OnClick="Button1_Click1" Text="SAVE" />
            </td>
        </tr>
        
        <tr>
            <td class="modal-sm">&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="modal-sm">&nbsp;</td>
            <td>
                <asp:Label ID="lbMessage" runat="server"></asp:Label>
            </td>
        </tr>
        
    </table>
    <!--<asp:SqlDataSource ID="Product" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString %>" SelectCommand="SELECT * FROM [Products]"></asp:SqlDataSource>
    <InsertItemTemplate>
        Title:
        <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
        <br />
        Category_ID:
        <asp:DropDownList ID="DropDownList02" runat="server" DataSourceID="Categories" DataTextField="Description" DataValueField="Category_ID" >
        </asp:DropDownList>
        <asp:SqlDataSource ID="Categories" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
        <br />
        Payment_seller:
        <asp:TextBox ID="Payment_sellerTextBox" runat="server" Text='<%# Bind("Payment_seller") %>' />
        <br />
        Location:
        <asp:TextBox ID="LocationTextBox" runat="server" Text='<%# Bind("Location") %>' />
        <br />
        Country:
        <asp:TextBox ID="CountryTextBox" runat="server" Text='<%# Bind("Country") %>' />
        <br />
        Condition:
        <asp:TextBox ID="ConditionTextBox" runat="server" Text='<%# Bind("Condition") %>' />
        <br />
        Price:
        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
        <br />
        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="上架" />
        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
    </InsertItemTemplate>
         <asp:SqlDataSource ID="detail" runat="server" ConnectionString="<%$ ConnectionStrings:BookStoreConnectionString %>" InsertCommand="INSERT INTO [Products] ([Title], [Category_ID], [Payment_seller], [Location], [Country], [Condition], [Price]) VALUES (@Product_ID, @Title, @Category_ID, @Payment_seller, @Location, @Country, @Condition, @Price)"  UpdateCommand="UPDATE [Products] SET [Title] = @Title, [Category_ID] = @Category_ID, [Payment_seller] = @Payment_seller, [Location] = @Location, [Country] = @Country, [Condition] = @Condition, [Price] = @Price WHERE [Product_ID] = @Product_ID">
     <InsertParameters>
        <asp:Parameter Name="Title" Type="String" />
        <asp:Parameter Name="Category_ID" Type="Int32" />
        <asp:Parameter Name="Payment_seller" Type="String" />
        <asp:Parameter Name="Location" Type="String" />
        <asp:Parameter Name="Country" Type="String" />
        <asp:Parameter Name="Condition" Type="Double" />
        <asp:Parameter Name="Price" Type="Double" />
    </InsertParameters>
        <UpdateParameters>
        <asp:Parameter Name="Title" Type="String" />
        <asp:Parameter Name="Category_ID" Type="Int32" />
        <asp:Parameter Name="Payment_seller" Type="String" />
        <asp:Parameter Name="Location" Type="String" />
        <asp:Parameter Name="Country" Type="String" />
        <asp:Parameter Name="Condition" Type="Double" />
        <asp:Parameter Name="Price" Type="Double" />
        <asp:Parameter Name="Product_ID" Type="Int32" />
    </UpdateParameters>
    </asp:SqlDataSource>!-->
</asp:Content>
