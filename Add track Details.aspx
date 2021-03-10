<%@ Page Language="C#" MasterPageFile="~/branch master.master" AutoEventWireup="true" CodeFile="Add track Details.aspx.cs" Inherits="Add_track_Details" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 358px;
        }
    .style9
    {
        width: 167px;
        font-family: Arial, Helvetica, sans-serif;
    }
    .style10
    {
        width: 167px;
        font-weight: bold;
        font-family: Arial, Helvetica, sans-serif;
    }
    .style11
    {
        font-family: Arial, Helvetica, sans-serif;
    }
    .style12
    {
        font-family: Arial, Helvetica, sans-serif;
        font-weight: bold;
    }
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            width: 230px;
        }
        .auto-style6 {
            width: 238px;
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style7 {
            width: 238px;
            font-weight: bold;
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style8 {
            width: 230px;
            height: 67px;
        }
        .auto-style9 {
            height: 67px;
        }
    .auto-style10 {
        width: 238px;
        font-weight: bold;
        font-family: Arial, Helvetica, sans-serif;
        height: 34px;
    }
    .auto-style11 {
        font-family: Arial, Helvetica, sans-serif;
        font-weight: bold;
        height: 34px;
    }
    .auto-style12 {
        width: 390px;
    }
    .auto-style13 {
        height: 67px;
        width: 416px;
    }
    .auto-style14 {
        font-family: Arial, Helvetica, sans-serif;
        font-weight: bold;
        margin-left: 40px;
    }
    .auto-style15 {
        width: 416px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td class="style11" colspan="2">
                <h2 class="style11">
                    ADD TRACKING DETAILS</h2>
            </td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
            <td class="style11">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7" align="left">
                CourierNumber</td>
            <td class="style12" align="left">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style14" align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="This is  a required Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" align="left">
                Location</td>
            <td class="style12" align="left">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td class="style12" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10" align="left">
                Status</td>
            <td class="auto-style11" align="left">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="163px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>In Transit</asp:ListItem>
                    <asp:ListItem>Arrived</asp:ListItem>
                    <asp:ListItem>Arrived at Destination</asp:ListItem>
                    <asp:ListItem>Dispatched to Next Station</asp:ListItem>
                    <asp:ListItem>Not Delivered</asp:ListItem>
                    <asp:ListItem>Out for Delivery</asp:ListItem>
                    <asp:ListItem>Delivered</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style11" align="left">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="This is  a required Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style7" align="left">
                Reason</td>
            <td class="style12" align="left">
                                <asp:TextBox ID="TextBox2" runat="server" Height="109px" TextMode="MultiLine" Width="260px"></asp:TextBox>
            </td>
            <td class="style12" align="left">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="This is  a required Field"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style12" align="left" colspan="3">
                <asp:Panel ID="Panel1" runat="server" Visible="False">
                    <table class="auto-style1">
                        <tr>
                            <td align="left" class="auto-style3">&nbsp;</td>
                            <td class="auto-style15">
                                &nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td align="left" class="auto-style8">Choose Area</td>
                            <td class="auto-style13">
                                <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="Area_name" DataValueField="Area_id">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Area_id], [Area_name] FROM [Addarea] WHERE ([City_id] = @City_id)">
                                    <SelectParameters>
                                        <asp:SessionParameter Name="City_id" SessionField="cityid" Type="Decimal" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                            <td class="auto-style9">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList3" ErrorMessage="This is  a required Field"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td align="left" class="auto-style3">Choose Agent</td>
                            <td class="auto-style15">
                                <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="Agenrt_Name" DataValueField="Email">
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT allotarea.AgentID, addagent.Agenrt_Name, addagent.Email FROM allotarea INNER JOIN addagent ON allotarea.AgentID = addagent.Email WHERE (allotarea.AreaID = @areaid)">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="DropDownList3" Name="areaid" PropertyName="SelectedValue" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList2" ErrorMessage="This is  a required Field"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td class="style12" align="left" colspan="2">
                &nbsp;</td>
            <td class="style12" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style7">
                &nbsp;</td>
            <td class="style12" align="left">
                <strong>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                </strong>
            </td>
            <td class="style12" align="left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="style11" align="left">
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
            <td class="style11" align="left">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

