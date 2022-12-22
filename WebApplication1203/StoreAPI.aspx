<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StoreAPI.aspx.cs" Inherits="WebApplication1203.StoreAPI" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="storeapi.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Back To Search</asp:LinkButton>
            <span id="message" runat="server"></span>
        </div>
    </form>
</body>
</html>
