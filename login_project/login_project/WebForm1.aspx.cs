using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace login_project
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblTime.Text = "Current Time: " +DateTime.Now.ToLongTimeString();
            }
        }

        protected void btnrefresh_click(object sender, EventArgs e)
        {
            Thread.Sleep(2000);
            lblTime.Text = "Current Time: " +DateTime.Now.ToLongTimeString();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            lblTime.Text = "Current Time (Auto-Refresh): " +DateTime.Now.ToLongTimeString();
        }
    }
}