using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con;
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["KrishibhavanConnectionString"].ConnectionString);
        con.Open();
        string cmdstr2 = "select password from username where usrname ='" + Session["Name"].ToString() + "'";
        SqlCommand pass = new SqlCommand(cmdstr2, con);
        string password = pass.ExecuteScalar().ToString();
        if (TextBox1.Text == password)
        {
            string cmdstr3 = "UPDATE [krishibhavan].[dbo].[username] SET password ='" + TextBox2.Text + "' WHERE usrname = '" + Session["Name"].ToString() + "'";
            SqlCommand chpass = new SqlCommand(cmdstr3, con);
            chpass.ExecuteScalar();
            con.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            LblResult.Text = "Your password changed Successfully";
            LblResult.Visible = true;
        }
        else
        {
            LblResult.Text = "Password incorrect";
            LblResult.Visible = true;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("UserDefault.aspx");
    }
}