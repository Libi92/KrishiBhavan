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
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://www.accuweather.com/en/in/kochi/204289/weather-forecast/204289");
    }

    protected void Login_Click(object sender, EventArgs e)
    {
        if((TextBox1.Text=="")&&(TextBox2.Text==""))
        {
            Label2.Text = "*Enter Username and password";
            Label2.Visible = true;
            return;
        }
        else if (TextBox1.Text == "")
        {
            Label2.Text = "*Enter Username";
            Label2.Visible = true;
            return;
        }
        else if (TextBox2.Text == "")
        {
            Label2.Text = "*Enter password";
            Label2.Visible = true;
            return;
        }
        
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["KrishibhavanConnectionString"].ConnectionString);
        con.Open();
        if ((TextBox1.Text == null) && (TextBox2.Text == null))
        {
            Label2.Text = "Enter username and password";
            Label2.Visible = true;
        }

        string cmdstr = "select count(*) from username where usrname = '" + TextBox1.Text + "'";
        SqlCommand checkuser = new SqlCommand(cmdstr,con);
        int temp = Convert.ToInt32(checkuser.ExecuteScalar().ToString());
        if (temp == 1)
        {
            string cmdstr2 = "select password from username where usrname='" + TextBox1.Text + "'";
            SqlCommand pass = new SqlCommand(cmdstr2, con);
            string password = pass.ExecuteScalar().ToString();
            string cmdstr3 = "select autho from username where usrname='" + TextBox1.Text + "'";
            SqlCommand authent = new SqlCommand(cmdstr3, con);
            string auth = authent.ExecuteScalar().ToString();

            string cmdstr4 = "select placeofkrishi from username where usrname ='" + TextBox1.Text + "'";
            SqlCommand placecmd = new SqlCommand(cmdstr4, con);
            string place = placecmd.ExecuteScalar().ToString();
            string cmdstr5 = "select email from username where usrname='" + TextBox1.Text + "'";
            SqlCommand mailcmd = new SqlCommand(cmdstr5, con);
            string mail = mailcmd.ExecuteScalar().ToString();
            
            con.Close();
            if (password == TextBox2.Text)
            {
                Session["Name"] = TextBox1.Text;
                Session["Type"] = auth;
                Session["Place"] = place;
                Session["Mail"] = mail;
                if (auth == "0")
                    Response.Redirect("AdminDefault.aspx");
                else if (auth == "1")
                    Response.Redirect("OfficerDefault.aspx");
                else if (auth == "2")
                    Response.Redirect("UserDefault.aspx");
                else
                {
                    Label2.Text = "You are not yet Authenticated..!";
                    Label2.Visible = true;
                }
            }
            else
            {
                Label2.Visible = true;
                Label2.Text = "Invalid Password...!!";
            }
        }
        else
        {
            Label2.Visible = true;
            Label2.Text = "Invalid Username...!!";
        }
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
}
