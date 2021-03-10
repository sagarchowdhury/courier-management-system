<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Addcity.aspx.cs" Inherits="Addcity" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 152px;
        }
        .auto-style1 {
            width: 301px;
        }
        .auto-style2 {
            color: #060E89;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td class="style2">
                <h2>
                    <strong>ADD CITY</strong></h2>
            </td>
            <td class="auto-style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="auto-style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                Choose state</td>
            <td align="left" class="auto-style1">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="State_name" 
                    DataValueField="State_id" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [State_id], [State_name] FROM [Addstate]">
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                City Name</td>
            <td align="left" class="auto-style1">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td align="left" class="auto-style1">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add City" 
                    Width="104px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td align="left" class="auto-style1">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td align="left" class="auto-style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="3">
                <h2>Update/Delete City</h2>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2" colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="City_id" DataSourceID="SqlDataSource2" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="City_Name" HeaderText="City_Name" SortExpression="City_Name" />
                        <asp:CommandField HeaderText="Update/Delete" ShowDeleteButton="True" ShowEditButton="True" />
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
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Addcity] WHERE [City_id] = @original_City_id" InsertCommand="INSERT INTO [Addcity] ([City_Name], [State_id]) VALUES (@City_Name, @State_id)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [City_id], [City_Name], [State_id] FROM [Addcity] WHERE ([State_id] = @State_id)" UpdateCommand="UPDATE [Addcity] SET [City_Name] = @City_Name WHERE [City_id] = @original_City_id">
                    <DeleteParameters>
                        <asp:Parameter Name="original_City_id" Type="Decimal" />
                        <asp:Parameter Name="original_City_Name" Type="String" />
                        <asp:Parameter Name="original_State_id" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="City_Name" Type="String" />
                        <asp:Parameter Name="State_id" Type="Decimal" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="State_id" PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="City_Name" Type="String" />
                        <asp:Parameter Name="State_id" Type="Decimal" />
                        <asp:Parameter Name="original_City_id" Type="Decimal" />
                        <asp:Parameter Name="original_City_Name" Type="String" />
                        <asp:Parameter Name="original_State_id" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

