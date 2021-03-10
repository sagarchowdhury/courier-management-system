<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="addcost.aspx.cs" Inherits="addcost" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 264px;
        }
        .auto-style1 {
            width: 270px;

        }
        .auto-style2 {
            width: 264px;
            color: #060E89;
            height: 67px;
        }
        .auto-style3 {
            width: 270px;
            height: 67px;
        }
        .auto-style4 {
            height: 67px;
        }
        .auto-style5 {
            color: #060E89;
            text-align: left;
        }
        .auto-style6 {
            width: 264px;
            color: #060E89;
            height: 26px;
        }
        .auto-style7 {
            width: 270px;
            height: 26px;
        }
        .auto-style8 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td class="style2">
                <h2>ADD COST</h2>
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
            <td class="auto-style2">
                Source state</td>
            <td class="auto-style3">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="State_name" 
                    DataValueField="State_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [State_id], [State_name] FROM [Addstate]">
                </asp:SqlDataSource>
            </td>
            <td class="auto-style4">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="This field is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Destination State</td>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList2" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="State_name" 
                    DataValueField="State_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [State_id], [State_name] FROM [Addstate]">
                </asp:SqlDataSource>
            &nbsp;</td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList2" ErrorMessage="This field is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                Type</td>
            <td class="auto-style7">
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="t" 
                    Text="Document" />
&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="t" Text="Parcel" />
            </td>
            <td class="auto-style8">
                </td>
        </tr>
        <tr>
            <td class="style2">
                Cost</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox1" ErrorMessage="This field is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                    Text="ADD COST" Width="91px" style="height: 29px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
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
            <td class="auto-style5" colspan="3">
                <h2>Update/Delete Cost</h2> </td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5" colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource3" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
                        <asp:BoundField DataField="Cost" HeaderText="Cost" SortExpression="Cost" />
                        <asp:CommandField CausesValidation="False" HeaderText="Update/Delete" ShowDeleteButton="True" ShowEditButton="True" />
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
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [addcost] WHERE [id] = @original_id " InsertCommand="INSERT INTO [addcost] ([Source_State], [Destination_State], [Type], [Cost]) VALUES (@Source_State, @Destination_State, @Type, @Cost)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [Source_State], [Destination_State], [Type], [Cost], [id] FROM [addcost] WHERE (([Source_State] = @Source_State) AND ([Destination_State] = @Destination_State))" UpdateCommand="UPDATE [addcost] SET  [Cost] = @Cost WHERE [id] = @original_id ">
                    <DeleteParameters>
                        <asp:Parameter Name="original_id" Type="Decimal" />
                        <asp:Parameter Name="original_Source_State" Type="String" />
                        <asp:Parameter Name="original_Destination_State" Type="String" />
                        <asp:Parameter Name="original_Type" Type="String" />
                        <asp:Parameter Name="original_Cost" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Source_State" Type="String" />
                        <asp:Parameter Name="Destination_State" Type="String" />
                        <asp:Parameter Name="Type" Type="String" />
                        <asp:Parameter Name="Cost" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="Source_State" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="Destination_State" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Source_State" Type="String" />
                        <asp:Parameter Name="Destination_State" Type="String" />
                        <asp:Parameter Name="Type" Type="String" />
                        <asp:Parameter Name="Cost" Type="String" />
                        <asp:Parameter Name="original_id" Type="Decimal" />
                        <asp:Parameter Name="original_Source_State" Type="String" />
                        <asp:Parameter Name="original_Destination_State" Type="String" />
                        <asp:Parameter Name="original_Type" Type="String" />
                        <asp:Parameter Name="original_Cost" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

