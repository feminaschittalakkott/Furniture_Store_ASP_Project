<%@ Page Title="" Language="C#" MasterPageFile="~/Main1.Master" AutoEventWireup="true" CodeBehind="Prod_Add.aspx.cs" Inherits="Furniture_Store.Prod_Add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #prod-add-table{
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
            width: 180px;
            height: 30px;
        }
        .auto-style7 {
            width: 240px;
            height: 30px;
        }
        .auto-style8 {
            height: 30px;
        }
        .auto-style9 {
            width: 269px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified" id="prod-add-table">
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <center><asp:Label ID="Label1" runat="server" Font-Size="XX-Large" Text="Add Product"></asp:Label></center>
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
            <asp:Label ID="LblCat" runat="server" Font-Size="Small" ForeColor="Black" Text="Category" Font-Italic="True"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style4">
            <asp:DropDownList ID="CatList" CssClass="input-field" runat="server" Height="30px" Width="270px">
            </asp:DropDownList>
        </td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="CatList" ErrorMessage="Please select a category !" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style4">
            <asp:Label ID="LblProd" runat="server" Font-Size="Small" ForeColor="Black" Text="Product Name" Font-Italic="True"></asp:Label>
        </td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style4">
            <asp:TextBox ID="TxtProdName" CssClass="input-field" runat="server" Height="30px" Width="270px"></asp:TextBox>
        </td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtProdName" ErrorMessage="Please enter product name !" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
            <asp:Label ID="LblPrice" runat="server" Font-Size="Small" ForeColor="Black" Text="Price" Font-Italic="True"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style4">
            <asp:TextBox ID="TxtProdPrice" CssClass="input-field" runat="server" Height="30px" Width="270px"></asp:TextBox>
        </td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtProdPrice" ErrorMessage="Please enter product price !" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
            <asp:Label ID="LblStock" runat="server" Font-Size="Small" ForeColor="Black" Text="Stock" Font-Italic="True"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style4">
            <asp:TextBox ID="TxtProdStock" CssClass="input-field" runat="server" Height="30px" Width="270px"></asp:TextBox>
        </td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style4">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtProdStock" ErrorMessage="Please enter product stock !" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
            <asp:Label ID="LblPhoto" runat="server" Font-Size="Small" ForeColor="Black" Text="Photo" Font-Italic="True"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
            <asp:FileUpload ID="ProdImg" CssClass="input-field" runat="server" Height="30px" Width="270px" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="ProdImg" ErrorMessage="Please upload product image !" Font-Italic="True" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style4">
            <asp:Label ID="LblDesc" runat="server" Font-Size="Small" ForeColor="Black" Text="Description" Font-Italic="True"></asp:Label>
        </td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
            <asp:TextBox ID="ProdDesc" CssClass="input-field" runat="server" TextMode="MultiLine" Width="270px"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ProdDesc" ErrorMessage="Please enter product description !" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6"></td>
        <td class="auto-style7">
            <center><asp:Button ID="BtnProdAdd" runat="server" BackColor="#E99C2E" Font-Bold="True" ForeColor="Black" Text="Add" Width="100px" Height="30px" BorderStyle="None" OnClick="BtnProdAdd_Click" /></center>
        </td>
        <td class="auto-style8"></td>
    </tr>
    <tr>
        <td class="auto-style3"></td>
        <td class="auto-style4"></td>
        <td class="auto-style5"></td>
    </tr>
    <tr>
        <td class="auto-style1">&nbsp;</td>
        <td class="auto-style2">
            <center class="auto-style9"><asp:Label ID="LblMsg" runat="server" Text="Label" Visible="False"></asp:Label></center>
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
