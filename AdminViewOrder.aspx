<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminViewOrder.aspx.cs" Inherits="AdminViewOrder" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div style="width:68%; height:390px; padding-left:200px; padding-right:200px; background-color:rgba(255, 255, 255, 0.7)">
        <%--<asp:Label ID="testlbl" runat="server" Visible="false"></asp:Label>--%>
        <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" Width="100%" Height="390px">
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="cartID" DataSourceID="OrderView">
                <AlternatingItemTemplate>
                    <li style="background-color: #FFF8DC;">
                        <table width="100%">
                            <tr>
                                <td>
                                    User Name
                                </td>
                                <td style="text-align:center">
                                    :
                                </td>
                                <td>
                                    <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                                </td>
                                <td rowspan="4" style="text-align:right">
                                    <a href='<%#Eval("picture")%>' style="float:right">
                                        <asp:Image ID="Image1" Height="160" Width="160" ImageUrl='<%# Bind("picture") %>' runat="server" />
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Item Purchased
                                </td>
                                <td style="text-align:center">
                                    :
                                </td>
                                <td>
                                    <asp:Label ID="ItemNameLabel" runat="server" Text='<%# Eval("ItemName") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Quantity
                                </td>
                                <td style="text-align:center">
                                    :
                                </td>
                                <td>
                                    <asp:Label ID="AmontLabel" runat="server" Text='<%# Eval("Amont") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Prize
                                </td>
                                <td style="text-align:center">
                                    :
                                </td>
                                <td>
                                    <asp:Label ID="ItemPrizeLabel" runat="server" Text='<%# Eval("ItemPrize") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <asp:Button ID="EditButton" runat="server" CommandArgument='<%# Eval("cartID") %>' OnCommand="EditButton_Command" Width="60px" Text="Grand" />
                                </td>
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Width="60px" Text="Delete" />
                                </td>
                            </tr>
                        </table>
                    </li>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <li style="background-color: #008A8C;color: #FFFFFF;">username:
                        <asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("username") %>' />
                        <br />
                        items:
                        <asp:TextBox ID="itemsTextBox" runat="server" Text='<%# Bind("items") %>' />
                        <br />
                        cartID:
                        <asp:Label ID="cartIDLabel1" runat="server" Text='<%# Eval("cartID") %>' />
                        <br />
                        ItemName:
                        <asp:TextBox ID="ItemNameTextBox" runat="server" Text='<%# Bind("ItemName") %>' />
                        <br />
                        ItemPrize:
                        <asp:TextBox ID="ItemPrizeTextBox" runat="server" Text='<%# Bind("ItemPrize") %>' />
                        <br />
                        picture:
                        <asp:TextBox ID="pictureTextBox" runat="server" Text='<%# Bind("picture") %>' />
                        <br />
                        Amont:
                        <asp:TextBox ID="AmontTextBox" runat="server" AutoPostBack="true" Text='<%# Bind("Amont") %>' />
                        <br />
                        Grand:
                        <asp:TextBox ID="GrandTextBox" runat="server" Text='<%# Bind("Grand") %>' />
                        <br />
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" OnUnload="Page_Load" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </li>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    No data was returned.
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <li style="">username:
                        <asp:TextBox ID="usernameTextBox" runat="server" Text='<%# Bind("username") %>' />
                        <br />
                        items:
                        <asp:TextBox ID="itemsTextBox" runat="server" Text='<%# Bind("items") %>' />
                        <br />
                        ItemName:
                        <asp:TextBox ID="ItemNameTextBox" runat="server" Text='<%# Bind("ItemName") %>' />
                        <br />
                        ItemPrize:
                        <asp:TextBox ID="ItemPrizeTextBox" runat="server" Text='<%# Bind("ItemPrize") %>' />
                        <br />
                        picture:
                        <asp:TextBox ID="pictureTextBox" runat="server" Text='<%# Bind("picture") %>' />
                        <br />
                        Amont:
                        <asp:TextBox ID="AmontTextBox" runat="server" Text='<%# Bind("Amont") %>' />
                        <br />
                        Grand:
                        <asp:TextBox ID="GrandTextBox" runat="server" Text='<%# Bind("Grand") %>' />
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
                                <td>
                                    User Name
                                </td>
                                <td style="text-align:center">
                                    :
                                </td>
                                <td>
                                    <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                                </td>
                                <td rowspan="4" style="text-align:right">
                                    <a href='<%#Eval("picture")%>' style="float:right">
                                        <asp:Image ID="Image1" Height="160" Width="160" ImageUrl='<%# Bind("picture") %>' runat="server" />
                                    </a>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Item Purchased
                                </td>
                                <td style="text-align:center">
                                    :
                                </td>
                                <td>
                                    <asp:Label ID="ItemNameLabel" runat="server" Text='<%# Eval("ItemName") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Quantity
                                </td>
                                <td style="text-align:center">
                                    :
                                </td>
                                <td>
                                    <asp:Label ID="AmontLabel" runat="server" Text='<%# Eval("Amont") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    Prize
                                </td>
                                <td style="text-align:center">
                                    :
                                </td>
                                <td>
                                    <asp:Label ID="ItemPrizeLabel" runat="server" Text='<%# Eval("ItemPrize") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
                                    <asp:Button ID="EditButton" runat="server" CommandArgument='<%# Eval("cartID") %>' OnCommand="EditButton_Command" Width="60px" Text="Grand" />
                                </td>
                                <td>
                                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Width="60px" Text="Delete" />
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
                    <li style="background-color: #008A8C;font-weight: bold;color: #FFFFFF;">username:
                        <asp:Label ID="usernameLabel" runat="server" Text='<%# Eval("username") %>' />
                        <br />
                        items:
                        <asp:Label ID="itemsLabel" runat="server" Text='<%# Eval("items") %>' />
                        <br />
                        cartID:
                        <asp:Label ID="cartIDLabel" runat="server" Text='<%# Eval("cartID") %>' />
                        <br />
                        ItemName:
                        <asp:Label ID="ItemNameLabel" runat="server" Text='<%# Eval("ItemName") %>' />
                        <br />
                        ItemPrize:
                        <asp:Label ID="ItemPrizeLabel" runat="server" Text='<%# Eval("ItemPrize") %>' />
                        <br />
                        picture:
                        <asp:Label ID="pictureLabel" runat="server" Text='<%# Eval("picture") %>' />
                        <br />
                        Amont:
                        <asp:Label ID="AmontLabel" runat="server" Text='<%# Eval("Amont") %>' />
                        <br />
                        Grand:
                        <asp:Label ID="GrandLabel" runat="server" Text='<%# Eval("Grand") %>' />
                        <br />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    </li>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="OrderView" runat="server" ConnectionString="<%$ ConnectionStrings:KrishibhavanConnectionString %>" DeleteCommand="DELETE FROM [cart] WHERE [cartID] = @cartID" InsertCommand="INSERT INTO [cart] ([username], [items], [ItemName], [ItemPrize], [picture], [Amont], [Grand]) VALUES (@username, @items, @ItemName, @ItemPrize, @picture, @Amont, @Grand)" SelectCommand="SELECT * FROM [cart] WHERE ([Grand] = @Grand)" UpdateCommand="UPDATE [cart] SET [username] = @username, [items] = @items, [ItemName] = @ItemName, [ItemPrize] = @ItemPrize, [picture] = @picture, [Amont] = @Amont, [Grand] = @Grand WHERE [cartID] = @cartID">
                <DeleteParameters>
                    <asp:Parameter Name="cartID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="items" Type="Int32" />
                    <asp:Parameter Name="ItemName" Type="String" />
                    <asp:Parameter Name="ItemPrize" Type="Decimal" />
                    <asp:Parameter Name="picture" Type="String" />
                    <asp:Parameter Name="Amont" Type="Double" />
                    <asp:Parameter Name="Grand" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="1" Name="Grand" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="username" Type="String" />
                    <asp:Parameter Name="items" Type="Int32" />
                    <asp:Parameter Name="ItemName" Type="String" />
                    <asp:Parameter Name="ItemPrize" Type="Decimal" />
                    <asp:Parameter Name="picture" Type="String" />
                    <asp:Parameter Name="Amont" Type="Double" />
                    <asp:Parameter Name="Grand" Type="Int32" />
                    <asp:Parameter Name="cartID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </asp:Panel>
    </div>

</asp:Content>