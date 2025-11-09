<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VowelCounter.aspx.cs" Inherits="YourNamespace.VowelCounter" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xlink">
<head runat="server">
    <title>Exercise 03 - Vowel Counter</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 50px;
            background-color: #f5f5f5;
        }

        .container {
            background-color: white;
            padding: 30px;
            max-width: 600px;
            margin: 0 auto;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .header {
            text-align: center;
            margin-bottom: 20px;
            padding-bottom: 15px;
            border-bottom: 2px solid #4CAF50;
        }

        h2 {
            color: #333;
            margin: 5px 0;
        }

        .info {
            color: #666;
            font-size: 14px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #333;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }

        .btn {
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            border: none;
            border-radius: 3px;
            margin-right: 10px;
            margin-top: 10px;
        }

        .btn-count {
            background-color: #4CAF50;
            color: white;
        }

        .btn-clear {
            background-color: #f44336;
            color: white;
        }

        .result {
            margin-top: 20px;
            padding: 20px;
            border-radius: 3px;
            background-color: #e8f5e9;
            border: 1px solid #4CAF50;
        }

        .result h3 {
            color: #2e7d32;
            margin-top: 0;
        }

        .name-vowels {
            background-color: white;
            padding: 10px;
            margin: 10px 0;
            border-left: 3px solid #4CAF50;
            font-family: 'Courier New', monospace;
        }

        .total {
            font-size: 20px;
            font-weight: bold;
            color: #1b5e20;
            text-align: center;
            padding: 15px;
            background-color: #c8e6c9;
            border-radius: 3px;
            margin-top: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="header">
                <h2>Exercise 03 - Vowel Counter</h2>
                <p class="info">REGNO: 24251101 | DATE: 06/11/2025</p>
            </div>

            <div class="form-group">
                <label>Friend 1 Name:</label>
                <asp:TextBox ID="txtName1" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Friend 2 Name:</label>
                <asp:TextBox ID="txtName2" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Friend 3 Name:</label>
                <asp:TextBox ID="txtName3" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Friend 4 Name:</label>
                <asp:TextBox ID="txtName4" runat="server"></asp:TextBox>
            </div>

            <div class="form-group">
                <label>Friend 5 Name:</label>
                <asp:TextBox ID="txtName5" runat="server"></asp:TextBox>
            </div>

            <div>
                <asp:Button ID="btnCount" runat="server" Text="Count Vowels" CssClass="btn btn-count" OnClick="btnCount_Click" />
                <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-clear" OnClick="btnClear_Click" />
            </div>

            <asp:Panel ID="pnlResult" runat="server" CssClass="result" Visible="false">
                <h3>Vowel Count Results:</h3>
                <asp:Literal ID="litResult" runat="server"></asp:Literal>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
