using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = null;
        TextBox2.Text = null;
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        TextBox3.Text = null;
        TextBox4.Text = null;
    }
    protected void SendMail()
    {
        // Gmail Address from where you send the mail
        var fromAddress = "keralakrishibhavan@gmail.com";
        // any address where the email will be sending
        var toAddress = "keralakrishibhavan@gmail.com";
        //Password of your gmail address
        const string fromPassword = "krishibhavan123";
        // Passing the values and make a email formate to display
        string subject = TextBox3.Text;
        string body ="You have a Help request From:"+Session["Name"].ToString() +"("+Session["Mail"].ToString()+")\nPlease reply to this\n\n\t"+ TextBox4.Text;
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

    protected void Button3_Click(object sender, EventArgs e)
    {
        try
        {
            if ((TextBox3.Text == "") || (TextBox4.Text == ""))
            {
                LblResult.Text = "Please Fill both Subject and Query";
                LblResult.Visible = true;
                return;
            }
            SendMail();
            LblResult.Text = "Your request recieved";         
            LblResult.Visible = true;
            TextBox3.Text = null;
            TextBox4.Text = null;

        }
        catch (Exception) { }
    }

    protected void SendFeedback()
    {
        // Gmail Address from where you send the mail
        var fromAddress = "keralakrishibhavan@gmail.com";
        // any address where the email will be sending
        var toAddress = "keralakrishibhavan@gmail.com";
        //Password of your gmail address
        const string fromPassword = "krishibhavan123";
        // Passing the values and make a email formate to display
        string subject = "Feedbacks & Suggestions";
        string body = "From:" + Session["Name"].ToString() + "(" + Session["Mail"].ToString() + ")\n\nComments:\t" + TextBox1.Text;
        body += "\n\nSuggestions:\t"+TextBox2.Text;
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            if ((TextBox1.Text == "") && (TextBox2.Text == ""))
            {
                rcvSugg.Text = "Please Give Either your Comments or Suggestion";
                rcvSugg.Visible = true;
                return;
            }
                
            SendFeedback();
            rcvSugg.Text = "Thanks for your Feedback..!";
            rcvSugg.Visible = true;
            TextBox1.Text = null;
            TextBox2.Text = null;

        }
        catch (Exception) { }
    }
}