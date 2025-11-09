using System;
using System.Web.UI;

namespace YourNamespace
{
    public partial class TicketNumberValidator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnValidate_Click(object sender, EventArgs e)
        {
            string ticketNumber = txtTicketNumber.Text.Trim();

            // Check if empty
            if (string.IsNullOrEmpty(ticketNumber))
            {
                ShowResult("error", "Please enter a ticket number!");
                return;
            }

            // Check if 6 digits
            if (ticketNumber.Length != 6)
            {
                ShowResult("error", "Ticket number must be exactly 6 digits!");
                return;
            }

            // Check if numeric
            if (!IsNumeric(ticketNumber))
            {
                ShowResult("error", "Please enter only digits!");
                return;
            }

            // Validate ticket
            ValidateTicket(ticketNumber);
        }

        private void ValidateTicket(string ticketNumber)
        {
            // Convert to integer
            int fullNumber = int.Parse(ticketNumber);

            // Get last digit
            int lastDigit = fullNumber % 10;

            // Drop last digit
            int numberWithoutLast = fullNumber / 10;

            // Calculate remainder
            int remainder = numberWithoutLast % 7;

            // Build result message
            string message = $"<strong>Ticket Number: {ticketNumber}</strong><br/><br/>";
            message += $"Last Digit: {lastDigit}<br/>";
            message += $"Number without last digit: {numberWithoutLast}<br/>";
            message += $"{numberWithoutLast} ÷ 7 = Remainder {remainder}<br/><br/>";

            // Check validity
            if (remainder == lastDigit)
            {
                message += "<strong>Result: VALID TICKET ✓</strong>";
                ShowResult("valid", message);
            }
            else
            {
                message += $"<strong>Result: INVALID TICKET ✗</strong><br/>";
                message += $"(Expected last digit: {remainder})";
                ShowResult("invalid", message);
            }
        }

        private void ShowResult(string type, string message)
        {
            pnlResult.Visible = true;
            pnlResult.CssClass = "result " + type;
            litResult.Text = message;
        }

        private bool IsNumeric(string value)
        {
            foreach (char c in value)
            {
                if (!char.IsDigit(c))
                    return false;
            }
            return true;
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtTicketNumber.Text = string.Empty;
            pnlResult.Visible = false;
            litResult.Text = string.Empty;
        }
    }
}
