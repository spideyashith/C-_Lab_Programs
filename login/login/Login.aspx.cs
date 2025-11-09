using System;

namespace YourNamespace
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string username = txtUsername.Text.Trim();
                string password = txtPassword.Text;

                // Get stored credentials from session
                string storedUsername = Session["Username"] as string;
                string storedPassword = Session["Password"] as string;

                // Check credentials
                if (username == storedUsername && password == storedPassword)
                {
                    // Login successful
                    Session["LoggedIn"] = true;
                    Response.Redirect("Welcome.aspx");
                }
                else
                {
                    // Login failed
                    pnlError.Visible = true;
                    litError.Text = "<strong>Error!</strong> Invalid username or password.";
                }
            }
        }
    }
}
