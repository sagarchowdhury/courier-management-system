<%@ Page Language="C#" MasterPageFile="~/branch master.master" AutoEventWireup="true" CodeFile="sentcouriers.aspx.cs" Inherits="sentcouriers" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 100%;
        }
        .style3
        {
            font-family: Arial, Helvetica, sans-serif;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
        <tr>
            <td class="style3">
                <h2 style="width: 291px">
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
                    ForeColor="#333333" GridLines="None">
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:BoundField DataField="Courier_Number" HeaderText="Courier_Number" 
                            ReadOnly="True" SortExpression="Courier_Number" />
                        <asp:BoundField DataField="Sender_Name" HeaderText="Sender_Name" 
                            SortExpression="Sender_Name" />
                        <asp:BoundField DataField="Reciever_Name" HeaderText="Reciever_Name" 
                            SortExpression="Reciever_Name" />
                        <asp:BoundField DataField="City_Name" HeaderText="Receiver city" 
                            SortExpression="City_Name" />
                        <asp:BoundField DataField="Date_Time" HeaderText="Date_Time" 
                            SortExpression="Date_Time" />
                        <asp:BoundField DataField="Status" HeaderText="Status" 
                            SortExpression="Status" />
                        <asp:BoundField DataField="finalcost" HeaderText="finalcost" 
                            SortExpression="finalcost" />
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
                    SelectCommand="SELECT addcourierdetails.Courier_Number, addcourierdetails.Sender_Name, addcourierdetails.Reciever_Name, addcourierdetails.R_City, addcourierdetails.Date_Time, addcourierdetails.Status, addcourierdetails.finalcost, Addcity.City_Name FROM addcourierdetails INNER JOIN Addcity ON addcourierdetails.R_City = Addcity.City_id WHERE (addcourierdetails.Branchun = @Branchun)">
                    <SelectParameters>
                        <asp:SessionParameter Name="Branchun" SessionField="un" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

