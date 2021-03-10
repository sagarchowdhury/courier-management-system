<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="adminpannel.aspx.cs" Inherits="adminpannel" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p style="font-family: Arial, Helvetica, sans-serif">
        <table class="style3">
            <tr>
                <td align="left">
                    Welcome Admin, here you can manage whole site. Please use the links above to 
                    manage.</td>
            </tr>
        </table>
    </p>
</asp:Content>

