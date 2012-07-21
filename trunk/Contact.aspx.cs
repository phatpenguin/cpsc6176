using System;
using System.Net.Mail;

public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    public int SendUserMail(string fromad, string toad, string body, string header, string subjectcontent)
    {
        int result = 0;
        MailMessage usermail = Mailbodplain(fromad, toad, body, header, subjectcontent);
        SmtpClient client = new SmtpClient("localhost");
        //Add the Creddentials- use your own email id and password
        //client.Credentials = new System.Net.NetworkCredential("rodrigo.sardinas@gmail.com", "chacha1981"); ;

        //client.Host = "smtp.gmail.com";
        //client.Port = 465;
        //client.EnableSsl = true;
        try
        {
            client.Send(usermail);
            result = 1;
        }
        catch (Exception ex)
        {
            result = 0;
        } // end try 

        return result;

    }

    public MailMessage Mailbodplain(string fromad, string toad, string body, string header, string subjectcontent)
    {
        MailMessage mail = new MailMessage();
        try
        {
            string from = fromad;
            string to = toad;
            mail.To.Add(to);
            mail.From = new MailAddress(from, header, System.Text.Encoding.UTF8);
            mail.Subject = subjectcontent;
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = body;
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;
        }
        catch (Exception ex)
        {
            throw ex;
        }
        return mail;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SendUserMail(FromTextBox.Text, "cpsc6176@googlegroups.com" , MessageTextBox.Text, "Customer", "Contact from customer");
    }
}

