<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminAddKrOffcr.aspx.cs" Inherits="SignUp" %>


<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style2 {
            height: 42px;
        }
    </style>
    </asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div style="float:right;margin-top:50px;margin-right:50px;font-family:Verdana">
        <asp:HyperLink ID="HyperLink1" runat="server" Text="View, Edit or Delete a KrishiOfficer" NavigateUrl="~/AdminViewKrOffcr.aspx"></asp:HyperLink>
    </div>
    <div style="width:79%; height:400px; background-color:rgba(255,255,255,0.7); text-align:left; padding-left:250px">
        <asp:Label ID="LblResult" runat="server" Visible="False" Text="New Krishi Officer Added Successfully" Font-Names="Times New Roman" Font-Bold="True" BackColor="#CC99FF" ForeColor="#990000" Font-Size="14pt"></asp:Label>
     <asp:Panel ID="logon" runat="server" BorderStyle="Groove" BorderWidth="4px" Height="390px" Width="500px" ScrollBars="Auto" BackImageUrl="~/Images/papr.jpg">
        <h1 style="border-style: ridge; border-width: medium; font-family: 'Cooper Black'; font-size: large; color: #FFFFFF; text-align: center; background-color: #3399FF;">Add New Krishiofficer</h1>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
            <table style="width:100%">
                <tr id="row1" style="width:50%">
                    <td class="auto-style2">

                        &nbsp;&nbsp;

                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="First Name:"></asp:Label>
                    </td>
                    <td class="auto-style2">

                        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" Width="200px"></asp:TextBox>
                        <asp:FilteredTextBoxExtender ID="TextBox1_FilteredTextBoxExtender" runat="server" FilterType="LowercaseLetters, UppercaseLetters" TargetControlID="TextBox1">
                        </asp:FilteredTextBoxExtender>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*must required" ForeColor="Red" ControlToValidate="TextBox1" Font-Size="XX-Small"></asp:RequiredFieldValidator>

                    </td>
                </tr>
                <tr id="row2" style="width:50%">
                    <td class="auto-style2">

                        &nbsp;&nbsp;

                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Last Name:"></asp:Label>
                    </td>
                    <td class="auto-style2">

                        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px" Width="200px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="LowercaseLetters, UppercaseLetters" TargetControlID="TextBox2">
                        </asp:FilteredTextBoxExtender>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*must required" ForeColor="Red" ControlToValidate="TextBox2" Font-Size="XX-Small"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr id="row3" style="width:50%">
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Address:"></asp:Label>
                    </td>
                    <td>

                        <asp:TextBox ID="TextBox3" runat="server" Height="60px" style="margin-left: 0px" Width="200px" TextMode="MultiLine"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*must required" ForeColor="Red" ControlToValidate="TextBox3" Font-Size="XX-Small"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr id="row4" style="width:50%">
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Place of Krishibhavan:"></asp:Label>
                    </td>
                    <td>

                        <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 0px" Width="200px"></asp:TextBox>
                        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" FilterType="LowercaseLetters, UppercaseLetters" TargetControlID="TextBox4">
                        </asp:FilteredTextBoxExtender>
                    </td>
                </tr>
                <tr id="Tr1" style="width:50%">
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Date of Birth:"></asp:Label>
                    </td>
                    <td>

                        <asp:TextBox ID="TextBox9" runat="server" style="margin-left: 0px" TextMode="Date" Width="200px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*must required" ForeColor="Red" ControlToValidate="TextBox9" Font-Size="XX-Small"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr id="Tr2" style="width:50%">
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="Label11" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Gender:"></asp:Label>
                    </td>
                    <td>

                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>M</asp:ListItem>
                            <asp:ListItem>F</asp:ListItem>
                        </asp:DropDownList>

                    </td>
                </tr>
                <tr id="row5" style="width:50%">
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Email id:"></asp:Label>

                    </td>
                    <td>

                        <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 0px" Width="200px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*must required" ForeColor="Red" ControlToValidate="TextBox5" Font-Size="XX-Small"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                            ControlToValidate="TextBox5" ErrorMessage="*Enter a Valid Email Id"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" Font-Size="XX-Small"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr id="row6" style="width:50%">
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Phone No:"></asp:Label>
                    </td>
                    <td>

                        <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 0px" Width="200px"></asp:TextBox>
                        <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" FilterType="Numbers" TargetControlID="TextBox6">
                        </asp:FilteredTextBoxExtender>
                        <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="*Enter a valid phone number" ControlToValidate="TextBox6" ForeColor="Red" ValidationExpression="^(\+91[\-\s]?)?[894]\d{9}$" Font-Size="XX-Small"></asp:RegularExpressionValidator>

                    </td>
                </tr>
                <tr id="row7" style="width:50%">
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Username:"></asp:Label>
                    </td>
                    <td>

                        <asp:TextBox ID="TextBox7" runat="server" style="margin-left: 0px" Width="200px"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*must required" ForeColor="Red" ControlToValidate="TextBox7" Font-Size="XX-Small"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr id="Tr13" style="width:50%">
                    <td>
                        &nbsp;&nbsp;
                        <asp:Label ID="Label13" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Photo"></asp:Label>
                    </td>
                    <td>
                        
                        <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*must required" ForeColor="Red" ControlToValidate="FileUpload1" Font-Size="XX-Small"></asp:RequiredFieldValidator>
                    </td>
                </tr>
              
                
            </table>
         <br />
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <asp:Button ID="Button1" runat="server" Text="Submit" BorderStyle="NotSet" UseSubmitBehavior="true" OnClick="Button1_Click1" />
         <br />
         <br />
         <br />
        </asp:Panel>
    </div>
</asp:Content>