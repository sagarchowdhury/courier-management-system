<%@ Page Language="C#" MasterPageFile="~/branch master.master" AutoEventWireup="true" CodeFile="branchpannel.aspx.cs" Inherits="branchpannel" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 154px;
    }
    .style3
    {
        width: 214px;
    }
    .style4
    {
        width: 206px;
    }
    .style5
    {
        width: 253px;
    }
    .style6
    {
        width: 233px;
    }
    .style7
    {
        width: 309px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
    <tr>
        <td class="style6">
            <h2>
                BRANCH PAGES :</h2>
        </td>
        <td class="style7">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            <h2>
            </h2>
        </td>
        <td class="style7">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">Add Agent</asp:LinkButton>
        </td>
        <td class="style7">
            <asp:LinkButton ID="LinkButton3" runat="server" onclick="LinkButton3_Click">Add Area</asp:LinkButton>
        </td>
        <td>
            <asp:LinkButton ID="LinkButton4" runat="server" onclick="LinkButton4_Click">Add Courier Details</asp:LinkButton>
        </td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td class="style7">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            <h2>
            </h2>
        </td>
        <td class="style7">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

