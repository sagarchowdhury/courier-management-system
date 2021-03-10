<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="addbranch.aspx.cs" Inherits="addbranch" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
    }
        .auto-style1 {
            width: 318px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td class="style2">
                <h3><strong>ADD BRANCH</strong></h3>
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
                State</td>
            <td class="auto-style1">
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    DataSourceID="SqlDataSource2" DataTextField="State_name" 
                    DataValueField="State_id" AutoPostBack="True">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [State_id], [State_name] FROM [Addstate]">
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList1" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                City</td>
                        <td class="auto-style1">
                            <asp:DropDownList ID="DropDownList2" runat="server" 
                                DataSourceID="SqlDataSource1" DataTextField="City_Name" 
                                DataValueField="City_id" AutoPostBack="True">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                SelectCommand="SELECT * FROM [Addcity] WHERE ([State_id] = @State_id)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList1" Name="State_id" 
                                        PropertyName="SelectedValue" Type="Decimal" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DropDownList2" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
            </td>
                    </tr>
                    <tr>
                        <td class="style2">
                            Branch Name</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox1" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
                        </td>
        </tr>
        <tr>
            <td class="style2">
                Manager Name</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox2" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Phone Number</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox3" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Plese enter correct format of Phone No" 
                    ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Email(Username)</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox5" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
                <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                ControlToValidate="TextBox5" ErrorMessage="Please check format" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Password</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox6" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Address</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox4" runat="server" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox6" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Commission</td>
            <td class="auto-style1">
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="TextBox7" ErrorMessage="This Field is required"></asp:RequiredFieldValidator>
            </td>
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
                &nbsp;</td>
            <td class="auto-style1">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Add Branch" Width="116px" />
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
            <td class="style2" colspan="3">
                <h3><strong>Update / Delete Branch</strong></h3>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataSourceID="SqlDataSource3" CellPadding="4" ForeColor="#333333" 
                GridLines="None">
                <RowStyle BackColor="#EFF3FB" />
                <Columns>
                    <asp:BoundField DataField="Branch_Name" HeaderText="Branch_Name" 
                        SortExpression="Branch_Name" />
                    <asp:BoundField DataField="Manager_Name" HeaderText="Manager_Name" 
                        SortExpression="Manager_Name" />
                    <asp:HyperLinkField DataNavigateUrlFields="Branch_id" 
                        DataNavigateUrlFormatString="Updatebrdtls.aspx?bid={0}" 
                        HeaderText="Click to Update" Text="Update" />
                    <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
            <asp:Label ID="Label3" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                
                SelectCommand="SELECT * FROM [addbranch] WHERE (([State] = @State) AND ([City] = @City))" OnSelected="SqlDataSource3_Selected" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [addbranch] WHERE [Branch_id] = @original_Branch_id" InsertCommand="INSERT INTO [addbranch] ([State], [City], [Branch_Name], [Manager_Name], [Phone_Number], [Address], [Email], [Password], [commision]) VALUES (@State, @City, @Branch_Name, @Manager_Name, @Phone_Number, @Address, @Email, @Password, @commision)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [addbranch] SET [State] = @State, [City] = @City, [Branch_Name] = @Branch_Name, [Manager_Name] = @Manager_Name, [Phone_Number] = @Phone_Number, [Address] = @Address, [Email] = @Email, [Password] = @Password, [commision] = @commision WHERE [Branch_id] = @original_Branch_id AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Branch_Name] = @original_Branch_Name) OR ([Branch_Name] IS NULL AND @original_Branch_Name IS NULL)) AND (([Manager_Name] = @original_Manager_Name) OR ([Manager_Name] IS NULL AND @original_Manager_Name IS NULL)) AND (([Phone_Number] = @original_Phone_Number) OR ([Phone_Number] IS NULL AND @original_Phone_Number IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([commision] = @original_commision) OR ([commision] IS NULL AND @original_commision IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Branch_id" Type="Decimal" />
                    <asp:Parameter Name="original_State" Type="String" />
                    <asp:Parameter Name="original_City" Type="String" />
                    <asp:Parameter Name="original_Branch_Name" Type="String" />
                    <asp:Parameter Name="original_Manager_Name" Type="String" />
                    <asp:Parameter Name="original_Phone_Number" Type="String" />
                    <asp:Parameter Name="original_Address" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Password" Type="String" />
                    <asp:Parameter Name="original_commision" Type="Double" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Branch_Name" Type="String" />
                    <asp:Parameter Name="Manager_Name" Type="String" />
                    <asp:Parameter Name="Phone_Number" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="commision" Type="Double" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" Name="State" 
                        PropertyName="SelectedValue" Type="String" />
                    <asp:ControlParameter ControlID="DropDownList2" Name="City" 
                        PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Branch_Name" Type="String" />
                    <asp:Parameter Name="Manager_Name" Type="String" />
                    <asp:Parameter Name="Phone_Number" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="commision" Type="Double" />
                    <asp:Parameter Name="original_Branch_id" Type="Decimal" />
                    <asp:Parameter Name="original_State" Type="String" />
                    <asp:Parameter Name="original_City" Type="String" />
                    <asp:Parameter Name="original_Branch_Name" Type="String" />
                    <asp:Parameter Name="original_Manager_Name" Type="String" />
                    <asp:Parameter Name="original_Phone_Number" Type="String" />
                    <asp:Parameter Name="original_Address" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Password" Type="String" />
                    <asp:Parameter Name="original_commision" Type="Double" />
                </UpdateParameters>
            </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

