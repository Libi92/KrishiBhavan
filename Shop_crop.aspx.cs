using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Shop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
        }   
    }
    void fetch(object sender, CommandEventArgs e)
    {

     //   MultiView1.ActiveViewIndex = e;
    }
    protected void Cucumber(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void Tomato(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void Beans(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }
    protected void Guard(object sender, ImageClickEventArgs e)
    {
        MultiView1.ActiveViewIndex = 3;
    }
}