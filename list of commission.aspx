<%@ Page Language="C#" MasterPageFile="~/Agent.master" AutoEventWireup="true" CodeFile="list of commission.aspx.cs" Inherits="list_of_commission" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 155px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1" 
        style="font-family: Arial, Helvetica, sans-serif">
    <tr>
        <td class="style2">
            <h2>
                COMMISSION</h2>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="4" DataKeyNames="CommID" 
                DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <Columns>
                    <asp:BoundField DataField="CourierNo" HeaderText="CourierNo" 
                        SortExpression="CourierNo" />
                    <asp:BoundField DataField="AgentUserName" HeaderText="AgentUserName" 
                        SortExpression="AgentUserName" />
                    <asp:BoundField DataField="CommAmt" HeaderText="CommAmt" 
                        SortExpression="CommAmt" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" 
                    HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Bold="True" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <br />
            <b>Total Commission Earned :-</b>
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label3" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                SelectCommand="SELECT * FROM [addcomm] WHERE ([AgentUserName] = @AgentUserName)" OnSelected="SqlDataSource1_Selected">
                <SelectParameters>
                    <asp:SessionParameter Name="AgentUserName" SessionField="un" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

