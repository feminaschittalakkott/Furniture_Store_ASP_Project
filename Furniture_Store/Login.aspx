<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Furniture_Store.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .login-container {
            width: 90%;
            max-width: 400px; /* Ensures the form doesn't get too wide on large screens */
            margin: 160px auto;
            padding: 40px;
            box-shadow: rgba(0, 0, 0, 0.07) 0px 1px 2px, rgba(0, 0, 0, 0.07) 0px 2px 4px, 
                        rgba(0, 0, 0, 0.07) 0px 4px 8px, rgba(0, 0, 0, 0.07) 0px 8px 16px, 
                        rgba(0, 0, 0, 0.07) 0px 16px 32px, rgba(0, 0, 0, 0.07) 0px 32px 64px;
            border-radius: 10px;
            background-color: #fff;
        }

        .login-container h2 {
            text-align: center;
            margin-bottom: 30px;
            font-size: 28px;
            font-weight: bold;
        }

        .input-field {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1.5px solid #D3D3D3;
            transition: box-shadow 0.3s ease-in-out;
        }

        .input-field:focus {
            box-shadow: 0 0 5px 2px #D3D3D3;
            outline: none;
        }

        .login-btn {
            width: 50%;
            background-color: #E99C2E;
            color: black;
            font-weight: bold;
            border: none;
            cursor: pointer;
            transition: background-color 0.3s ease;
            margin-top: 20px;
        }

        .login-btn:hover {
            background-color: #d88f2a;
        }

        .signup-text {
            text-align: center;
            margin-top: 15px;
            font-size: 14px;
        }

        .signup-text a {
            color: blue;
        }

        @media (max-width: 767px) {
            .login-container {
                width: 100%;
                margin: 130px auto;
            }

            .login-btn {
                width: 50%;
            }

            h2 {
                font-size: 24px;
            }

            .input-field {
                padding: 8px;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-container">
    <h2>Login</h2>
    <asp:TextBox ID="TxtUname" CssClass="input-field" runat="server" placeholder="Username"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter the username !" ControlToValidate="TxtUname" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:TextBox ID="TxtPwd" CssClass="input-field" runat="server" TextMode="Password" placeholder="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter the password !" ControlToValidate="TxtPwd" ForeColor="Red"></asp:RequiredFieldValidator>
    
    <center>
        <asp:Button ID="BtnLogin" runat="server" CssClass="login-btn" Text="Login" OnClick="BtnLogin_Click" Height="30px" />
    </center>
    
    <div class="signup-text">
        <asp:Label ID="Label3" runat="server" Text="New user?"></asp:Label>
        &nbsp;&nbsp;&nbsp;<asp:HyperLink ID="SignUpLink" runat="server" NavigateUrl="~/SignUp.aspx">Signup here</asp:HyperLink>
    </div>

    <center>
        <asp:Label ID="LblErr" runat="server" ForeColor="Red" Text="Incorrect Credentials!" Visible="False"></asp:Label>
    </center>
</div>
</asp:Content>
