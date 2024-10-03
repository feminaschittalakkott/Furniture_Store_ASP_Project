<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Furniture_Store.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #CartTable{
            margin: 100px auto;
            color: black;
        }
        .auto-style1 {
            height: 225px;
            text-align: right;
            border-bottom: 1px solid gray;
        }
        .auto-style3 {
            height: 225px;
            width: 307px;
            border-bottom: 1px solid gray;
        }
        .auto-style6 {
            height: 225px;
            width: 700px;
            border-bottom-style: solid;
            border-bottom-color: inherit;
            border-bottom-width: 1px;
        }
        .auto-style7 {
            width: 307px;
            height: 20px;
        }
        .auto-style8 {
            width: 700px;
            height: 20px;
        }
        .auto-style9 {
            height: 20px;
        }
        .auto-style10 {
                width: 1071px;
            }
        .auto-style11 {
            height: 20px;
            width: 1071px;
            text-align: right;
            border-bottom-style: solid;
            border-bottom-color: inherit;
            border-bottom-width: 1px;
        }
        .auto-style12 {
                width: 1071px;
                height: 20px;
            }
        .auto-style13 {
            width: 1071px;
            height: 42px;
        }
        .auto-style14 {
            height: 42px;
        }
        .auto-style15 {
            width: 101%
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified" id="CartTable">
        <tr>
            <td class="auto-style13">
                <asp:Label ID="cartLable" runat="server" Font-Italic="True" Font-Size="X-Large" ForeColor="Black" Text="Shopping Cart"></asp:Label>
            </td>
            <td class="auto-style14">

                </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="LblEmptyCart" runat="server" Text="Your cart is empty!" Font-Bold="True" ForeColor="Red" Font-Size="Large" Visible="False" CssClass="text-center"></asp:Label>
            </td>
            <td>

            </td>
        </tr>
        <asp:Panel ID="CartPanel" runat="server">
            <tr>
                <td class="auto-style10" style="text-align:right;border-bottom: 1px solid gray;">Price</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10">
                    <asp:DataList ID="cartList" runat="server" DataKeyField="Cart_id" OnItemCommand="cartList_ItemCommand">
                        <ItemTemplate>
                            <table class="auto-style15">
                                <tr>
                                    <td class="auto-style7"></td>
                                    <td class="auto-style8"></td>
                                    <td class="auto-style9">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <asp:ImageButton ID="ImageButton1" runat="server" Height="199px" ImageUrl='<%# Eval("Prod_Img") %>' Width="279px" />
                                    </td>
                                    <td class="auto-style6">
                                        <asp:Label ID="LblProdName" runat="server" Text='<%# Eval("Prod_Name") %>'></asp:Label>
                                        <br />
                                        <br />
                                        <asp:Label ID="LblInStock" runat="server" Text="Label"></asp:Label>
                                        <br />
                                        <br />
                                        <asp:TextBox ID="TxtQty" runat="server" Height="20px" Width="50px" placeholder="Qty" CssClass="form-control" ReadOnly="true" Text='<%# Eval("Prod_Qty") %>'></asp:TextBox>
                                        <br />
                                        &nbsp;
                                        <asp:LinkButton ID="LinkDelete" runat="server" Font-Size="Smaller" CommandArgument='<%# Eval("Cart_id") %>' OnCommand="LinkDelete_Command">Delete</asp:LinkButton>
                                        &nbsp;<asp:LinkButton ID="LinkEdit" runat="server" Font-Size="Smaller" CommandName="Edit">Edit</asp:LinkButton>
                                    </td>
                                    <td class="auto-style1">
                                        <asp:Label ID="Price" runat="server" Text='<%# "₹ " + Eval("Tot_Price") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <table class="auto-style15">
                                <tr>
                                    <td class="auto-style7"></td>
                                    <td class="auto-style8"></td>
                                    <td class="auto-style9"></td>
                                </tr>
                                <tr>
                                    <td class="auto-style3">
                                        <asp:ImageButton ID="ImageButton1" runat="server" Height="199px" ImageUrl='<%# Eval("Prod_Img") %>' Width="279px" />
                                    </td>
                                    <td class="auto-style6">
                                        <asp:Label ID="LblProdName" runat="server" Text='<%# Eval("Prod_Name") %>'></asp:Label>
                                        <br /><br />
                                        <asp:Label ID="LblInStock" runat="server" Text="Label"></asp:Label>
                                        <br /><br />
                                        <asp:TextBox ID="TxtQty" runat="server" Height="20px" Width="50px" placeholder="Qty" CssClass="form-control" Text='<%# Eval("Prod_Qty") %>'></asp:TextBox>
                                        <br />
                                        <asp:LinkButton ID="LinkUpdate" runat="server" Font-Size="Smaller" CommandName="Update" CommandArgument='<%# Eval("Cart_id") %>'>Update</asp:LinkButton>
                                        &nbsp;<asp:LinkButton ID="LinkCancel" runat="server" Font-Size="Smaller" CommandName="Cancel">Cancel</asp:LinkButton>
                                    </td>
                                    <td class="auto-style1">
                                        <asp:Label ID="Price" runat="server" Text='<%# "₹ " + Eval("Prod_Price") %>'></asp:Label>
                                    </td>
                                </tr>
                            </table>
                        </EditItemTemplate>
                    </asp:DataList>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style11">
                    <asp:Label ID="gTotLabel" runat="server" Text="Sub Total"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LblCurrency" runat="server" Text="₹ "></asp:Label><asp:Label ID="GTotPrice" runat="server" Text="Grand Total"></asp:Label>
                </td>
                <td class="auto-style9"></td>
            </tr>
            <tr>
                <td class="auto-style10 text-right">
                    &nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style10 text-right">

                    <asp:Label ID="ErrMsg" runat="server" Text="Label" ForeColor="Red" Visible="False"></asp:Label>&nbsp;

                    <asp:Button ID="BtnContinue" runat="server" Text="Continue Shop" BackColor="#E99C2E" BorderStyle="None" Font-Bold="True" ForeColor="Black" Height="30px" Width="150px" OnClick="BtnContinue_Click" />&nbsp;
                    <asp:Button ID="Btn_Proceed" runat="server" Text="Proceed to Buy" BackColor="#E99C2E" BorderStyle="None" Font-Bold="True" ForeColor="Black" Height="30px" Width="150px" OnClick="Btn_Proceed_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </asp:Panel>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style12"></td>
            <td class="auto-style9"></td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
