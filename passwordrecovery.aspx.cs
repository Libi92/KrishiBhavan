using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class passwordrecovery : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["KrishibhavanConnectionString"].ConnectionString);
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
        
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void SendMail(string toemail,string pass)
    {

        // Gmail Address from where you send the mail
        var fromAddress = "keralakrishibhavan@gmail.com";
        // any address where the email will be sending
        var toAddress = toemail;
        //Password of your gmail address
        const string fromPassword = "krishibhavan123";
        // Passing the values and make a email formate to display
        string subject = "Password Recovered";
        string body = "Your password is recovered successfully\n\tThe password is : "+pass;
        // smtp settings
        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;
        }
        // Passing values to smtp object
        smtp.Send(fromAddress, toAddress, subject, body);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        con.Open();
        string cmdstr = "select count(*) from username where usrname = '" + TextBox1.Text + "'";
        SqlCommand checkuser = new SqlCommand(cmdstr, con);
        int temp = Convert.ToInt32(checkuser.ExecuteScalar().ToString());
        if (temp == 1)
        {
            string cmdstr2 = "select email from username where usrname='" + TextBox1.Text + "'";
            SqlCommand mail = new SqlCommand(cmdstr2, con);
            string email = mail.ExecuteScalar().ToString();
            string cmdstr3 = "select dob from username where usrname='" + TextBox1.Text + "'";
            SqlCommand db = new SqlCommand(cmdstr3, con);
            string dob = db.ExecuteScalar().ToString();
            string[] dte = dob.Split(' ');
            string[] dterev = dte[0].Split('-');
            dob = dterev[2] + '-' + dterev[1] + '-' + dterev[0];
        
            if ((TextBox2.Text == dob) && (TextBox3.Text == email))
            {
                string cmdstr4 = "select password from username where usrname='" + TextBox1.Text + "'";
                SqlCommand pass = new SqlCommand(cmdstr4, con);
                string password = pass.ExecuteScalar().ToString();
                LblResult.Visible = false;
                SendMail(email, password);
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                LblResult.Text = "Password is send to your email";
                LblResult.Visible = true;
            }
            else
            {
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                LblResult.Text = "Please provide valid information";
                LblResult.Visible = true;
            }
        }
        else
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            LblResult.Text = "Provide a valid username";
            LblResult.Visible = true;
        }
        con.Close();
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}