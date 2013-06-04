<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminAddEvent.aspx.cs" Inherits="AdminAddEvent" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div style="width:72%; height:400px; background-color:rgba(255, 255, 255, 0.7); position:absolute; padding-left:250px">
        <div style="float:right;margin-top:50px;margin-right:50px;font-family:Verdana">
            <asp:HyperLink ID="HyperLink1" runat="server" Text="Edit or Delete an Event" NavigateUrl="~/AdminEditDltEvnt.aspx"></asp:HyperLink>
        </div>
            <asp:Panel ID="Panel1" runat="server" Width="500px" Height="390px" ScrollBars="Auto" BackImageUrl="~/Images/papr.jpg" BorderStyle="Groove">
            <table width="100%">
                <tr>
                    <td style="width:50%">

                        &nbsp;&nbsp;

                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Event"></asp:Label>

                    </td>
                    <td style="width:50%">

                        <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*must required" ForeColor="Red" ControlToValidate="TextBox1" Font-Size="XX-Small"></asp:RequiredFieldValidator>
                        <br />

                    </td>

                </tr>
                <tr>
                    <td style="width:50%">
                        &nbsp;&nbsp;
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Place"></asp:Label>
                    </td>
                    <td style="width:50%">
                        <asp:TextBox ID="TextBox2" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*must required" ForeColor="Red" ControlToValidate="TextBox2" Font-Size="XX-Small"></asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="width:50%">
                        &nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Date"></asp:Label>
                    </td>
                    <td style="width:50%">
                        <asp:TextBox ID="TextBox3" runat="server" Width="200px" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*must required" ForeColor="Red" ControlToValidate="TextBox3" Font-Size="XX-Small"></asp:RequiredFieldValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td style="width:50%">
                        &nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Contact"></asp:Label>
                    </td>
                    <td style="width:50%">
                        <asp:TextBox ID="TextBox4" runat="server" Width="200px"></asp:TextBox>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="*Enter a valid phone number" ControlToValidate="TextBox4" ForeColor="Red" ValidationExpression="^(\+91[\-\s]?)?[894]\d{9}$" Font-Size="XX-Small"></asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*must required" ForeColor="Red" ControlToValidate="TextBox4" Font-Size="XX-Small"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%">
                        &nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Details"></asp:Label>
                    </td>
                    <td style="width:50%">
                        <asp:TextBox ID="TextBox5" runat="server" Width="200px" Height="111px" TextMode="MultiLine"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*must required" ForeColor="Red" ControlToValidate="TextBox5" Font-Size="XX-Small"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click1" />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="LblResult" runat="server" Visible="False" Text="New Event Added Successfully" Font-Names="Times New Roman" Font-Bold="True" BackColor="#CC99FF" ForeColor="#990000" Font-Size="14pt"></asp:Label>
        </asp:Panel>
    </div>

</asp:Content>