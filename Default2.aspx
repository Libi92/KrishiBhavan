<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style2 {
            width: 268435456px;
        }
    </style>
    <script type="text/javascript" language="javascript">
        window.history.forward(1);
        document.attachEvent("onkeydown", my_onkeydown_handler);
        function my_onkeydown_handler() {
            switch (event.keyCode) {
                case 116: // F5;
                    event.returnValue = false;
                    event.keyCode = 0;
                    window.status = "We have disabled F5";
                    break;
            }
        }
    </script>
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    
</asp:Content>
