using System;

namespace YourNamespace
{
    public partial class Welcome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Check if user is logged in
                if (Session["LoggedIn"] == null || !(bool)Session["LoggedIn"])
                {
                    Response.Redirect("Login.aspx");
                    return;
                }

                // Display user information
                litName.Text = Session["Name"]?.ToString();
                litNameValue.Text = Session["Name"]?.ToString();
                litEmail.Text = Session["Email"]?.ToString();
                litUsername.Text = Session["Username"]?.ToString();
                litPhone.Text = Session["Phone"]?.ToString();
                litAge.Text = Session["Age"]?.ToString();
                litGender.Text = Session["Gender"]?.ToString();
                litCountry.Text = Session["Country"]?.ToString();
                litDOB.Text = Session["DOB"]?.ToString();
                litHobbies.Text = Session["Hobbies"]?.ToString();
                litAddress.Text = Session["Address"]?.ToString();
            }
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}
