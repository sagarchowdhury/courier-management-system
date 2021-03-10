<%@ Page Title="" Language="C#" MasterPageFile="~/branch master.master" AutoEventWireup="true" CodeFile="AllocateTOAgent.aspx.cs" Inherits="AllocateTOAgent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 336px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="right" class="style2">
        <tr>
            <td class="auto-style1" colspan="2">
                <h2>Allocate Courier To Agent</h2>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">Choose Agent</td>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Agenrt_Name" DataValueField="AgentID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT allotarea.AgentID, addagent.Agenrt_Name FROM allotarea INNER JOIN addagent ON allotarea.AgentID = addagent.Email WHERE (allotarea.AreaID = @AreaID)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="AreaID" QueryStringField="arid" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Allocate" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

