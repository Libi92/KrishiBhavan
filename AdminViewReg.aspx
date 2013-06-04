<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminViewReg.aspx.cs" Inherits="AdminViewReg" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div style="width:79%; height:390px; text-align:center; padding-left:250px; background-color:rgba(255, 255, 255, 0.7)">
        <asp:Panel ID="Panel1" runat="server" Height="370px" Width="560px" ScrollBars="Auto">
            
            <asp:ListView ID="ListView1" runat="server" DataKeyNames="id" DataSourceID="RegInfo">
                <AlternatingItemTemplate>
                    <tr style="background-color:#FFF8DC;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                        </td>
                        <td>
                            <a href='<%#Eval("idproof")%>'>
                                <asp:Image ID="Image1" Height="60" Width="60" ImageUrl='<%# Bind("idproof") %>' runat="server" /></a>
                        </td>
                        <%--<td>
                            <asp:Label ID="emailLabel" runat="server" Visible="false" Text='<%# Eval("email") %>' />
                        </td>--%>
                        <td>
                            <asp:Label ID="authoLabel" runat="server" Text='<%# Eval("autho") %>' />
                        </td>
                        <%--<td>
                            <asp:Label ID="idproofLabel" runat="server" Visible="false" Text='<%# Eval("idproof") %>' />
                        </td>
                        <td>
                            <asp:Label ID="idLabel" runat="server" Visible="false" Text='<%# Eval("id") %>' />
                        </td>--%>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="background-color: #008A8C; color: #FFFFFF;">
                        <td>
                            <asp:Button ID="UpdateButton" runat="server" Text="Authenticate" CommandArgument='<%# Bind("email") %>' OnCommand="UpdateButton_Command" />
                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </td>
                        <td>
                            <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
                        </td>
                        <td>
                            <a href='<%#Eval("idproof")%>'>
                                <asp:Image ID="Image1" Height="60" Width="60" ImageUrl='<%# Bind("idproof") %>' runat="server" /></a>
                        </td>
                        <%--<td>
                            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        </td>--%>
                        <td>
                            <%--<asp:TextBox ID="authoTextBox" runat="server" Text='<%# Bind("autho") %>' />--%>
                        </td>
                        <%--<td>
                            <asp:textbox id="idprooftextbox" runat="server" text='<%# bind("idproof") %>' />
                        </td>
                        <td>
                            <asp:label id="idlabel1" runat="server" text='<%# eval("id") %>' />
                        </td>--%>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                        <tr style="text-align: left; font-family:'Times New Roman'; background-color:#CC99FF;font-size:16px; color:#990000; font-weight:700">
                            <td>No Registrations left for Authentication</td>
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
                            <asp:TextBox ID="fnameTextBox" runat="server" Text='<%# Bind("fname") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="emailTextBox" runat="server" Text='<%# Bind("email") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="authoTextBox" runat="server" Text='<%# Bind("autho") %>' />
                        </td>
                        <td>
                            <asp:TextBox ID="idproofTextBox" runat="server" Text='<%# Bind("idproof") %>' />
                        </td>
                        <td>&nbsp;</td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="background-color:#DCDCDC;color: #000000;">
                        <td>
                            <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                         
                            <asp:button id="editbutton" runat="server" commandname="edit" text="Edit" />
                        </td>
                        <td>
                            <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                        </td>
                        <td>
                            <a href='<%#Eval("idproof")%>'>
                                <asp:Image ID="Image1" Height="60" Width="60" ImageUrl='<%# Bind("idproof") %>' runat="server" /></a>
                        </td>
                        <%--<td>
                            <asp:Label ID="emailLabel" runat="server" Visible="false" Text='<%# Eval("email") %>' />
                        </td>--%>
                        <td>
                            <asp:label id="autholabel" runat="server" text='<%# Eval("autho") %>' />
                        </td>
                        <%--<td>
                            <asp:Label ID="idproofLabel" runat="server" Visible="false" Text='<%# Eval("idproof") %>' />
                        </td>
                        <td>
                            <asp:Label ID="idLabel" runat="server" Visible="false" Text='<%# Eval("id") %>' />
                        </td>--%>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                    <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                        <th runat="server"></th>
                                        <th runat="server">Name</th>
                                        <th id="Th1" runat="server">ID Proof</th>
                                        <%--<th runat="server">email</th>--%>
                                        <th runat="server">Authentication type</th>
                                        <%--<th runat="server">idproof</th>
                                        <th runat="server">id</th>--%>
                                    </tr>
                                    <tr id="itemPlaceholder" runat="server">
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;">
                                <asp:DataPager ID="DataPager1" runat="server">
                                    <Fields>
                                        <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                    </Fields>
                                </asp:DataPager>
                            </td>
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
                            <asp:Label ID="fnameLabel" runat="server" Text='<%# Eval("fname") %>' />
                        </td>
                        <td>
                            <asp:Label ID="emailLabel" runat="server" Text='<%# Eval("email") %>' />
                        </td>
                        <td>
                            <asp:Label ID="authoLabel" runat="server" Text='<%# Eval("autho") %>' />
                        </td>
                        <td>
                            <asp:Label ID="idproofLabel" runat="server" Text='<%# Eval("idproof") %>' />
                        </td>
                        <td>
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="RegInfo" runat="server" ConnectionString="<%$ ConnectionStrings:KrishibhavanConnectionString %>" DeleteCommand="DELETE FROM [username] WHERE [id] = @id" InsertCommand="INSERT INTO [username] ([fname], [email], [autho], [idproof]) VALUES (@fname, @email, @autho, @idproof)" SelectCommand="SELECT [fname], [email], [autho], [idproof], [id] FROM [username] WHERE ([autho] = @autho) ORDER BY [id]" UpdateCommand="UPDATE [username] SET [fname] = @fname, [email] = @email, [autho] = @autho, [idproof] = @idproof WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="fname" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="autho" Type="Int32" />
                    <asp:Parameter Name="idproof" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:Parameter DefaultValue="3" Name="autho" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="fname" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="autho" Type="Int32" />
                    <asp:Parameter Name="idproof" Type="String" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:Label ID="test" runat="server" Text="test" Visible="false"></asp:Label>
        </asp:Panel>
        <%--<asp:Label ID="Label1" runat="server" Visible="false" ></asp:Label>--%>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
</asp:Content>