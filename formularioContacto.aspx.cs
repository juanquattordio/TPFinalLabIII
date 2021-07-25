using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Text.RegularExpressions;

namespace formularioContacto
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Paises_SelectedIndexChanged(Paises, e);
            }
        }

        protected void Enviar_click(object sender, EventArgs e)
        {
            string body =
                  "<body>" + "<h1>Gracias por contactarnos, "+ Nombre.Text + " " + Apellido.Text +"</h1>" +
                  "<p>Hemos recibido tu solicitud de contacto. En breve un colaborador del equipo se pondrá en contacto con Ud. </p>" +
                  "<h3>Le damos la bienvenida al mundo del Manchester City</h3>" +
                  "</body>";
            string EmailOrigen = "tpfinallabiii@gmail.com";
            string EmailDestino = Email.Text;
            string Contraseña = "tpfinallabIII123";
            MailMessage mail = new MailMessage(EmailOrigen, EmailDestino, "Contacto Manchester City FC", body);

            mail.IsBodyHtml = true;
            SmtpClient oSmtpClient = new SmtpClient("smtp.gmail.com");
            oSmtpClient.EnableSsl = true;
            oSmtpClient.UseDefaultCredentials = false;
            oSmtpClient.Port = 587;
            oSmtpClient.Credentials = new System.Net.NetworkCredential(EmailOrigen, Contraseña);

            string body2 =
                  "<p>Nombre: " + Nombre.Text + "</p>" +
                  "<p>Apellido: " + Apellido.Text + "</p>" +
                  "<p>Telefono: " + Telefono.Text + "</p>" +
                  "<p>DNI: " + DNI.Text + "</p>" +
                  "<p>Edad: " + Edad.Text + "</p>" +
                  "<p>País: " + Paises.Text + "</p>" +
                  "<p>Provincia: " + Provincias.Text + "</p>" +
                  "<p>Email: " + Email.Text + "</p>" ;
            MailMessage mail2 = new MailMessage(EmailOrigen, EmailOrigen, "Nueva subscripción", body2);

            mail2.IsBodyHtml = true;
            SmtpClient oSmtpClient2 = new SmtpClient("smtp.gmail.com");
            oSmtpClient2.EnableSsl = true;
            oSmtpClient2.UseDefaultCredentials = false;
            oSmtpClient2.Port = 587;
            oSmtpClient2.Credentials = new System.Net.NetworkCredential(EmailOrigen, Contraseña);

            try
            {
                oSmtpClient.Send(mail);
                oSmtpClient2.Send(mail2);
                form1.Visible = false;
                Mensaje.Visible= true;


            }
            catch (Exception ex)
            {
                MensajeError.Visible = true;
                throw new Exception("No se ha podido enviar el email", ex.InnerException);
                
            }
            finally
            {
                oSmtpClient.Dispose();
            }

        }

        protected void Paises_SelectedIndexChanged(object sender, EventArgs e)
        {
            Provincias.Items.Clear();
            if (Paises.SelectedValue == "1")
            {
                Provincias.Items.Add("Santa Fe");
                Provincias.Items.Add("Cordoba");
            } else
            {
                Provincias.Items.Add("Lazio");
                Provincias.Items.Add("Veneto");
            }
        
        }

        
    }
}