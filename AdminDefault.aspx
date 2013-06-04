<%@ Page Title="AdminHome Page" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true"
    CodeFile="AdminDefault.aspx.cs" Inherits="_Default" %>


<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
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
    
    <div style="border: thin ridge #0000FF; height: 100px; width: 69%; position: absolute; margin: inherit; top:150px; padding:150px; background-color:rgba(255, 255, 255, 0.7)">
        
        <asp:Label ID="Label1" runat="server" Text="Welcome administrator" BackColor="#3399FF" BorderColor="#990000" BorderStyle="Groove" BorderWidth="5px" ForeColor="White" Font-Size="40px" Font-Names="Times New Roman" Width="388px"></asp:Label>
        <br />
        <a href="AdminViewOrder.aspx" style="float:right;font-family:Verdana">View New Order</a><br />
        <br /><br />
        <a href="AdminViewDeliver.aspx" style="float:right;font-family:Verdana">View items still to deliver</a>
        <br />
        <br /><br />
        <a href="AdminChangePassword.aspx" style="float:right;font-family:Verdana">Change Password</a>
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Logout" OnClick="Logout_Click" />
        
    </div>
        <%--<div style="height: 50px; background-color:rgba(255,255,255,0.7); text-align:center; position:relative; top: 288px; margin-top: 74px;">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Images/friday's-weather-forecast-unit-4_01.png" ImageAlign="AbsMiddle" height="50px" Width="300px" OnClick="ImageButton1_Click"/>
        </div>--%>
</asp:Content>
