<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Sell.aspx.cs" Inherits="WebApplication1203.Sell" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
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
</asp:Content>
