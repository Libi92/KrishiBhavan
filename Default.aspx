<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeFile="Default.aspx.cs" Inherits="_Default" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style2 {
            width: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <div style="height: 380px; width: 100%; position: absolute; margin: inherit; top:150px">
        <div style="border: medium double #000080; margin: inherit; padding: inherit; float: left; width: 20%; height: 360px; background-color: rgba(255, 255, 255,0.7); text-align: center">
            <p>
                <img src="Images/loginback.png" alt="log" style="height: 85px; width: 185px;" />
            </p>
            <div id="log2" style="width: 100%; height: 37px; text-align: center; visibility: visible">
            </div>
            <div id="log1" style="width: 100%; height: 230px; text-align: center; visibility: visible">
                <asp:Label ID="Label3" runat="server" Font-Size="13px" Text="User Name:"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Font-Size="13px" Text="Password :"></asp:Label>
                &nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" ClientIDMode="Inherit" TextMode="Password" Width="150px"></asp:TextBox>
                <br />
               <br />
                <asp:Label ID="Label2" runat="server" Visible="False" ForeColor="Red" Font-Size="Small"></asp:Label>
                <br />
                    <asp:Button ID="Login" runat="server" Text="Log in" OnClick="Login_Click" />
                <br />
                <a href="SignUp.aspx" style="font-size: 14px; width: 123px; font-family: 'Hobo Std'; font-weight: bold; font-style: oblique; color: #0000FF">Create New User</a>
                <br />
                <br /><br />
                <a href="passwordrecovery.aspx" style="font-size: 14px; width: 123px; font-family: 'Hobo Std'; font-weight: bold; font-style: oblique; color: #0000FF">Forgot Password..?</a>
            </div>
        </div>


        <div id="news" style="padding: inherit; margin: inherit; border: medium double #000080; float: left; height: 360px; width: 68%; background-color: rgba(255,255,255,.7); position: relative">
            <div id="search" style="border: thin dotted #FF00FF; width: 37%; height: 360px; float: left; text-align: center; font-family: 'Hobo Std'; font-size: 12px; font-weight: bold; font-style: oblique; color: #0000FF;">
                <table>
                    <tr>
                        <td class="auto-style2">District:</td>
                        <td>
                           
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="District" DataValueField="District" Height="22px" Width="151px" >
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KrishibhavanConnectionString %>" SelectCommand="SELECT DISTINCT [District] FROM [krishi]"></asp:SqlDataSource>
  
                        </td>
                    </tr>
                </table>
                <br />
                <asp:ImageButton ID="check" runat="server" ImageUrl="~/Images/butn.png" Height="46px" Width="132px" OnClick="check_Click" />
                <br />
                &nbsp;<br />
                <asp:Panel ID="Panel2" runat="server">
                <asp:GridView ID="GridView1" runat="server" Width="100%" Height="200px" AutoGenerateColumns="False" BorderStyle="Groove" CellPadding="3" GridLines="Vertical" BackColor="White" BorderColor="#E7E7FF" BorderWidth="1px">
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    <Columns>
                        <asp:BoundField DataField="Place" HeaderText="Place" />
                        <asp:BoundField DataField="Officer" HeaderText="Officer" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" />
                        <asp:BoundField DataField="Address" HeaderText="Address" />
                    </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                </asp:GridView>
                </asp:Panel>
            </div>
            <div id="popup" style="border: thin dotted #FF00FF; width: 60%; height: 360px; float: left; text-align: center;">
               <h1 style="border-style: ridge; border-width: medium; font-family: 'Cooper Black'; font-size: large; color: #FFFFFF; text-align: center; background-color: #3399FF;">Events</h1>
                <asp:Panel ID="Panel1" runat="server" Width="100%" Height="280px" ScrollBars="Auto" BackColor="#CCCCFF" BorderColor="#CC6600" BorderStyle="Groove" Font-Names="Cooper Black" Font-Size="Medium" ForeColor="#FFFFCC">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" Height="184px" Width="100%" Font-Size="14px" ForeColor="White">
                        <Columns>
                            <asp:BoundField DataField="Event" HeaderText="Event" />
                            <asp:BoundField DataField="Place" HeaderText="Place" />
                            <asp:BoundField DataField="Date" HeaderText="Date" />
                            <asp:BoundField DataField="Condact" HeaderText="Contact" />
                            <asp:BoundField DataField="Details" HeaderText="Details" />
                        </Columns>
                    </asp:GridView>
                </asp:Panel>
   
            </div>
        </div>
    </div>
        <div style="height: 82px; background-color:rgba(255,255,255,0.7); position:relative;text-align:center; top: 288px; margin-top: 74px; left: 0px;">
            <div style="width: 48%;float:left;position:absolute; top: 0px; left: 2px;">
                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Images/video-clip1.png" Width="133px" Height="60px" OnClick="video_Click" />
                <br />
                <a href="Video.aspx">Videos</a>
            </div>
            <div style="float:right;width:48%;position:relative; top: 0px; left: 0px; height: 72px; padding-top:10px">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/friday's-weather-forecast-unit-4_01.png" ImageAlign="AbsMiddle" height="50px" Width="300px" OnClick="ImageButton1_Click"/>
            </div>
        </div>
</asp:Content>
