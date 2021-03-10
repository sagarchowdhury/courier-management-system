<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="listoffeedback.aspx.cs" Inherits="listoffeedback" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style2
    {
        }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
    <tr>
        <td class="style2">
            <h2>View/Delete Feedback</h2>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="style2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style2" colspan="2">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" 
                ForeColor="#333333" GridLines="None" Width="100%">
                <RowStyle BackColor="#EFF3FB" />
                <Columns>
                    <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                    <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                    <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                    <asp:BoundField DataField="overall" HeaderText="Overall" 
                        SortExpression="overall" />
                    <asp:BoundField DataField="userfriendly" HeaderText="Userfriendly" 
                        SortExpression="userfriendly" />
                    <asp:BoundField DataField="suggestions" HeaderText="Suggestions" 
                        SortExpression="suggestions" />
                    <asp:BoundField DataField="dateandtime" HeaderText="Date and Time" 
                        SortExpression="dateandtime" />
                    <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
                </Columns>
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT [name], [email], [phone], [suggestions], [dateandtime], [overall], [userfriendly], [FeedbackId] FROM [feedback] ORDER BY [dateandtime] DESC" OnSelected="SqlDataSource1_Selected" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [feedback] WHERE [FeedbackId] = @original_FeedbackId" InsertCommand="INSERT INTO [feedback] ([name], [email], [phone], [suggestions], [dateandtime], [overall], [userfriendly]) VALUES (@name, @email, @phone, @suggestions, @dateandtime, @overall, @userfriendly)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [feedback] SET [name] = @name, [email] = @email, [phone] = @phone, [suggestions] = @suggestions, [dateandtime] = @dateandtime, [overall] = @overall, [userfriendly] = @userfriendly WHERE [FeedbackId] = @original_FeedbackId AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([phone] = @original_phone) OR ([phone] IS NULL AND @original_phone IS NULL)) AND (([suggestions] = @original_suggestions) OR ([suggestions] IS NULL AND @original_suggestions IS NULL)) AND (([dateandtime] = @original_dateandtime) OR ([dateandtime] IS NULL AND @original_dateandtime IS NULL)) AND (([overall] = @original_overall) OR ([overall] IS NULL AND @original_overall IS NULL)) AND (([userfriendly] = @original_userfriendly) OR ([userfriendly] IS NULL AND @original_userfriendly IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_FeedbackId" Type="Decimal" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_phone" Type="Decimal" />
                    <asp:Parameter Name="original_suggestions" Type="String" />
                    <asp:Parameter Name="original_dateandtime" Type="DateTime" />
                    <asp:Parameter Name="original_overall" Type="String" />
                    <asp:Parameter Name="original_userfriendly" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="phone" Type="Decimal" />
                    <asp:Parameter Name="suggestions" Type="String" />
                    <asp:Parameter Name="dateandtime" Type="DateTime" />
                    <asp:Parameter Name="overall" Type="String" />
                    <asp:Parameter Name="userfriendly" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="phone" Type="Decimal" />
                    <asp:Parameter Name="suggestions" Type="String" />
                    <asp:Parameter Name="dateandtime" Type="DateTime" />
                    <asp:Parameter Name="overall" Type="String" />
                    <asp:Parameter Name="userfriendly" Type="String" />
                    <asp:Parameter Name="original_FeedbackId" Type="Decimal" />
                    <asp:Parameter Name="original_name" Type="String" />
                    <asp:Parameter Name="original_email" Type="String" />
                    <asp:Parameter Name="original_phone" Type="Decimal" />
                    <asp:Parameter Name="original_suggestions" Type="String" />
                    <asp:Parameter Name="original_dateandtime" Type="DateTime" />
                    <asp:Parameter Name="original_overall" Type="String" />
                    <asp:Parameter Name="original_userfriendly" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
</asp:Content>

