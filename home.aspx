<%@ Page Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 125px;
        }
        .style3
        {
            width: 206px;
        }
        .style5
        {
        }
        .style6
        {
            width: 135px;
            font-weight: bold;
        }
        .style9
        {
            width: 100%;
        }
        .style15
        {
            width: 135px;
            height: 28px;
        }
        .style16
        {
            width: 206px;
            height: 28px;
        }
        .style17
        {
            width: 162px;
            font-weight: bold;
            height: 26px;
        }
        .style18
        {
            width: 206px;
            height: 26px;
        }
        .auto-style10 {
            width: 100%;
        }
        .auto-style11 {
            text-align: center;
        }
        .auto-style12 {
            height: 28px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-family: Arial, Helvetica, sans-serif">
        <table align="center" class="style1">
            <tr>
                <td class="auto-style4">
                    <h2>
                        LOGIN :</h2>
                </td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td rowspan="9" align="center">
                    <asp:Image ID="Image2" runat="server" Height="240px" 
                        ImageUrl="~/imgs/courier boy.png" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Username</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    Password</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    Login Type</td>
                <td class="auto-style7">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal">
                        <asp:ListItem>Admin</asp:ListItem>
                        <asp:ListItem>User</asp:ListItem>
                        <asp:ListItem>Branch</asp:ListItem>
                        <asp:ListItem>Agent</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style7">
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="LOGIN" 
                        Width="76px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style7">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style12">
                    </td>
                <td class="auto-style12">
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    </td>
                <td class="auto-style9">
                    </td>
                <td class="auto-style6">
                    </td>
            </tr>
            <tr>
                <td class="style5" colspan="3">
                    <table class="auto-style10">
                        <tr>
                            <td class="auto-style11">
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="110px" ImageUrl="~/imgs/about-us-icon.png" OnClick="ImageButton1_Click1" Width="109px" />
                            </td>
                            <td class="auto-style11">
                                <asp:ImageButton ID="ImageButton2" runat="server" Height="104px" ImageUrl="~/imgs/whyus-icons.png" OnClick="ImageButton2_Click1" Width="108px" />
                            </td>
                            <td class="auto-style11">
                                <asp:ImageButton ID="ImageButton3" runat="server" Height="105px" ImageUrl="~/imgs/services.png" OnClick="ImageButton3_Click1" Width="108px" />
                            </td>
                            <td class="auto-style11">
                                <asp:ImageButton ID="ImageButton4" runat="server" Height="100px" ImageUrl="~/imgs/TESTIMONIALS-512.png" OnClick="ImageButton4_Click1" Width="94px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style11">
                                <asp:LinkButton ID="LinkButton12" runat="server" Font-Underline="False" ForeColor="#3C6FA2" OnClick="LinkButton12_Click">About Us</asp:LinkButton>
                            </td>
                            <td class="auto-style11">
                                <asp:LinkButton ID="LinkButton13" runat="server" Font-Underline="False" ForeColor="#3C6FA2" OnClick="LinkButton13_Click">Why Us</asp:LinkButton>
                            </td>
                            <td class="auto-style11">
                                <asp:LinkButton ID="LinkButton14" runat="server" Font-Underline="False" ForeColor="#3C6FA2" OnClick="LinkButton14_Click">Services</asp:LinkButton>
                            </td>
                            <td class="auto-style11">
                                <asp:LinkButton ID="LinkButton15" runat="server" Font-Underline="False" ForeColor="#3C6FA2" OnClick="LinkButton15_Click">Testimonials</asp:LinkButton>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    &nbsp;</td>
                <td class="auto-style7">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </p>
</asp:Content>

