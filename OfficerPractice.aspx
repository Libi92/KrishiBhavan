<%@ Page Language="C#" MasterPageFile="~/Officer.master" AutoEventWireup="true" CodeFile="OfficerPractice.aspx.cs" Inherits="Shop" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div style="padding: inherit; margin: inherit; border: thin groove #000080; width:75%; height:400px; background-color: rgba(255, 255, 255,0.7); float:left; text-align:center; font-size:16px; font-family: Verdana, Geneva, Tahoma, sans-serif;">
        <asp:Panel ID="Panel1" runat="server" background-color="rgba(255, 255, 255,0.7)" BorderStyle="Groove" BorderWidth="2px" ScrollBars="Auto" Height="380px" style="text-align: left">
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="100%" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None">
                        <Columns>
                            
                            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                            <asp:BoundField DataField="Varieties" HeaderText="Varities" SortExpression="Varieties" />
                            <asp:BoundField DataField="Preparationofland" HeaderText="Preparation of land" SortExpression="Preparationofland" />
                            <asp:BoundField DataField="Manuring" HeaderText="Manuring" SortExpression="Manuring" />
                            <asp:BoundField DataField="Plantprotection" HeaderText="Plant Protection" SortExpression="Plantprotection" />
                        </Columns>
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black"></FooterStyle>

                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF"></HeaderStyle>

                        <PagerStyle HorizontalAlign="Right" BackColor="#C6C3C6" ForeColor="Black"></PagerStyle>

                        <RowStyle BackColor="#DEDFDE" ForeColor="Black"></RowStyle>

                        <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                        <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                        <SortedAscendingHeaderStyle BackColor="#594B9C"></SortedAscendingHeaderStyle>

                        <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                        <SortedDescendingHeaderStyle BackColor="#33276A"></SortedDescendingHeaderStyle>
                    </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KrishibhavanConnectionString %>" SelectCommand="SELECT * FROM [vegitables]"></asp:SqlDataSource>
                </asp:View>
                <asp:View ID="View2" runat="server">

                </asp:View>
            </asp:MultiView>
        </asp:Panel>

    </div>
    <div style="padding: inherit; margin: inherit; border: thin groove #000080; width:24%; height:390px; position:relative; background-color: rgba(255,255,255,0.7); float:right">

        <br />
        <div>
            <asp:Label ID="Label1" runat="server" Text="1"></asp:Label>
            &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="60px" ImageUrl="~/Images/Crops/Cucumber.jpg" Width="210px" OnClick="Cucumber" />
            &nbsp;<h3 style="font-family: arial; font-size: 13px; font-weight: bold; margin: 0px 0px 0px 40px; color: rgb(107, 146, 13); height: 19px; padding-left: 5px; text-transform: uppercase; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">VEGITABLES</h3>
            <asp:Label ID="Label2" runat="server" Text="2"></asp:Label>
            &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="60px" ImageUrl="~/Images/Crops/fodder.jpg" Width="210px" OnClick="Tomato" />
            &nbsp;&nbsp;
            <h3 style="font-family: arial; font-size: 13px; font-weight: bold; margin: 0px 0px 0px 40px; color: rgb(107, 146, 13); height: 19px; padding-left: 5px; text-transform: uppercase; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">fodder crops</h3>
            <asp:Label ID="Label3" runat="server" Text="3"></asp:Label>
            &nbsp;<asp:ImageButton ID="ImageButton3" runat="server" Height="60px" ImageUrl="~/Images/Crops/FRU.jpg" Width="210px" OnClick="Beans" />
            &nbsp;&nbsp;&nbsp;
            <h3 style="font-family: arial; font-size: 13px; font-weight: bold; margin: 0px 0px 0px 40px; color: rgb(107, 146, 13); height: 19px; padding-left: 5px; text-transform: uppercase; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">fruits</h3>
&nbsp;<asp:Label ID="Label4" runat="server" Text="4"></asp:Label>
            &nbsp;<asp:ImageButton ID="ImageButton4" runat="server" Height="60px" ImageUrl="~/Images/Crops/beans.jpg" Width="210px" OnClick="Guard" />
        &nbsp;<h3 style="font-family: arial; font-size: 13px; font-weight: bold; margin: 0px 0px 0px 40px; color: rgb(107, 146, 13); height: 19px; padding-left: 5px; text-transform: uppercase; font-style: normal; font-variant: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: start; text-indent: 0px; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">Others</h3>
        </div>
    </div>

</asp:Content>
