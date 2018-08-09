using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SendMail()
    {
        // Gmail Address from where you send the mail
        var fromAddress = "same1fine@gmail.com";
        // any address where the email will be sending
        var toAddress = YourEmail.Text.ToString();
        //Password of your gmail address
        const string fromPassword = "9844800219";
        // Passing the values and make a email formate to display
        string subject = YourSubject.Text.ToString();
        string body = "From: " + YourName.Text + "\n";
        body += "Email: " + YourEmail.Text + "\n";
        body += "Subject: " + YourSubject.Text + "\n";
        body += "Question: \n" + Comments.Text + "\n";
        body += "<img src='https://i.pinimg.com/736x/97/15/38/97153836f02c8dbed0d1135dabe4fcab--most-expensive-expensive-watches.jpg'>";
        body += "<table>";
        body += "<tr style=';background-color:cyan;'>";
        body += "<td style=''>Sl.no</td>";
        body += "<td style=''>Order Quantity</td>";
        body += "<td style=''>Price</td>";
        body += "</tr>";
        body += "</table>";

        // smtp settings
        var smtp = new System.Net.Mail.SmtpClient();
        {
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.UseDefaultCredentials = true;
            smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtp.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtp.Timeout = 20000;

        }
        // Passing values to smtp object
        var msg = new MailMessage(fromAddress, toAddress, subject, body);
        msg.IsBodyHtml = true;
        smtp.Send(msg);

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            //here on button click what will done 
            SendMail();
            DisplayMessage.Text = "Mail sent successfully";
            DisplayMessage.Visible = true;
            YourSubject.Text = "";
            YourEmail.Text = "";
            YourName.Text = "";
            Comments.Text = "";
        }
        catch (Exception) { }
    }


}