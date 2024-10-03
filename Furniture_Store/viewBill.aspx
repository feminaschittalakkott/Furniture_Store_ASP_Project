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
        .auto-style11 {
            height: 20px;
            width: 190px;
        }
        .auto-style14 {
            height: 20px;
            width: 208px;
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
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </td>
        </tr>
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
                <asp:Button ID="Btn_Pay" runat="server" BackColor="#E99C2E" BorderStyle="None" Font-Bold="True" ForeColor="Black" Height="30px" Text="Pay" Width="80px" OnClick="Btn_Pay_Click1" />
            </td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">&nbsp;</td>
            <td class="auto-style7">
                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                    <ContentTemplate>
                        <asp:Panel ID="PanelPmt" runat="server" BorderStyle="Solid" BorderWidth="1px" BorderColor="#CCCCCC" Visible="False">
                    <table class="nav-justified">
                        <tr>
                            <td class="text-center" colspan="3">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="text-center" colspan="3">
                                <asp:Label ID="Label2" runat="server" Font-Italic="True" Font-Size="Large" ForeColor="Black" Text="Payment"></asp:Label>
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
                            <td class="auto-style11">&nbsp;<asp:Label ID="Label3" runat="server" Text="Account Name"></asp:Label>
                            </td>
                            <td class="auto-style1">
                                <asp:TextBox ID="TxtAccName" runat="server" Height="30px" Width="250px"></asp:TextBox>
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
                            <td class="auto-style16">&nbsp;<asp:Label ID="Label4" runat="server" Text="Account Number"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TxtAccNo" runat="server" Height="30px" Width="250px"></asp:TextBox>
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
                            <td class="auto-style16">&nbsp;<asp:Label ID="Label5" runat="server" Text="Balance Amount"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TxtAccBal" runat="server" Height="30px" Width="250px"></asp:TextBox>
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
                                <asp:Button ID="AccAdd" runat="server" BackColor="#E99C2E" BorderStyle="None" Font-Bold="True" Height="30px" Text="Add" Width="100px" OnClick="AccAdd_Click" />
                                <asp:Button ID="BtnEditPay" runat="server" BackColor="#E99C2E" BorderStyle="None" Font-Bold="True" Height="30px" Text="Edit" Width="100px" OnClick="BtnEditPay_Click" Visible="False" />&nbsp;
                                <asp:Button ID="BtnPayContinue" runat="server" BackColor="#E99C2E" BorderStyle="None" Font-Bold="True" Height="30px" Text="Continue Payment" Width="140px" OnClick="BtnPayContinue_Click" Visible="False" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style14"></td>
                            <td class="auto-style11"></td>
                            <td class="auto-style1"></td>
                        </tr>
                        <tr>
                            <td class="auto-style14"></td>
                            <td class="auto-style11"></td>
                            <td class="auto-style1">
                                <asp:Label ID="LblMsg" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style17">&nbsp;</td>
                            <td class="auto-style16">&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
                    </ContentTemplate>

                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="Btn_Pay" EventName="Click" />
                    </Triggers>

                </asp:UpdatePanel>
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
