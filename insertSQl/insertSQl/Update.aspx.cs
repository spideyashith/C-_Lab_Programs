using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace insertSQl
{
    public partial class Update : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=""C:\Users\Ashith\OneDrive\Documents\CRUD Operation.mdf"";Integrated Security=True;Connect Timeout=30");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                con.Open();
                SqlDataAdapter DA = new SqlDataAdapter("SELECT Pid, Productname, Price FROM Product",con);
                SqlCommandBuilder BLDR = new SqlCommandBuilder(DA);
                DataSet DS = new DataSet();
                DA.Fill(DS);

                ddlProduct.DataSource = DS;
                ddlProduct.DataTextField="Productname";
                ddlProduct.DataValueField="Pid";
                ddlProduct.DataBind();
                ddlProduct.Items.Insert(0, new ListItem("Select"));        
            }  


        }

        static int pid;

        protected void ddlProduct_SelectedIndexChanged(object sender, EventArgs e)
        {
            pid = int.Parse(ddlProduct.SelectedValue);
            con.Open();
            SqlDataAdapter DA = new SqlDataAdapter("SELECT Productname, Price from Product WHERE Pid=" +pid, con);
            SqlCommandBuilder BLDR = new SqlCommandBuilder(DA);
            DataSet DS = new DataSet();
            DA.Fill(DS);

            TextBox1.Text =DS.Tables[0].Rows[0][0].ToString();
            TextBox2.Text= DS.Tables[0].Rows[0][1].ToString();

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
            String pname = TextBox1.Text;
            int price = int.Parse(TextBox2.Text);
            con.Open();
            SqlDataAdapter DA = new SqlDataAdapter("UPDATE Product SET "+ "Productname='"+pname+"',Price="+price+"WHERE Pid="+pid, con);
            SqlCommandBuilder BLDR = new SqlCommandBuilder(DA);
            DataSet DS = new DataSet();
            DA.Fill(DS);

            Response.Write("Updated Successful");
            Response.AddHeader("refresh", "5;retrive.aspx");
        }

        
    }
}