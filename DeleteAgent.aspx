<%@ Page Language="C#" MasterPageFile="~/branch master.master" AutoEventWireup="true" CodeFile="DeleteAgent.aspx.cs" Inherits="DeleteAgent" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style8
    {
        width: 189px;
    }
        .style9
        {
            width: 201px;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1" 
        style="font-family: Arial, Helvetica, sans-serif">
    <tr>
        <td class="style8">
            <h2>
                Delete Agent</h2>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td align="left" colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="Agent_Id" DataSourceID="SqlDataSource3" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Agenrt_Name" HeaderText="Agent Name" 
                        SortExpression="Agenrt_Name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" 
                        SortExpression="Address" />
                    <asp:BoundField DataField="Gender" HeaderText="Gender" 
                        SortExpression="Gender" />
                    <asp:BoundField DataField="Email" HeaderText="Email" 
                        SortExpression="Email" />
                    <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" 
                        SortExpression="Phone_Number" />
                    <asp:CommandField ButtonType="Image" DeleteImageUrl="~/imgs/delete_icon.gif" 
                        ShowDeleteButton="True" HeaderText="Delete" />
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
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                ConflictDetection="CompareAllValues" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [addagent] WHERE [Agent_Id] = @original_Agent_Id" 
                InsertCommand="INSERT INTO [addagent] ([State], [City], [Agenrt_Name], [Email], [Password], [Gender], [Phone_Number], [Address], [Image]) VALUES (@State, @City, @Agenrt_Name, @Email, @Password, @Gender, @Phone_Number, @Address, @Image)" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT * FROM [addagent] WHERE (([State] = @State) AND ([City] = @City))" 
                
                UpdateCommand="UPDATE [addagent] SET [State] = @State, [City] = @City, [Agenrt_Name] = @Agenrt_Name, [Email] = @Email, [Password] = @Password, [Gender] = @Gender, [Phone_Number] = @Phone_Number, [Address] = @Address, [Image] = @Image WHERE [Agent_Id] = @original_Agent_Id AND (([State] = @original_State) OR ([State] IS NULL AND @original_State IS NULL)) AND (([City] = @original_City) OR ([City] IS NULL AND @original_City IS NULL)) AND (([Agenrt_Name] = @original_Agenrt_Name) OR ([Agenrt_Name] IS NULL AND @original_Agenrt_Name IS NULL)) AND (([Email] = @original_Email) OR ([Email] IS NULL AND @original_Email IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([Phone_Number] = @original_Phone_Number) OR ([Phone_Number] IS NULL AND @original_Phone_Number IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([Image] = @original_Image) OR ([Image] IS NULL AND @original_Image IS NULL))" OnSelected="SqlDataSource3_Selected">
                <SelectParameters>
                    <asp:SessionParameter Name="State" SessionField="stateid" Type="String" />
                    <asp:SessionParameter Name="City" SessionField="cityid" Type="String" />
                </SelectParameters>
                <DeleteParameters>
                    <asp:Parameter Name="original_Agent_Id" Type="Decimal" />
                    <asp:Parameter Name="original_State" Type="String" />
                    <asp:Parameter Name="original_City" Type="String" />
                    <asp:Parameter Name="original_Agenrt_Name" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Password" Type="String" />
                    <asp:Parameter Name="original_Gender" Type="String" />
                    <asp:Parameter Name="original_Phone_Number" Type="String" />
                    <asp:Parameter Name="original_Address" Type="String" />
                    <asp:Parameter Name="original_Image" Type="String" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Agenrt_Name" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Phone_Number" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Image" Type="String" />
                    <asp:Parameter Name="original_Agent_Id" Type="Decimal" />
                    <asp:Parameter Name="original_State" Type="String" />
                    <asp:Parameter Name="original_City" Type="String" />
                    <asp:Parameter Name="original_Agenrt_Name" Type="String" />
                    <asp:Parameter Name="original_Email" Type="String" />
                    <asp:Parameter Name="original_Password" Type="String" />
                    <asp:Parameter Name="original_Gender" Type="String" />
                    <asp:Parameter Name="original_Phone_Number" Type="String" />
                    <asp:Parameter Name="original_Address" Type="String" />
                    <asp:Parameter Name="original_Image" Type="String" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="State" Type="String" />
                    <asp:Parameter Name="City" Type="String" />
                    <asp:Parameter Name="Agenrt_Name" Type="String" />
                    <asp:Parameter Name="Email" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="Gender" Type="String" />
                    <asp:Parameter Name="Phone_Number" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Image" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style8">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

