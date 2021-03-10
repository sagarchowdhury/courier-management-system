<%@ Page Title="" Language="C#" MasterPageFile="~/Agent.master" AutoEventWireup="true" CodeFile="deliveredcouriers.aspx.cs" Inherits="deliveredcouriers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <h2>Couriers for Delivery</h2>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td valign="top">Choose Date
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td align="left">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="CourierNo" HeaderText="CourierNo" SortExpression="CourierNo" />
                        <asp:BoundField DataField="Sender_Name" HeaderText="Sender_Name" SortExpression="Sender_Name" />
                        <asp:BoundField DataField="Reciever_Name" HeaderText="Reciever_Name" SortExpression="Reciever_Name" />
                        <asp:BoundField DataField="R_Address" HeaderText="R_Address" SortExpression="R_Address" />
                        <asp:BoundField DataField="R_Phone" HeaderText="R_Phone" SortExpression="R_Phone" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT agentcourier.CourierNo, addcourierdetails.Sender_Name, addcourierdetails.Reciever_Name, addcourierdetails.R_Address, addcourierdetails.R_Phone FROM agentcourier INNER JOIN addcourierdetails ON agentcourier.CourierNo = addcourierdetails.Courier_Number WHERE (agentcourier.AgentID = @AgentID) AND (agentcourier.AllotDate = @allotdate)">
                    <SelectParameters>
                        <asp:SessionParameter Name="AgentID" SessionField="un" Type="Decimal" />
                        <asp:ControlParameter ControlID="Calendar1" Name="allotdate" PropertyName="SelectedDate" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

