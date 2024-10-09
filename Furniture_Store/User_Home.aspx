<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="User_Home.aspx.cs" Inherits="Furniture_Store.User_Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #home-table{
            margin: 120px auto;
            width: 800px;
        }
        .datalist-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .datalist-item {
            text-align: center;
            margin: 15px;
            padding: 10px;
            border-radius: 8px;
            background-color: #f9f9f9;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

        .datalist-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .datalist-image {
            border-radius: 5px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .datalist-label {
            font-size: 16px;
            font-weight: bold;
            margin-top: 10px;
        }
        .auto-style1 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
    <table class="" id="home-table">
        <tr>
            <td>
                <asp:Label ID="LblCats" runat="server" Font-Size="X-Large" ForeColor="Black" Text="Categories" Font-Italic="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="CatListHome" runat="server" RepeatDirection="Horizontal" RepeatColumns="3" CellSpacing="25" CssClass="datalist-container">
                    <ItemTemplate>
                        <div class="datalist-item">
                            <asp:ImageButton ID="IBtnCats" runat="server" Height="250px" ImageUrl='<%# Eval("Cat_Img") %>' Width="300px" ImageAlign="Middle" CssClass="datalist-image" CommandArgument='<%# Eval("Cat_Id") %>' OnCommand="IBtnCats_Command" />
                            <br />
                            <center><asp:Label ID="Label1" runat="server" Text='<%# Eval("Cat_Name") %>' ForeColor="Black" CssClass="datalist-label"></asp:Label></center>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</body>
</asp:Content>
