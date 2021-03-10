<%@ Page Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 519px;
        }
        .style3
        {
            width: 322px;
            color: #060E89;
        }
        .style4
        {
            width: 322px;
            color: #060E89;
            font-weight: bold;
        }
        .style15
        {
            width: 322px;
        }
        .style16
        {
            width: 415px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1" 
        style="font-family: Arial, Helvetica, sans-serif">
        <tr>
            <td class="style15" align="left">
                <h2>
                    FEEDBACK:</h2>
            </td>
            <td class="style16">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4" align="left">
                Name</td>
            <td align="left" class="style16">
                <asp:TextBox ID="TextBox2" runat="server" ontextchanged="TextBox2_TextChanged"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Name is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" align="left">
                E-Mail</td>
            <td align="left" class="style16">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Email is required"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Please check format" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" align="left">
                Phone.No.</td>
            <td align="left" class="style16">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Name is required"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox4" ErrorMessage="Not in correct Format" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" align="left">
                1.How do you rate our website overall?</td>
            <td align="left" class="style16">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Bad</asp:ListItem>
                    <asp:ListItem>Average</asp:ListItem>
                    <asp:ListItem>Good</asp:ListItem>
                    <asp:ListItem>Very good</asp:ListItem>
                    <asp:ListItem>Excellent</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="RadioButtonList1" 
                    ErrorMessage="This information is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" align="left">
                2.How do you rate design of our website?</td>
            <td align="left" class="style16">
                <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Bad</asp:ListItem>
                    <asp:ListItem>Average</asp:ListItem>
                    <asp:ListItem>Good</asp:ListItem>
                    <asp:ListItem>Very good</asp:ListItem>
                    <asp:ListItem>Excellent</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="RadioButtonList2" 
                    ErrorMessage="This information is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" align="left">
                3.How is our service?</td>
            <td align="left" class="style16">
                <asp:RadioButtonList ID="RadioButtonList3" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Bad</asp:ListItem>
                    <asp:ListItem>Average</asp:ListItem>
                    <asp:ListItem>Good</asp:ListItem>
                    <asp:ListItem>Very good</asp:ListItem>
                    <asp:ListItem>Excellent</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="RadioButtonList3" 
                    ErrorMessage="This information is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" align="left">
                4.Is information provide on our website enough?</td>
            <td align="left" class="style16">
                <asp:RadioButtonList ID="RadioButtonList4" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="RadioButtonList4" 
                    ErrorMessage="This information is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" align="left">
                5.Is our website user friendly?</td>
            <td align="left" class="style16">
                <asp:RadioButtonList ID="RadioButtonList5" runat="server" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Yes</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="RadioButtonList5" 
                    ErrorMessage="This information is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4" align="left">
                6.
                Any Suggestions?</td>
            <td align="left" class="style16">
                <asp:TextBox ID="TextBox1" runat="server" Height="140px" 
                    ontextchanged="TextBox1_TextChanged" TextMode="MultiLine" Width="339px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15" align="left">
                &nbsp;</td>
            <td align="left" class="style16">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Send Feedback" Width="146px" />
                </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;</td>
            <td align="left" class="style16">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td class="style16">
                </td>
            <td>
                </td>
        </tr>
    </table>
</asp:Content>

