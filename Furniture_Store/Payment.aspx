<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="Furniture_Store.Payment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .adrs-table{
            margin: 130px auto 20px auto;
            color:black;
            background-color: #f8f9fd;
        }
        .pmt-table{
            margin: 0 auto 20px auto;
            color:black;
            background-color: #f8f9fd;
        }
        .prodview-table {
            margin: 0 auto 20px auto;
            color:black;
            background-color: #f8f9fd;
        }
        .adrs-table td, .pmt-table td, prodview-table td {
            padding: 5px;
        }
        .placeorder{
            background-color: #E99C2E;
            color: black;
            border: none;
            height: 30px;
            width: 150px;
            font-weight: bold;
            border-radius: 15px !important;
            cursor: pointer;
        }
        .auto-style1 {
            height: 30px;
        }
        .auto-style2 {
            height: 30px;
            width: 500px;
        }
        .auto-style3 {
            width: 500px;
        }
        .auto-style4 {
            width: 265px
        }
        .auto-style5 {
            width: 218px
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified adrs-table">
        <tr>
            <td>
                <asp:DataList ID="AdrsList" runat="server">
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text="Delivering to" Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                        &nbsp;<asp:Label ID="Label2" runat="server" Text='<%# Eval("User_Name") %>' Font-Bold="True" Font-Size="Large" ForeColor="Black"></asp:Label>
                        <br />
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("User_Adrs") %>'></asp:Label>
                        ,
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("District") %>'></asp:Label>
                        ,
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("State") %>'></asp:Label>
                        ,
                        <br />
                        Pin :
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Pin") %>'></asp:Label>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
    </table>

    <table class="nav-justified prodview-table">
        <tr>
            <td class="auto-style2">

            </td>
        </tr>
        <tr>
            <td class="auto-style3">

                <asp:DataList ID="ProdOrdList" runat="server">
                    <ItemTemplate>
                        <table class="nav-justified">
                            <tr>
                                <td class="auto-style5">
                                    <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("Prod_Img") %>' Width="200px" />
                                </td>
                                <td>
                                    <asp:Label ID="Label7" runat="server" Text='<%# Eval("Prod_Name") %>'></asp:Label>
                                    <br />
                                    <asp:Label ID="Label8" runat="server" Text='<%# Eval("Prod_Price") %>'></asp:Label>
                                    <br />
                                    <asp:Label ID="Label9" runat="server" Text="Quantity : "></asp:Label>
                                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("Prod_Qty") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>

            </td>
        </tr>
        <tr>
            <td class="auto-style3">

            </td>
        </tr>
    </table>

    <table class="nav-justified pmt-table">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="LblItems" runat="server" Text="Items"></asp:Label>
                (<asp:Label ID="LblItemCount" runat="server" Text="Label"></asp:Label>
                )</td>
            <td class="auto-style2">
                <asp:Label ID="ItemField" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style1">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="LblShip" runat="server" Text="Shipping"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:Label ID="ShipField" runat="server" Text="0.00"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Label ID="LblGtot" runat="server" Font-Bold="True" Font-Size="Large" Text="Grand Total"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:Label ID="GtotField" runat="server" Text="Label" Font-Bold="True" Font-Size="Large"></asp:Label>
            </td>
            <td>
                <asp:Button ID="BtnPlaceOrder" runat="server" Text="Place your order" CssClass="placeorder" Font-Bold="True" />
            </td>
        </tr>
    </table>

    <table class="nav-justified">
        <tr>
            <td></td>
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
