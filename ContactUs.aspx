<%@ Page Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style10
    {
        width: 109px;
    }
    .style12
    {
        width: 109px;
        font-weight: bold;
    }
    .style13
    {
        width: 438px;
        font-weight: bold;
    }
    .style14
    {
        width: 438px;
        font-weight: bold;
        height: 23px;
    }
    .style15
    {
        width: 109px;
        height: 23px;
    }
    .style16
    {
        height: 23px;
    }
    .style17
    {
        width: 349px;
        font-weight: bold;
        height: 13px;
    }
    .style18
    {
        width: 109px;
        height: 13px;
    }
    .style19
    {
        height: 13px;
    }
        .style20
        {
            width: 109px;
        }
        .decoded
        {
            height: 304px;
            width: 361px;
        }
        .style21
        {
            width: 262px;
            height: 216px;
        }
        .style22
        {
            width: 349px;
            color: #6C8FBB;
            font-weight: normal;
        }
        .style23
        {
            width: 349px;
            font-weight: bold;
        }
        .style24
        {
            width: 349px;
            font-weight: bold;
            height: 23px;
        }
        .style25
        {
            width: 163px;
        }
        .style26
        {
            height: 13px;
            width: 163px;
        }
        .style27
        {
            height: 23px;
            width: 163px;
        }
        .auto-style1 {
            width: 349px;
            font-weight: bold;
            height: 27px;
        }
        .auto-style2 {
            width: 109px;
            height: 27px;
        }
        .auto-style3 {
            width: 163px;
            height: 27px;
        }
        .auto-style4 {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1" 
        style="font-family: Arial, Helvetica, sans-serif">
    <tr>
        <td class="style22">
            <h2>
                CONTACT US:</h2>
        </td>
        <td class="style10">
            &nbsp;</td>
        <td class="style25">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style22">
            &nbsp;</td>
        <td class="style10">
            &nbsp;</td>
        <td class="style25">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style23" align="center" rowspan="6">
            <img alt="" class="style21" src="imgs/ContactUs.png" /></td>
        <td align="left" class="style20">
            Name</td>
        <td class="style25">
            <b>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </b>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="TextBox1" ErrorMessage="This information is required"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td align="left" class="style20">
            E-mail id</td>
        <td class="style25">
            <b>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            </b>
            <br />
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="This information is required"></asp:RequiredFieldValidator>
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                ControlToValidate="TextBox2" ErrorMessage="Please check format" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr align="center">
        <td align="left" class="style20">
            Phone Number</td>
        <td align="left" class="style25">
            <b>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </b>
        </td>
        <td align="left">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TextBox3" ErrorMessage="This information is required"></asp:RequiredFieldValidator>
            <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Plese enter correct format of Phone No" 
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="style20">
            &nbsp;</td>
        <td class="style25">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr align="center">
        <td align="left" class="style20">
            Query:</td>
        <td align="left" class="style25">
           
            <asp:TextBox ID="TextBox4" runat="server" Height="139px" TextMode="MultiLine" 
                Width="234px"></asp:TextBox>
           
        </td>
        <td align="left">
           
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="TextBox4" ErrorMessage="This information is required"></asp:RequiredFieldValidator>
           
        </td>
    </tr>
    <tr align="center">
        <td align="left" class="style12">
            &nbsp;</td>
        <td align="left" class="style25">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Post Query" Width="111px" />
        </td>
        <td align="left">
            &nbsp;</td>
    </tr>
    <tr align="center">
        <td class="style22">
            &nbsp;</td>
        <td align="left" class="style10">
            &nbsp;</td>
        <td align="left" class="style25">
            <asp:Label ID="Label2" runat="server"></asp:Label>
        </td>
        <td align="left">
            &nbsp;</td>
    </tr>
    <tr align="center">
        <td class="style22">
            &nbsp;</td>
        <td align="left" class="style10">
            &nbsp;</td>
        <td align="left" class="style25">
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
    </tr>
    <tr align="center">
        <td class="style17">
        </td>
        <td align="left" class="style18">
        </td>
        <td align="left" class="style26">
            &nbsp;</td>
        <td align="left" class="style19">
            &nbsp;</td>
    </tr>
    <tr align="center">
        <td align="left" class="style23">
            &nbsp;</td>
        <td align="left" class="style10">
            &nbsp;</td>
        <td align="left" class="style25">
            FastTrack COURIERS PVT.LTD</td>
        <td align="left">
            &nbsp;</td>
    </tr>
    <tr align="center">
        <td align="left" class="style24">
            &nbsp;</td>
        <td align="left" class="style15">
        </td>
        <td class="style27" align="left">
            Chicago, City in Lllinois</td>
        <td class="style16" align="left">
            &nbsp;</td>
    </tr>
    <tr align="center">
        <td align="left" class="auto-style1">
            </td>
        <td align="left" class="auto-style2">
            </td>
        <td align="left" class="auto-style3">
            USA</td>
        <td align="left" class="auto-style4">
            </td>
    </tr>
    <tr align="center">
        <td align="left" class="style23">
            &nbsp;</td>
        <td align="left" class="style10">
            &nbsp;</td>
        <td align="left" class="style25">
            E-mail:- fasttrackouriers@gmail.com</td>
        <td align="left">
            &nbsp;</td>
    </tr>
    <tr align="center">
        <td align="left" class="style23">
            &nbsp;</td>
        <td align="left" class="style10">
            &nbsp;</td>
        <td align="left" class="style25">
            Ph- 1890452378</td>
        <td align="left">
            &nbsp;</td>
    </tr>
    <tr align="center">
        <td align="left" class="style23">
            &nbsp;</td>
        <td align="left" class="style10">
            &nbsp;</td>
        <td align="left" class="style25">
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
    </tr>
    <tr align="center">
        <td align="left" class="style23">
            &nbsp;</td>
        <td align="left" class="style10">
            &nbsp;</td>
        <td align="left" class="style25">
            &nbsp;</td>
        <td align="left">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

