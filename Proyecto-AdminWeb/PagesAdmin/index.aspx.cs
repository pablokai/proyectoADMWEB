using Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_AdminWeb.PagesAdmin
{
    public partial class index1 : System.Web.UI.Page
    {
        string Login = null;
        ConexionDB db = new ConexionDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Login = Session["Login"].ToString();
                string nombre = db.obtenerNombre(Login);
                lblNombre.Text = nombre;
            }
        }
    }
}