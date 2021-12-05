using Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_AdminWeb.PagesInicio
{
    public partial class PaginaSinRol : System.Web.UI.Page
    {
        string Login = null;
        int rol;
        int area;
        int departamento;
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
                     Login = Session["Login"].ToString();
                     rol =  Int32.Parse( Session["Rol"].ToString() );
                     area = Int32.Parse(Session["Area"].ToString());
                     departamento = Int32.Parse(Session["Departamento"].ToString());


                     if(rol == 0 && area == 0 && departamento == 0 )
                     {
                        lblUsername2.Text = Login;

                        ddlArea.DataSource = db.ObtenerAreas();
                        ddlArea.DataTextField = "DESCRIPCION";
                        ddlArea.DataValueField = "DESCRIPCION";
                        ddlArea.DataBind();

                        ddlDepartamento1.DataSource = db.ObtenerDepartamentos();
                        ddlDepartamento1.DataTextField = "DESCRIPCION";
                        ddlDepartamento1.DataValueField = "DESCRIPCION";
                        ddlDepartamento1.DataBind();

                        ddlDepartamento2.DataSource = db.ObtenerDepartamentos();
                        ddlDepartamento2.DataTextField = "DESCRIPCION";
                        ddlDepartamento2.DataValueField = "DESCRIPCION";
                        ddlDepartamento2.DataBind();
                    }
                    else
                    {
                        Response.Redirect("../PagesInicio/Home.aspx");
                    }
                }
            }
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("../PagesInicio/Espera.aspx");
        }

        protected void btnJefe_Click(object sender, EventArgs e)
        {
            Login = Session["Login"].ToString();
            int departamentoJefe =   db.obtenerIDDepartamento( ddlDepartamento1.SelectedValue.ToString() );

            db.solicitarRol(Login, 4, db.obtenerAreaDepartamento(departamentoJefe), departamentoJefe);
            Response.Redirect("../PagesInicio/Espera.aspx");

        }

        protected void btnEmpleado_Click(object sender, EventArgs e)
        {
            Login = Session["Login"].ToString();
            int departamentoEmpleado = db.obtenerIDDepartamento(  ddlDepartamento2.SelectedValue.ToString() );

            db.solicitarRol(Login, 5, db.obtenerAreaDepartamento(departamentoEmpleado), departamentoEmpleado);
            Response.Redirect("../PagesInicio/Espera.aspx");
        }

        protected void btnDirector_Click(object sender, EventArgs e)
        {
            Login = Session["Login"].ToString();
            int  area = db.obtenerIDArea ( ddlArea.SelectedValue.ToString() );
            db.solicitarRol(Login, 2, area, 0);
            Response.Redirect("../PagesInicio/Espera.aspx");
        }

        protected void btnFiscalizador_Click(object sender, EventArgs e)
        {
            Login = Session["Login"].ToString();
            db.solicitarRol(Login, 3, 0, 0);
            Response.Redirect("../PagesInicio/Espera.aspx");
        }


    }
}