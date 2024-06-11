<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="GuessingGame.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Guessing Game</title>
    <style>
        body {
            background-image: url('background.jpeg');
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .card {
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px; 
            width: 100%; 
            text-align: center;
        }

        .form-control {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 10px 0;
        }

        .btn {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background-color: #007BFF;
            color: white;
            cursor: pointer;
        }
        
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="card">
            <h1>Welcome to the Guessing Game!</h1>
            <p>I have selected a number between 1 and 100. Can you guess what it is?</p>
            <asp:TextBox ID="GuessTextBox" runat="server" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Button ID="GuessButton" runat="server" Text="Guess" OnClick="GuessButton_Click" CssClass="btn" />
            <br />
            <asp:Label ID="ResultLabel" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>

