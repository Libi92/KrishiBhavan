using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserCart : System.Web.UI.Page
{
    string sqlcon = ConfigurationManager.ConnectionStrings["KrishibhavanConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        HiddenField1.Value = Session["Name"].ToString();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection con = new SqlConnection(sqlcon);
        con.Open();
        string cmnd1 = "UPDATE [krishibhavan].[dbo].[cart] SET Grand = 1 Where username = '" + Session["Name"].ToString() + "' AND Grand = 0 ";
        SqlCommand cmd1 = new SqlCommand(cmnd1, con);
        cmd1.ExecuteScalar();
        con.Close();
        Response.Redirect("UserShopOnline.aspx");
    }
}