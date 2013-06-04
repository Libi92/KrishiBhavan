<%@ Page Language="C#" MasterPageFile="~/Officer.master" AutoEventWireup="true" CodeFile="OfficerShopOnline.aspx.cs" Inherits="Shop" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div style="padding: inherit; margin: inherit; border: thin groove #000080; width:75%; height:420px; background-color: rgba(255, 255, 255,0.7); float:left">
        <asp:Panel ID="Panel1" runat="server" background-color="rgba(255, 255, 255,0.7)" BorderStyle="Groove" BorderWidth="2px" ScrollBars="Auto" Height="420px" style="text-align: justify">
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    
                    <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="itemid">
                        <AlternatingItemTemplate>
                            <li style="background-color: #FFF8DC;">
                                <table width="100%">
                                    <tr>
                                        <td style="width:220px">
                                            Name
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                        </td>
                                        <td rowspan="4">
                                            <a href='<%#Eval("picture")%>' style="float:right">
                                                <asp:Image ID="Image1" Height="160" Width="160" ImageUrl='<%# Bind("picture") %>' runat="server" />
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Description
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Prize
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label ID="prizeLabel" runat="server" Text='<%# Eval("prize") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Button ID="Button1" runat="server" Text="Add to your Cart" CommandArgument='<%# Eval("itemid") %>' OnCommand="Button1_Command" />
                                        </td>
                                    </tr>
                                </table>
                            </li>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <li style="background-color: #008A8C;color: #FFFFFF;">
                                type:
                                <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                                <br />
                                name:
                                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                <br />
                                description:
                                <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                                <br />
                                prize:
                                <asp:TextBox ID="prizeTextBox" runat="server" Text='<%# Bind("prize") %>' />
                                <br />
                                picture:
                                <asp:TextBox ID="pictureTextBox" runat="server" Text='<%# Bind("picture") %>' />
                                <br />
                                itemid:
                                <asp:Label ID="itemidLabel1" runat="server" Text='<%# Eval("itemid") %>' />
                                <br />
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </li>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            No data was returned.
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <li style="">
                                type:
                                <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                                <br />
                                name:
                                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                <br />
                                description:
                                <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                                <br />
                                prize:
                                <asp:TextBox ID="prizeTextBox" runat="server" Text='<%# Bind("prize") %>' />
                                <br />
                                picture:
                                <asp:TextBox ID="pictureTextBox" runat="server" Text='<%# Bind("picture") %>' />
                                <br />
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            </li>
                        </InsertItemTemplate>
                        <ItemSeparatorTemplate>
                            <br />
                        </ItemSeparatorTemplate>
                        <ItemTemplate>
                            <li style="background-color: #DCDCDC;color: #000000;">
                                <table width="100%">
                                    <tr>
                                        <td style="width:220px">
                                            Name
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                        </td>
                                        <td rowspan="4">
                                            <a href='<%#Eval("picture")%>' style="float:right">
                                                <asp:Image ID="Image1" Height="160" Width="160" ImageUrl='<%# Bind("picture") %>' runat="server" />
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Description
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Prize
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label ID="prizeLabel" runat="server" Text='<%# Eval("prize") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Button ID="Button1" runat="server" Text="Add to your Cart" CommandArgument='<%# Eval("itemid") %>' OnCommand="Button1_Command" />
                                        </td>
                                    </tr>
                                </table>
                                
                            </li>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <li runat="server" id="itemPlaceholder" />
                            </ul>
                            <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            </div>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">
                                <a href='<%#Eval("picture")%>'>
                                    <asp:Image ID="Image1" Height="160" Width="160" ImageUrl='<%# Bind("picture") %>' runat="server" />
                                </a>
                                type:
                                <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                                <br />
                                name:
                                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                <br />
                                description:
                                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                <br />
                                prize:
                                <asp:Label ID="prizeLabel" runat="server" Text='<%# Eval("prize") %>' />
                                <br />
                                picture:
                                <asp:Label ID="pictureLabel" runat="server" Text='<%# Eval("picture") %>' />
                                <br />
                                itemid:
                                <asp:Label ID="itemidLabel" runat="server" Text='<%# Eval("itemid") %>' />
                                <br />
                            </li>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KrishibhavanConnectionString %>" SelectCommand="SELECT * FROM [online] WHERE ([type] = @type)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="crop" Name="type" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    
                </asp:View>
                <asp:View ID="View2" runat="server">
                    
                    <asp:ListView ID="ListView2" runat="server" DataSourceID="SqlDataSource2">
                        <AlternatingItemTemplate>
                            <li style="background-color: #FFF8DC;">
                                <table width="100%">
                                    <tr>
                                        <td style="width:220px">
                                            Name
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                        </td>
                                        <td rowspan="4">
                                            <a href='<%#Eval("picture")%>' style="float:right">
                                                <asp:Image ID="Image1" Height="160" Width="160" ImageUrl='<%# Bind("picture") %>' runat="server" />
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Description
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Prize
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label ID="prizeLabel" runat="server" Text='<%# Eval("prize") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Button ID="Button1" runat="server" Text="Add to your Cart" CommandArgument='<%# Eval("itemid") %>' OnCommand="Button1_Command" />
                                        </td>
                                    </tr>
                                </table>
                            </li>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <li style="background-color: #008A8C;color: #FFFFFF;">
                                <a href='<%#Eval("picture")%>'>
                                <asp:Image ID="Image1" Height="160" Width="160" ImageUrl='<%# Bind("picture") %>' runat="server" /></a>
                                <br />type:
                                <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                                <br />
                                name:
                                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                <br />
                                description:
                                <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                                <br />
                                prize:
                                <asp:TextBox ID="prizeTextBox" runat="server" Text='<%# Bind("prize") %>' />
                                <br />
                                picture:
                                <asp:TextBox ID="pictureTextBox" runat="server" Text='<%# Bind("picture") %>' />
                                <br />
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </li>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            No data was returned.
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <li style="">
                                <a href='<%#Eval("picture")%>'>
                                <asp:Image ID="Image1" Height="160" Width="160" ImageUrl='<%# Bind("picture") %>' runat="server" /></a>
                                <br />type:
                                <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                                <br />
                                name:
                                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                <br />
                                description:
                                <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                                <br />
                                prize:
                                <asp:TextBox ID="prizeTextBox" runat="server" Text='<%# Bind("prize") %>' />
                                <br />
                                picture:
                                <asp:TextBox ID="pictureTextBox" runat="server" Text='<%# Bind("picture") %>' />
                                <br />
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            </li>
                        </InsertItemTemplate>
                        <ItemSeparatorTemplate>
                            <br />
                        </ItemSeparatorTemplate>
                        <ItemTemplate>
                            <li style="background-color: #DCDCDC;color: #000000;">
                                <table width="100%">
                                    <tr>
                                        <td style="width:220px">
                                            Name
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                        </td>
                                        <td rowspan="4">
                                            <a href='<%#Eval("picture")%>' style="float:right">
                                                <asp:Image ID="Image1" Height="160" Width="160" ImageUrl='<%# Bind("picture") %>' runat="server" />
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Description
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Prize
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label ID="prizeLabel" runat="server" Text='<%# Eval("prize") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Button ID="Button1" runat="server" Text="Add to your Cart" CommandArgument='<%# Eval("itemid") %>' OnCommand="Button1_Command" />
                                        </td>
                                    </tr>
                                </table>
                            </li>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <li runat="server" id="itemPlaceholder" />
                            </ul>
                            <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            </div>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">
                                <a href='<%#Eval("picture")%>'>
                                <asp:Image ID="Image1" Height="160" Width="160" ImageUrl='<%# Bind("picture") %>' runat="server" /></a>
                                <br />type:
                                <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                                <br />
                                name:
                                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                <br />
                                description:
                                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                <br />
                                prize:
                                <asp:Label ID="prizeLabel" runat="server" Text='<%# Eval("prize") %>' />
                                <br />
                                picture:
                                <asp:Label ID="pictureLabel" runat="server" Text='<%# Eval("picture") %>' />
                                <br />
                            </li>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:KrishibhavanConnectionString %>" SelectCommand="SELECT * FROM [online] WHERE ([type] = @type)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="mechine" Name="type" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    
                   </asp:View>
                <asp:View ID="View3" runat="server">
                    
                    <asp:ListView ID="ListView3" runat="server" DataSourceID="SqlDataSource3">
                        <AlternatingItemTemplate>
                            <li style="background-color: #FFF8DC;">
                                <table width="100%">
                                    <tr>
                                        <td style="width:220px">
                                            Name
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                        </td>
                                        <td rowspan="4">
                                            <a href='<%#Eval("picture")%>' style="float:right">
                                                <asp:Image ID="Image1" Height="160" Width="160" ImageUrl='<%# Bind("picture") %>' runat="server" />
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Description
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Prize
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label ID="prizeLabel" runat="server" Text='<%# Eval("prize") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Button ID="Button1" runat="server" Text="Add to your Cart" CommandArgument='<%# Eval("itemid") %>' OnCommand="Button1_Command" />
                                        </td>
                                    </tr>
                                </table>
                            </li>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <li style="background-color: #008A8C;color: #FFFFFF;">
                                <a href='<%#Eval("picture")%>'>
                                <asp:Image ID="Image1" Height="160" Width="160" ImageUrl='<%# Bind("picture") %>' runat="server" /></a>
                                <br />type:
                                <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                                <br />
                                name:
                                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                <br />
                                description:
                                <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                                <br />
                                prize:
                                <asp:TextBox ID="prizeTextBox" runat="server" Text='<%# Bind("prize") %>' />
                                <br />
                                picture:
                                <asp:TextBox ID="pictureTextBox" runat="server" Text='<%# Bind("picture") %>' />
                                <br />
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </li>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            No data was returned.
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <li style="">
                                <a href='<%#Eval("picture")%>'>
                                <asp:Image ID="Image1" Height="160" Width="160" ImageUrl='<%# Bind("picture") %>' runat="server" /></a>
                                <br />type:
                                <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                                <br />
                                name:
                                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                <br />
                                description:
                                <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                                <br />
                                prize:
                                <asp:TextBox ID="prizeTextBox" runat="server" Text='<%# Bind("prize") %>' />
                                <br />
                                picture:
                                <asp:TextBox ID="pictureTextBox" runat="server" Text='<%# Bind("picture") %>' />
                                <br />
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            </li>
                        </InsertItemTemplate>
                        <ItemSeparatorTemplate>
                            <br />
                        </ItemSeparatorTemplate>
                        <ItemTemplate>
                            <li style="background-color: #DCDCDC;color: #000000;">
                                <table width="100%">
                                    <tr>
                                        <td style="width:220px">
                                            Name
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                        </td>
                                        <td rowspan="4">
                                            <a href='<%#Eval("picture")%>' style="float:right">
                                                <asp:Image ID="Image1" Height="160" Width="160" ImageUrl='<%# Bind("picture") %>' runat="server" />
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Description
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Prize
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label ID="prizeLabel" runat="server" Text='<%# Eval("prize") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Button ID="Button1" runat="server" Text="Add to your Cart" CommandArgument='<%# Eval("itemid") %>' OnCommand="Button1_Command" />
                                        </td>
                                    </tr>
                                </table>
                            </li>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <li runat="server" id="itemPlaceholder" />
                            </ul>
                            <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            </div>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">
                                <table width="100%">
                                    <tr>
                                        <td style="width:220px">
                                            Name
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                        </td>
                                        <td rowspan="4">
                                            <a href='<%#Eval("picture")%>' style="float:right">
                                                <asp:Image ID="Image1" Height="160" Width="160" ImageUrl='<%# Bind("picture") %>' runat="server" />
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Description
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Prize
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label ID="prizeLabel" runat="server" Text='<%# Eval("prize") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Button ID="Button1" runat="server" Text="Add to your Cart" CommandArgument='<%# Eval("itemid") %>' OnCommand="Button1_Command" />
                                        </td>
                                    </tr>
                                </table>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:KrishibhavanConnectionString %>" SelectCommand="SELECT * FROM [online] WHERE ([type] = @type)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="fertilizer" Name="type" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    
                </asp:View>
                <asp:View ID="View4" runat="server">

                    <asp:ListView ID="ListView4" runat="server" DataSourceID="SqlDataSource4">
                        <AlternatingItemTemplate>
                            <li style="background-color: #FFF8DC;">
                                <table width="100%">
                                    <tr>
                                        <td style="width:220px">
                                            Name
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                        </td>
                                        <td rowspan="4">
                                            <a href='<%#Eval("picture")%>' style="float:right">
                                                <asp:Image ID="Image1" Height="160" Width="160" ImageUrl='<%# Bind("picture") %>' runat="server" />
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Description
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Prize
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label ID="prizeLabel" runat="server" Text='<%# Eval("prize") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Button ID="Button1" runat="server" Text="Add to your Cart" CommandArgument='<%# Eval("itemid") %>' OnCommand="Button1_Command" />
                                        </td>
                                    </tr>
                                </table>
                            </li>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <li style="background-color: #008A8C;color: #FFFFFF;">
                                <a href='<%#Eval("picture")%>'>
                                <asp:Image ID="Image1" Height="160" Width="160" ImageUrl='<%# Bind("picture") %>' runat="server" /></a>
                                <br />type:
                                <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                                <br />
                                name:
                                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                <br />
                                description:
                                <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                                <br />
                                prize:
                                <asp:TextBox ID="prizeTextBox" runat="server" Text='<%# Bind("prize") %>' />
                                <br />
                                picture:
                                <asp:TextBox ID="pictureTextBox" runat="server" Text='<%# Bind("picture") %>' />
                                <br />
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </li>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            No data was returned.
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <li style="">
                                <a href='<%#Eval("picture")%>'>
                                <asp:Image ID="Image1" Height="160" Width="160" ImageUrl='<%# Bind("picture") %>' runat="server" /></a>
                                <br />type:
                                <asp:TextBox ID="typeTextBox" runat="server" Text='<%# Bind("type") %>' />
                                <br />
                                name:
                                <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                                <br />
                                description:
                                <asp:TextBox ID="descriptionTextBox" runat="server" Text='<%# Bind("description") %>' />
                                <br />
                                prize:
                                <asp:TextBox ID="prizeTextBox" runat="server" Text='<%# Bind("prize") %>' />
                                <br />
                                picture:
                                <asp:TextBox ID="pictureTextBox" runat="server" Text='<%# Bind("picture") %>' />
                                <br />
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            </li>
                        </InsertItemTemplate>
                        <ItemSeparatorTemplate>
                            <br />
                        </ItemSeparatorTemplate>
                        <ItemTemplate>
                            <li style="background-color: #DCDCDC;color: #000000;">
                                <table width="100%">
                                    <tr>
                                        <td style="width:220px">
                                            Name
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                        </td>
                                        <td rowspan="4">
                                            <a href='<%#Eval("picture")%>' style="float:right">
                                                <asp:Image ID="Image1" Height="160" Width="160" ImageUrl='<%# Bind("picture") %>' runat="server" />
                                            </a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Description
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Prize
                                        </td>
                                        <td>:</td>
                                        <td>
                                            <asp:Label ID="prizeLabel" runat="server" Text='<%# Eval("prize") %>' />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td>
                                            <asp:Button ID="Button1" runat="server" Text="Add to your Cart" CommandArgument='<%# Eval("itemid") %>' OnCommand="Button1_Command" />
                                        </td>
                                    </tr>
                                </table>
                            </li>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <li runat="server" id="itemPlaceholder" />
                            </ul>
                            <div style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            </div>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">
                                <a href='<%#Eval("picture")%>'>
                                <asp:Image ID="Image1" Height="160" Width="160" ImageUrl='<%# Bind("picture") %>' runat="server" /></a>
                                <br />type:
                                <asp:Label ID="typeLabel" runat="server" Text='<%# Eval("type") %>' />
                                <br />
                                name:
                                <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                <br />
                                description:
                                <asp:Label ID="descriptionLabel" runat="server" Text='<%# Eval("description") %>' />
                                <br />
                                prize:
                                <asp:Label ID="prizeLabel" runat="server" Text='<%# Eval("prize") %>' />
                                <br />
                                picture:
                                <asp:Label ID="pictureLabel" runat="server" Text='<%# Eval("picture") %>' />
                                <br />
                            </li>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:KrishibhavanConnectionString %>" SelectCommand="SELECT * FROM [online] WHERE ([type] = @type)">
                        <SelectParameters>
                            <asp:Parameter DefaultValue="pesticide" Name="type" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>

                </asp:View>
                <asp:View ID="view5" runat="server">
                    <div style="padding:100px">

                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderColor="Maroon" BorderStyle="Solid" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="username" HeaderText="User Name" />
                                <asp:BoundField DataField="items" HeaderText="Item" />
                                <asp:BoundField DataField="ItemName" HeaderText="Item Name" />
                                <asp:BoundField DataField="ItemPrize" HeaderText="Item Prize" />
                                <asp:BoundField DataField="picture" HeaderText="Picture" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>

                    </div>

                </asp:View>
            </asp:MultiView>
        </asp:Panel>
        <asp:Label ID="LblResult" runat="server" Text="Item added to your cart" Visible="False" Font-Names="Times New Roman" Font-Bold="True" BackColor="#CC99FF" ForeColor="#990000" Font-Size="14pt"></asp:Label>
    </div>
    <div style="padding: inherit; margin: inherit; border: thin groove #000080; width:24%; height:420px; position:relative; background-color: rgba(255,255,255,0.7); float:right">

        <br />
        <div>
            &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="60px" ImageUrl="~/Images/Buttons/Crop.png" Width="210px" OnClick="Cucumber" />
            &nbsp;&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="60px" ImageUrl="~/Images/Buttons/machinery.png" Width="210px" OnClick="Tomato" />
            &nbsp;&nbsp;
            &nbsp;<asp:ImageButton ID="ImageButton3" runat="server" Height="60px" ImageUrl="~/Images/Buttons/fert.png" Width="210px" OnClick="Beans" />
            &nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;<asp:ImageButton ID="ImageButton4" runat="server" Height="60px" ImageUrl="~/Images/Buttons/pes.png" Width="210px" OnClick="Guard" />
         
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;

            <br />
            <asp:ImageButton ID="ImageButton5" runat="server" Height="116px" ImageUrl="~/Images/Buttons/cart.png" Width="222px" OnClick="Cart_Click" />

        </div>
    </div>

</asp:Content>
