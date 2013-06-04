<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminEditDltEvnt.aspx.cs" Inherits="AdminEditDltEvnt" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div style="width:88%; padding-left:150px; height:380px; background-color:rgba(255, 255, 255, 0.7)">
        <asp:Panel ID="Panel1" Width="90%" Height="380px" ScrollBars="Auto" runat="server">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="EdtEvnt" DataKeyNames="EventID">
                <AlternatingItemTemplate>
                    <tr style="background-color:#FFF8DC;">
                        <td>
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            
                        </td>
                        <td>
                            <asp:Label ID="eventLabel" runat="server" Text='<%# Eval("event") %>' />
                        </td>
                        <td>
                            <asp:Label ID="placeLabel" runat="server" Text='<%# Eval("place") %>' />
                        </td>
                        <td>
                            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="condactLabel" runat="server" Text='<%# Eval("condact") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DetailsLabel" runat="server" Text='<%# Eval("Details") %>' />
                        </td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color:#008A8C;color: #FFFFFF;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:TextBox ID="eventTextBox" runat="server" Text='<%# Bind("event") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="placeTextBox" runat="server" Text='<%# Bind("place") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="condactTextBox" runat="server" Text='<%# Bind("condact") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DetailsTextBox" runat="server" TextMode="MultiLine" Text='<%# Bind("Details") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EventIDLabel1" runat="server" Text='<%# Eval("EventID") %>' />
                        </td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </td>
                        <td>
                            <asp:TextBox ID="eventTextBox" runat="server" Text='<%# Bind("event") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="placeTextBox" runat="server" Text='<%# Bind("place") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="dateTextBox" runat="server" Text='<%# Bind("date") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="condactTextBox" runat="server" Text='<%# Bind("condact") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="DetailsTextBox" runat="server" Text='<%# Bind("Details") %>' />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color:#DCDCDC;color: #000000;">
                        <td>
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            
                        </td>
                        <td>
                            <asp:Label ID="eventLabel" runat="server" Text='<%# Eval("event") %>' />
                        </td>
                        <td>
                            <asp:Label ID="placeLabel" runat="server" Text='<%# Eval("place") %>' />
                        </td>
                        <td>
                            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="condactLabel" runat="server" Text='<%# Eval("condact") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DetailsLabel" runat="server" Text='<%# Eval("Details") %>' />
                        </td>
                        
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                        <th id="Th1" runat="server"></th>
                                        <th runat="server"></th>
                                        <th runat="server">Event</th>
                                        <th runat="server">Place</th>
                                        <th runat="server">Date</th>
                                        <th runat="server">Contact</th>
                                        <th runat="server">Details</th>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="eventLabel" runat="server" Text='<%# Eval("event") %>' />
                        </td>
                        <td>
                            <asp:Label ID="placeLabel" runat="server" Text='<%# Eval("place") %>' />
                        </td>
                        <td>
                            <asp:Label ID="dateLabel" runat="server" Text='<%# Eval("date") %>' />
                        </td>
                        <td>
                            <asp:Label ID="condactLabel" runat="server" Text='<%# Eval("condact") %>' />
                        </td>
                        <td>
                            <asp:Label ID="DetailsLabel" runat="server" Text='<%# Eval("Details") %>' />
                        </td>
                        <td>
                            <asp:Label ID="EventIDLabel" runat="server" Text='<%# Eval("EventID") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:RoundedCornersExtender ID="ListView1_RoundedCornersExtender" runat="server" Enabled="True" TargetControlID="ListView1">
            </asp:RoundedCornersExtender>
            <asp:SqlDataSource ID="EdtEvnt" runat="server" ConnectionString="<%$ ConnectionStrings:KrishibhavanConnectionString %>" DeleteCommand="DELETE FROM [event] WHERE [EventID] = @EventID" InsertCommand="INSERT INTO [event] ([event], [place], [date], [condact], [Details]) VALUES (@event, @place, @date, @condact, @Details)" SelectCommand="SELECT * FROM [event]" UpdateCommand="UPDATE [event] SET [event] = @event, [place] = @place, [date] = @date, [condact] = @condact, [Details] = @Details WHERE [EventID] = @EventID">
                <DeleteParameters>
                    <asp:Parameter Name="EventID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="event" Type="String" />
                    <asp:Parameter Name="place" Type="String" />
                    <asp:Parameter DbType="Date" Name="date" />
                    <asp:Parameter Name="condact" Type="Int64" />
                    <asp:Parameter Name="Details" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="event" Type="String" />
                    <asp:Parameter Name="place" Type="String" />
                    <asp:Parameter DbType="Date" Name="date" />
                    <asp:Parameter Name="condact" Type="Int64" />
                    <asp:Parameter Name="Details" Type="String" />
                    <asp:Parameter Name="EventID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>

        </asp:Panel>
    </div>

</asp:Content>