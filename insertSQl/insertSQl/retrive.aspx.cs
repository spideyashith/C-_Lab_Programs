using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace insertSQl
{
    public partial class retrive : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Ashith\OneDrive\Documents\CRUD Operation.mdf"";Integrated Security=True;Connect Timeout=30");
            con.Open();
            SqlDataAdapter DA = new SqlDataAdapter("SELECT * FROM Product", con);
            DataSet DS = new DataSet();
            DA.Fill(DS,"Product");


            GridView1.DataSource = DS;
            GridView1.DataBind();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
    }
}