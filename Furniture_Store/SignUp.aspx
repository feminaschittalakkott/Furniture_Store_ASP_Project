<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="Furniture_Store.SignUp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .signup-table{
            margin: 130px auto;
            border: 5px solid #C0C0C0;
        }
        .activemenu{
            text-decoration: underline;
        }
        .auto-style2 {
            height: 22px;
        }
        .auto-style5 {
            height: 22px;
            width: 132px;
        }
        .auto-style6 {
            margin-left: 14px;
        }
        .auto-style7 {
            width: 14px;
        }
        .auto-style8 {
            height: 22px;
            width: 14px;
        }
        .auto-style10 {
            height: 22px;
            width: 548px;
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
            width: 14px;
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
            width: 548px;
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
        .auto-style49 {
            width: 12px;
            height: 44px;
        }
        .auto-style50 {
            width: 119px;
            height: 44px;
        }
        .auto-style51 {
            width: 319px;
            height: 44px;
        }
        .auto-style52 {
            height: 44px;
        }
        .auto-style53 {
            width: 12px;
            height: 20px;
        }
        .auto-style54 {
            width: 119px;
            height: 20px;
        }
        .auto-style55 {
            width: 319px;
            height: 20px;
        }
        .auto-style56 {
            height: 20px;
        }
        .auto-style57 {
            margin-top: 5px;
        }
        .auto-style60 {
            width: 23px;
            height: 28px;
        }
        .auto-style61 {
            width: 290px;
            height: 28px;
        }
        .auto-style64 {
            height: 22px;
            width: 613px;
        }
        .auto-style65 {
            width: 613px
        }
        .auto-style66 {
            width: 613px;
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="signup-table">
    <tr>
        <td class="auto-style27"></td>
        <td class="auto-style28">
        </td>
        <td class="auto-style29">
            &nbsp;</td>
        <td class="auto-style30">
            &nbsp;</td>
        <td class="auto-style31"></td>
    </tr>
    <tr>
        <td class="auto-style8"></td>
        <td class="auto-style13"></td>
        <td class="auto-style5">
            <asp:Button ID="BtnAdmin" CssClass="btn btn-link" runat="server" Height="30px" OnClick="BtnAdmin_Click" Text="Admin" Width="100px" BorderStyle="None" CausesValidation="False" />
        </td>
        <td class="auto-style10">
            <asp:Button ID="BtnUser" CssClass="btn btn-link auto-style6 activemenu" runat="server" Height="30px" OnClick="BtnUser_Click" Text="User" Width="100px" BorderStyle="None" CausesValidation="False" />
        </td>
        <td class="auto-style2"></td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td colspan="2" rowspan="20">
            <asp:Panel ID="PanelAdmin" runat="server" Height="532px" Visible="False" Width="661px">
                <table class="auto-style16">
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style24">
                            &nbsp;</td>
                        <td class="auto-style24">
                            &nbsp;</td>
                        <td class="auto-style64">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style18"></td>
                        <td class="auto-style24">
                            <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td class="auto-style24">
                            <asp:TextBox ID="AdminName" runat="server" CssClass="form-control" Height="30px" placeholder="Enter your name" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style64">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="AdminName" ErrorMessage="Name cannot be empty!" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style65">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style23">
                            <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                        </td>
                        <td class="auto-style23">
                            <asp:TextBox ID="AdminAdrs" placeholder="Enter your address" CssClass="form-control" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style65">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="AdminAdrs" ErrorMessage="Address cannot be empty !" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style65">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style18"></td>
                        <td class="auto-style24">
                            <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
                        </td>
                        <td class="auto-style24">
                            <asp:TextBox ID="AdminEmail" placeholder="Enter your email" CssClass="form-control" runat="server" Height="30px" Width="200px"></asp:TextBox>
                            &nbsp;</td>
                        <td class="auto-style64">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="AdminEmail" ErrorMessage="Enter valid email !" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="AdminEmail" ErrorMessage="Email cannot be empty !" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style65">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style23">
                            <asp:Label ID="Label6" runat="server" Text="Phone"></asp:Label>
                        </td>
                        <td class="auto-style23">
                            <asp:TextBox ID="AdminPhone" placeholder="Enter your phone number" CssClass="form-control" runat="server" Height="30px" Width="200px"></asp:TextBox>
                            &nbsp;</td>
                        <td class="auto-style65">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="AdminPhone" ErrorMessage="Enter valid phone number !" ForeColor="Red" ValidationExpression="^[6789]\d{9}$"></asp:RegularExpressionValidator>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="AdminPhone" ErrorMessage="Phone number cannot be empty !" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style65">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style23">
                            <asp:Label ID="Label7" runat="server" Text="Username"></asp:Label>
                        </td>
                        <td class="auto-style23">
                            <asp:TextBox ID="AdminUname" placeholder="Enter your username" CssClass="form-control" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style65">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="AdminUname" ErrorMessage="Username cannot be empty !" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style17">&nbsp;</td>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style23">&nbsp;</td>
                        <td class="auto-style65">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style60"></td>
                        <td class="auto-style61">
                            <asp:Label ID="Label8" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td class="auto-style61">
                            <asp:TextBox ID="AdminPass" placeholder="Enter your password" CssClass="form-control" runat="server" Height="30px" TextMode="Password" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style66">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="AdminPass" ErrorMessage="Password cannot be empty !" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style24">&nbsp;</td>
                        <td class="auto-style24">&nbsp;</td>
                        <td class="auto-style64">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style18"></td>
                        <td class="auto-style24">
                            <asp:Label ID="Label1" runat="server" Text="Confirm Password"></asp:Label>
                        </td>
                        <td class="auto-style24">
                            <asp:TextBox ID="AdminCPass" placeholder="Enter your confirm password" CssClass="form-control" runat="server" Height="30px" TextMode="Password" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style64">
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="AdminPass" ControlToValidate="AdminCPass" ErrorMessage="Password doesn't matching !" ForeColor="Red"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style18"></td>
                        <td class="auto-style24"></td>
                        <td class="auto-style24"></td>
                        <td class="auto-style64"></td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style24">&nbsp;</td>
                        <td class="auto-style24">
                            <asp:Button ID="AdminSubmit" CssClass="btn" runat="server" Height="30px" OnClick="AdminSubmit_Click" Text="Submit" Width="80px" BackColor="#E99C2E" BorderStyle="None" Font-Bold="True" ForeColor="Black" />
                        </td>
                        <td class="auto-style64">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style18">&nbsp;</td>
                        <td class="auto-style24"></td>
                        <td class="auto-style24">
                            <asp:Label ID="LblErrAdmin" runat="server" ForeColor="Red" Text="Not inserted" Visible="False"></asp:Label>
                        </td>
                        <td class="auto-style64">&nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
            <asp:Panel ID="PanelUser" runat="server" Height="701px" Width="660px" CssClass="auto-style57">
                <table class="auto-style25">
                    <tr>
                        <td class="auto-style53"></td>
                        <td class="auto-style54"></td>
                        <td class="auto-style55"></td>
                        <td class="auto-style56"></td>
                    </tr>
                    <tr>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style39">
                            <asp:Label ID="Label9" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td class="auto-style43">
                            <asp:TextBox ID="UserName" placeholder="Enter your name" CssClass="form-control" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="UserName" ErrorMessage="Name cannot be empty !" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
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
                            <asp:TextBox ID="UserAdrs" placeholder="Enter your address" CssClass="form-control" runat="server" TextMode="MultiLine" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="UserAdrs" ErrorMessage="Address cannot be empty !" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
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
                            <asp:TextBox ID="UserEmail" placeholder="Enter your email" CssClass="form-control" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style26">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="UserEmail" ErrorMessage="Enter valid email !" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="UserEmail" ErrorMessage="Email cannot be empty !" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
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
                            <asp:TextBox ID="UserPhone" placeholder="Enter your phone number" CssClass="form-control" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style26">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="UserPhone" ErrorMessage="Enter valid phone number !" ForeColor="Red" ValidationExpression="^[6789]\d{9}$"></asp:RegularExpressionValidator>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="UserPhone" ErrorMessage="Phone number cannot be empty !" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
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
                            <asp:DropDownList ID="DdlDistrict" CssClass="form-control" runat="server" Height="30px" Width="200px">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Kollam</asp:ListItem>
                                <asp:ListItem>Calicut</asp:ListItem>
                                <asp:ListItem>Wayanad</asp:ListItem>
                                <asp:ListItem>Ernakulam</asp:ListItem>
                                <asp:ListItem>Kannur</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="DdlDistrict" ErrorMessage="Select a district !" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
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
                            <asp:DropDownList ID="DdlStates" CssClass="form-control" runat="server" Height="30px" Width="200px">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Kerala</asp:ListItem>
                                <asp:ListItem>Tamilnadu</asp:ListItem>
                                <asp:ListItem>Karnataka</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="DdlStates" ErrorMessage="Select a state !" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
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
                            <asp:TextBox ID="UserPin" placeholder="Enter your pincode" CssClass="form-control" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="UserPin" ErrorMessage="Pin cannot be empty !" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
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
                            <asp:TextBox ID="UserUname" placeholder="Enter your username" CssClass="form-control" runat="server" Height="30px" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="UserUname" ErrorMessage="Username cannot be empty !" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style39">&nbsp;</td>
                        <td class="auto-style43">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style49"></td>
                        <td class="auto-style50">
                            <asp:Label ID="Label17" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td class="auto-style51">
                            <asp:TextBox ID="UserPass" placeholder="Enter your password" CssClass="form-control" runat="server" Height="30px" TextMode="Password" Width="200px"></asp:TextBox>
                        </td>
                        <td class="auto-style52">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="UserPass" ErrorMessage="Password cannot be empty !" ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
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
                            <asp:Label ID="Label2" runat="server" Text="Confirm Password"></asp:Label>
                        </td>
                        <td class="auto-style43">
                            <asp:TextBox ID="userCPass" placeholder="Re-type your password" CssClass="form-control" runat="server" Height="30px" TextMode="Password" Width="200px"></asp:TextBox>
                        </td>
                        <td>
                            <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="UserPass" ControlToValidate="userCPass" ErrorMessage="Passwords doesn't matching !" ForeColor="Red"></asp:CompareValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style53"></td>
                        <td class="auto-style54"></td>
                        <td class="auto-style55"></td>
                        <td class="auto-style56"></td>
                    </tr>
                    <tr>
                        <td class="auto-style47">&nbsp;</td>
                        <td class="auto-style39">&nbsp;</td>
                        <td class="auto-style43">
                            <asp:Button ID="UserSubmit" CssClass="btn" runat="server" Height="30px" Text="Submit" Width="80px" OnClick="UserSubmit_Click" BackColor="#E99C2E" BorderStyle="None" Font-Bold="True" ForeColor="Black" />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style53"></td>
                        <td class="auto-style54"></td>
                        <td class="auto-style55">
                            <asp:Label ID="LblErrUser" runat="server" ForeColor="Red" Text="Not Inserted" Visible="False"></asp:Label>
                        </td>
                        <td class="auto-style56"></td>
                    </tr>
                </table>
            </asp:Panel>
        </td>
        <td>&nbsp;<img src="https://cdni.iconscout.com/illustration/premium/thumb/sign-up-illustration-download-in-svg-png-gif-file-formats--log-register-form-user-login-interface-pack-design-development-illustrations-6430849.png" alt="img" height="400" width="400" /></td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">&nbsp;</td>
        <td class="auto-style11">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    </table>
</asp:Content>
