<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TicketNumberValidator.aspx.cs" Inherits="YourNamespace.TicketNumberValidator" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xlink">
<head runat="server">
    <title>Exercise 12 - Ticket Number Validator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 50px;
            background-color: #f5f5f5;
        }

        .container {
            background-color: white;
            padding: 30px;
            max-width: 500px;
            margin: 0 auto;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        h2 {
            color: #333;
            text-align: center;
        }

        .form-group {
            margin-bottom: 15px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
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
        }

        .btn-validate {
            background-color: #4CAF50;
            color: white;
        }

        .btn-clear {
            background-color: #f44336;
            color: white;
        }

        .result {
            margin-top: 20px;
            padding: 15px;
            border-radius: 3px;
        }

        .valid {
            background-color: #d4edda;
            border: 1px solid #c3e6cb;
            color: #155724;
        }

        .invalid {
            background-color: #f8d7da;
            border: 1px solid #f5c6cb;
            color: #721c24;
        }

        .error {
            background-color: #fff3cd;
            border: 1px solid #ffeaa7;
            color: #856404;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Ticket Number Validator</h2>

            <div class="form-group">
                <label>Enter 6-Digit Ticket Number:</label>
                <asp:TextBox ID="txtTicketNumber" runat="server" MaxLength="6"></asp:TextBox>
            </div>

            <div>
                <asp:Button ID="btnValidate" runat="server" Text="Validate" CssClass="btn btn-validate" OnClick="btnValidate_Click" />
                <asp:Button ID="btnClear" runat="server" Text="Clear" CssClass="btn btn-clear" OnClick="btnClear_Click" />
            </div>

            <asp:Panel ID="pnlResult" runat="server" CssClass="result" Visible="false">
                <asp:Literal ID="litResult" runat="server"></asp:Literal>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
