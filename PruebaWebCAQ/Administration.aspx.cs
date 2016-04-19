using PruebaWebCAQ.Business;
using System;

namespace PruebaWebCAQ
{
    public partial class Administration : System.Web.UI.Page
    {
        SendMailService service = new SendMailService();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void senMail_Click(object sender, EventArgs e)
        {
            if (service.sendMailToMasters(username.Value, mail.Value, subject.Value, messageToSend.Value))
            {
                message.InnerText = "Su mensaje ha sido enviado con éxito. Pronto se le dara respuesta!";
                username.Value = "";
                mail.Value = "";
                subject.Value = "";
                messageToSend.Value = "";
                ModalPopupExtender1.Show();
            }
            else
            {
                message.InnerText = "Su mensaje no ha sido enviado. Vuelva a intentarlo más tarde.";
                ModalPopupExtender1.Show();
            }
        }

        protected void processbtn_Click(object sender, EventArgs e)
        {

        }
    }
}