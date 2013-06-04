using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Crop : System.Web.UI.Page
{
    SqlConnection con;
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    string sql;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         con = new SqlConnection(ConfigurationManager.ConnectionStrings["KrishibhavanConnectionString"].ConnectionString);
         con.Open();
         sql = "select * from krishibhavan.dbo.crops where commonname='" + DropDownList1.SelectedItem.Text + "'";
         da = new SqlDataAdapter(sql, con);
         da.Fill(ds);
         GridView1.DataSource = ds;
         GridView1.DataBind();
         con.Close();
    }
}