<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Send_Feedback.aspx.cs" Inherits="Furniture_Store.Send_Feedback" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .feed-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .feedtable {
            background-color: #f8f8f8;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
            width: 500px;
            text-align: center;
        }
        .feedtable td {
            padding: 10px;
        }
        .feedtable textarea {
            width: 100%;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 14px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="feed-container">
        <table class="feedtable">
            <tr>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:TextBox ID="TxtFeed" runat="server" Height="80px" TextMode="MultiLine" Width="100%" Placeholder="Enter your feedback here..."></asp:TextBox>
                </td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="BtnFeedSend" runat="server" Text="Send" CssClass="btn-submit" BackColor="#E99C2E" BorderStyle="None" Font-Bold="True" ForeColor="Black" Height="30px" Width="100px" OnClick="BtnFeedSend_Click" />
                </td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="LblMsg" runat="server" Text="Label" Visible="False"></asp:Label></td>
                <td></td>
            </tr>
        </table>
    </div>
    
</asp:Content>
