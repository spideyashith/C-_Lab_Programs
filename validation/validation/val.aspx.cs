using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace validation
{
    public partial class val : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string name = txtName.Text;
                int age = int.Parse(txtAge.Text);
                string email = txtEmail.Text;

                // Logic: For now just show confirmation message
                Response.Write("<h3 style='color:green'>✅ Registration Successful!</h3>");
                Response.Write("Name: " + name + "<br/>");
                Response.Write("Age: " + age + "<br/>");
                Response.Write("Email: " + email + "<br/>");

                // Later you can save this data into a database here
            }
        }
    }
}