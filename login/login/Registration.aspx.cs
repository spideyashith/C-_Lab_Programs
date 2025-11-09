using System;
using System.Web.UI.WebControls;

namespace YourNamespace
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // Get all form data
                string name = txtName.Text.Trim();
                string email = txtEmail.Text.Trim();
                string username = txtUsername.Text.Trim();
                string password = txtPassword.Text;
                string phone = txtPhone.Text.Trim();
                int age = int.Parse(txtAge.Text);
                string gender = rblGender.SelectedValue;
                string country = ddlCountry.SelectedValue;
                string dob = txtDOB.Text;
                string address = txtAddress.Text.Trim();

                // Get selected hobbies
                string hobbies = "";
                foreach (ListItem item in cblHobbies.Items)
                {
                    if (item.Selected)
                    {
                        hobbies += item.Value + ", ";
                    }
                }
                if (hobbies.Length > 0)
                    hobbies = hobbies.Substring(0, hobbies.Length - 2);

                // Store in session (in real application, save to database)
                Session["Name"] = name;
                Session["Email"] = email;
                Session["Username"] = username;
                Session["Password"] = password;
                Session["Phone"] = phone;
                Session["Age"] = age;
                Session["Gender"] = gender;
                Session["Country"] = country;
                Session["DOB"] = dob;
                Session["Address"] = address;
                Session["Hobbies"] = hobbies;

                // Show success message
                pnlSuccess.Visible = true;

                // Redirect to login after 2 seconds
                Response.AddHeader("REFRESH", "2;URL=Login.aspx");
            }
        }

        protected void cvTerms_ServerValidate(object source, ServerValidateEventArgs args)
        {
            args.IsValid = chkTerms.Checked;
        }
    }
}
