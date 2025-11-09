using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;

namespace ItemManagement
{
    public partial class ItemManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            try
            {
                // Create list to store item data
                List<ItemData> items = new List<ItemData>();

                // Add items from textboxes
                items.Add(GetItemData(txtIno1.Text, txtIname1.Text, txtRate1.Text, txtQty1.Text));
                items.Add(GetItemData(txtIno2.Text, txtIname2.Text, txtRate2.Text, txtQty2.Text));
                items.Add(GetItemData(txtIno3.Text, txtIname3.Text, txtRate3.Text, txtQty3.Text));
                items.Add(GetItemData(txtIno4.Text, txtIname4.Text, txtRate4.Text, txtQty4.Text));
                items.Add(GetItemData(txtIno5.Text, txtIname5.Text, txtRate5.Text, txtQty5.Text));

                // Sort by Amount in descending order
                items = items.OrderByDescending(x => x.Amount).ToList();

                // Display results
                DisplayItems(items);

                pnlResult.Visible = true;
            }
            catch (Exception ex)
            {
                litResult.Text = "<p style='color:red;'><strong>Error:</strong> " + ex.Message + "</p>";
                pnlResult.Visible = true;
            }
        }

        private ItemData GetItemData(string ino, string iname, string rate, string qty)
        {
            if (string.IsNullOrEmpty(ino) || string.IsNullOrEmpty(iname) ||
                string.IsNullOrEmpty(rate) || string.IsNullOrEmpty(qty))
            {
                throw new Exception("Please fill all fields for all 5 items!");
            }

            ItemData item = new ItemData();
            item.Ino = int.Parse(ino);
            item.Iname = iname.Trim();
            item.Rate = double.Parse(rate);
            item.Qty = int.Parse(qty);
            item.Amount = item.Rate * item.Qty; // Calculate amount

            return item;
        }

        private void DisplayItems(List<ItemData> items)
        {
            string html = "<table>";
            html += "<tr>";
            html += "<th>Item No</th>";
            html += "<th>Item Name</th>";
            html += "<th>Rate</th>";
            html += "<th>Quantity</th>";
            html += "<th>Amount</th>";
            html += "</tr>";

            foreach (ItemData item in items)
            {
                html += "<tr>";
                html += $"<td>{item.Ino}</td>";
                html += $"<td>{item.Iname}</td>";
                html += $"<td>₹{item.Rate:F2}</td>";
                html += $"<td>{item.Qty}</td>";
                html += $"<td class='amount'>₹{item.Amount:F2}</td>";
                html += "</tr>";
            }

            html += "</table>";
            litResult.Text = html;
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtIno1.Text = txtIname1.Text = txtRate1.Text = txtQty1.Text = string.Empty;
            txtIno2.Text = txtIname2.Text = txtRate2.Text = txtQty2.Text = string.Empty;
            txtIno3.Text = txtIname3.Text = txtRate3.Text = txtQty3.Text = string.Empty;
            txtIno4.Text = txtIname4.Text = txtRate4.Text = txtQty4.Text = string.Empty;
            txtIno5.Text = txtIname5.Text = txtRate5.Text = txtQty5.Text = string.Empty;

            pnlResult.Visible = false;
            litResult.Text = string.Empty;
        }
    }

    // Simple Item Data class defined inside the same file
    public class ItemData
    {
        public int Ino { get; set; }
        public string Iname { get; set; }
        public double Rate { get; set; }
        public int Qty { get; set; }
        public double Amount { get; set; }
    }
}
