using System;
using CalculatorWebServiceDemo.CalculatorServiceRef; // web reference namespace

namespace CalculatorWebServiceDemo
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        private bool TryParseInputs(out double a, out double b)
        {
            a = 0; b = 0;
            bool ok = double.TryParse(txtA.Text.Trim(), out a) && double.TryParse(txtB.Text.Trim(), out b);
            return ok;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            if (!TryParseInputs(out double a, out double b))
            {
                lblResult.Text = "Enter valid numbers.";
                return;
            }

            var client = new CalculatorService();
            int result = client.Add((int)a, (int)b);
            lblResult.Text = $"Add Result: {result}";
        }

        protected void btnSubtract_Click(object sender, EventArgs e)
        {
            if (!TryParseInputs(out double a, out double b))
            {
                lblResult.Text = "Enter valid numbers.";
                return;
            }

            var client = new CalculatorService();
            int result = client.Subtract((int)a, (int)b);
            lblResult.Text = $"Subtract Result: {result}";
        }

        protected void btnMultiply_Click(object sender, EventArgs e)
        {
            if (!TryParseInputs(out double a, out double b))
            {
                lblResult.Text = "Enter valid numbers.";
                return;
            }

            var client = new CalculatorService();
            int result = client.Multiply((int)a, (int)b);
            lblResult.Text = $"Multiply Result: {result}";
        }

        protected void btnDivide_Click(object sender, EventArgs e)
        {
            if (!TryParseInputs(out double a, out double b))
            {
                lblResult.Text = "Enter valid numbers.";
                return;
            }

            var client = new CalculatorService();
            string result = client.Divide(a, b);
            lblResult.Text = $"Divide Result: {result}";
        }

        protected void btnServerTime_Click(object sender, EventArgs e)
        {
            var client = new CalculatorService();
            string time = client.GetServerTime();
            lblResult.Text = $"Server Time: {time}";
        }
    }
}
