<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="Delete Feedback.aspx.cs" Inherits="Delete_Feedback" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
    }
    .style3
    {
    }
    .style4
    {
        width: 130px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="left" class="style1">
    <tr>
        <td align="left" class="style3" colspan="2">
            <h2>
                DELETE FEEDBACK:</h2>
        </td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td align="left">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                DataKeyNames="FeedbackId" DataSourceID="SqlDataSource1" CellPadding="4" 
                ForeColor="#333333" GridLines="None">
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <Columns>
                    <asp:BoundField DataField="FeedbackId" HeaderText="FeedbackId" 
                        InsertVisible="False" ReadOnly="True" SortExpression="FeedbackId" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                    <asp:BoundField DataField="service" HeaderText="service" 
                        SortExpression="service" />
                    <asp:BoundField DataField="suggestions" HeaderText="suggestions" 
                        SortExpression="suggestions" />
                    <asp:BoundField DataField="dateandtime" HeaderText="dateandtime" 
                        SortExpression="dateandtime" />
                    <asp:CommandField ButtonType="Image" HeaderText="Click To Delete" 
                        ShowDeleteButton="True" DeleteImageUrl="~/imgs/delete_icon.gif" />
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </asp:GridView>
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConflictDetection="CompareAllValues" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [feedback] WHERE [FeedbackId] = @original_FeedbackId" 
                InsertCommand="INSERT INTO [feedback] ([name], [email], [phone], [service], [suggestions], [dateandtime]) VALUES (@name, @email, @phone, @service, @suggestions, @dateandtime)" 
                OldValuesParameterFormatString="original_{0}" 
                SelectCommand="SELECT [FeedbackId], [name], [email], [phone], [service], [suggestions], [dateandtime] FROM [feedback]" 
                UpdateCommand="UPDATE [feedback] SET [name] = @name, [email] = @email, [phone] = @phone, [service] = @service, [suggestions] = @suggestions, [dateandtime] = @dateandtime WHERE [FeedbackId] = @original_FeedbackId AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL)) AND (([service] = @original_service) OR ([service] IS NULL AND @original_service IS NULL)) AND (([suggestions] = @original_suggestions) OR ([suggestions] IS NULL AND @original_suggestions IS NULL)) AND (([dateandtime] = @original_dateandtime) OR ([dateandtime] IS NULL AND @original_dateandtime IS NULL))" OnSelected="SqlDataSource1_Selected">
                <DeleteParameters>
                    <asp:Parameter Name="original_FeedbackId" Type="Decimal" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="phone" Type="Decimal" />
                    <asp:Parameter Name="service" Type="String" />
                    <asp:Parameter Name="suggestions" Type="String" />
                    <asp:Parameter DbType="Date" Name="dateandtime" />
                    <asp:Parameter Name="original_FeedbackId" Type="Decimal" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_phone" Type="Decimal" />
                    <asp:Parameter Name="original_service" Type="String" />
                    <asp:Parameter Name="original_suggestions" Type="String" />
                    <asp:Parameter DbType="Date" Name="original_dateandtime" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="phone" Type="Decimal" />
                    <asp:Parameter Name="service" Type="String" />
                    <asp:Parameter Name="suggestions" Type="String" />
                    <asp:Parameter DbType="Date" Name="dateandtime" />
                </InsertParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style4">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

