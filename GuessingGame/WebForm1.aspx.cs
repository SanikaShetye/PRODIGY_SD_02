using System;

namespace GuessingGame
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Random random = new Random();
        int targetNumber;
        int attempts;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                targetNumber = random.Next(1, 101);
                attempts = 0;
                ViewState["targetNumber"] = targetNumber;
                ViewState["attempts"] = attempts;
            }
            else
            {
                targetNumber = (int)ViewState["targetNumber"];
                attempts = (int)ViewState["attempts"];
            }
        }
        protected void GuessButton_Click(object sender, EventArgs e)
        {
            int guess;
            if (int.TryParse(GuessTextBox.Text, out guess))
            {
                attempts++;

                if (guess < targetNumber)
                {
                    ResultLabel.Text = "Too low! Try again.";
                    ResultLabel.ForeColor = System.Drawing.Color.Red; // Set the color to red
                }
                else if (guess > targetNumber)
                {
                    ResultLabel.Text = "Too high! Try again.";
                    ResultLabel.ForeColor = System.Drawing.Color.Green; // Set the color to red
                }
                else
                {
                    ResultLabel.Text = $"Congratulations! You guessed the correct number in {attempts} attempts.";
                    ResultLabel.ForeColor = System.Drawing.Color.Blue; // Set the color to green
                    GuessTextBox.Enabled = false;
                    GuessButton.Enabled = false;
                }

                ViewState["attempts"] = attempts;
            }
            else
            {
                ResultLabel.Text = "Please enter a valid number.";
                ResultLabel.ForeColor = System.Drawing.Color.Black; // Set the color to black
            }
        }
    }
}