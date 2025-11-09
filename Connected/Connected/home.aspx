<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Connected.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="INSERT" />
&nbsp;<asp:Button ID="Button2" runat="server" Text="UPDATE" OnClick="Button2_Click" />
&nbsp;<asp:Button ID="Button3" runat="server" Text="DELETE" OnClick="Button3_Click" />
&nbsp;<asp:Button ID="Button4" runat="server" Text="DISPLAY" OnClick="Button4_Click" />

        </div>
    </form>
</body>
</html>
