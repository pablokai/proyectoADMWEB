using Data;
using Negocios;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_AdminWeb.PagesFiscalizador
{
    public partial class Revisar : System.Web.UI.Page
    {

        ConexionDB db = new ConexionDB();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            lblError.Visible = true;
            EnvioCorreos ec = new EnvioCorreos();
           /*string correo = db.obtenerCorreoDirector(Int32.Parse(Session["Area"].ToString()));

            if (ec.enviarCorreo(correo, txtObservaciones.Text.ToString()) == true) { lblError.Text = "Se ha enviado el correo exitosamente"; } else { lblError.Text = "Ha ocurrido un error, inténtelo más tarde"; }*/
        }
    }
}