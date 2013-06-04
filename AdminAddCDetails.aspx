<%@ Page Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeFile="AdminAddCDetails.aspx.cs" Inherits="Shop" %>

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
                    <h1 style="border-style: ridge; border-width: medium; font-family: 'Cooper Black'; font-size: large; color: #FFFFFF; text-align: center; background-color: #3399FF;">Add Details of Crops</h1>
                    <div style="padding-left:200px">
                    <table width="60%" frame="box" rules="groups">
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="LblCrop1" runat="server" Text="Common Name" Font-Bold="True" Font-Names="Verdana" Font-Size="14px"></asp:Label>
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

                                <asp:Label ID="LblCrop2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Malayalam Name"></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="Semi2" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%">

                                <asp:TextBox ID="TBCrop2" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">

                                <asp:Label ID="LblCrop3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Family"></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="Semi3" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%">

                                <asp:TextBox ID="TBCrop3" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">

                                <asp:Label ID="LblCrop4" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Bottanical Name"></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="Semi4" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%">

                                <asp:TextBox ID="TBCrop4" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnCrop1" runat="server" Text="Submit" OnClick="BtnCrop1_Click" />
                    </div>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <h1 style="border-style: ridge; border-width: medium; font-family: 'Cooper Black'; font-size: large; color: #FFFFFF; text-align: center; background-color: #3399FF;">Add Details of Irrigation</h1>
                    <div style="padding-left:200px">
                    <table width="60%" frame="box" rules="groups">
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="LblIrrg1" runat="server" Text="Crop" Font-Bold="True" Font-Names="Verdana" Font-Size="14px"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Semi5" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%"> 

                                <asp:TextBox ID="TBIrrg1" runat="server" Width="200px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">

                                <asp:Label ID="LblIrrg2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Growth Stages"></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="Semi6" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%">

                                <asp:TextBox ID="TBIrrg2" runat="server" Width="200px" Height="70px" TextMode="MultiLine"></asp:TextBox>
                                
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">

                                <asp:Label ID="LblIrrg3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Crop Duration"></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="Semi7" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%">

                                <asp:TextBox ID="TBIrrg3" runat="server" Width="200px"></asp:TextBox>
                                
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">

                                <asp:Label ID="LblIrrg4" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Amount Of Water"></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="Semi8" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%">

                                <asp:TextBox ID="TBIrrg4" runat="server" Width="200px"></asp:TextBox>
                                
                            </td>
                        </tr>
                    </table>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnIrrg1" runat="server" Text="Submit" OnClick="BtnIrrg1_Click" />
                    </div>
                   </asp:View>  
                <asp:View ID="View3" runat="server">
                    <h1 style="border-style: ridge; border-width: medium; font-family: 'Cooper Black'; font-size: large; color: #FFFFFF; text-align: center; background-color: #3399FF;">Add Details of Soil</h1>
                    <div style="padding-left:200px">
                    <table width="60%" frame="box" rules="groups">
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="LblSoil1" runat="server" Text="Type of Soil" Font-Bold="True" Font-Names="Verdana" Font-Size="14px"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Semi9" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%"> 

                                <asp:TextBox ID="TBSoil1" runat="server" Width="200px"></asp:TextBox>
                                
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">

                                <asp:Label ID="LblSoil2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Details"></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="Semi10" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%">

                                <asp:TextBox ID="TBSoil2" runat="server" Width="200px" Height="110px" TextMode="MultiLine"></asp:TextBox>
                                
                            </td>
                        </tr>
                    </table>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnSoil1" runat="server" Text="Submit" OnClick="BtnSoil1_Click" />
                    </div>
                </asp:View>
                <asp:View ID="View4" runat="server">
                    <h1 style="border-style: ridge; border-width: medium; font-family: 'Cooper Black'; font-size: large; color: #FFFFFF; text-align: center; background-color: #3399FF;">Add Details of Package of Practice</h1>
                    <div style="padding-left:200px">
                    <table width="60%" frame="box" rules="groups">
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="LblPrc1" runat="server" Text="Crop" Font-Bold="True" Font-Names="Verdana" Font-Size="14px"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Semi15" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%"> 

                                <asp:TextBox ID="TBPrc1" runat="server" Width="200px"></asp:TextBox>
                                
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">

                                <asp:Label ID="LblPrc2" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Varities"></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="Semi16" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%">

                                <asp:TextBox ID="TBPrc2" runat="server" Width="200px" Height="70px" TextMode="MultiLine"></asp:TextBox>
                                
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">

                                <asp:Label ID="LblPrc3" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Preparation of Land"></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="Semi17" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%">

                                <asp:TextBox ID="TBPrc3" runat="server" Width="200px" Height="72px" TextMode="MultiLine"></asp:TextBox>
                                
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">

                                <asp:Label ID="LblPrc4" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Manuaring"></asp:Label>

                            </td>
                            <td>
                                <asp:Label ID="Semi19" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%">

                                <asp:TextBox ID="TBPrc4" runat="server" Width="200px" Height="70px" TextMode="MultiLine"></asp:TextBox>
                                
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <asp:Label ID="LblPrc5" runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="14px" Text="Plant Protection"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Semi18" runat="server" Font-Bold="True" Font-Size="14pt" Text=":"></asp:Label>
                            </td>
                            <td style="width:50%">
                                <asp:TextBox ID="TBPrc5" runat="server" Height="71px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                                
                            </td>
                        </tr>
                    </table>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnPrc1" runat="server" Text="Submit" OnClick="BtnPrc1_Click" />
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
            &nbsp;&nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="70px" ImageUrl="~/Images/Buttons/Irrigation.png" Width="230px" OnClick="Tomato" />
            &nbsp;&nbsp;<asp:ImageButton ID="ImageButton3" runat="server" Height="70px" ImageUrl="~/Images/Buttons/Soil.png" Width="230px" OnClick="Beans" />
            &nbsp;&nbsp;&nbsp;
            &nbsp;<asp:ImageButton ID="ImageButton4" runat="server" Height="70px" ImageUrl="~/Images/Buttons/Package.png" Width="230px" OnClick="Guard" />
        &nbsp;</div>
    </div>

</asp:Content>
