<%@ Page Language="C#" MasterPageFile="~/Officer.master" AutoEventWireup="true" CodeFile="OfficerGalary.aspx.cs" Inherits="Galary" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div style="height:400px; background-color:rgba(255, 255, 255, 0.7)">
    <asp:Panel ID="Panel1" runat="server" background-color="rgba(255, 255, 255,0.7)" Height="400px" ScrollBars="Auto">
        <table style="width:100%; height:400px; text-align:center" rules="groups" frame="border">
            <tr style="height:200px">
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Agri_Galary/28.07.2012_minister_full_05.jpg" Height="300px" />
                    <div style="float:initial;background-color:rgba(0, 0, 0, 0.3)"><p style="color: #FFFFFF; font-weight: bold; font-style: normal; font-size: medium; font-family: Verdana, Geneva, Tahoma, sans-serif">Agricultural Minister's Programme on 26.07.2012 at Palakkad</p></div>
                </td>
                <td>
                    <asp:Image ID="Image2" runat="server" Height="300px" ImageUrl="~/Images/Agri_Galary/vdp_ingauguration_01.jpg" />
                    <div style="float:initial;background-color:rgba(0, 0, 0, 0.3)"><p style="color: #FFFFFF; font-weight: bold; font-style: normal; font-size: medium; font-family: Verdana, Geneva, Tahoma, sans-serif">Vegetable Development Programme - Inauguration</p></div>
                </td>
            </tr>
            <tr style="height:400px">
                <td colspan="2">
                    <asp:Image ID="Image5" runat="server" ImageUrl="~/Images/Agri_Galary/vdp_ingauguration_02.jpg" Height="600px" />
                    <div style="float:initial;background-color:rgba(0, 0, 0, 0.3)"><p style="color: #FFFFFF; font-weight: bold; font-style: normal; font-size: medium; font-family: Verdana, Geneva, Tahoma, sans-serif">Vegetable Development Programme - Inauguration</p></div>
                </td>
            </tr>
            <tr style="height:200px">
                <td>
                    <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/Agri_Galary/28.07.2012_minister_full_09.jpg" Height="300px" />
                    <div style="float:initial;background-color:rgba(0, 0, 0, 0.3)"><p style="color: #FFFFFF; font-weight: bold; font-style: normal; font-size: medium; font-family: Verdana, Geneva, Tahoma, sans-serif">Agricultural Minister's Programme on 26.07.2012 at Palakkad</p></div>
                </td>
                <td>
                    <asp:Image ID="Image4" runat="server" imageurl="Images/Agri_Galary/punching_29072012_01.jpg" Height="300px"/>
                    <div style="float:initial;background-color:rgba(0, 0, 0, 0.3)"><p style="color: #FFFFFF; font-weight: bold; font-style: normal; font-size: medium; font-family: Verdana, Geneva, Tahoma, sans-serif">Electronic Attendance Machine at Directorate - Inauguration</p></div>
                </td>
            </tr>
        </table>
    </asp:Panel>
    </div>
    
    
</asp:Content>