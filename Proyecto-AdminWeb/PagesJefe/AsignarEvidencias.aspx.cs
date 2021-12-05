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
    public partial class AsignarEvidencias : System.Web.UI.Page
    {
        ConexionDB db = new ConexionDB();
        
        static string idevaluacion;
        static int componente;
        static int eje;
        static int nivel;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Panel1.Visible = false;
                tablapanel.Visible = false;
                pnlAsignar.Visible = false;
            }

        }

        protected void btnAmbiente_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            lblOpcion1.Text = "Compromiso";
            lblOpcion2.Text = "Ética";
            lblOpcion3.Text = "Personal";
            lblOpcion4.Text = "Estructura";
            componente = 1;
        }

        protected void btnRiesgos_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            lblOpcion1.Text = "Marco orientador";
            lblOpcion2.Text = "Herramienta para admin de información";
            lblOpcion3.Text = "Funcionamiento del SERVI";
            lblOpcion4.Text = "Documentación y comunicación";
            componente = 2;
        }

        protected void btnActividades_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            lblOpcion1.Text = "Características de actividades de control";
            lblOpcion2.Text = "Alcance de las actividades de control";
            lblOpcion3.Text = "Formalidad de las actividades de control";
            lblOpcion4.Text = "Aplicación de las actividades de control";
            componente=3;
        }

        protected void btnSistemas_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            lblOpcion1.Text = "Alcance de SI";
            lblOpcion2.Text = "Calidad de la información";
            lblOpcion3.Text = "Calidad de la Comunicación";
            lblOpcion4.Text = "Control de SI";
            componente = 4;
        }

        protected void btnSeguimiento_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            lblOpcion1.Text = "Participantes en el SCI";
            lblOpcion2.Text = "Formalidad del SCI";
            lblOpcion3.Text = "Alcance del SCI";
            lblOpcion4.Text = "Contribución a la mejora del SCI";
            componente = 5;
        }

        protected void btnOpcion1_Click(object sender, EventArgs e)
        {
            tablapanel.Visible = true;
            switch(componente)
            {
                case 1:
                    eje = 1;
                    lblSeccion.Text = "Compromiso";
                    break;                
                case 2:
                    eje = 5;
                    lblSeccion.Text = "Marco orientador";
                    break;
                case 3:
                    eje = 9;
                    lblSeccion.Text = "Características de actividades de control";
                    break;
                case 4:
                    eje = 13;
                    lblSeccion.Text = "Alcance de SI";
                    break;
                case 5:
                    eje = 17;
                    lblSeccion.Text = "Participantes en el SCI";
                    break;
            }
            pnlAsignar.Visible = false;

        }

        protected void btnOpcion2_Click(object sender, EventArgs e)
        {
            tablapanel.Visible = true;
            switch (componente)
            {
                case 1:
                    eje = 2;
                    lblSeccion.Text = "Ética";
                    break;
                case 2:
                    eje = 6;
                    lblSeccion.Text = "Herramienta para admin de información";
                    break;
                case 3:
                    eje = 10;
                    lblSeccion.Text = "Alcance de las actividades de control";
                    break;
                case 4:
                    eje = 14;
                    lblSeccion.Text = "Calidad de la información";
                    break;
                case 5:
                    eje = 18;
                    lblSeccion.Text = "Formalidad del SCI";
                    break;
            }
            pnlAsignar.Visible = false;

        }

        protected void btnOpcion3_Click(object sender, EventArgs e)
        {
            tablapanel.Visible = true;
            switch (componente)
            {
                case 1:
                    eje = 3;
                    lblSeccion.Text = "Personal";
                    break;
                case 2:
                    eje = 7;
                    lblSeccion.Text = "Funcionamiento del SERVI";
                    break;
                case 3:
                    eje = 11;
                    lblSeccion.Text = "Formalidad de las actividades de control";
                    break;
                case 4:
                    eje = 15;
                    lblSeccion.Text = "Calidad de la Comunicación";
                    break;
                case 5:
                    eje = 19;
                    lblSeccion.Text = "Alcance del SCI";
                    break;
            }

            pnlAsignar.Visible = false;

        }

        protected void btnOpcion4_Click(object sender, EventArgs e)
        {
            tablapanel.Visible = true;
            switch (componente)
            {
                case 1:
                    eje = 4;
                    lblSeccion.Text = "Estructura";
                    break;
                case 2:
                    eje = 8;
                    lblSeccion.Text = "Documentación y comunicación";
                    break;
                case 3:
                    eje = 12;
                    lblSeccion.Text = "Aplicación de las actividades de control";
                    break;
                case 4:
                    eje = 16;
                    lblSeccion.Text = "Control de SI";
                    break;
                case 5:
                    eje = 20;
                    lblSeccion.Text = "Contribución a la mejora del SCI";
                    break;
            }

            pnlAsignar.Visible = false;

        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {


            String nivelNombre =  ddlNivel.SelectedValue.ToString();
            nivel = db.obtenerIDNivel(componente, eje, nivelNombre);
            idevaluacion =  db.obtenerEvalucionPorDepartamento( Int32.Parse( Session["Departamento"].ToString() ) ).ToString();          

            DataTable dt = new DataTable();
            dt = db.obtenerPreguntasAsignar(idevaluacion, componente, eje, nivel);
            gvEvaluaciones.DataSource = dt;
            gvEvaluaciones.DataBind();

            DataTable dto = new DataTable();
            dto = db.obtenerUsuariosPorDep(Int32.Parse(Session["Departamento"].ToString()));
            ddlEmpleados.DataTextField = "USUARIO";
            ddlEmpleados.DataValueField = "USUARIO";
            ddlEmpleados.DataSource = dto;
            ddlEmpleados.DataBind();

            foreach (GridViewRow gvrow in gvEvaluaciones.Rows)
            {
                
                 var lblID = gvrow.FindControl("lblCodigo") as Label;

                bool repetida = db.validarRepetidas(Int32.Parse(lblID.Text));
                if (!repetida) { gvrow.Visible = false; break;  }
                 

            }

            pnlAsignar.Visible = true;


        }

        protected void btnAsignar_Click(object sender, EventArgs e)
        {
            List<string> opciones = new List<string>();

            foreach (GridViewRow gvrow in gvEvaluaciones.Rows)
            {
                var checkbox = gvrow.FindControl("cbxMarcar") as CheckBox;
                if (checkbox.Checked)
                {
                    var lblID = gvrow.FindControl("lblCodigo") as Label;
                    opciones.Add(lblID.Text.ToString());
                   
                }
            }

            string usuario = ddlEmpleados.SelectedValue.ToString();
            string id = (usuario.Split('-')[0]);

            foreach (string opcion in opciones)
            {
                db.asignarNuevaEvidencia( Int32.Parse (opcion ), id);
            }



            Panel1.Visible = false;
            tablapanel.Visible = false;
            pnlAsignar.Visible = false;
        }
    }
}