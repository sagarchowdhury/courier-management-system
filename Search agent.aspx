<%@ Page Language="C#" MasterPageFile="~/UserMasterPage.master" AutoEventWireup="true" CodeFile="Search agent.aspx.cs" Inherits="Search_agent" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style2
        {
            width: 218px;
        }
        .style3
        {
            width: 206px;
            color: #060E89;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" class="style1">
        <tr>
            <td class="style3">
                <h2>
                    SEARCH AGENT </h2>
            </td>
            <td align="left">
                <h2>
                    :</h2>
                                                </td>
        </tr>
        <tr>
            <td class="style3">
                <h2>
                </h2>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                State</td>
            <td align="left">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource1" DataTextField="State_name" 
                    DataValueField="State_id" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [State_id], [State_name] FROM [Addstate]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style3">
                City</td>
            <td align="left">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" 
                    DataSourceID="SqlDataSource2" DataTextField="City_Name" 
                    DataValueField="City_id">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [City_id], [City_Name], [State_id] FROM [Addcity] WHERE ([State_id] = @State_id)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="State_id" 
                            PropertyName="SelectedValue" Type="Decimal" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;</td>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" DataKeyNames="Agent_Id" DataSourceID="SqlDataSource3">
                    <RowStyle BackColor="White" ForeColor="#003399" />
                    <Columns>
                        <asp:BoundField DataField="Agenrt_Name" HeaderText="Agent_Name" 
                            SortExpression="Agenrt_Name" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" 
                            SortExpression="Gender" />
                        <asp:BoundField DataField="Phone_Number" HeaderText="Phone_Number" 
                            SortExpression="Phone_Number" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:ImageField DataImageUrlField="Image" DataImageUrlFormatString="imgs/{0}" 
                            HeaderText="Agent Image">
                            <ControlStyle Height="125px" Width="100px" />
                            <ItemStyle Height="125px" Width="100px" />
                        </asp:ImageField>
                    </Columns>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                    <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                    <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Agent_Id], [State], [City], [Agenrt_Name], [Email], [Gender], [Phone_Number], [Address], [Image] FROM [addagent] WHERE (([State] = @State) AND ([City] = @City))">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList1" Name="State" 
                            PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="City" 
                            PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

