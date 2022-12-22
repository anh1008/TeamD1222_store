<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="search_3.aspx.cs" Inherits="WebApplication1203.Search.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        &nbsp;</p>
    <p>
        <asp:LinkButton ID="LinkButton1" runat="server" BackColor="Yellow" ForeColor="Black" OnClick="LinkButton1_Click">Product(ID)</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server" BackColor="Yellow" ForeColor="Black" OnClick="LinkButton2_Click">Title</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server" BackColor="Yellow" ForeColor="Black" OnClick="LinkButton3_Click">Category(ID)</asp:LinkButton>
        &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton4" runat="server" BackColor="Yellow" ForeColor="Black" OnClick="LinkButton4_Click">Location</asp:LinkButton>
        <br />
        Search _ By _ Category(ID)：<asp:TextBox ID="TextBox1" runat="server" Height="27px" Width="138px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Height="31px" Text="ENTER" Width="66px" />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#FFCC99" DataKeyNames="Product_ID" DataSourceID="SqlDataSource1" Height="500px" Width="1600px">
            <Columns>
                <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" ReadOnly="True" SortExpression="Product_ID" />
                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Category_ID" HeaderText="Category_ID" SortExpression="Category_ID" />
                <asp:BoundField DataField="Payment_seller" HeaderText="Payment_seller" SortExpression="Payment_seller" />
                <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                <asp:BoundField DataField="Condition" HeaderText="Condition" SortExpression="Condition" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            </Columns>
            <EmptyDataTemplate>
                歡迎使用搜尋功能：<br /> 
                <br />
                若輸入Category(ID)後沒有顯示書籍項目，則Category(ID)錯誤，請重新搜尋！
            </EmptyDataTemplate>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Search_By_ProductID %>" SelectCommand="SELECT * FROM [Products] WHERE ([Category_ID] = @Category_ID)">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Category_ID" PropertyName="Text" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
