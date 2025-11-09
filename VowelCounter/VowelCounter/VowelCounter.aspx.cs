using System;
using System.Web.UI;

namespace YourNamespace
{
    public partial class VowelCounter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCount_Click(object sender, EventArgs e)
        {
            // Create array of 5 friend names
            string[] friendNames = new string[5];
            friendNames[0] = txtName1.Text.Trim();
            friendNames[1] = txtName2.Text.Trim();
            friendNames[2] = txtName3.Text.Trim();
            friendNames[3] = txtName4.Text.Trim();
            friendNames[4] = txtName5.Text.Trim();

            // Check if all names are entered
            bool allEntered = true;
            foreach (string name in friendNames)
            {
                if (string.IsNullOrEmpty(name))
                {
                    allEntered = false;
                    break;
                }
            }

            if (!allEntered)
            {
                pnlResult.Visible = true;
                litResult.Text = "<p style='color: red;'><strong>Error:</strong> Please enter all 5 friend names!</p>";
                return;
            }

            // Count vowels
            int totalVowels = 0;
            string resultHTML = "";

            for (int i = 0; i < friendNames.Length; i++)
            {
                int vowelCount = CountVowels(friendNames[i]);
                totalVowels += vowelCount;

                resultHTML += $"<div class='name-vowels'>";
                resultHTML += $"<strong>Friend {i + 1}:</strong> {friendNames[i]} → <strong>{vowelCount} vowels</strong>";
                resultHTML += $"</div>";
            }

            // Add total
            resultHTML += $"<div class='total'>TOTAL VOWELS: {totalVowels}</div>";

            // Display result
            pnlResult.Visible = true;
            litResult.Text = resultHTML;
        }

        private int CountVowels(string text)
        {
            int count = 0;
            // Define vowels (both uppercase and lowercase)
            char[] vowels = { 'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U' };

            // Check each character in the string
            foreach (char c in text)
            {
                foreach (char vowel in vowels)
                {
                    if (c == vowel)
                    {
                        count++;
                        break;
                    }
                }
            }

            return count;
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtName1.Text = string.Empty;
            txtName2.Text = string.Empty;
            txtName3.Text = string.Empty;
            txtName4.Text = string.Empty;
            txtName5.Text = string.Empty;
            pnlResult.Visible = false;
            litResult.Text = string.Empty;
        }
    }
}
