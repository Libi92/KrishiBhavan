using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SiteMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
    protected void liclick(object sender, MenuEventArgs e)
    {
        var myLI = (System.Web.UI.HtmlControls.HtmlControl)sender;
        //  return (myLI.);
    }
    protected void LoginStatus1_LoggingOut1(object sender, LoginCancelEventArgs e)
    {
        Session.Clear();//clear session
        Session.Abandon();//Abandon session
        HttpContext.Current.Response.Cache.SetCacheability(HttpCacheability.NoCache);
        HttpContext.Current.Response.Cache.SetNoServerCaching();
        HttpContext.Current.Response.Cache.SetNoStore();
        Session.Abandon();
        Response.Redirect("Default.aspx");
    }
}
