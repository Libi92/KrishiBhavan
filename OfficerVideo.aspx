<%@ Page Language="C#" MasterPageFile="~/Officer.master" AutoEventWireup="true" CodeFile="OfficerVideo.aspx.cs" Inherits="Video" %>




    <asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div style="height: 400px; background-color:rgba(255, 255, 255,0.7)">
        <asp:Panel ID="Panel1" runat="server" Height="400px" ScrollBars="Auto">
            <table style="width:100%; text-align:center">
            <tr style="height:50%">
                <td style="width:50%">
                    <object width="420" height="315">
                        <param name="movie" value="http://www.youtube.com/v/Fy6QVKri-pU?version=3&amp;hl=en_US"></param>
                        <param name="allowFullScreen" value="true"></param>
                        <param name="allowscriptaccess" value="always"></param>
                        <embed src="http://www.youtube.com/v/Fy6QVKri-pU?version=3&amp;hl=en_US" type="application/x-shockwave-flash" width="420" height="315" allowscriptaccess="always" allowfullscreen="true"></embed>
                    </object>
                </td>
                <td style="width:50%">
                    <object width="420" height="315">
                        <param name="movie" value="http://www.youtube.com/v/I46ftP-XWy4?hl=en_US&amp;version=3"></param>
                        <param name="allowFullScreen" value="true"></param>
                        <param name="allowscriptaccess" value="always"></param>
                        <embed src="http://www.youtube.com/v/I46ftP-XWy4?hl=en_US&amp;version=3" type="application/x-shockwave-flash" width="420" height="315" allowscriptaccess="always" allowfullscreen="true"></embed>
                    </object>
                </td>
            </tr>
            <tr style="height:50%">
                <td style="width:50%">
                    <object width="420" height="315">
                        <param name="movie" value="http://www.youtube.com/v/WdhMk1oHm6E?hl=en_US&amp;version=3"></param>
                        <param name="allowFullScreen" value="true"></param>
                        <param name="allowscriptaccess" value="always"></param>
                        <embed src="http://www.youtube.com/v/WdhMk1oHm6E?hl=en_US&amp;version=3" type="application/x-shockwave-flash" width="420" height="315" allowscriptaccess="always" allowfullscreen="true"></embed>
                    </object>
                </td>
                <td style="width:50%">
                    <object width="420" height="315">
                        <param name="movie" value="http://www.youtube.com/v/keytHldOvYY?version=3&amp;hl=en_US"></param>
                        <param name="allowFullScreen" value="true"></param>
                        <param name="allowscriptaccess" value="always"></param>
                        <embed src="http://www.youtube.com/v/keytHldOvYY?version=3&amp;hl=en_US" type="application/x-shockwave-flash" width="420" height="315" allowscriptaccess="always" allowfullscreen="true"></embed>
                    </object>
                </td>
            </tr>

        </table>
        </asp:Panel>

    </div>
    </asp:Content>
