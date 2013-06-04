using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;



public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con;
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string sql;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["KrishibhavanConnectionString"].ConnectionString);
        con.Open();
        sql = "select * from krishibhavan.dbo.event";
        da = new SqlDataAdapter(sql, con);
        da.Fill(ds);
        GridView2.DataSource = ds;
        GridView2.DataBind();
        con.Close();
        Label1.Text = "Welcome : " + Session["Name"].ToString();
        Label1.Visible = true;
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.accuweather.com/en/in/kochi/204289/weather-forecast/204289");
    }


    protected void check_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection con;
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        string sql;
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["KrishibhavanConnectionString"].ConnectionString);
        con.Open();
        sql = "select * from krishibhavan.dbo.krishi where district ='" + DropDownList1.SelectedItem.Text + "'";
        da = new SqlDataAdapter(sql, con);
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
    }
    protected void video_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Video.aspx");
    }
    protected void logoutbtn_Click(object sender, EventArgs e)
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
