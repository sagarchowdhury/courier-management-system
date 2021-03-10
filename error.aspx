<%@ Page Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="error.aspx.cs" Inherits="error" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style15
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style15">
        <tr>
            <td>
                Please login to access this page. Click
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/home.aspx">here</asp:HyperLink>
&nbsp;to login.<br />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

