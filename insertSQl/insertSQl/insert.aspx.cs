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
    public partial class insert : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("retrive.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Ashith\OneDrive\Documents\CRUD Operation.mdf"";Integrated Security=True;Connect Timeout=30");
            con.Open();
            String pr_name = TextBox1.Text;
            int price = int.Parse(TextBox2.Text);

            SqlDataAdapter DA = new SqlDataAdapter("insert into Product(Productname,Price)VALUES('"+pr_name+ "', "+price+")", con);
            SqlCommandBuilder BLDR = new SqlCommandBuilder(DA);

            DataSet DS = new DataSet();

            DA.Fill(DS,"Product");


            Response.Write("Inserted Successfully");
            Response.AddHeader("refresh", "5;retrive.aspx");
        }
    }
}