<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Furniture_Store.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            height: 22px;
        }
        .login-form-table {
            box-shadow: rgba(0, 0, 0, 0.07) 0px 1px 2px, rgba(0, 0, 0, 0.07) 0px 2px 4px, rgba(0, 0, 0, 0.07) 0px 4px 8px, rgba(0, 0, 0, 0.07) 0px 8px 16px, rgba(0, 0, 0, 0.07) 0px 16px 32px, rgba(0, 0, 0, 0.07) 0px 32px 64px;
            padding: 20px;
            width: 400px;
            margin: 150px auto;
            border-collapse: collapse; /* Ensures borders do not double up */
        }
        .input-field{
            border-radius: 5px;
            border: solid 1.5px #D3D3D3;
            -webkit-transition: 1s;
            transition: 1s;
        }
        .input-field:hover{
            box-shadow: 0 0 5pt 0.5pt #D3D3D3;
        }
        .input-field:focus{
            box-shadow: 0 0 5pt 2pt #D3D3D3;
            outline-width: 0px;
        }
        .auto-style12 {
            width: 187px;
        }
        .auto-style13 {
            height: 22px;
            width: 187px;
        }
        .auto-style23 {
            width: 613px
        }
        .auto-style24 {
            width: 613px;
            height: 22px;
        }
        .auto-style25 {
            width: 239px;
        }
        .auto-style26 {
            height: 22px;
            width: 239px;
        }
        .auto-style27 {
            width: 238px;
        }
        .auto-style28 {
            height: 22px;
            width: 238px;
        }
        .auto-style29 {
            height: 29px;
            width: 239px;
        }
        .auto-style30 {
            width: 613px;
            height: 29px;
        }
        .auto-style31 {
            height: 29px;
            width: 238px;
        }
        .auto-style32 {
            height: 29px;
            width: 187px;
        }
        .auto-style33 {
            width: 239px;
            height: 30px;
        }
        .auto-style34 {
            width: 613px;
            height: 30px;
        }
        .auto-style35 {
            width: 238px;
            height: 30px;
        }
        .auto-style36 {
            width: 187px;
            height: 30px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified login-form-table">
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26"></td>
            <td class="auto-style24"></td>
            <td class="auto-style28"></td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style26">&nbsp;</td>
            <td class="auto-style9" colspan="2">
                <center><asp:Label ID="LblHead" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Login" ForeColor="Black"></asp:Label></center>
            </td>
            <td class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style23">
                <asp:Label ID="Label1" runat="server" Text="Username" Font-Size="Small" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style27">
                <asp:TextBox ID="TxtUname" CssClass="input-field" runat="server" Height="31px" Width="236px"></asp:TextBox>
            </td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style23">
                <asp:Label ID="Label2" runat="server" Text="Password" Font-Size="Small" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style27">
                <asp:TextBox ID="TxtPwd" CssClass="input-field" runat="server" Height="31px" Width="236px" TextMode="Password"></asp:TextBox>
            </td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style33"></td>
            <td class="auto-style34"></td>
            <td class="auto-style35">
                <asp:Button ID="BtnLogin" runat="server" BorderStyle="None" Font-Bold="True" Height="30px" Text="Login" BackColor="#E99C2E" Width="100px" ForeColor="Black" OnClick="BtnLogin_Click" />
            </td>
            <td class="auto-style36"></td>
        </tr>
        <tr>
            <td class="auto-style33">&nbsp;</td>
            <td class="auto-style34">&nbsp;</td>
            <td class="auto-style35">
                &nbsp;</td>
            <td class="auto-style36">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26"></td>
            <td class="auto-style24"></td>
            <td class="auto-style28">
                <asp:Label ID="Label3" runat="server" Text="New user?"></asp:Label>
&nbsp;&nbsp;&nbsp;<asp:HyperLink ID="SignUpLink" runat="server" NavigateUrl="~/SignUp.aspx" ForeColor="Blue">Signup here</asp:HyperLink>
            </td>
            <td class="auto-style13"></td>
        </tr>
        <tr>
            <td class="auto-style29"></td>
            <td class="auto-style30"></td>
            <td class="auto-style31">
                <asp:Label ID="LblErr" runat="server" ForeColor="Red" Text="Incorrect Credentials !" Visible="False"></asp:Label>
            </td>
            <td class="auto-style32"></td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style25">&nbsp;</td>
            <td class="auto-style23">&nbsp;</td>
            <td class="auto-style27">&nbsp;</td>
            <td class="auto-style12">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
