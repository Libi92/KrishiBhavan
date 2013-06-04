<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="help.aspx.cs" Inherits="Default2" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style3 {
            width: 94px;
        }
        .auto-style5 {
            width: 47px;
            height: 21px;
        }
        .auto-style6 {
            height: 21px;
        }
        .auto-style7 {
            height: 21px;
            width: 65px;
        }
        .auto-style8 {
            width: 65px;
        }
        .auto-style9 {
            width: 47px;
        }
        .auto-style10 {
            height: 21px;
            width: 121px;
        }
        .auto-style11 {
            width: 121px;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div style="width:100%; height:380px">
        <div style="border: thin ridge #800000; width:45%; height:380px; position:absolute; background-color:rgba(255, 255, 255, 0.7)">
            <h1 style="border-style: ridge; border-width: medium; font-family: 'Cooper Black'; font-size: large; color: #FFFFFF; text-align: center; background-color: #3399FF;">Your Feedbacks</h1>
            <blockquote>
            <table width="100%" style="border-style: groove; border-width: medium; font-family: Verdana; font-size: 14px; background-color: rgba(51,153,255,0.1);" rules="none" frame="box">
                <tr>
                    <td class="auto-style7">

                        <asp:Label ID="Label1" runat="server" Text="Comments"></asp:Label>

                    </td>
                    <td class="auto-style5">

                        <asp:Label ID="Label3" runat="server" Text=":"></asp:Label>

                    </td>
                    <td class="auto-style6">

                        <asp:TextBox ID="TextBox1" runat="server" Width="200px" Height="80px" TextMode="MultiLine"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">

                        <asp:Label ID="Label2" runat="server" Text="Suggestions"></asp:Label>

                    </td>
                    <td class="auto-style9">

                        <asp:Label ID="Label4" runat="server" Text=":"></asp:Label>

                    </td>
                    <td>

                        <asp:TextBox ID="TextBox2" runat="server" Width="200px" Height="80px" TextMode="MultiLine" style="margin-left: 0px"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">

                    </td>
                    <td class="auto-style9" colspan="1">

                        <asp:Button ID="Button1" runat="server" Text="Send" Width="80px" style="text-align: center" OnClick="Button1_Click" />

                    </td>
                    <td class="auto-style3" colspan="1">

                        <asp:Button ID="Button2" runat="server" Text="Clear" Width="80px" OnClick="Button2_Click" />

                    </td>
                </tr>
            </table>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="rcvSugg" runat="server" Visible="False" Font-Names="Times New Roman" Font-Bold="True" BackColor="#CC99FF" ForeColor="#990000" Font-Size="14pt" style="text-align: left"></asp:Label>
            </blockquote>
        </div>
        <div style="border: thin ridge #800000; width:48%; height:380px; position:relative;float:right; background-color:rgba(255, 255, 255, 0.7)">
            <h1 style="border-style: ridge; border-width: medium; font-family: 'Cooper Black'; font-size: large; color: #FFFFFF; text-align: center; background-color: #3399FF;">Need Our Help..?</h1>
            <blockquote>
            <table style="border-style: groove; border-width: medium; font-family: Verdana; font-size: 14px; background-color: rgba(51,153,255,0.1); width: 106%;" rules="none" frame="box">
                <tr>
                    <td class="auto-style10">

                        <asp:Label ID="Label5" runat="server" Text="Subject"></asp:Label>

                    </td>
                    <td class="auto-style5">

                        <asp:Label ID="Label6" runat="server" Text=":"></asp:Label>

                    </td>
                    <td class="auto-style6">

                        <asp:TextBox ID="TextBox3" runat="server" Width="200px" Height="22px" TextMode="SingleLine"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">

                        <asp:Label ID="Label7" runat="server" Text="Give your query"></asp:Label>

                    </td>
                    <td class="auto-style9">

                        <asp:Label ID="Label8" runat="server" Text=":"></asp:Label>

                    </td>
                    <td>

                        <asp:TextBox ID="TextBox4" runat="server" Width="200px" Height="80px" TextMode="MultiLine" style="margin-left: 0px"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">

                    </td>
                    <td class="auto-style9" colspan="1">

                        <asp:Button ID="Button3" runat="server" Text="Send" Width="80px" style="text-align: center" OnClick="Button3_Click" />

                    </td>
                    <td class="auto-style3" colspan="1">

                        <asp:Button ID="Button4" runat="server" Text="Clear" Width="80px" OnClick="Button4_Click" />

                    </td>
                </tr>
            </table>
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LblResult" runat="server" Visible="False" Font-Names="Times New Roman" Font-Bold="True" BackColor="#CC99FF" ForeColor="#990000" Font-Size="14pt" style="text-align: left"></asp:Label>
            </blockquote>
            </div>
        </div>
</asp:Content>