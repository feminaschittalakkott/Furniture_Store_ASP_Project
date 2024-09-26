<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Furniture_Store.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 22px;
        }
        .auto-style4 {
            width: 132px;
        }
        .auto-style5 {
            height: 22px;
            width: 132px;
        }
        .auto-style6 {
            margin-left: 14;
        }
        .auto-style7 {
            width: 279px;
        }
        .auto-style8 {
            height: 22px;
            width: 279px;
        }
        .auto-style10 {
            height: 22px;
            width: 336px;
        }
        .auto-style11 {
            width: 336px
        }
        .auto-style12 {
            width: 138px;
        }
        .auto-style13 {
            height: 22px;
            width: 138px;
        }
        .auto-style16 {
            width: 100%;
            height: 428px;
        }
        .auto-style17 {
            width: 23px;
        }
        .auto-style18 {
            height: 22px;
            width: 23px;
        }
        .auto-style19 {
            width: 222px;
        }
        .auto-style20 {
            height: 22px;
            width: 222px;
        }
        .auto-style21 {
            width: 662px
        }
        .auto-style22 {
            height: 22px;
            width: 662px;
        }
        .auto-style23 {
            width: 290px;
        }
        .auto-style24 {
            height: 22px;
            width: 290px;
        }
        .auto-style25 {
            width: 99%;
            height: 273px;
        }
        .auto-style26 {
            height: 34px;
        }
        .auto-style27 {
            width: 279px;
            height: 30px;
        }
        .auto-style28 {
            width: 138px;
            height: 30px;
        }
        .auto-style29 {
            width: 132px;
            height: 30px;
        }
        .auto-style30 {
            width: 336px;
            height: 30px;
        }
        .auto-style31 {
            height: 30px;
        }
        .auto-style39 {
            width: 119px;
        }
        .auto-style40 {
            height: 34px;
            width: 119px;
        }
        .auto-style43 {
            width: 319px;
        }
        .auto-style44 {
            height: 34px;
            width: 319px;
        }
        .auto-style47 {
            width: 12px;
        }
        .auto-style48 {
            height: 34px;
            width: 12px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style27"></td>
        <td class="auto-style28">
            <asp:Label ID="Label2" runat="server" Text="Signup As" Font-Size="Large"></asp:Label>
        </td>
        <td class="auto-style29">
            <asp:Button ID="BtnAdmin" runat="server" Height="30px" OnClick="BtnAdmin_Click" Text="Admin" Width="100px" BorderStyle="None" />
        </td>
        <td class="auto-style30">
            <asp:Button ID="BtnUser" runat="server" CssClass="auto-style6" Height="30px" OnClick="BtnUser_Click" Text="User" Width="100px" BorderStyle="None" />
        </td>
        <td class="auto-style31"></td>
        <td class="auto-style31"></td>
    </tr>
    <tr>
        <td class="auto-style8"></td>
        <td class="auto-style13"></td>
        <td class="auto-style5">&nbsp;</td>
        <td class="auto-style10"></td>
        <td class="auto-style2"></td>
        <td class="auto-style2"></td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td colspan="2" rowspan="20">
            <asp:Panel ID="PanelAdmin" runat="server" Height="467px" Visible="False" Width="514px">
                <table class="auto-style16">
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style21">&nbsp;</td>
                        <td class="auto-style19">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style24">
                            <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td class="auto-style22">
                            <asp:TextBox ID="AdminName" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style20">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style21">&nbsp;</td>
                        <td class="auto-style19">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style23">
                            <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                        </td>
                        <td class="auto-style21">
                            <asp:TextBox ID="AdminAdrs" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style19">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style21">&nbsp;</td>
                        <td class="auto-style19">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style18"></td>
                        <td class="auto-style24">
                            <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
                        </td>
                        <td class="auto-style22">
                            <asp:TextBox ID="AdminEmail" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style20"></td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style21">&nbsp;</td>
                        <td class="auto-style19">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style23">
                            <asp:Label ID="Label6" runat="server" Text="Phone"></asp:Label>
                        </td>
                        <td class="auto-style21">
                            <asp:TextBox ID="AdminPhone" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style19">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style21">&nbsp;</td>
                        <td class="auto-style19">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style23">
                            <asp:Label ID="Label7" runat="server" Text="Username"></asp:Label>
                        </td>
                        <td class="auto-style21">
                            <asp:TextBox ID="AdminUname" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style19">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style21">&nbsp;</td>
                        <td class="auto-style19">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style24">
                            <asp:Label ID="Label8" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td class="auto-style22">
                            <asp:TextBox ID="AdminPass" runat="server" Height="30px" TextMode="Password" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style20">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style24">&nbsp;</td>
                        <td class="auto-style22">&nbsp;</td>
                        <td class="auto-style20">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style24">&nbsp;</td>
                        <td class="auto-style22">
                            <asp:Button ID="AdminSubmit" runat="server" Height="30px" OnClick="AdminSubmit_Click" Text="Submit" Width="80px" BackColor="#E99C2E" BorderStyle="None" Font-Bold="True" ForeColor="Black" />
                        </td>
                        <td class="auto-style20">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style24"></td>
                        <td class="auto-style22">&nbsp;</td>
                        <td class="auto-style20">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style24">&nbsp;</td>
                        <td class="auto-style22">
                            <asp:Label ID="LblErrAdmin" runat="server" ForeColor="Red" Text="Not inserted" Visible="False"></asp:Label>
                        </td>
                        <td class="auto-style20">&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="PanelUser" runat="server" Height="579px" Visible="False" Width="519px">
                <table class="auto-style25">
                    <tr>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style39">&nbsp;</td>
                        <td class="auto-style43">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style39">
                            <asp:Label ID="Label9" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td class="auto-style43">
                            <asp:TextBox ID="UserName" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style39">&nbsp;</td>
                        <td class="auto-style43">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style39">
                            <asp:Label ID="Label10" runat="server" Text="Address"></asp:Label>
                        </td>
                        <td class="auto-style43">
                            <asp:TextBox ID="UserAdrs" runat="server" Height="30px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style39">&nbsp;</td>
                        <td class="auto-style43">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style48"></td>
                        <td class="auto-style40">
                            <asp:Label ID="Label11" runat="server" Text="Email"></asp:Label>
                        </td>
                        <td class="auto-style44">
                            <asp:TextBox ID="UserEmail" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style26"></td>
                    </tr>
                    <tr>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style39">&nbsp;</td>
                        <td class="auto-style43">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style48"></td>
                        <td class="auto-style40">
                            <asp:Label ID="Label12" runat="server" Text="Phone"></asp:Label>
                        </td>
                        <td class="auto-style44">
                            <asp:TextBox ID="UserPhone" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style26"></td>
                    </tr>
                    <tr>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style39">&nbsp;</td>
                        <td class="auto-style43">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style39">
                            <asp:Label ID="Label13" runat="server" Text="District"></asp:Label>
                        </td>
                        <td class="auto-style43">
                            <asp:DropDownList ID="DdlDistrict" runat="server" Height="30px" Width="200px">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Kollam</asp:ListItem>
                                <asp:ListItem>Calicut</asp:ListItem>
                                <asp:ListItem>Wayanad</asp:ListItem>
                                <asp:ListItem>Ernakulam</asp:ListItem>
                                <asp:ListItem>Kannur</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style39">&nbsp;</td>
                        <td class="auto-style43">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style39">
                            <asp:Label ID="Label14" runat="server" Text="State"></asp:Label>
                        </td>
                        <td class="auto-style43">
                            <asp:DropDownList ID="DdlStates" runat="server" Height="30px" Width="200px">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Kerala</asp:ListItem>
                                <asp:ListItem>Tamilnadu</asp:ListItem>
                                <asp:ListItem>Karnataka</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style39">&nbsp;</td>
                        <td class="auto-style43">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style39">
                            <asp:Label ID="Label15" runat="server" Text="Pin"></asp:Label>
                        </td>
                        <td class="auto-style43">
                            <asp:TextBox ID="UserPin" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style39">&nbsp;</td>
                        <td class="auto-style43">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style39">
                            <asp:Label ID="Label16" runat="server" Text="Username"></asp:Label>
                        </td>
                        <td class="auto-style43">
                            <asp:TextBox ID="UserUname" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style39">&nbsp;</td>
                        <td class="auto-style43">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style39">
                            <asp:Label ID="Label17" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td class="auto-style43">
                            <asp:TextBox ID="UserPass" runat="server" Height="30px" TextMode="Password" Width="200px"></asp:TextBox>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style39">&nbsp;</td>
                        <td class="auto-style43">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style39">&nbsp;</td>
                        <td class="auto-style43">
                            <asp:Button ID="UserSubmit" runat="server" Height="30px" Text="Submit" Width="80px" OnClick="UserSubmit_Click" BackColor="#E99C2E" BorderStyle="None" Font-Bold="True" ForeColor="Black" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style39">&nbsp;</td>
                        <td class="auto-style43">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style39">&nbsp;</td>
                        <td class="auto-style43">
                            <asp:Label ID="LblErrUser" runat="server" ForeColor="Red" Text="Not Inserted" Visible="False"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8"></td>
        <td class="auto-style13"></td>
        <td class="auto-style2"></td>
        <td class="auto-style2"></td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style13">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style2">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style4">&nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
