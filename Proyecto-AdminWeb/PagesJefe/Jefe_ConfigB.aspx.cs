using Data;
using Negocios;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_AdminWeb.PagesJefe
{
    public partial class Jefe_ConfigB : System.Web.UI.Page
    {
        ConexionDB db = new ConexionDB();

        protected void Page_Load(object sender, EventArgs e)
        {
            EnvioCorreos ev = new EnvioCorreos();
            string login;
            login = Session["Login"].ToString();
            DataTable dt = db.VerCorreoUSR7x(login);
            string CorreoSistema = ev.CorreoSistema();
            if (!IsPostBack)
            {
                txtTuCorreo.Value = dt.Rows[0][0].ToString();
                txtCorreoSYS.Value = CorreoSistema;

            }
        }

        protected void btnModgmail_Click(object sender, EventArgs e)
        {
            string login;
            login = Session["Login"].ToString();
            db.ModCorreo7x(login, txtTuCorreo.Value);
        }
    }
}