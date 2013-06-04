using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class AdminAddEvent : System.Web.UI.Page
{
    SqlConnection mycon;
    SqlCommand cmd;
    string con;

    protected void Page_Load(object sender, EventArgs e)
    {
        con = ConfigurationManager.ConnectionStrings["krishibhavanConnectionString"].ConnectionString;
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        mycon = new SqlConnection(con);
        mycon.Open();
        string insert = "insert into Krishibhavan.dbo.event(event,place,date,condact,details) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','"+TextBox5.Text+"')";
        cmd = new SqlCommand(insert, mycon);
        cmd.ExecuteNonQuery();
        Label1.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        TextBox1.Visible = false;
        TextBox2.Visible = false;
        TextBox3.Visible = false;
        TextBox4.Visible = false;
        TextBox5.Visible = false;
        Button1.Visible = false;
        LblResult.Visible = true;
        mycon.Close();
  //      Response.Redirect("AdminDefault.aspx");

    }
}