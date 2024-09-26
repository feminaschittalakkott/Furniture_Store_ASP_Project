<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Prod_SingleView.aspx.cs" Inherits="Furniture_Store.Prod_SingleView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #ProdTable{
            margin: 100px auto;
        }
        .auto-style1 {
            height: 20px;
        }
        .auto-style2 {
            width: 730px;
        }
        .auto-style3 {
            height: 20px;
            width: 730px;
        }
        .auto-style4 {
            height: 8px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table class="nav-justified" id="ProdTable">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="LblCat" runat="server" Text="Label"></asp:Label>
&nbsp;&gt;
                <asp:Label ID="LblProd" runat="server" Text="Label"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Image ID="ProdImg" runat="server" Height="428px" Width="690px" />
            </td>
            <td>
                <table class="nav-justified">
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="ProdDesc" runat="server" Font-Size="20px" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <hr />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Label ID="ProdPrice" runat="server" Font-Bold="True" Font-Size="Large" ForeColor="Black" Text="Label"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LblWas" runat="server" Text="Was:"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="LblTax" runat="server" Text="All prices include Tax"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style1"></td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList CssClass="form-control" ID="QtyList" runat="server" Height="30px" Width="80px">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>6</asp:ListItem>
                                <asp:ListItem>7</asp:ListItem>
                                <asp:ListItem>8</asp:ListItem>
                                <asp:ListItem>9</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>11</asp:ListItem>
                                <asp:ListItem>12</asp:ListItem>
                                <asp:ListItem>13</asp:ListItem>
                                <asp:ListItem>14</asp:ListItem>
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>16</asp:ListItem>
                                <asp:ListItem>17</asp:ListItem>
                                <asp:ListItem>18</asp:ListItem>
                                <asp:ListItem>19</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>21</asp:ListItem>
                                <asp:ListItem>22</asp:ListItem>
                                <asp:ListItem>23</asp:ListItem>
                                <asp:ListItem>24</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>
                                <asp:ListItem>26</asp:ListItem>
                                <asp:ListItem>27</asp:ListItem>
                                <asp:ListItem>28</asp:ListItem>
                                <asp:ListItem>29</asp:ListItem>
                                <asp:ListItem>30</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Button ID="addCart" runat="server" Text="Add to Cart" BackColor="#E99C2E" BorderStyle="None" Font-Bold="True" ForeColor="Black" Height="30px" OnClick="addCart_Click" Width="150px" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4"></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <asp:Button ID="continueBtn" runat="server" Text="Continue" BackColor="#E99C2E" BorderStyle="None" Font-Bold="True" ForeColor="Black" Height="30px" Width="150px" OnClick="continueBtn_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="ErrMsg" runat="server" ForeColor="Red" Text="Not inserted !" Visible="False"></asp:Label>
                        </td>
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
                        <td class="auto-style1"></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3"></td>
            <td class="auto-style1"></td>
        </tr>
        </table>
    
</asp:Content>
