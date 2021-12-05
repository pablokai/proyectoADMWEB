using Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_AdminWeb.PagesJefe
{
    public partial class AsignarEvidencia : System.Web.UI.Page
    {
        ConexionDB db = new ConexionDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt = db.obtenerUsuariosPorDep(  Int32.Parse (Session["Departamento"].ToString()) );
                ddlEmpleados.DataTextField = "USUARIO";
                ddlEmpleados.DataValueField = "USUARIO";
                ddlEmpleados.DataSource = dt;
                ddlEmpleados.DataBind();
            }
        }
    }
}