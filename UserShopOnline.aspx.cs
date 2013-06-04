using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Shop : System.Web.UI.Page
{
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    string sqlcon = ConfigurationManager.ConnectionStrings["KrishibhavanConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
        }
        HiddenField1.Value = Session["Name"].ToString();
    }
    protected void Cucumber(object sender, EventArgs e)
    {
        HiddenField2.Value = "0";
        MultiView1.ActiveViewIndex = Convert.ToInt32(HiddenField2.Value);
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
    protected void Button1_Command(object sender, CommandEventArgs e)
    {
        int item = Convert.ToInt16(e.CommandArgument.ToString());
        SqlConnection con = new SqlConnection(sqlcon);
        con.Open();
        string cmnd1 = "SELECT name FROM [krishibhavan].[dbo].[online] WHERE itemid = " + item;
        SqlCommand cmd1 = new SqlCommand(cmnd1, con);
        string itmname = cmd1.ExecuteScalar().ToString();
        string cmnd2 = "SELECT prize FROM [krishibhavan].[dbo].[online] WHERE itemid =" + item;
        SqlCommand cmd2 = new SqlCommand(cmnd2, con);
        double itmprz = Convert.ToDouble(cmd2.ExecuteScalar().ToString());
        string cmnd3 = "SELECT picture FROM [krishibhavan].[dbo].[online] WHERE itemid =" + item;
        SqlCommand cmd3 = new SqlCommand(cmnd3, con);
        string itmpic = cmd3.ExecuteScalar().ToString();

        string cmnd = "INSERT INTO [krishibhavan].[dbo].[cart] (username,items,ItemName,ItemPrize,picture,Amont,Grand) VALUES ('" + Session["Name"].ToString() + "'," + item + ",'" + itmname + "'," + itmprz + ",'" + itmpic + "',1,0)";
        SqlCommand cmd = new SqlCommand(cmnd, con);
        cmd.ExecuteScalar();
        LblResult.Visible = true;
        //Response.Redirect("UserShopOnline.aspx");
    }
    protected void Cart_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("UserCart.aspx");

    }

}