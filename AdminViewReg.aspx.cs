using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminViewReg : System.Web.UI.Page
{
    SqlConnection mycon;
    SqlCommand cmd;
    SqlDataAdapter da = new SqlDataAdapter();
    DataSet ds = new DataSet();
    string con;
    protected void Page_Load(object sender, EventArgs e)
    {
        mycon = new SqlConnection(ConfigurationManager.ConnectionStrings["KrishibhavanConnectionString"].ConnectionString);
    }


    protected void SendMail(string toemail)
    {

        // Gmail Address from where you send the mail
        var fromAddress = "keralakrishibhavan@gmail.com";
        // any address where the email will be sending
        var toAddress = toemail;
        //Password of your gmail address
        const string fromPassword = "krishibhavan123";
        // Passing the values and make a email formate to display
        string subject = "Authentication Successfull";
        string body = "From: The Administrator of Krishibhavan \n Your account has been authenticated Successfully\n Connect with us. Get help and support.\n Enjoy online shopping..!! ";
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
    protected void UpdateButton_Click(object sender, EventArgs e)
    {
        
    }
    protected void UpdateButton_Command(object sender, CommandEventArgs e)
    {
        mycon.Open();
        string cmdstr2 = "UPDATE [krishibhavan].[dbo].[username] SET autho = 2 WHERE email = '" + e.CommandArgument.ToString() + "'";
        SqlCommand pass = new SqlCommand(cmdstr2, mycon);
        pass.ExecuteScalar();
        string value = e.CommandArgument.ToString();
        SendMail(value);
        Response.Redirect("AdminViewReg.aspx");
    }
}