using Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_AdminWeb.PagesJefe
{
    public partial class RespuestaEvaluacion : System.Web.UI.Page
    {

        string Login = null;
        int rol;
        int area;
        int departamento = 0;
        string idevaluacion = null;
        int componente = 0;
        int eje = 0;

        ConexionDB db = new ConexionDB();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
}