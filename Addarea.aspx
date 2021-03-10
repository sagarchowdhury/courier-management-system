<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Addarea.aspx.cs" Inherits="Addarea" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 195px;
        }
        .auto-style1 {
            width: 338px;
        }
        .auto-style3 {
            color: #060E89;
            text-align: left;
        }
        .auto-style4 {
            color: #060E89;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td class="style2">
                <h2>ADD AREA</h2></td>
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
                State name</td>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="State_name" 
                    DataValueField="State_id" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    SelectCommand="SELECT * FROM [Addstate]">
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                City name</td>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="City_Name" 
                    DataValueField="City_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [City_id], [City_Name] FROM [Addcity] WHERE ([State_id] = @State_id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="State_id" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList2" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Area name</td>
            <td style="margin-left: 80px" class="auto-style1">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td style="margin-left: 80px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox1" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td style="margin-left: 80px" class="auto-style1">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Add area" 
                    Width="117px" />
            </td>
            <td style="margin-left: 80px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td style="margin-left: 80px" class="auto-style1">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td style="margin-left: 80px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td style="margin-left: 80px" class="auto-style1">
                &nbsp;</td>
            <td style="margin-left: 80px">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="3">
                <h2>Update/Delete Area</h2>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Area_id" DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Area_name" HeaderText="Area_name" SortExpression="Area_name" />
                        <asp:CommandField CausesValidation="False" ShowDeleteButton="True" ShowEditButton="True" />
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
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Addarea] WHERE [Area_id] = @Area_id" InsertCommand="INSERT INTO [Addarea] ([Area_name], [City_id], [State_id]) VALUES (@Area_name, @City_id, @State_id)" SelectCommand="SELECT [Area_id], [Area_name], [City_id], [State_id] FROM [Addarea] WHERE (([City_id] = @City_id) AND ([State_id] = @State_id))" UpdateCommand="UPDATE [Addarea] SET [Area_name] = @Area_name  WHERE [Area_id] = @Area_id">
                    <DeleteParameters>
                        <asp:Parameter Name="Area_id" Type="Decimal" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Area_name" Type="String" />
                        <asp:Parameter Name="City_id" Type="Decimal" />
                        <asp:Parameter Name="State_id" Type="Decimal" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList2" Name="City_id" PropertyName="SelectedValue" Type="Decimal" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="State_id" PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Area_name" Type="String" />
                        <asp:Parameter Name="City_id" Type="Decimal" />
                        <asp:Parameter Name="State_id" Type="Decimal" />
                        <asp:Parameter Name="Area_id" Type="Decimal" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style3" colspan="3">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

