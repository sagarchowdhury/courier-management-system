<%@ Page Language="C#" MasterPageFile="~/branch master.master" AutoEventWireup="true" CodeFile="add courier details.aspx.cs" Inherits="add_courier_details" Title="Untitled Page" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 283px;
        }
        .style3
        {
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style4
        {
            font-family: Arial, Helvetica, sans-serif;
        }
        .style5
        {
            width: 283px;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style6
        {
            width: 243px;
        }
        .style7
        {
            width: 100%;
        }
        .style8
        {
            width: 281px;
        }
        .style10
        {
            width: 259px;
        }
        .style11
        {
            width: 259px;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style12
        {
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
            width: 259px;
        }
        .auto-style4 {
            width: 575px;
        }
        .auto-style5 {
            width: 336px;
        }
        .auto-style6 {
            margin-left: 55px;
        }
        .auto-style7 {
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            width: 255px;
        }
        .auto-style10 {
            width: 319px;
        }
        .auto-style12 {
            margin-left: 127px;
        }
        .auto-style13 {
            width: 116px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td class="style10">
                <h3 class="style4">
                    ADD COURIER DETAILS:</h3>
            </td>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12" align="left">
                Courier Number</td>
            <td class="style4" align="left">
                <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
            </td>
            <td class="style4" align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox11" ErrorMessage="This is a required field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style11" align="left">
                &nbsp;</td>
            <td class="style4" align="left">
                &nbsp;</td>
            <td class="style4" align="left">
                &nbsp;</td>
        </tr>
        <tr bgcolor="#CCCCCC">
            <td class="style12" align="left">
                Sender&#39;s Information</td>
            <td class="style4" align="left">
                &nbsp;</td>
            <td class="style4" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12" align="left">
                &nbsp;</td>
            <td class="style4" align="left">
                &nbsp;</td>
            <td class="style4" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12" align="left">
                Sender&#39;s Name</td>
            <td class="style4" align="left">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="style4" align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="This is a required field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style12" align="left">
                Full
                Address</td>
            <td class="style4" align="left">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Height="81px" Width="226px"></asp:TextBox>
            </td>
            <td class="style4" align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="This is a required field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style12" align="left">
                Phone</td>
            <td class="style4" align="left">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td class="style4" align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" ErrorMessage="This is a required field"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Plese enter correct format of Phone No" 
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style12" align="left">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7" align="left" colspan="3">
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style13">&nbsp;Booked By</td>
                        <td align="left">
                            <asp:RadioButtonList ID="RadioButtonList2" runat="server" AutoPostBack="True" CssClass="auto-style12" OnSelectedIndexChanged="RadioButtonList2_SelectedIndexChanged" RepeatDirection="Horizontal">
                                <asp:ListItem>Self</asp:ListItem>
                                <asp:ListItem>Agent</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <asp:Panel ID="Panel2" runat="server" Visible="False">
                                <table class="auto-style8">
                                    <tr>
                                        <td bgcolor="#CCCCCC" class="auto-style9">Choose Agent</td>
                                        <td bgcolor="#CCCCCC" class="auto-style10">&nbsp;</td>
                                        <td bgcolor="#CCCCCC">&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">&nbsp;</td>
                                        <td class="auto-style10">&nbsp;</td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">Area</td>
                                        <td class="auto-style10"><span class="style4">
                                            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="Area_name" DataValueField="Area_id" style="font-family: Arial, Helvetica, sans-serif">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Area_id], [Area_name], [City_id], [State_id] FROM [Addarea] WHERE (([City_id] = @City_id))">
                                                <SelectParameters>
                                                    <asp:SessionParameter Name="City_id" SessionField="cityid" Type="Decimal" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                            </span></td>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">Agent Name</td>
                                        <td class="auto-style10">
                                            <asp:DropDownList ID="DropDownList7" runat="server" DataSourceID="SqlDataSource7" DataTextField="Agenrt_Name" DataValueField="Email">
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource7" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Email], [Agenrt_Name], [City], [State] FROM [addagent] WHERE (([State] = @State) AND ([City] = @City))">
                                                <SelectParameters>
                                                    <asp:SessionParameter Name="State" SessionField="stateid" Type="String" />
                                                    <asp:SessionParameter Name="City" SessionField="cityid" Type="String" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </td>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style12" align="left">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
            <td align="left">
                &nbsp;</td>
        </tr>
        <tr bgcolor="#CCCCCC">
            <td class="style12" align="left">
                Receiver&#39;s Information</td>
            <td class="style4" align="left">
                &nbsp;</td>
            <td class="style4" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12" align="left">
                &nbsp;</td>
            <td class="style4" align="left">
                &nbsp;</td>
            <td class="style4" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style12" align="left">
                Reciever&#39;s Name</td>
            <td class="style4" align="left">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td class="style4" align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="This is a required field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style12" align="left">
                Full
                Address</td>
            <td class="style4" align="left">
                <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine" 
                    ontextchanged="TextBox6_TextChanged" Height="82px" Width="233px"></asp:TextBox>
            </td>
            <td class="style4" align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox6" ErrorMessage="This is a required field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style12" align="left">
                Phone</td>
            <td class="style4" align="left">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td class="style4" align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox7" ErrorMessage="This is a required field"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="Plese enter correct format of Phone No" 
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style12" align="left">
                State</td>
            <td align="left">
                <span class="style4">
                <asp:DropDownList ID="DropDownList4" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource4" DataTextField="State_name" 
                    DataValueField="State_id" 
                    style="font-family: Arial, Helvetica, sans-serif" 
                    onselectedindexchanged="DropDownList4_SelectedIndexChanged">
                </asp:DropDownList>
                </span>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [State_id], [State_name] FROM [Addstate]">
                </asp:SqlDataSource>
            </td>
            <td align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="DropDownList4" ErrorMessage="This is a required field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style12" align="left">
                City</td>
            <td align="left">
                <span class="style4">
                <asp:DropDownList ID="DropDownList5" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource5" DataTextField="City_Name" 
                    DataValueField="City_id" style="font-family: Arial, Helvetica, sans-serif">
                </asp:DropDownList>
                </span>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [City_id], [City_Name], [State_id] FROM [Addcity] WHERE ([State_id] = @State_id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList4" Name="State_id" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="DropDownList5" ErrorMessage="This is a required field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style12" align="left">
                Area</td>
            <td align="left">
                <span class="style4">
                <asp:DropDownList ID="DropDownList6" runat="server" 
                    DataSourceID="SqlDataSource6" DataTextField="Area_name" 
                    DataValueField="Area_id" style="font-family: Arial, Helvetica, sans-serif">
                </asp:DropDownList>
                </span>
                <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT [Area_id], [Area_name], [City_id], [State_id] FROM [Addarea] WHERE (([State_id] = @State_id2) AND ([City_id] = @City_id))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList4" Name="State_id2" 
                            PropertyName="SelectedValue" Type="Decimal" />
                        <asp:ControlParameter ControlID="DropDownList5" Name="City_id" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="DropDownList6" ErrorMessage="This is a required field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style12" align="left">
                Type</td>
            <td class="style6" align="left">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                    RepeatDirection="Horizontal" AutoPostBack="True" 
                    onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                    style="font-family: Arial, Helvetica, sans-serif">
                    <asp:ListItem>Document</asp:ListItem>
                    <asp:ListItem>Parcel</asp:ListItem>
                </asp:RadioButtonList>
            </td>
            <td class="style4" align="left">
                <asp:Label ID="Label3" runat="server"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="This is a required field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="2" align="left">
                <asp:Panel ID="Panel1" runat="server" Visible="False" Width="288px">
                    <table class="auto-style4">
                        <tr>
                            <td class="style8">
                                Weight</td>
                            <td class="auto-style5">
                                <asp:TextBox ID="TextBox10" runat="server" 
                                    ontextchanged="TextBox10_TextChanged" CssClass="auto-style6" Width="282px"></asp:TextBox>
                            </td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
            <td class="style4" align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox10" ErrorMessage="This is a required field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style12" align="left">
                Final Cost</td>
            <td class="style4" colspan="2" align="left">
                <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                    Text="Calculate Final Cost" CausesValidation="False" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox12" ErrorMessage="This is a required field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style11" align="left">
                &nbsp;</td>
            <td class="style4" colspan="2" align="left">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                    Width="105px" />
            </td>
        </tr>
        <tr>
            <td class="style11">
                &nbsp;</td>
            <td class="style4" colspan="2">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
&nbsp; 
</asp:Content>

