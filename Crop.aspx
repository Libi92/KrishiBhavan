<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Crop.aspx.cs" Inherits="Crop" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
<div style="width:100%; height:400px;font-family:Verdana; background-color:rgba(255, 255, 255, 0.7);text-align:center">
    <h1 style="border-style: ridge; border-width: medium; font-family: 'Cooper Black'; font-size: large; color: #FFFFFF; text-align: center; background-color: #3399FF;">Biological Details of Crops</h1>

    <table style="width: 50%;margin-top:50px">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="Medium" Text="Select Crop :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Width="200px" Height="25px" DataSourceID="SqlDataSource1" DataTextField="commonname" DataValueField="commonname">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KrishibhavanConnectionString %>" SelectCommand="SELECT [commonname] FROM [crops]">
                </asp:SqlDataSource>
            </td>
            <td>
                <asp:Button ID="Button1" runat="server" style="margin-left: 0px" Text="Show Details" Width="130px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
    <div style="width:100%; height:auto; padding-left:250px;text-align:center; margin-top:50px">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="550px" BackColor="#CCCCFF" BorderStyle="Solid" EmptyDataText="No Requests Found" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="#99CCFF" />
        <Columns>
            <asp:BoundField HeaderText="Common Name" DataField="commonname" />
            <asp:BoundField HeaderText="Malayalam Name" DataField="botani" />
            <asp:BoundField HeaderText="Family" DataField="family" />
            <asp:BoundField HeaderText="bottanical Name" DataField="bottanical" />
        </Columns>
        <HeaderStyle BackColor="#CC99FF" />
    </asp:GridView>
    </div>
</div>
</asp:Content>