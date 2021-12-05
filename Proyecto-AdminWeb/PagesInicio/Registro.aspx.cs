using Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_AdminWeb.PagesInicio
{
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblError.Visible = false;
            }
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            try
            {
                ConexionDB db = new ConexionDB();

                string idusuario = identificacion.Value.ToString();
                string nombre = name.Value.ToString();
                string primerapellido= primerApellido.Value.ToString();
                string segundoapellido = segundoApellido.Value.ToString();
                string correo = correoelectronico.Value.ToString();
                int telefono = Int32.Parse(telefonos.Value.ToString() );
                string fecha = fechanacimiento.Value.ToString();
                string contrasena = password.Value.ToString();

                if (idusuario.Length != 9 || String.IsNullOrEmpty(idusuario) || String.IsNullOrEmpty(nombre)
                    || String.IsNullOrEmpty(primerapellido) || String.IsNullOrEmpty(segundoapellido)
                    || String.IsNullOrEmpty(correo) || String.IsNullOrEmpty(fecha) || String.IsNullOrEmpty(contrasena))
                {
                    lblError.Text = "Error, llene todos los campos";
                    lblError.Visible = true;
                }
                else
                {
                        if(  db.registrarUsuario(idusuario,nombre,primerapellido,segundoapellido, fecha, correo, telefono, contrasena))
                    {
                        lblError.Text = "Se ha registrado con éxito";
                        lblError.Visible = true;
                    }
                   
                }

            }
            catch (Exception)
            {

                lblError.Text = "Error, inténtelo de nuevo";
                lblError.Visible = true;
            }
        }
    }
}