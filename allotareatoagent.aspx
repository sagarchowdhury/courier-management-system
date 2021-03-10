<%@ Page Title="" Language="C#" MasterPageFile="~/branch master.master" AutoEventWireup="true" CodeFile="allotareatoagent.aspx.cs" Inherits="allotareatoagent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 351px;
        }
        .auto-style4 {
            width: 247px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="auto-style1">
        <table class="style2">
            <tr>
                <td class="auto-style2">
                    <h2>Allot area to agent</h2>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2"><strong>Choose Agent</strong></td>
                <td class="auto-style4">
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="Agenrt_Name" DataValueField="Email">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Agent_Id], [Agenrt_Name], [Email] FROM [addagent] WHERE ([City] = @City)">
                        <SelectParameters>
                            <asp:SessionParameter Name="City" SessionField="cityid" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="This  field is Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2"><strong>Choose Area</strong></td>
                <td class="auto-style4">&nbsp;<asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Area_name" DataValueField="Area_id" Height="207px" SelectionMode="Multiple"></asp:ListBox>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [Area_id], [Area_name] FROM [Addarea] WHERE ([City_id] = @City_id)">
                        <SelectParameters>
                            <asp:SessionParameter Name="City_id" SessionField="cityid" Type="Decimal" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ListBox1" ErrorMessage="This  field is Required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Allot" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

