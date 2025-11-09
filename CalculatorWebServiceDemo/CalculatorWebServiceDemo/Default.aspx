<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CalculatorWebServiceDemo.Default" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <title>Calculator Client</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="max-width:500px;margin:30px auto;font-family:Segoe UI">
            <h2>Calculator Client (Consumes ASMX Service)</h2>

            <label>Number 1:</label><br />
            <asp:TextBox ID="txtA" runat="server"></asp:TextBox><br /><br />

            <label>Number 2:</label><br />
            <asp:TextBox ID="txtB" runat="server"></asp:TextBox><br /><br />

            <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
            <asp:Button ID="btnSubtract" runat="server" Text="Subtract" OnClick="btnSubtract_Click" />
            <asp:Button ID="btnMultiply" runat="server" Text="Multiply" OnClick="btnMultiply_Click" />
            <asp:Button ID="btnDivide" runat="server" Text="Divide" OnClick="btnDivide_Click" /><br /><br />

            <asp:Button ID="btnServerTime" runat="server" Text="Get Server Time" OnClick="btnServerTime_Click" /><br /><br />

            <asp:Label ID="lblResult" runat="server" Style="font-weight:bold"></asp:Label>
        </div>
    </form>
</body>
</html>
