<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ItemManagement.aspx.cs" Inherits="ItemManagement.ItemManagement" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xlink">
<head runat="server">
    <title>Exercise 04 - Item Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 50px;
            background-color: #f5f5f5;
        }

        .container {
            background-color: white;
            padding: 30px;
            max-width: 900px;
            margin: 0 auto;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .header {
            text-align: center;
            margin-bottom: 20px;
            padding-bottom: 15px;
            border-bottom: 2px solid #2196F3;
        }

        h2 {
            color: #333;
            margin: 5px 0;
        }

        .info {
            color: #666;
            font-size: 14px;
        }

        .input-row {
            display: grid;
            grid-template-columns: 1fr 2fr 1fr 1fr;
            gap: 10px;
            margin-bottom: 10px;
        }

        label {
            font-weight: bold;
            padding: 8px;
            background-color: #f0f0f0;
        }

        input[type="text"] {
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        .btn {
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border: none;
            border-radius: 3px;
            margin-right: 10px;
            margin-top: 15px;
        }

        .btn-calculate {
            background-color: #2196F3;
            color: white;
        }

        .btn-clear {
            background-color: #f44336;
            color: white;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        table th {
            background-color: #2196F3;
            color: white;
            padding: 12px;
            text-align: left;
        }

        table td {
            padding: 10px;
            border: 1px solid #ddd;
        }

        table tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .amount {
            font-weight: bold;
            color: #1976D2;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="header">
                <h2>Exercise 04 - Item Management System</h2>
                <p class="info">REGNO: 24251101 | DATE: 06/11/2025</p>
            </div>

            <h3>Enter Item Details:</h3>

            <div class="input-row">
                <label>Item No</label>
                <label>Item Name</label>
                <label>Rate</label>
                <label>Quantity</label>
            </div>

            <div class="input-row">
                <asp:TextBox ID="txtIno1" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtIname1" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtRate1" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtQty1" runat="server"></asp:TextBox>
            </div>

            <div class="input-row">
                <asp:TextBox ID="txtIno2" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtIname2" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtRate2" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtQty2" runat="server"></asp:TextBox>
            </div>

            <div class="input-row">
                <asp:TextBox ID="txtIno3" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtIname3" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtRate3" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtQty3" runat="server"></asp:TextBox>
            </div>

            <div class="input-row">
                <asp:TextBox ID="txtIno4" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtIname4" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtRate4" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtQty4" runat="server"></asp:TextBox>
            </div>

            <div class="input-row">
                <asp:TextBox ID="txtIno5" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtIname5" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtRate5" runat="server"></asp:TextBox>
                <asp:TextBox ID="txtQty5" runat="server"></asp:TextBox>
            </div>

            <div>
                <asp:Button ID="btnCalculate" runat="server" Text="Calculate & Display" CssClass="btn btn-calculate" OnClick="btnCalculate_Click" />
                <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-clear" OnClick="btnClear_Click" />
            </div>

            <asp:Panel ID="pnlResult" runat="server" Visible="false">
                <h3>Items Sorted by Amount (Descending):</h3>
                <asp:Literal ID="litResult" runat="server"></asp:Literal>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
