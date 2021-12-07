using Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_AdminWeb
{
    public partial class Empleado : System.Web.UI.MasterPage
    {

        string Login = null;
        ConexionDB db = new ConexionDB();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Login"] == null || Session["Rol"] == null || Session["Area"] == null || Session["Departamento"] == null)
                {
                    Response.Redirect("../PagesInicio/Home.aspx");
                }
                else
                {
                    int rol = Int32.Parse(Session["Rol"].ToString());
                    Login = Session["Login"].ToString();
                    string nombre = db.obtenerNombre(Login);
                    lblUsername.Text = nombre;
                    if (rol != 5)
                    {
                        Response.Redirect("../PagesInicio/Home.aspx");
                    }
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("../PagesInicio/Home.aspx");
        }

        protected void btnUser_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("../PagesEmpleado/Empleado_ConfigB.aspx");
        }

        protected void imgbtnsetting_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}