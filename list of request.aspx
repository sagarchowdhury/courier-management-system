<%@ Page Language="C#" MasterPageFile="~/branch master.master" AutoEventWireup="true" CodeFile="list of request.aspx.cs" Inherits="list_of_request" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        width: 904px;
    }
    .style3
    {
        width: 886px;
    }
    .style5
    {
        width: 865px;
    }
    .style6
    {
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1" 
        style="font-family: Arial, Helvetica, sans-serif">
    <tr>
        <td class="style6">
            <h2>
            LIST OF PICK UP REQUEST</h2>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style6" colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" DataKeyNames="Orderid" DataSourceID="SqlDataSource2" 
                ForeColor="#333333" GridLines="None" style="font-size: medium">
                <RowStyle BackColor="#EFF3FB" />
                <Columns>
                    <asp:BoundField DataField="Senders_Name" HeaderText="Senders_Name" 
                        SortExpression="Senders_Name" />
                    <asp:BoundField DataField="State_name" HeaderText="State_name" 
                        SortExpression="State_name" />
                    <asp:BoundField DataField="City_Name" HeaderText="City_Name" 
                        SortExpression="City_Name" />
                    <asp:BoundField DataField="Area_name" HeaderText="Area_name" 
                        SortExpression="Area_name" />
                    <asp:BoundField DataField="S_Address" HeaderText="S_Address" 
                        SortExpression="S_Address" />
                    <asp:BoundField DataField="S_email" HeaderText="S_email" 
                        SortExpression="S_email" />
                    <asp:BoundField DataField="S_Phone" HeaderText="S_Phone" 
                        SortExpression="S_Phone" />
                    <asp:BoundField DataField="Type" HeaderText="Type" 
                        SortExpression="Type" />
                    <asp:BoundField DataField="Weight" HeaderText="Weight" 
                        SortExpression="Weight" />
                    <asp:BoundField DataField="dateofrequest" HeaderText="dateofrequest" 
                        SortExpression="dateofrequest" />
                    <asp:BoundField DataField="finalcost" HeaderText="finalcost" 
                        SortExpression="finalcost" />
                    <asp:HyperLinkField DataNavigateUrlFields="Orderid,s_area" DataNavigateUrlFormatString="AllocateTOAgent.aspx?oid={0}&amp;arid={1}" HeaderText="Allocate To Agent" Text="Allocate" />
                </Columns>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                SelectCommand="SELECT pickupreq.Orderid, pickupreq.Senders_Name, pickupreq.S_Address, pickupreq.S_email, pickupreq.S_Phone, pickupreq.Type, pickupreq.Weight, pickupreq.dateofrequest, pickupreq.finalcost, Addcity.City_Name, Addarea.Area_name, Addstate.State_name, pickupreq.S_Area FROM Addstate INNER JOIN pickupreq ON Addstate.State_id = pickupreq.S_State INNER JOIN Addarea ON pickupreq.S_Area = Addarea.Area_id INNER JOIN Addcity ON pickupreq.S_City = Addcity.City_id WHERE (pickupreq.S_City = @cityid) AND (pickupreq.S_State = @stateid) ORDER BY pickupreq.dateofrequest DESC" OnSelected="SqlDataSource2_Selected">
                <SelectParameters>
                    <asp:SessionParameter Name="cityid" SessionField="cityid" />
                    <asp:SessionParameter Name="stateid" SessionField="stateid" />
                </SelectParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style6" colspan="2">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

