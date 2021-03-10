<%@ Page Language="C#" MasterPageFile="~/Agent.master" AutoEventWireup="true" CodeFile="sentcouriersagent.aspx.cs" Inherits="sentcouriersagent" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 100%;
        font-family: Arial, Helvetica, sans-serif;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
    <tr>
        <td>
            <h2>
                Couriers sent by you</h2>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="Courier_Number" DataSourceID="SqlDataSource1" 
                ForeColor="#333333" GridLines="None" 
                style="font-family: Arial, Helvetica, sans-serif">
                <RowStyle BackColor="#EFF3FB" />
                <Columns>
                    <asp:BoundField DataField="Courier_Number" HeaderText="Courier_Number" ReadOnly="True" SortExpression="Courier_Number" />
                    <asp:BoundField DataField="Sender_Name" HeaderText="Sender_Name" SortExpression="Sender_Name" />
                    <asp:BoundField DataField="Reciever_Name" HeaderText="Reciever_Name" SortExpression="Reciever_Name" />
                    <asp:BoundField DataField="City_Name" HeaderText="R_City" 
                        SortExpression="City_Name" />
                    <asp:BoundField DataField="finalcost" HeaderText="finalcost" SortExpression="finalcost" />
                </Columns>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
            <br />
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                onselected="SqlDataSource1_Selected" 
                SelectCommand="SELECT addcourierdetails.Courier_Number, addcourierdetails.Sender_Name, addcourierdetails.Reciever_Name, addcourierdetails.Status, addcourierdetails.finalcost, Addcity.City_Name FROM addcourierdetails INNER JOIN Addcity ON addcourierdetails.R_City = Addcity.City_id WHERE (addcourierdetails.Agent_Username = @Agent_Username)">
                <SelectParameters>
                    <asp:SessionParameter Name="Agent_Username" SessionField="un" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

