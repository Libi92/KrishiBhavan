<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminViewKrOffcr.aspx.cs" Inherits="AdminViewKrOffcr" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div style="width:100%; height:380px; background-color:rgba(255, 255, 255, 0.7)">
        <asp:Panel ID="container" runat="server" Width="100%" Height="390px" ScrollBars="Auto">
        <asp:ListView ID="ListView1" runat="server" DataSourceID="KrOffcrList" GroupItemCount="3" DataKeyNames="id">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color:#FFF8DC;">
                    
                    <table style="width: 100%;">
                        <tr>
                            <td><h1 style="font-weight:700; font-size:16px;color:brown">Name:</h1></td>
                            <td><asp:Label ID="Label1" runat="server" Text='<%# Eval("fname") %>' />&nbsp
                                    <asp:Label ID="snameLabel" runat="server" Text='<%# Eval("sname") %>' /></td>
                            <td rowspan="6">
                                <a href='<%#Eval("idproof")%>' style="float:right">
                                    <asp:Image ID="Image2" Height="80" Width="80" ImageUrl='<%# Bind("idproof") %>' runat="server" />
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td><h1 style="font-weight:700; font-size:16px;color:brown">Place of KrishiOffice:</h1></td>
                            <td><asp:Label ID="placeofkrishiLabel" runat="server" Text='<%# Eval("placeofkrishi") %>' /></td>
                        </tr>
                        <tr>
                            <td><h1 style="font-weight:700; font-size:16px;color:brown">Phone:</h1></td>
                            <td><asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' /></td>
                        </tr>
                        <tr>
                            <td><h1 style="font-weight:700; font-size:16px;color:brown">email:</h1></td>
                            <td><asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' /></td>
                        </tr>
                        <tr>
                            <td><h1 style="font-weight:700; font-size:16px;color:brown">Gender:</h1></td>
                            <td><asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' /></td>
                        </tr>
                        <tr>
                            <td><asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" /></td>
                            <td><asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" /></td>
                        </tr>
                    </table>
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">fname:
                    <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
                    <br />sname:
                    <asp:TextBox ID="snameTextBox" runat="server" Text='<%# Bind("sname") %>' />
                    <br />placeofkrishi:
                    <asp:TextBox ID="placeofkrishiTextBox" runat="server" Text='<%# Bind("placeofkrishi") %>' />
                    <br />phone:
                    <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                    <br />email:
                    <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                    <br />Gender:
                    <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                    <br />idproof:
                    <asp:TextBox ID="idproofTextBox" runat="server" Text='<%# Bind("idproof") %>' />
                    <br />
                    id:
                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br /></td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
<td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">fname:
                    <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
                    <br />sname:
                    <asp:TextBox ID="snameTextBox" runat="server" Text='<%# Bind("sname") %>' />
                    <br />placeofkrishi:
                    <asp:TextBox ID="placeofkrishiTextBox" runat="server" Text='<%# Bind("placeofkrishi") %>' />
                    <br />phone:
                    <asp:TextBox ID="phoneTextBox" runat="server" Text='<%# Bind("phone") %>' />
                    <br />email:
                    <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                    <br />Gender:
                    <asp:TextBox ID="GenderTextBox" runat="server" Text='<%# Bind("Gender") %>' />
                    <br />idproof:
                    <asp:TextBox ID="idproofTextBox" runat="server" Text='<%# Bind("idproof") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br /></td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color:#DCDCDC;color: #000000">
                    
                    <table style="width: 100%;">
                        <tr>
                            <td><h1 style="font-weight:700; font-size:16px;color:brown">Name:</h1></td>
                            <td><asp:Label ID="Label1" runat="server" Text='<%# Eval("fname") %>' />&nbsp
                                    <asp:Label ID="snameLabel" runat="server" Text='<%# Eval("sname") %>' />
                            </td>
                            <td rowspan="6">
                                <a href='<%#Eval("idproof")%>' style="float:right">
                                    <asp:Image ID="Image1" Height="80" Width="80" ImageUrl='<%# Bind("idproof") %>' runat="server" />
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td><h1 style="font-weight:700; font-size:16px;color:brown">Place of KrishiOffice:</h1></td>
                            <td><asp:Label ID="placeofkrishiLabel" runat="server" Text='<%# Eval("placeofkrishi") %>' /></td>
                        </tr>
                        <tr>
                            <td><h1 style="font-weight:700; font-size:16px;color:brown">Phone:</h1></td>
                            <td><asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' /></td>
                        </tr>
                        <tr>
                            <td><h1 style="font-weight:700; font-size:16px;color:brown">email:</h1></td>
                            <td><asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' /></td>
                        </tr>
                        <tr>
                            <td><h1 style="font-weight:700; font-size:16px;color:brown">Gender:</h1></td>
                            <td><asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' /></td>
                        </tr>
                        <tr>
                            <td><asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" /></td>
                            <td><asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" /></td>
                        </tr>
                    </table>
                    
                    </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                            <asp:DataPager ID="DataPager1" runat="server" PageSize="12">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                    <asp:NumericPagerField />
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">fname:
                    <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                    <br />sname:
                    <asp:Label ID="snameLabel" runat="server" Text='<%# Eval("sname") %>' />
                    <br />placeofkrishi:
                    <asp:Label ID="placeofkrishiLabel" runat="server" Text='<%# Eval("placeofkrishi") %>' />
                    <br />phone:
                    <asp:Label ID="phoneLabel" runat="server" Text='<%# Eval("phone") %>' />
                    <br />email:
                    <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                    <br />Gender:
                    <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                    <br />idproof:
                    <asp:Label ID="idproofLabel" runat="server" Text='<%# Eval("idproof") %>' />
                    <br />id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <br />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    <br />
                </td>
            </SelectedItemTemplate>
        </asp:ListView>
        </asp:Panel>
        <asp:SqlDataSource ID="KrOffcrList" runat="server" ConnectionString="<%$ ConnectionStrings:KrishibhavanConnectionString %>" SelectCommand="SELECT [fname], [sname], [placeofkrishi], [phone], [email], [Gender], [idproof], [id] FROM [username] WHERE ([autho] = @autho)" DeleteCommand="DELETE FROM [username] WHERE [id] = @id" InsertCommand="INSERT INTO [username] ([fname], [sname], [placeofkrishi], [phone], [email], [Gender], [idproof]) VALUES (@fname, @sname, @placeofkrishi, @phone, @email, @Gender, @idproof)" UpdateCommand="UPDATE [username] SET [fname] = @fname, [sname] = @sname, [placeofkrishi] = @placeofkrishi, [phone] = @phone, [email] = @email, [Gender] = @Gender, [idproof] = @idproof WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="sname" Type="String" />
                <asp:Parameter Name="placeofkrishi" Type="String" />
                <asp:Parameter Name="phone" Type="Int64" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="idproof" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="autho" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="fname" Type="String" />
                <asp:Parameter Name="sname" Type="String" />
                <asp:Parameter Name="placeofkrishi" Type="String" />
                <asp:Parameter Name="phone" Type="Int64" />
                <asp:Parameter Name="email" Type="String" />
                <asp:Parameter Name="Gender" Type="String" />
                <asp:Parameter Name="idproof" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </div>

</asp:Content>