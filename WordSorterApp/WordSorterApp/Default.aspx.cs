using System;
using System.Linq;

namespace WordSorterApp
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnProcess_Click(object sender, EventArgs e)
        {
            string input = txtInput.Text.Trim();

            if (string.IsNullOrEmpty(input))
            {
                lblResult.Text = "Please enter some text.";
                return;
            }

            // Split input into words (ignore punctuation)
            string[] words = input.Split(new char[] { ' ', ',', '.', ';', ':', '!', '?' }, StringSplitOptions.RemoveEmptyEntries);

            // Remove duplicate words (ignore case)
            var uniqueWords = words.Distinct(StringComparer.OrdinalIgnoreCase);

            // Group by length and sort ascending
            var grouped = uniqueWords
                .GroupBy(w => w.Length)
                .OrderBy(g => g.Key);

            // Prepare output
            string result = "";
            foreach (var group in grouped)
            {
                result += string.Join(" ", group) + "<br/>";
            }

            lblResult.Text = result;
        }
    }
}
