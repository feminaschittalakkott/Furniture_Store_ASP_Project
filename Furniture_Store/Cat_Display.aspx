<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="Cat_Display.aspx.cs" Inherits="Furniture_Store.Cat_Display" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #cat-display-table{
            margin: 130px auto;
            width:1000px;
            /*box-shadow: rgba(0, 0, 0, 0.07) 0px 1px 2px, rgba(0, 0, 0, 0.07) 0px 2px 4px, rgba(0, 0, 0, 0.07) 0px 4px 8px, rgba(0, 0, 0, 0.07) 0px 8px 16px, rgba(0, 0, 0, 0.07) 0px 16px 32px, rgba(0, 0, 0, 0.07) 0px 32px 64px;*/
        }
        .input-field{
            border-radius: 5px;
            border: solid 1.5px #D3D3D3;
            -webkit-transition: 1s; /* Safari */
            transition: 1s;
        }
        .file-upl{
            border: solid 1.5px #D3D3D3;
        }
        .styled-grid {
            width: 930px;
            border-collapse: collapse;
            margin: 20px 0;
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
        .auto-style2 {
            width: 730px
        }
        .auto-style3 {
            width: 35px;
            height: 22px;
        }
        .auto-style4 {
            width: 730px;
            height: 22px;
        }
        .auto-style5 {
            height: 22px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified" id="cat-display-table">
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style4"></td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td colspan="3">
            <center><asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Categories"></asp:Label></center>
        </td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
            <asp:GridView ID="CatGrid" CssClass="styled-grid" runat="server" AutoGenerateColumns="False" CellSpacing="3" CellPadding="5" DataKeyNames="Cat_Id" OnRowCancelingEdit="CatGrid_RowCancelingEdit" OnRowDeleting="CatGrid_RowDeleting" OnRowEditing="CatGrid_RowEditing" OnRowUpdating="CatGrid_RowUpdating">
                <Columns>
                    <asp:BoundField DataField="Cat_Name" HeaderText="Name" />
                    <asp:ImageField DataImageUrlField="Cat_Img" HeaderText="Photo">
                        <ControlStyle Height="100px" Width="200px" />
                        <ItemStyle Height="100px" HorizontalAlign="Center" VerticalAlign="Middle" Width="200px" />
                    </asp:ImageField>
                    <asp:BoundField DataField="Cat_Description" HeaderText="Description" />
                    <asp:CommandField HeaderText="Edit" ShowEditButton="True" ShowHeader="True" />
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server">Delete</asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <RowStyle CssClass="grid-row" />
                <HeaderStyle CssClass="grid-header" />
                <EmptyDataTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("Cat_Id") %>'>Edit</asp:LinkButton>
                </EmptyDataTemplate>
                <FooterStyle CssClass="grid-footer" />
            </asp:GridView>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style4"></td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style4">
            &nbsp;</td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style4"></td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style4">
            &nbsp;</td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    </table>
</asp:Content>
