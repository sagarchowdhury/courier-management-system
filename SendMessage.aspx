<%@ Page Title="" Language="C#" MasterPageFile="~/Agent.master" AutoEventWireup="true" CodeFile="SendMessage.aspx.cs" Inherits="SendMessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 274px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Send Message To Branch</h2>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2"><strong>Courier Number</strong></td>
            <td>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><strong>Status</strong></td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Choose Status</asp:ListItem>
                    <asp:ListItem>Not Delivered</asp:ListItem>
                    <asp:ListItem>Delivered</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><strong>Reason</strong></td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="122px" TextMode="MultiLine" Width="256px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" Height="51px" OnClick="Button1_Click" Text="Send" Width="141px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

