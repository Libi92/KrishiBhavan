<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="UserSoil.aspx.cs" Inherits="Crop" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div style="width:100%; height:400px; background-color:rgba(255, 255, 255, 0.7);text-align:center">
    <h1 style="border-style: ridge; font-family:Verdana; border-width: medium; fo; font-family: 'Cooper Black'; font-size: large; color: #FFFFFF; text-align: center; background-color: #3399FF;">Types of Soil</h1>

    <table style="width: 50%;margin-top:50px">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" Text="Select Soil :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="200px" Height="25px" DataSourceID="SqlDataSource1" DataTextField="soilname" DataValueField="soilname">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KrishibhavanConnectionString %>" SelectCommand="SELECT [soilname] FROM [soils]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" style="margin-left: 0px" Text="Show Details" Width="130px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
    <div style="width:100%; height:auto; padding-left:250px;text-align:center; margin-top:30px">
        <asp:Panel ID="Panel1" runat="server" Width="720px" Height="240px" ScrollBars="Auto">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="700px" BackColor="White" BorderStyle="Ridge" EmptyDataText="No Requests Found" GridLines="None" BorderColor="White" BorderWidth="2px" CellPadding="3" CellSpacing="1">
                <Columns>
                    <asp:BoundField HeaderText="Soil" DataField="soilname" />
                    <asp:BoundField HeaderText="Speciality" DataField="details" />
                </Columns>
                <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#594B9C" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#33276A" />
            </asp:GridView>
        </asp:Panel>
    </div>
</div>
</asp:Content>