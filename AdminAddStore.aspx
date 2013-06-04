<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminAddStore.aspx.cs" Inherits="Shop" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style2 {
            width: 41%;
        }
    </style>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div style="padding: inherit; margin: inherit; border: thin groove #000080; width:75%; height:390px; background-color: rgba(255, 255, 255,0.7); float:left">
        <asp:Panel ID="Panel1" runat="server" background-color="rgba(255, 255, 255,0.7)" BorderStyle="Groove" BorderWidth="2px" ScrollBars="Auto" Height="380px" style="text-align: justify">
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <h1 style="border-style: ridge; border-width: medium; font-family: 'Cooper Black'; font-size: large; color: #FFFFFF; text-align: center; background-color: #3399FF;">Add New Crop</h1>
                    <div style="padding-left:200px">
                    <table width="60%" frame="box" rules="groups">
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="LblCrop1" runat="server" Text="Name" Font-Bold="True" Font-Names="Verdana" Font-Size="14px"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Semi1" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%"> 

                                <asp:TextBox ID="TBCrop1" runat="server" Width="200px"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">

                                <asp:Label ID="LblCrop2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Description"></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="Semi2" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%">

                                <asp:TextBox ID="TBCrop2" runat="server" Width="200px" Height="100px" TextMode="MultiLine"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">

                                <asp:Label ID="LblCrop3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Price (in Rs)"></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="Semi3" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%">

                                <asp:TextBox ID="TBCrop3" runat="server" Width="200px"></asp:TextBox>
                                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" FilterType="Numbers" TargetControlID="TBCrop3">
                        </asp:FilteredTextBoxExtender>

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">

                                <asp:Label ID="LblCrop4" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Picture"></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="Semi4" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%">

                                

                                <asp:FileUpload ID="FileUpload1" runat="server" Width="200px" />
                            </td>
                        </tr>
                    </table>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnCrop1" runat="server" Text="Submit" OnClick="BtnCrop1_Click" />
           
           
                    </div>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <h1 style="border-style: ridge; border-width: medium; font-family: 'Cooper Black'; font-size: large; color: #FFFFFF; text-align: center; background-color: #3399FF;">Add New Machinery</h1>
                    <div style="padding-left:200px">
                    <table width="60%" frame="box" rules="groups">
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="LblMach1" runat="server" Text="Name" Font-Bold="True" Font-Names="Verdana" Font-Size="14px"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Semi5" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%"> 

                                <asp:TextBox ID="TBMach1" runat="server" Width="200px"></asp:TextBox>
                                
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">

                                <asp:Label ID="LblMach2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Description"></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="Semi6" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%">

                                <asp:TextBox ID="TBMach2" runat="server" Width="200px" Height="100px" TextMode="MultiLine"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">

                                <asp:Label ID="LblMach3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Price (in Rs)"></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="Semi7" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%">

                                <asp:TextBox ID="TBMach3" runat="server" Width="200px"></asp:TextBox>
                                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" FilterType="Numbers" TargetControlID="TBMach3">
                        </asp:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">

                                <asp:Label ID="LblMach4" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Picture"></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="Semi8" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%">

                                <asp:FileUpload ID="FileUpload2" runat="server" Width="200px" />

                            </td>
                        </tr>
                    </table>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnMach1" runat="server" Text="Submit" OnClick="BtnMach1_Click" />
                    </div>
                   </asp:View>
                <asp:View ID="View3" runat="server">
                    <h1 style="border-style: ridge; border-width: medium; font-family: 'Cooper Black'; font-size: large; color: #FFFFFF; text-align: center; background-color: #3399FF;">Add New Fertilizer</h1>
                    <div style="padding-left:200px">
                    <table width="60%" frame="box" rules="groups">
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="LblFert1" runat="server" Text="Name" Font-Bold="True" Font-Names="Verdana" Font-Size="14px"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Semi9" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%"> 

                                <asp:TextBox ID="TBFert1" runat="server" Width="200px"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">

                                <asp:Label ID="LblFert2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Description"></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="Semi10" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%">

                                <asp:TextBox ID="TBFert2" runat="server" Width="200px" Height="100px" TextMode="MultiLine"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">

                                <asp:Label ID="LblFert3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Price (in Rs)"></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="Semi11" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%">

                                <asp:TextBox ID="TBFert3" runat="server" Width="200px"></asp:TextBox>
                                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers" TargetControlID="TBFert3">
                                </asp:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">

                                <asp:Label ID="LblFert4" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Picture"></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="Semi12" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%">

                                <asp:FileUpload ID="FileUpload3" runat="server" Width="200px" />

                            </td>
                        </tr>
                    </table>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnFert1" runat="server" Text="Submit" OnClick="BtnFert1_Click" />
                    </div>
                   </asp:View>
                <asp:View ID="View4" runat="server">
                    <h1 style="border-style: ridge; border-width: medium; font-family: 'Cooper Black'; font-size: large; color: #FFFFFF; text-align: center; background-color: #3399FF;">Add New Pesticide</h1>
                    <div style="padding-left:200px">
                    <table width="60%" frame="box" rules="groups">
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="LblPest1" runat="server" Text="Name" Font-Bold="True" Font-Names="Verdana" Font-Size="14px"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Semi13" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%"> 

                                <asp:TextBox ID="TBPest1" runat="server" Width="200px"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">

                                <asp:Label ID="LblPest2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Description"></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="Semi14" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%">

                                <asp:TextBox ID="TBPest2" runat="server" Width="200px" Height="100px" TextMode="MultiLine"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">

                                <asp:Label ID="LblPest3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Price (in Rs)"></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="Semi15" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%">

                                <asp:TextBox ID="TBPest3" runat="server" Width="200px"></asp:TextBox>
                                <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" FilterType="Numbers" TargetControlID="TBPest3">
                        </asp:FilteredTextBoxExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">

                                <asp:Label ID="LblPest4" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Picture"></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="Semi16" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%">

                                <asp:FileUpload ID="FileUpload4" runat="server" Width="200px" />

                            </td>
                        </tr>
                    </table>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnPest1" runat="server" Text="Submit" OnClick="BtnPest1_Click" />
                    </div>
                   </asp:View>
            </asp:MultiView>
        </asp:Panel>
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="LblResult" runat="server" Visible="False" Font-Names="Times New Roman" Font-Bold="True" BackColor="#CC99FF" ForeColor="#990000" Font-Size="14pt"></asp:Label>
    </div>
    <div style="padding: inherit; margin: inherit; border: thin groove #000080; width:24%; height:390px; position:relative; background-color: rgba(255,255,255,0.7); float:right">

        <br />
        <div>
            &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="70px" ImageUrl="~/Images/Buttons/Crop.png" Width="230px" OnClick="Cucumber" />
            &nbsp;&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="70px" ImageUrl="~/Images/Buttons/machinery.png" Width="230px" OnClick="Tomato" />
            &nbsp;&nbsp;<asp:ImageButton ID="ImageButton3" runat="server" Height="70px" ImageUrl="~/Images/Buttons/fert.png" Width="230px" OnClick="Beans" />
            &nbsp;&nbsp;&nbsp;
            &nbsp;<asp:ImageButton ID="ImageButton4" runat="server" Height="70px" ImageUrl="~/Images/Buttons/pes.png" Width="230px" OnClick="Guard" />
        &nbsp;</div>
    </div>

</asp:Content>
