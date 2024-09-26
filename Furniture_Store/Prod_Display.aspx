<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="Prod_Display.aspx.cs" Inherits="Furniture_Store.Prod_Display" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #prod-display-table{
            margin: 130px auto;
            width:1000px;
        }
        .input-field{
            border-radius: 5px;
            border: solid 1.5px #D3D3D3;
            -webkit-transition: 1s;
            transition: 1s;
        }
        .file-upl{
            border: solid 1.5px #D3D3D3;
        }
        .styled-grid {
            width: 950px;
            border-collapse: collapse;
            margin: 10px 0 10px 10px;
            font-size: 16px;
            text-align: left;
            border: 1px solid #ddd;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .grid-row td {
            padding: 10px;
        }

        .grid-header th {
            padding: 10px;
        }

        .grid-footer td {
            padding: 10px;
        }
        .styled-grid th,
        .styled-grid td {
            padding: 12px 15px;
            border: 1px solid #ddd;
        }

        .styled-grid th {
            background-color: #f4f4f4;
            color: #333;
        }

        .styled-grid tr {
            background-color: #fff;
            transition: background-color 0.2s ease-in-out;
        }

        .styled-grid tr:hover {
            background-color: #f1f1f1;
        }

        .auto-style1 {
            width: 35px;
        }
        .auto-style3 {
            width: 35px;
            height: 22px;
        }
        .auto-style4 {
            width: 1088px;
            height: 22px;
        }
        .auto-style5 {
            height: 22px;
        }
        .auto-style6 {
            width: 1088px
        }
        .auto-style7 {
            width: 35px;
            height: 26px;
        }
        .auto-style8 {
            width: 1088px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified" id="prod-display-table">
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style4"></td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style6">
            <center><asp:Label ID="Lblhead" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Products" ForeColor="Black"></asp:Label></center>
        </td>
    </tr>
    <tr>
        <td class="auto-style7"></td>
        <td class="auto-style8">
        </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style6">
            <asp:GridView ID="ProdList" CssClass="styled-grid" runat="server" AutoGenerateColumns="False" DataKeyNames="Prod_Id" OnRowCancelingEdit="ProdList_RowCancelingEdit" OnRowDeleting="ProdList_RowDeleting" OnRowEditing="ProdList_RowEditing" OnRowUpdating="ProdList_RowUpdating">
                <Columns>
                    <asp:BoundField DataField="Prod_Name" HeaderText="Product Name">
                    <ControlStyle Height="30px" Width="100px" />
                    <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="Prod_Img" HeaderText="Photo">
                        <ControlStyle Height="100px" Width="200px" />
                        <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:ImageField>
                    <asp:BoundField DataField="Prod_Description" HeaderText="Description">
                    <ControlStyle Width="100px" />
                    <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Prod_Price" HeaderText="Price">
                    <ControlStyle Width="80px" />
                    <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Cat_Name" HeaderText="Category">
                    <ControlStyle Height="30px" Width="100px" />
                    <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Prod_Stock" HeaderText="Stock">
                    <ControlStyle Height="30px" Width="50px" />
                    <HeaderStyle Font-Bold="True" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:BoundField>
                    <asp:CommandField HeaderText="Edit" ShowEditButton="True" ShowHeader="True" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:CommandField>
                    <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" >
                    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    </asp:CommandField>
                </Columns>
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style4">
            </td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style4"></td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style4"></td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style4">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style6">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style6">&nbsp;</td>
    </tr>
    </table>
</asp:Content>
