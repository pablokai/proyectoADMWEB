using Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_AdminWeb
{
    public partial class Fiscalizador : System.Web.UI.MasterPage
    {
        string Login = null;
        int rol;
        int area;
        int departamento;
        ConexionDB db = new ConexionDB();
        public int count = 0;
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
                    Login = Session["Login"].ToString();
                    rol = Int32.Parse(Session["Rol"].ToString());
                    area = Int32.Parse(Session["Area"].ToString());
                    departamento = Int32.Parse(Session["Departamento"].ToString());
                    string nombre = db.obtenerNombre(Login);
                    lblUsername.Text = nombre;

                    if (rol != 3)
                    {
                        Response.Redirect("../PagesInicio/Home.aspx");
                    }
                   
                }
            }
            else
            {
                count ++;
            }
        }

   

        protected void Button1_Click2(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("../PagesInicio/Home.aspx");
        }

        protected void imgbtnsetting_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("../PagesFiscalizador/Fiscalizador_ConfigB.aspx");
        }

        protected void btnUser_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("../PagesFiscalizador/configFisca.aspx");
        }
    }
}