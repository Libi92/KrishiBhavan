<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="passwordrecovery.aspx.cs" Inherits="passwordrecovery" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style3 {
            width: 300px;
        }
        .auto-style4 {
            height: 23px;
            width: 300px;
        }
        .auto-style5 {
            width: 300px;
            height: 25px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div style="width:79%;height:380px;background-color:rgba(255, 255, 255, 0.7);padding-top:50px;padding-left:250px">
        <h1 style="border-style: ridge;margin-left:-250px;margin-top:-45px; border-width: medium; font-family: 'Cooper Black'; font-size: large; color: #FFFFFF; text-align: center; background-color: #3399FF;">Recover your Password</h1>
        <table style="border: thin solid #000080; width: 500px; background-color: #C0C0C0; font-family: verdana, Geneva, Tahoma, sans-serif;" rules="rows">
            <tr>
                <td class="auto-style3">

                    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>

                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text=":" style="font-weight: 700"></asp:Label>
                </td>
                <td class="auto-style3">

                    <asp:TextBox ID="TextBox1" runat="server" Width="200px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style4">

                    <asp:Label ID="Label2" runat="server" Text="Date of Birth"></asp:Label>

                </td>
                <td>
                    <asp:Label ID="Label5" runat="server" Text=":" style="font-weight: 700"></asp:Label>
                </td>
                <td class="auto-style4">

                    <asp:TextBox ID="TextBox2" runat="server" Width="200px" TextMode="Date"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style5">

                    <asp:Label ID="Label3" runat="server" Text="Email Id"></asp:Label>

                </td>
                <td>
                    <asp:Label ID="Label6" runat="server" Text=":" style="font-weight: 700"></asp:Label>
                </td>
                <td class="auto-style5">

                    <asp:TextBox ID="TextBox3" runat="server" Width="200px"></asp:TextBox>

                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: center">

                    &nbsp;</td>
                <td>
                    
                </td>
                <td class="auto-style3" style="text-align: center">

                    <asp:Button ID="Button2" runat="server" Text="Ok" Width="80px" OnClick="Button2_Click" />

                &nbsp;&nbsp;&nbsp;&nbsp;

                &nbsp;<asp:Button ID="Button1" runat="server" Text="Clear" Width="80px" />

                </td>
            </tr>
        </table>
        <br />
        <asp:Label ID="LblResult" runat="server" Visible="False" Font-Names="Times New Roman" Font-Bold="True" BackColor="#CC99FF" ForeColor="#990000" Font-Size="14pt"></asp:Label>
        
        
    </div>
</asp:Content>