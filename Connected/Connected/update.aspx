<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="Connected.update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            Enter the id of the product to be updated:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            Enter the product name:
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            Enter the price:
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="UPDATE" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="BACK HOME" OnClick="Button2_Click" />
&nbsp;<asp:Button ID="Button3" runat="server" Text="DISPLAY" OnClick="Button3_Click" />
            
        </div>
    </form>
</body>
</html>
