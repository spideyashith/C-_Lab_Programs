using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Connected
{
    public partial class delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("home.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("display.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = int.Parse(TextBox1.Text);

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Ashith\OneDrive\Documents\Database.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();

            // Safe parameterized query

            SqlCommand cmd = new SqlCommand("DELETE FROM Product WHERE Pid= @pid", con);
            cmd.Parameters.AddWithValue("@pid", id);

            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("Deleted successfully");
        }
    }
}