<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="YourNamespace.Registration" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xlink">
<head runat="server">
    <title>Registration Form</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            padding: 20px;
        }

        .container {
            max-width: 600px;
            margin: 20px auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 10px 40px rgba(0,0,0,0.2);
        }

        h2 {
            text-align: center;
            color: #667eea;
            margin-bottom: 30px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #333;
        }

        input[type="text"],
        input[type="password"],
        input[type="email"],
        select,
        textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 14px;
        }

        input[type="radio"],
        input[type="checkbox"] {
            margin-right: 5px;
        }

        .radio-group,
        .checkbox-group {
            display: flex;
            gap: 20px;
            flex-wrap: wrap;
        }

        .validator {
            color: red;
            font-size: 12px;
            display: block;
            margin-top: 3px;
        }

        .btn {
            width: 100%;
            padding: 12px;
            background: #667eea;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
        }

        .btn:hover {
            background: #5568d3;
        }

        .success {
            background: #d4edda;
            color: #155724;
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 20px;
            border: 1px solid #c3e6cb;
        }

        .login-link {
            text-align: center;
            margin-top: 20px;
        }

        .login-link a {
            color: #667eea;
            text-decoration: none;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>📝 Registration Form</h2>

            <asp:Panel ID="pnlSuccess" runat="server" CssClass="success" Visible="false">
                <strong>Success!</strong> Registration completed successfully!
            </asp:Panel>

            <!-- Full Name -->
            <div class="form-group">
                <label>Full Name: *</label>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvName" runat="server" 
                    ControlToValidate="txtName" 
                    ErrorMessage="Name is required" 
                    CssClass="validator" 
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>

            <!-- Email -->
            <div class="form-group">
                <label>Email: *</label>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                    ControlToValidate="txtEmail" 
                    ErrorMessage="Email is required" 
                    CssClass="validator" 
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                    ControlToValidate="txtEmail" 
                    ErrorMessage="Invalid email format" 
                    ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$" 
                    CssClass="validator" 
                    Display="Dynamic">
                </asp:RegularExpressionValidator>
            </div>

            <!-- Username -->
            <div class="form-group">
                <label>Username: *</label>
                <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvUsername" runat="server" 
                    ControlToValidate="txtUsername" 
                    ErrorMessage="Username is required" 
                    CssClass="validator" 
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revUsername" runat="server" 
                    ControlToValidate="txtUsername" 
                    ErrorMessage="Username must be 4-20 characters (letters and numbers only)" 
                    ValidationExpression="^[a-zA-Z0-9]{4,20}$" 
                    CssClass="validator" 
                    Display="Dynamic">
                </asp:RegularExpressionValidator>
            </div>

            <!-- Password -->
            <div class="form-group">
                <label>Password: *</label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" 
                    ControlToValidate="txtPassword" 
                    ErrorMessage="Password is required" 
                    CssClass="validator" 
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revPassword" runat="server" 
                    ControlToValidate="txtPassword" 
                    ErrorMessage="Password must be at least 6 characters" 
                    ValidationExpression="^.{6,}$" 
                    CssClass="validator" 
                    Display="Dynamic">
                </asp:RegularExpressionValidator>
            </div>

            <!-- Confirm Password -->
            <div class="form-group">
                <label>Confirm Password: *</label>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" 
                    ControlToValidate="txtConfirmPassword" 
                    ErrorMessage="Confirm password is required" 
                    CssClass="validator" 
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvPassword" runat="server" 
                    ControlToValidate="txtConfirmPassword" 
                    ControlToCompare="txtPassword" 
                    ErrorMessage="Passwords do not match" 
                    CssClass="validator" 
                    Display="Dynamic">
                </asp:CompareValidator>
            </div>

            <!-- Phone Number -->
            <div class="form-group">
                <label>Phone Number: *</label>
                <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPhone" runat="server" 
                    ControlToValidate="txtPhone" 
                    ErrorMessage="Phone number is required" 
                    CssClass="validator" 
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revPhone" runat="server" 
                    ControlToValidate="txtPhone" 
                    ErrorMessage="Phone must be 10 digits" 
                    ValidationExpression="^\d{10}$" 
                    CssClass="validator" 
                    Display="Dynamic">
                </asp:RegularExpressionValidator>
            </div>

            <!-- Age -->
            <div class="form-group">
                <label>Age: *</label>
                <asp:TextBox ID="txtAge" runat="server" TextMode="Number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAge" runat="server" 
                    ControlToValidate="txtAge" 
                    ErrorMessage="Age is required" 
                    CssClass="validator" 
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rvAge" runat="server" 
                    ControlToValidate="txtAge" 
                    MinimumValue="18" 
                    MaximumValue="100" 
                    Type="Integer" 
                    ErrorMessage="Age must be between 18 and 100" 
                    CssClass="validator" 
                    Display="Dynamic">
                </asp:RangeValidator>
            </div>

            <!-- Gender (Radio Button) -->
            <div class="form-group">
                <label>Gender: *</label>
                <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal" CssClass="radio-group">
                    <asp:ListItem Value="Male">Male</asp:ListItem>
                    <asp:ListItem Value="Female">Female</asp:ListItem>
                    <asp:ListItem Value="Other">Other</asp:ListItem>
                </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="rfvGender" runat="server" 
                    ControlToValidate="rblGender" 
                    ErrorMessage="Please select gender" 
                    CssClass="validator" 
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>

            <!-- Country (Dropdown) -->
            <div class="form-group">
                <label>Country: *</label>
                <asp:DropDownList ID="ddlCountry" runat="server">
                    <asp:ListItem Value="">-- Select Country --</asp:ListItem>
                    <asp:ListItem Value="India">India</asp:ListItem>
                    <asp:ListItem Value="USA">USA</asp:ListItem>
                    <asp:ListItem Value="UK">UK</asp:ListItem>
                    <asp:ListItem Value="Canada">Canada</asp:ListItem>
                    <asp:ListItem Value="Australia">Australia</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvCountry" runat="server" 
                    ControlToValidate="ddlCountry" 
                    InitialValue="" 
                    ErrorMessage="Please select country" 
                    CssClass="validator" 
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>

            <!-- Hobbies (Checkbox) -->
            <div class="form-group">
                <label>Hobbies:</label>
                <asp:CheckBoxList ID="cblHobbies" runat="server" RepeatDirection="Horizontal" CssClass="checkbox-group">
                    <asp:ListItem Value="Reading">Reading</asp:ListItem>
                    <asp:ListItem Value="Sports">Sports</asp:ListItem>
                    <asp:ListItem Value="Music">Music</asp:ListItem>
                    <asp:ListItem Value="Gaming">Gaming</asp:ListItem>
                    <asp:ListItem Value="Coding">Coding</asp:ListItem>
                </asp:CheckBoxList>
            </div>

            <!-- Date of Birth -->
            <div class="form-group">
                <label>Date of Birth: *</label>
                <asp:TextBox ID="txtDOB" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDOB" runat="server" 
                    ControlToValidate="txtDOB" 
                    ErrorMessage="Date of birth is required" 
                    CssClass="validator" 
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>

            <!-- Address (Textarea) -->
            <div class="form-group">
                <label>Address:</label>
                <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine" Rows="3"></asp:TextBox>
            </div>

            <!-- Terms & Conditions (Checkbox) -->
            <div class="form-group">
                <asp:CheckBox ID="chkTerms" runat="server" Text=" I agree to Terms and Conditions" />
                <asp:CustomValidator ID="cvTerms" runat="server" 
                    ErrorMessage="You must agree to terms and conditions" 
                    CssClass="validator" 
                    Display="Dynamic" 
                    OnServerValidate="cvTerms_ServerValidate">
                </asp:CustomValidator>
            </div>

            <!-- Submit Button -->
            <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn" OnClick="btnRegister_Click" />

            <div class="login-link">
                Already have an account? <a href="Login.aspx">Login here</a>
            </div>
        </div>
    </form>
</body>
</html>
