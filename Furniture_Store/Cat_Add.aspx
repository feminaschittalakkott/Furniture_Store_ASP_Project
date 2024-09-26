<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="Cat_Add.aspx.cs" Inherits="Furniture_Store.Cat_Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #cat-add-table{
            margin: 130px auto;
            width:600px;
            box-shadow: rgba(0, 0, 0, 0.07) 0px 1px 2px, rgba(0, 0, 0, 0.07) 0px 2px 4px, rgba(0, 0, 0, 0.07) 0px 4px 8px, rgba(0, 0, 0, 0.07) 0px 8px 16px, rgba(0, 0, 0, 0.07) 0px 16px 32px, rgba(0, 0, 0, 0.07) 0px 32px 64px;
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
        .auto-style1 {
            width: 180px;
        }
        .auto-style2 {
            width: 240px
        }
        .auto-style3 {
            width: 180px;
            height: 22px;
        }
        .auto-style4 {
            width: 240px;
            height: 22px;
        }
        .auto-style5 {
            height: 22px;
        }
        .auto-style6 {
            width: 272px;
        }
    .auto-style7 {
        width: 270px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified" id="cat-add-table">
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <center><asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Add Category"></asp:Label></center>
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
            <asp:Label ID="LblCatname" runat="server" Text="Category" Font-Italic="True" Font-Size="Small" ForeColor="Black"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
            <asp:TextBox ID="TxtCatname" CssClass="input-field" runat="server" Height="30px" Width="270px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style4">
            <asp:Label ID="LblPhoto" runat="server" Font-Italic="True" Font-Size="Small" ForeColor="Black" Text="Photo"></asp:Label>
        </td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
            <asp:FileUpload ID="CatImg" CssClass="file-upl" runat="server" Height="30px" Width="270px" />
        </td>
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
            <asp:Label ID="LblCatDesc" runat="server" Font-Italic="True" Font-Size="Small" ForeColor="Black" Text="Description"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style4">
            <asp:TextBox ID="CatDescription" CssClass="input-field" runat="server" TextMode="MultiLine" Width="270px"></asp:TextBox>
        </td>
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
            <center class="auto-style6"><asp:Button ID="BtnCatAdd" runat="server" Height="30px" Text="Add" Width="100px" BackColor="#E99C2E" ForeColor="Black" BorderStyle="None" Font-Bold="True" OnClick="BtnCatAdd_Click" /></center>
        </td>
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
            <center class="auto-style7"><asp:Label ID="LblInsertMsg" runat="server" Text="Label" Visible="False"></asp:Label></center>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
