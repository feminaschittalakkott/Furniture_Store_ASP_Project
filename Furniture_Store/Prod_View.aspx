<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Prod_View.aspx.cs" Inherits="Furniture_Store.Prod_View" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #prod-view-table{
            margin: 120px auto;
            width:1000px;
        }
        .datalist-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .datalist-item {
            width:250px;
            margin: 15px;
            padding: 10px;
            background-color: #f9f9f9;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
            overflow: hidden;
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
            margin-top: 10px;
        }
        .auto-style1 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified" id="prod-view-table">
        <tr>
            <td>
                &nbsp;&nbsp;<asp:Label ID="CatLabel" runat="server" Font-Bold="False" Font-Size="X-Large" ForeColor="Black" Text="Label" Font-Italic="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:DataList ID="ProdList" runat="server" RepeatDirection="Horizontal" RepeatColumns="4" CellSpacing="25" CssClass="datalist-container">
                    <ItemTemplate>
                        <div class="datalist-item">
                            <asp:ImageButton ID="ProdImagBtn" runat="server" CssClass="datalist-image" Height="160px" Width="100%" CommandArgument='<%# Eval("Prod_Id") %>' ImageUrl='<%# Eval("Prod_Img") %>' OnCommand="ProdImagBtn_Command" />
                            <br />
                            <asp:Label ID="Prod_Name" runat="server" CssClass="datalist-label" Text='<%# Eval("Prod_Name") %>'></asp:Label>
                                <br />
                                <asp:Label ID="Prod_Price" runat="server" CssClass="datalist-label" Text='<%# "₹ " + Eval("Prod_Price") %>' Font-Size="14px" ForeColor="Black"></asp:Label>
                                <br />
                                <asp:Label ID="Prod_Descr" runat="server" CssClass="datalist-label" Text='<%# Eval("Prod_Description") %>' Width="300px" Font-Size="16px" ForeColor="Black"></asp:Label>
                        </div>
                    </ItemTemplate>
                </asp:DataList>
                <asp:DataList runat="server">
                </asp:DataList>
                &nbsp;</td>
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
            <td class="auto-style1"></td>
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
</asp:Content>
