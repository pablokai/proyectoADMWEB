using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;

namespace Negocios
{
    public class EnvioCorreos
    {


        public bool enviarCorreo( string receptor,  string cuerpo)
        {
            string to = receptor; //el que recibe el correo    
            string from = "sys.control.interno@gmail.com"; //el que envia  
            MailMessage message = new MailMessage(from, to);

            string titulo = "Notificación de Control Interno";


           string body = @"<html lang=""en""><head><meta charset=""UTF-8""><meta http-equiv = ""X-UA-Compatible"" content=""IE=edge"" ><meta name=""viewport"" content=""width=device-width, initial-scale=1.0""><title> Document </title><body><style type=""text/css"">body{font-family: 'Poppins', sans-serif;}.cabecera {border: 3px solid #27292d;border-radius: 10px;background-color: #27292d;width: 500px;}.title{font-weight: 700;color: #6846ec;text-align: center;}h2{text-align: center;color: white;}a{background-color: #6846ec; border: 3px solid #6846ec;border-radius: 5px;color: #fff!important;text-decoration: none;font-weight: 600;padding: 8px; margin-bottom: 20px;}a:hover {background-color: #6846ec;color: white;border-color: #6846ec;}</style></head><body><div class=""cabecera""><h1 class=""title"">Sistema de evaluación Control Interno</h1><h2>Hola, tiene un nuevo mensaje</h2></div><p>" + cuerpo + @"</p><a href=""http://rgpablocr2-001-site1.etempurl.com/PagesInicio/Home.aspx""> Ir al sistema</a> </body></html>";

            string mailbody = body;
            message.Subject = titulo;
            message.Body = body;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(from, "controlinterno");
            client.EnableSsl = true;
            client.UseDefaultCredentials = false;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
                return true;
            }

            catch (Exception ex)
            {
                throw ex;
                return false;
            }
        }
    }
}
