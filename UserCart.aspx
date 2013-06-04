<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="UserCart.aspx.cs" Inherits="UserCart" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div style="width: 100%; height: 390px; background-color: rgba(255,255,255,0.7); font-family: Verdana">
        <asp:Label ID="LblAmnt" BackColor="BlueViolet" Font-Bold="true" ForeColor="White" runat="server"></asp:Label>

        <h1 style="border-style: ridge; border-width: medium; font-family: 'Cooper Black'; font-size: large; color: #FFFFFF; text-align: center; background-color: #3399FF;">Your Cart</h1>
        <asp:Panel ID="Panel1" runat="server" Width="80%" Height="340px" ScrollBars="Auto">
        <asp:ListView ID="ListView5" runat="server" DataKeyNames="cartID" DataSourceID="Cart5">
            <AlternatingItemTemplate>
                <li style="background-color: #FFF8DC;">
                    <table width="100%">
                        <tr>
                            <td>Item Added
                            </td>
                            <td style="text-align: center">:
                            </td>
                            <td>
                                <asp:Label ID="ItemNameLabel" runat="server" Text='<%# Eval("ItemName") %>' />
                            </td>
                            <td rowspan="4" style="text-align: right">
                                <a href='<%#Eval("picture")%>' style="float: right">
                                    <asp:Image ID="Image1" Height="160" Width="160" ImageUrl='<%# Bind("picture") %>' runat="server" />
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>Quantity
                            </td>
                            <td style="text-align: center">:
                            </td>
                            <td>
                                <asp:Label ID="AmontLabel" runat="server" Text='<%# Eval("Amont") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Prize
                            </td>
                            <td style="text-align: center">:
                            </td>
                            <td>
                                <asp:Label ID="ItemPrizeLabel" runat="server" Text='<%# Eval("ItemPrize") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                
                            </td>
                            <td>
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Width="100px" Text="Change Quantity" />
                            </td>
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Width="80px" Text="Remove" />
                            </td>
                        </tr>
                    </table>
                </li>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <li style="background-color: #008A8C; color: #FFFFFF;">Quantity:
                                    <asp:TextBox ID="AmontTextBox" runat="server" Text='<%# Bind("Amont") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
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
                <li style="background-color: #DCDCDC; color: #000000;">
                    <table width="100%">
                        <tr>
                            <td>Item Added
                            </td>
                            <td style="text-align: center">:
                            </td>
                            <td>
                                <asp:Label ID="ItemNameLabel" runat="server" Text='<%# Eval("ItemName") %>' />
                            </td>
                            <td rowspan="4" style="text-align: right">
                                <a href='<%#Eval("picture")%>' style="float: right">
                                    <asp:Image ID="Image1" Height="160" Width="160" ImageUrl='<%# Bind("picture") %>' runat="server" />
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td>Quantity
                            </td>
                            <td style="text-align: center">:
                            </td>
                            <td>
                                <asp:Label ID="AmontLabel" runat="server" Text='<%# Eval("Amont") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>Prize
                            </td>
                            <td style="text-align: center">:
                            </td>
                            <td>
                                <asp:Label ID="ItemPrizeLabel" runat="server" Text='<%# Eval("ItemPrize") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                
                            </td>
                            <td>
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Width="100px" Text="Change Quantity" />
                            </td>
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Width="80px" Text="Remove" />
                            </td>
                        </tr>
                    </table>
                </li>
            </ItemTemplate>
            <LayoutTemplate>
                <ul id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                    <li runat="server" id="itemPlaceholder" />
                </ul>
                <div style="text-align: center; background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif; color: #000000;">
                </div>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <li style="background-color: #008A8C; font-weight: bold; color: #FFFFFF;">username:
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
        <asp:SqlDataSource ID="Cart5" runat="server" ConnectionString="<%$ ConnectionStrings:KrishibhavanConnectionString %>" DeleteCommand="DELETE FROM [cart] WHERE [cartID] = @cartID" InsertCommand="INSERT INTO [cart] ([username], [items], [ItemName], [ItemPrize], [picture], [Amont], [Grand]) VALUES (@username, @items, @ItemName, @ItemPrize, @picture, @Amont, @Grand)" SelectCommand="SELECT * FROM [cart] WHERE (([username] = @username) AND ([Grand] = @Grand))" UpdateCommand="UPDATE [cart] SET [Amont] = @Amont WHERE [cartID] = @cartID">
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
                <asp:ControlParameter ControlID="HiddenField1" Name="username" PropertyName="Value" Type="String" />
                <asp:Parameter DefaultValue="0" Name="Grand" Type="Int32" />
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
        <div style="float:right;margin-top: -260px;margin-right:60px">
            <asp:ImageButton ID="ImageButton1" runat="server" Width="160px" Height="160px" ImageUrl="~/Images/Buttons/buynow copy.png" OnClick="ImageButton1_Click" />
            <asp:ConfirmButtonExtender ID="ImageButton1_ConfirmButtonExtender" runat="server" ConfirmText="Click Ok to Confirm" TargetControlID="ImageButton1">
            </asp:ConfirmButtonExtender>
        </div>
    </div>
    <asp:HiddenField ID="HiddenField1" runat="server" />

</asp:Content>