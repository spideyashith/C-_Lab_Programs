<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="retrive.aspx.cs" Inherits="CRUD__2.retrive" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
            <br />
        </div>
        <asp:Button ID="Button1" runat="server" Text="Get Data" />
&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Insert Data" />
&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Update Data" />
&nbsp;
        <asp:Button ID="Button4" runat="server" Text="Display data" />
    </form>
</body>
</html>
