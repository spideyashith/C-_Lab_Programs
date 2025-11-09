<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="delete.aspx.cs" Inherits="Connected.delete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enter the product id to be deleted:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
                        <asp:Button ID="Button1" runat="server" Text="DELETE" OnClick="Button1_Click" style="width: 88px" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="BACK HOME" OnClick="Button2_Click" style="height: 29px" />
&nbsp;<asp:Button ID="Button3" runat="server" Text="DISPLAY" OnClick="Button3_Click" />

        </div>
    </form>
</body>
</html>
