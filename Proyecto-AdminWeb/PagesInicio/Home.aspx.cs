using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;
using Negocios;

namespace Proyecto_AdminWeb.PagesInicio
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_Click(object sender, EventArgs e)
        {


            EnvioCorreos envio = new EnvioCorreos();

            envio.enviarCorreo("rgpablocr@gmail.com", "Hola") ;
        }
    }
}