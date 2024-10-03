<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderPlaced.aspx.cs" Inherits="Furniture_Store.OrderPlaced" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Confirmation</title>
    <style>
        body, html {
            height: 100%;
            margin: 0;
            font-family: Arial, sans-serif;
        }
        .text-center {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f0f0f0;
            text-align: center;
            flex-direction: column;
        }
        h1 {
            font-size: 3rem;
            color: #333;
            margin: 0;
        }
        .order-icon {
            font-size: 5rem;
            color: #28a745;
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="text-center">
            <div class="order-icon">✔️</div>
            <h1>Your Order Placed Successfully !</h1>
            <a href="User_Home.aspx">Continue Shopping</a>
        </div>
    </form>
</body>
</html>
