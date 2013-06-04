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

public partial class SignUp : System.Web.UI.Page
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
        string cmdstr = "SELECT COUNT(*) FROM [krishibhavan].[dbo].[username] WHERE usrname = '" + TextBox7.Text + "'";
        SqlCommand checkuser = new SqlCommand(cmdstr, mycon);
        Int32 count = Convert.ToInt32(checkuser.ExecuteScalar().ToString());
        if (count == 1)
        {
            LblResult.Text = "Username Already exists. Try another one";
            LblResult.Visible = true;
        }
        else
        {
            FileUpload1.SaveAs(Server.MapPath("IDproof/" + FileUpload1.FileName));
            string insert = "insert into Krishibhavan.dbo.username(fname,sname,usrname,password,dob,address,placeofkrishi,phone,email,autho,Gender,idproof) values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox6.Text + "','" + TextBox5.Text + "', 3,'" + DropDownList1.SelectedItem.Text + "','IDproof/" + FileUpload1.FileName + "')";
            cmd = new SqlCommand(insert, mycon);
            cmd.ExecuteNonQuery();
            logon.Visible = false;
            LblResult.Text = "New User Created Successfully";
            LblResult.Visible = true;
            mycon.Close();
        }

        //Response.Redirect("Default.aspx");

    }
}