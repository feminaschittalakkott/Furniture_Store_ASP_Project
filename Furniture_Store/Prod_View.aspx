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
            height: 350px;
            margin: 15px;
            padding: 5px;
            background-color: #f9f9f9;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
            overflow: hidden;
            text-align: center;
        }

        .datalist-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .datalist-image {
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .datalist-description {
            font-size: 14px;
            color: #555;
            text-align: center;
            word-wrap: break-word;
            white-space: normal;
            display: block;
            line-height: 1.5;
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
                            <asp:ImageButton ID="ProdImagBtn" runat="server" CssClass="datalist-image" Height="180px" Width="100%" CommandArgument='<%# Eval("Prod_Id") %>' ImageUrl='<%# Eval("Prod_Img") %>' OnCommand="ProdImagBtn_Command" />
                            <br />
                            <asp:Label ID="Prod_Name" runat="server" CssClass="datalist-label" Text='<%# Eval("Prod_Name") %>'></asp:Label>
                                <br />
                                <asp:Label ID="Prod_Price" runat="server" CssClass="datalist-label" Text='<%# "₹ " + Eval("Prod_Price") %>' Font-Size="14px" ForeColor="Black"></asp:Label>
                                <br />
                                <asp:Label ID="Prod_Descr" runat="server" CssClass="datalist-description" Text='<%# Eval("Prod_Description") %>' ForeColor="Black"></asp:Label>
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
