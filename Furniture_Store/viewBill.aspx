<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="viewBill.aspx.cs" Inherits="Furniture_Store.viewBill" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .bill_table{
            margin: 130px auto;
            color:black;
        }
        .datagrid_product td, .datagrid_product th{
            text-align: center;
            padding: 5px;
            border: 1px solid;
            border-color: lightgray;
        }
        .auto-style1 {
            height: 20px;
        }
        .auto-style2 {
            width: 138px;
        }
        .auto-style3 {
            height: 20px;
            width: 138px;
        }
        .auto-style4 {
            height: 20px;
            width: 153px;
        }
        .auto-style5 {
            width: 153px;
        }
        .auto-style6 {
            height: 20px;
            width: 866px;
        }
        .auto-style7 {
            width: 866px;
        }
        .auto-style8 {
            height: 40px;
            width: 153px;
        }
        .auto-style9 {
            height: 40px;
            width: 866px;
        }
        .auto-style11 {
            height: 20px;
            width: 190px;
        }
        .auto-style13 {
            width: 267px;
        }
        .auto-style14 {
            height: 20px;
            width: 208px;
        }
        .auto-style15 {
            width: 214px;
        }
        .auto-style16 {
            width: 190px;
        }
        .auto-style17 {
            width: 208px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified bill_table">
        <tr>
            <td colspan="2" class="text-center">
                <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Size="X-Large" ForeColor="Black" Text="Checkout"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style6">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5"></td>
            <td class="auto-style7">
                <asp:DataList ID="BillList" runat="server" Width="738px">
                    <ItemTemplate>
                        <table class="nav-justified">
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="LblName" runat="server" Text="Name"></asp:Label>
                                </td>
                                <td>&nbsp;
                                    <asp:Label ID="NameField" runat="server" Text='<%# Eval("User_Name") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style2">
                                    <asp:Label ID="LblAddrs" runat="server" Text="Address"></asp:Label>
                                </td>
                                <td>&nbsp;
                                    <asp:Label ID="AddrsField" runat="server" Text='<%# Eval("User_Adrs") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td>&nbsp;
                                    <asp:Label ID="DistField" runat="server" Text='<%# Eval("District") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td>&nbsp;
                                    <asp:Label ID="StateField" runat="server" Text='<%# Eval("State") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style3"></td>
                                <td class="auto-style1">&nbsp;
                                    <asp:Label ID="PinField" runat="server" Text='<%# Eval("Pin") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td>&nbsp;
                                    <asp:Label ID="PhonField" runat="server" Text='<%# Eval("User_Phone") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                                    <asp:GridView ID="OrderDataGrid" CssClass="datagrid_product" runat="server" AutoGenerateColumns="False" Width="864px">
                                        <Columns>
                                            <asp:BoundField DataField="Prod_Name" HeaderText="Item" >
                                            <ItemStyle Width="250px" />
                                            </asp:BoundField>
                                            <asp:ImageField DataImageUrlField="Prod_Img" HeaderText="Image">
                                                <ControlStyle Height="150px" Width="200px" />
                                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="250px" />
                                            </asp:ImageField>
                                            <asp:BoundField DataField="Prod_Qty" HeaderText="Quantity" >
                                            <ItemStyle Width="100px" />
                                            </asp:BoundField>
                                        </Columns>
                                    </asp:GridView>
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7 text-right">
                <asp:Button ID="Button1" runat="server" BackColor="#E99C2E" BorderStyle="None" Font-Bold="True" ForeColor="Black" Height="30px" Text="Pay" Width="80px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style9">
                <asp:Panel ID="PanelPmt" runat="server" BorderStyle="Solid" BorderWidth="1px" BorderColor="#CCCCCC" Visible="False">
                    <table class="nav-justified">
                        <tr>
                            <td class="text-center" colspan="3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="text-center" colspan="3">
                                <asp:Label ID="LblPmt" runat="server" Font-Italic="True" Font-Size="Large" ForeColor="Black" Text="Payment"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style14">
                                &nbsp;</td>
                            <td class="auto-style11">&nbsp;<asp:Label ID="LblAccName" runat="server" Text="Account Name"></asp:Label>
                            </td>
                            <td class="auto-style1">
                                <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="250px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17">
                                &nbsp;</td>
                            <td class="auto-style16">&nbsp;<asp:Label ID="LblAccNo" runat="server" Text="Account Number"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="250px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17">
                                &nbsp;</td>
                            <td class="auto-style16">&nbsp;<asp:Label ID="LblIfce" runat="server" Text="IFSC"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox4" runat="server" Height="30px" Width="250px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17">
                                &nbsp;</td>
                            <td class="auto-style16">&nbsp;<asp:Label ID="LblBalance" runat="server" Text="Balance Amount"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TextBox5" runat="server" Height="30px" Width="250px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style16">&nbsp;</td>
                            <td>
                                <asp:Button ID="BtnPmtAdd" runat="server" BackColor="#E99C2E" BorderStyle="None" Font-Bold="True" Height="30px" Text="Add" Width="100px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style6"></td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
