<%@ Page Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="pickup request.aspx.cs" Inherits="pickup_request" Title="Untitled Page" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
        }
        .style3
        {
            width: 270px;
        }
        .style4
        {
            width: 215px;
            height: 29px;
            font-weight: bold;
        }
        .style5
        {
            width: 270px;
            height: 29px;
        }
        .style6
        {
            height: 29px;
        }
        .style7
        {
            width: 100%;
        }
        .style8
        {
            width: 279px;
            font-weight: bold;
        }
        .style9
        {
            width: 283px;
        }
        .style15
        {
            width: 215px;
            color: #275A9C;
            font-weight: bold;
        }
        .style16
        {
            width: 215px;
            font-weight: bold;
            color: #3333FF;
        }
        .style17
        {
            width: 215px;
            font-weight: bold;
            color: #3333FF;
            height: 74px;
        }
        .style18
        {
            width: 270px;
            height: 74px;
        }
        .style20
        {
            width: 211px;
            font-weight: bold;
            color: #3333FF;
        }
        .auto-style1 {
            width: 364px;
        }
        .auto-style2 {
            width: 364px;
            height: 29px;
        }
        .auto-style3 {
            width: 364px;
            height: 74px;
        }
        .auto-style4 {
            width: 215px;
            color: #275A9C;
            font-weight: bold;
            height: 28px;
        }
        .auto-style5 {
            width: 364px;
            height: 28px;
        }
        .auto-style6 {
            width: 270px;
            height: 28px;
        }
        .auto-style7 {
            width: 215px;
            font-weight: bold;
            color: #3333FF;
            height: 29px;
        }
        .auto-style8 {
            width: 215px;
            font-weight: bold;
            color: #3333FF;
            height: 58px;
        }
        .auto-style9 {
            width: 364px;
            height: 58px;
        }
        .auto-style10 {
            width: 270px;
            height: 58px;
        }
        .auto-style11 {
            width: 233px;
            font-weight: bold;
            color: #3333FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1" 
        style="font-family: Arial, Helvetica, sans-serif" bgcolor="#BCDCE7">
        <tr>
            <td class="style15">
                <h2>
                    PICKUP REQUEST</h2>
            </td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style4">
                </td>
            <td class="auto-style5">
                </td>
            <td class="auto-style6">
                </td>
        </tr>
        <tr>
            <td class="style16">
                Sender&#39;s Name</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
                Address</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                Phone Number</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Please enter phone no in correct forrmat" 
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                E-Mail</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox13" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
                <br />
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                ControlToValidate="TextBox13" ErrorMessage="Must Enter valid Email" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
        </tr>
        <tr>
            <td class="style16">
                State</td>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="State_name" 
                    DataValueField="State_id" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [State_id], [State_name] FROM [Addstate]">
                </asp:SqlDataSource>
            </td>
            <td class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
                City</td>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="City_Name" 
                    DataValueField="City_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [City_id], [City_Name] FROM [Addcity] WHERE ([State_id] = @State_id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="State_id" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList2" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style17">
                Area</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList3" runat="server" 
                    DataSourceID="SqlDataSource3" DataTextField="Area_name" 
                    DataValueField="Area_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Area_id], [Area_name] FROM [Addarea] WHERE (([City_id] = @City_id) AND ([State_id] = @State_id))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="City_id" 
                            PropertyName="SelectedValue" Type="Decimal" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="State_id" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style18">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList3" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                Receiver&#39;s Name</td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td class="style5">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox5" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
                Address</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox6" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
                Phone Number</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox7" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="Please enter phone no in correct format" 
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
                State</td>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList4" runat="server" 
                    DataSourceID="SqlDataSource4" DataTextField="State_name" 
                    DataValueField="State_id" AutoPostBack="True" 
                    onselectedindexchanged="DropDownList4_SelectedIndexChanged1">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [State_id], [State_name] FROM [Addstate]">
                </asp:SqlDataSource>
            </td>
            <td class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="DropDownList4" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
                City</td>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource8" DataTextField="City_Name" 
                    DataValueField="City_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource8" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [City_id], [City_Name] FROM [Addcity] WHERE ([State_id] = @State_id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList4" Name="State_id" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="DropDownList5" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
                Area</td>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList6" runat="server" 
                    DataSourceID="SqlDataSource6" DataTextField="Area_name" 
                    DataValueField="Area_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Area_id], [Area_name] FROM [Addarea] WHERE (([State_id] = @State_id) AND ([City_id] = @City_id))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList4" Name="State_id" 
                            PropertyName="SelectedValue" Type="Decimal" />
                        <asp:ControlParameter ControlID="DropDownList5" Name="City_id" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="DropDownList6" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                Type</td>
            <td class="auto-style9" align="left">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                    RepeatDirection="Horizontal">
                    <asp:ListItem>Document</asp:ListItem>
                    <asp:ListItem>Parcel</asp:ListItem>
                </asp:RadioButtonList>
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td class="auto-style10" align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Panel ID="Panel1" runat="server" Visible="False" Width="450px">
                    <table align="center" class="style7">
                        <tr>
                            <td class="auto-style11">
                                Weight(In KG)</td>
                            <td>
                                <asp:TextBox ID="TextBox11" runat="server" style="margin-left: 0px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style16">
                Final Cost</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox12" runat="server" ReadOnly="True"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Calculate Cost" Width="163px" CausesValidation="False" />
                <asp:Label ID="Label5" runat="server"></asp:Label>
            </td>
            <td class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox12" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                    Width="101px" />
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                &nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="Label3" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label4" runat="server"></asp:Label>
            </td>
            <td class="style3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

