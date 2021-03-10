<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="delbranch.aspx.cs" Inherits="delbranch" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 114%;
            font-family: Arial, Helvetica, sans-serif;
        }
        .style9
    {
        width: 230px;
        font-weight: bold;
    }
    .style10
    {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
        <tr>
            <td>
                <table class="style2">
                    <tr>
                        <td class="style10">
                            <h2>
                                Delete Branch</h2>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Choose State</td>
                        <td align="left">
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                                DataSourceID="SqlDataSource1" DataTextField="State_name" 
                                DataValueField="State_id">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [Addstate]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="style9">
                            Choose City</td>
                        <td align="left">
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
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
                    </tr>
                    <tr>
                        <td class="style10" align="left" colspan="2">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                CellPadding="4" DataKeyNames="Branch_id" DataSourceID="SqlDataSource3" 
                                ForeColor="#333333" GridLines="None">
                                <RowStyle BackColor="#EFF3FB" />
                                <Columns>
                                    <asp:BoundField DataField="Branch_Name" HeaderText="Branch_Name" 
                                        SortExpression="Branch_Name" />
                                    <asp:BoundField DataField="Manager_Name" HeaderText="Manager_Name" 
                                        SortExpression="Manager_Name" />
                                    <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" 
                                        SortExpression="Phone_Number" />
                                    <asp:BoundField DataField="Address" HeaderText="Address" 
                                        SortExpression="Address" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                    <asp:CommandField ButtonType="Image" DeleteImageUrl="~/imgs/delete_icon.gif" 
                                        HeaderText="Delete" ShowDeleteButton="True" />
                                </Columns>
                                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                <EditRowStyle BackColor="#2461BF" />
                                <AlternatingRowStyle BackColor="White" />
                            </asp:GridView>
                            <asp:Label ID="Label2" runat="server"></asp:Label>
                            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                                ConflictDetection="CompareAllValues" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                DeleteCommand="DELETE FROM [addbranch] WHERE [Branch_id] = @original_Branch_id" 
                                InsertCommand="INSERT INTO [addbranch] ([Branch_Name], [Manager_Name], [Phone_Number], [Address], [Email]) VALUES (@Branch_Name, @Manager_Name, @Phone_Number, @Address, @Email)" 
                                OldValuesParameterFormatString="original_{0}" 
                                SelectCommand="SELECT [Branch_id], [Branch_Name], [Manager_Name], [Phone_Number], [Address], [Email] FROM [addbranch] WHERE (([State] = @State) AND ([City] = @City))" 
                                UpdateCommand="UPDATE [addbranch] SET [Branch_Name] = @Branch_Name, [Manager_Name] = @Manager_Name, [Phone_Number] = @Phone_Number, [Address] = @Address, [Email] = @Email WHERE [Branch_id] = @original_Branch_id AND (([Branch_Name] = @original_Branch_Name) OR ([Branch_Name] IS NULL AND @original_Branch_Name IS NULL)) AND (([Manager_Name] = @original_Manager_Name) OR ([Manager_Name] IS NULL AND @original_Manager_Name IS NULL)) AND (([Phone_Number] = @original_Phone_Number) OR ([Phone_Number] IS NULL AND @original_Phone_Number IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL))" OnSelected="SqlDataSource3_Selected">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="State" 
                                        PropertyName="SelectedValue" Type="String" />
                                    <asp:ControlParameter ControlID="DropDownList2" Name="City" 
                                        PropertyName="SelectedValue" Type="String" />
                                </SelectParameters>
                                <DeleteParameters>
                                    <asp:Parameter Name="original_Branch_id" Type="Decimal" />
                                    <asp:Parameter Name="original_Branch_Name" Type="String" />
                                    <asp:Parameter Name="original_Manager_Name" Type="String" />
                                    <asp:Parameter Name="original_Phone_Number" Type="String" />
                                    <asp:Parameter Name="original_Address" Type="String" />
                                    <asp:Parameter Name="original_Email" Type="String" />
                                </DeleteParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Branch_Name" Type="String" />
                                    <asp:Parameter Name="Manager_Name" Type="String" />
                                    <asp:Parameter Name="Phone_Number" Type="String" />
                                    <asp:Parameter Name="Address" Type="String" />
                                    <asp:Parameter Name="Email" Type="String" />
                                    <asp:Parameter Name="original_Branch_id" Type="Decimal" />
                                    <asp:Parameter Name="original_Branch_Name" Type="String" />
                                    <asp:Parameter Name="original_Manager_Name" Type="String" />
                                    <asp:Parameter Name="original_Phone_Number" Type="String" />
                                    <asp:Parameter Name="original_Address" Type="String" />
                                    <asp:Parameter Name="original_Email" Type="String" />
                                </UpdateParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="Branch_Name" Type="String" />
                                    <asp:Parameter Name="Manager_Name" Type="String" />
                                    <asp:Parameter Name="Phone_Number" Type="String" />
                                    <asp:Parameter Name="Address" Type="String" />
                                    <asp:Parameter Name="Email" Type="String" />
                                </InsertParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td class="style10">
                            &nbsp;</td>
                        <td align="left">
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

