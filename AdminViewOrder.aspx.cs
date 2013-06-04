using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminViewOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void SendMail(string toemail,string itmname)
    {

        // Gmail Address from where you send the mail
        var fromAddress = "keralakrishibhavan@gmail.com";
        // any address where the email will be sending
        var toAddress = toemail;
        //Password of your gmail address
        const string fromPassword = "krishibhavan123";
        // Passing the values and make a email formate to display
        string subject = "Order for the item granded";
        string body = "From: The Administrator of Krishibhavan \n Your order for the item: "+itmname+", has been granded.\nItem will be delivered to you in 2 weaks";
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
    protected void EditButton_Command(object sender, CommandEventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["KrishibhavanConnectionString"].ConnectionString);
        con.Open();
        string cmdstr2 = "UPDATE [krishibhavan].[dbo].[cart] SET Grand = 2 WHERE CartID = " + Convert.ToInt32(e.CommandArgument.ToString());
        SqlCommand pass = new SqlCommand(cmdstr2, con);
        pass.ExecuteScalar();
        string cmdstr3 = "select username from [krishibhavan].[dbo].[cart] where CartId =" + Convert.ToInt32(e.CommandArgument.ToString());
        SqlCommand authent = new SqlCommand(cmdstr3, con);
        string usrname = authent.ExecuteScalar().ToString();
        string cmdstr4 = "select email from [krishibhavan].[dbo].[username] where usrname = '" + usrname + "'";
        SqlCommand mail = new SqlCommand(cmdstr4, con);
        string tomail = mail.ExecuteScalar().ToString();
        //testlbl.Text = tomail;
        //testlbl.Visible = true;
        string cmdstr5 = "select ItemName from [krishibhavan].[dbo].[cart] where CartId =" + Convert.ToInt32(e.CommandArgument.ToString());
        SqlCommand itm = new SqlCommand(cmdstr5, con);
        string itmname = itm.ExecuteScalar().ToString();
        SendMail(tomail,itmname);
        Response.Redirect("AdminViewOrder.aspx");
    }
}