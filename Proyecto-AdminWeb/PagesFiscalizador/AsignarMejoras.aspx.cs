using Data;
using Negocios;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_AdminWeb.PagesDirector
{
    public partial class AsignarMejoras : System.Web.UI.Page
    {

        ConexionDB db = new ConexionDB();

        static string departamento;
        static string idevaluacion;
        static int componente;
        static int eje;
        static int nivel;
        static string idevidencia;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt = db.obtenerDepPorArea();
                ddlDependencia.DataTextField = "DEPARTAMENTO";
                ddlDependencia.DataValueField = "DEPARTAMENTO";
                ddlDependencia.DataSource = dt;
                ddlDependencia.DataBind();

                Panel1.Visible = false;
                tablapanel.Visible = false;
                pnlAsignar.Visible = false;
                Panel3.Visible = false;
                ddlEvaluacion.Visible = false;
                btnBuscar.Visible = false;
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
            componente = 3;
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
            switch (componente)
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
            

            String nivelNombre = ddlNivel.SelectedValue.ToString();
            nivel = db.obtenerIDNivel(componente, eje, nivelNombre);

            DataTable dt = new DataTable();
            dt = db.obtenerPreguntasMejora(idevaluacion, componente, eje, nivel);
            gvEvaluaciones.DataSource = dt;
            gvEvaluaciones.DataBind();

            for (int i = 0; i < dt.Rows.Count; i++)
            {
                GridViewRow row = gvEvaluaciones.Rows[i];

                Label lbl = (row.FindControl("lblEstado") as Label);

                if (lbl.Text == "Incorrecta")
                {
                    lbl.ForeColor = System.Drawing.ColorTranslator.FromHtml("#e10049");
                }
                else
                {
                    lbl.ForeColor = System.Drawing.ColorTranslator.FromHtml("#2bebc8");
                    LinkButton btn = (row.FindControl("btnAsignar") as LinkButton);
                    btn.Enabled = false;
                    btn.ForeColor = System.Drawing.ColorTranslator.FromHtml("#6a6a6a");
                    btn.BackColor = System.Drawing.ColorTranslator.FromHtml("#151718");
                }

            }


                DataTable dto = new DataTable();
            dto = db.obtenerUsuariosPorDep(Int32.Parse(Session["Departamento"].ToString()));
            ddlEmpleados.DataTextField = "USUARIO";
            ddlEmpleados.DataValueField = "USUARIO";
            ddlEmpleados.DataSource = dto;
            ddlEmpleados.DataBind();





        }

        protected void btnDepartamento_Click(object sender, EventArgs e)
        {

            DataTable dt = new DataTable();
            departamento = ddlDependencia.SelectedValue.ToString();
            departamento = (departamento.Split('-')[0]);
            
            dt = db.obtenerEvaluacionesDepartamento(Int32.Parse( departamento ));
            ddlEvaluacion.DataTextField = "ID_EVALUACIONES_RESPUESTA";
            ddlEvaluacion.DataValueField = "ID_EVALUACIONES_RESPUESTA";
            ddlEvaluacion.DataSource = dt;
            ddlEvaluacion.DataBind();

            ddlEvaluacion.Visible = true;
            btnBuscar.Visible = true;
            Panel2.Visible = true;
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            idevaluacion = ddlEvaluacion.SelectedValue.ToString();
            idevaluacion = (idevaluacion.Split('-')[0]);
            Panel3.Visible = true;
        }

        protected void btnAsignar_Click1(object sender, EventArgs e)
        {

        }

        protected void btnAsignar_Click(object sender, EventArgs e)
        {

        }

        protected void btnAsignarMejora_Click(object sender, EventArgs e)
        {             
            mp1.Show();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            mp1.Hide();
        }

        protected void gvEvaluaciones_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName == "btnMejora")
            {

                Panel4.Visible = true;

                int rowIndex = Convert.ToInt32(e.CommandArgument);


                GridViewRow row = gvEvaluaciones.Rows[rowIndex];


                idevidencia = (row.FindControl("lblCodigo") as Label).Text;

            }

            lblID1.Text = idevidencia;

            DataTable dt = new DataTable();
            dt = db.obtenerUsuariosPorDep(Int32.Parse(departamento));
            ddlEmpleados.DataTextField = "USUARIO";
            ddlEmpleados.DataValueField = "USUARIO";
            ddlEmpleados.DataSource = dt;
            ddlEmpleados.DataBind();

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            string encargado = ddlEmpleados.SelectedValue.ToString();
            encargado = (encargado.Split('-')[0]);

            string fechaRealizacion = txtFecha.Value.ToString();
            db.asignarNuevaMejora(Int32.Parse(lblID1.Text.ToString()), encargado, fechaRealizacion);

            string correo = db.obtenerCorreoPersona(encargado);
            string observacion = "Se le ha asignado el punto de mejora " + idevidencia + " para la fecha " + fechaRealizacion + "<br> Observaciones: <br> " +
                txtObservacion.Text;

            EnvioCorreos ec = new EnvioCorreos();
            ec.enviarCorreo(correo, observacion);

            Panel2.Visible = false;
            Panel4.Visible = false;
            Panel1.Visible = false;
            tablapanel.Visible = false;
            pnlAsignar.Visible = false;
            Panel3.Visible = false;
            ddlEvaluacion.Visible = false;
            btnBuscar.Visible = false;
            txtFecha.Value = "";
            txtObservacion.Text = "";
        }
    }
}