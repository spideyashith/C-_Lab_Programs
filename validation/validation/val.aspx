<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="val.aspx.cs" Inherits="validation.val" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <!-- Name Field -->
            Name: 
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server"
                ControlToValidate="txtName"
                ErrorMessage="Name is required"
                ForeColor="Red"></asp:RequiredFieldValidator>
            <br /><br />

            <!-- Age Field -->
            Age: 
            <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="rvAge" runat="server"
                ControlToValidate="txtAge"
                MinimumValue="1" MaximumValue="100"
                Type="Integer"
                ErrorMessage="Age must be between 1 and 100"
                ForeColor="Red"></asp:RangeValidator>
            <br /><br />

            <!-- Email Field -->
            Email: 
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="revEmail" runat="server"
                ControlToValidate="txtEmail"
                ValidationExpression="\w+@\w+\.\w+"
                ErrorMessage="Enter a valid email"
                ForeColor="Red"></asp:RegularExpressionValidator>
            <br /><br />

            <!-- Show all errors together -->
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            <br />

            <!-- Submit Button -->
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
        </div>
    </form>
</body>
</html>
