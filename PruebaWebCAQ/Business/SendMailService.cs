﻿using System;
using System.Net;
using System.Net.Mail;


namespace PruebaWebCAQ.Business
{
    class SendMailService
    {
        public bool sendMail(string name, string email, string subject, string message)
        {
            if (subject != null && email != null && name != null && message != null)
                try
                {
                    MailMessage mail = new MailMessage();
                    SmtpClient client = new SmtpClient();
                    mail.From = new MailAddress("maironrulez@hotmail.com");
                    mail.To.Add(new MailAddress("maironcorrales@gmail.com"));
                    mail.Subject = subject;
                    mail.Body = name + "<" + email + ">" + "\n" + message;
                    client.Port = 587;
                    client.Host = "smtp.live.com";
                    client.EnableSsl = true;
                    client.UseDefaultCredentials = false;
                    client.Credentials = new NetworkCredential("maironrulez@hotmail.com", "LinkinPark");
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    client.Send(mail);
                    return true;
                }
                catch (Exception exception)
                {
                    Console.WriteLine(exception.Message);
                }
            return false;
        }
    }
}
