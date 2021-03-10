<%@ Page Language="C#" MasterPageFile="~/branch master.master" AutoEventWireup="true" CodeFile="Addagents.aspx.cs" Inherits="Addagents" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 194px;
        }
    .style9
    {
        width: 24%;
    }
        .auto-style2 {
            width: 24%;
            text-align: left;
        }
    .auto-style3 {
        width: 353px;
    }
    .auto-style4 {
        width: 337px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1" 
    style="font-family: Arial, Helvetica, sans-serif">
        <tr>
            <td class="style9">
                <h2>
                ADD AGENT</h2>
            </td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style4">
                &nbsp;</td>
        </tr>
                    <tr>
                        <td class="style9" align="left">
                            Agent Name</td>
            <td align="left" class="auto-style3">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td align="left" class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="This is a required Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9" align="left">
                Email(Username)</td>
            <td align="left" class="auto-style3">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td align="left" class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="This is a required Field"></asp:RequiredFieldValidator>
                <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="TextBox2" ErrorMessage="Must Enter valid Email" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style9" align="left">
                Password</td>
            <td align="left" class="auto-style3">
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td align="left" class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="This is a required Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9" align="left">
                Gender</td>
            <td align="left" class="auto-style3">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td align="left" class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="This is a required Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9" align="left">
                Phone Number</td>
            <td align="left" class="auto-style3">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td align="left" class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox3" ErrorMessage="This is a required Field"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Plese enter correct format of Phone No" 
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style9" align="left">
                Address</td>
            <td align="left" class="auto-style3">
                <asp:TextBox ID="TextBox4" runat="server" ontextchanged="TextBox4_TextChanged" 
                    TextMode="MultiLine"></asp:TextBox>
            </td>
            <td align="left" class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox4" ErrorMessage="This is a required Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9" align="left">
                Image</td>
            <td style="margin-left: 40px" align="left" class="auto-style3">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td style="margin-left: 40px" align="left" class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="FileUpload1" ErrorMessage="This is a required Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                Commision</td>
            <td style="margin-left: 40px" align="left" class="auto-style3">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            </td>
            <td style="margin-left: 40px" align="left" class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox6" ErrorMessage="This is a required Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td style="margin-left: 40px" align="left" class="auto-style3">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Add agent" Width="106px" />
            </td>
            <td style="margin-left: 40px" align="left" class="auto-style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style9">
                &nbsp;</td>
            <td style="margin-left: 40px" align="left" class="auto-style3">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td style="margin-left: 40px" align="left" class="auto-style4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

