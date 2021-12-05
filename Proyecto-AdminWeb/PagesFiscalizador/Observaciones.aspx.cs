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
    public partial class Observaciones : System.Web.UI.Page
    {
        ConexionDB db = new ConexionDB();
        protected void Page_Load(object sender, EventArgs e)
        {
           //lblIDEvidencia.Text = Session["IDEVIDENCIA"].ToString();
          
            string dep = db.obtenerNombreDep( Int32.Parse( Session["Departamento"].ToString()) );
            lblIDDepartamento.Text = dep;

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            lblError.Visible = true;
            EnvioCorreos ec = new EnvioCorreos();
            string correo = db.obtenerCorreoEncargadoDep(Int32.Parse(Session["Departamento"].ToString()) );

           if ( ec.enviarCorreo(correo, txtObservaciones.Text.ToString() ) == true ) { lblError.Text = "Se ha enviado el correo exitosamente"; } else { lblError.Text = "Ha ocurrido un error, inténtelo más tarde"; }

           
        }
    }
}