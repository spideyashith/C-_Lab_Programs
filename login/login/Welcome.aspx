<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="YourNamespace.Welcome" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xlink">
<head runat="server">
    <title>Welcome</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            padding: 20px;
        }

        .container {
            max-width: 700px;
            margin: 50px auto;
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 10px 40px rgba(0,0,0,0.2);
        }

        h2 {
            color: #667eea;
            text-align: center;
            margin-bottom: 30px;
        }

        .info-row {
            display: grid;
            grid-template-columns: 150px 1fr;
            padding: 10px;
            border-bottom: 1px solid #f0f0f0;
        }

        .info-row strong {
            color: #667eea;
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            background: #f44336;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>🎉 Welcome, <asp:Literal ID="litName" runat="server"></asp:Literal>!</h2>

            <div class="info-row">
                <strong>Name:</strong>
                <span><asp:Literal ID="litNameValue" runat="server"></asp:Literal></span>
            </div>

            <div class="info-row">
                <strong>Email:</strong>
                <span><asp:Literal ID="litEmail" runat="server"></asp:Literal></span>
            </div>

            <div class="info-row">
                <strong>Username:</strong>
                <span><asp:Literal ID="litUsername" runat="server"></asp:Literal></span>
            </div>

            <div class="info-row">
                <strong>Phone:</strong>
                <span><asp:Literal ID="litPhone" runat="server"></asp:Literal></span>
            </div>

            <div class="info-row">
                <strong>Age:</strong>
                <span><asp:Literal ID="litAge" runat="server"></asp:Literal></span>
            </div>

            <div class="info-row">
                <strong>Gender:</strong>
                <span><asp:Literal ID="litGender" runat="server"></asp:Literal></span>
            </div>

            <div class="info-row">
                <strong>Country:</strong>
                <span><asp:Literal ID="litCountry" runat="server"></asp:Literal></span>
            </div>

            <div class="info-row">
                <strong>Date of Birth:</strong>
                <span><asp:Literal ID="litDOB" runat="server"></asp:Literal></span>
            </div>

            <div class="info-row">
                <strong>Hobbies:</strong>
                <span><asp:Literal ID="litHobbies" runat="server"></asp:Literal></span>
            </div>

            <div class="info-row">
                <strong>Address:</strong>
                <span><asp:Literal ID="litAddress" runat="server"></asp:Literal></span>
            </div>

            <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="btn" OnClick="btnLogout_Click" />
        </div>
    </form>
</body>
</html>
