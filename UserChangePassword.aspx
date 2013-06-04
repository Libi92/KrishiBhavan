<%@ Page Language="C#" MasterPageFile="~/User.master" AutoEventWireup="true" CodeFile="UserChangePassword.aspx.cs" Inherits="UserChangePassword" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style2 {
            width: 250px;
            height: 20px;
        }
        .auto-style3 {
            height: 20px;
            width: 3px;
            font-weight: bold;
        }
        .auto-style4 {
            width: 3px;
            font-weight: bold;
        }
    </style>
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div style="width:60%;height:400px;background-color:rgba(255, 255, 255, 0.7);font-family:Verdana;padding-left:250px">
        <table width="500px">
            <tr>
                <td class="auto-style2">

                    <asp:Label ID="Label1" runat="server" Text="Old Password"></asp:Label>

                </td>
                <td class="auto-style3">

                    <asp:Label ID="Label4" runat="server" Text=":"></asp:Label>

                </td>
                <td class="auto-style2">

                    <asp:TextBox ID="TextBox1" runat="server" Width="200px" TextMode="Password"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td style="width:250px">

                    <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>

                </td>
                <td class="auto-style4">

                    :</td>
                <td style="width:250px">

                    <asp:TextBox ID="TextBox2" runat="server" Width="200px" TextMode="Password"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td style="width:250px">

                    <asp:Label ID="Label3" runat="server" Text="Confirm Password"></asp:Label>

                </td>
                <td class="auto-style4">

                    :</td>
                <td style="width:250px">

                    <asp:TextBox ID="TextBox3" runat="server" Width="200px" TextMode="Password"></asp:TextBox>

                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" ErrorMessage="*Password doesnot Match" Font-Italic="False" Font-Names="Verdana" Font-Size="X-Small" ForeColor="Red"></asp:CompareValidator>

                </td>
            </tr>
            <tr>
                <td></td>
                <td></td>
                <td>

                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Done" Width="80px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Cancel" Width="80px" OnClick="Button2_Click" />

                </td>
            </tr>
        </table>
        <br /><br />
        <asp:Label ID="LblResult" runat="server" Visible="False" Font-Names="Times New Roman" Font-Bold="True" BackColor="#CC99FF" ForeColor="#990000" Font-Size="14pt"></asp:Label>
    </div>
</asp:Content>