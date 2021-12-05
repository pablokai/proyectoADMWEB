using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_AdminWeb.PagesDirector
{
    public partial class HistorialEvaluaciones : System.Web.UI.Page
    {

        DataTable dt = new DataTable();
        DataTable dtc = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dt.Columns.AddRange(new DataColumn[3] { new DataColumn("PERIODO"), new DataColumn("EVALUACION"), new DataColumn("DEPENDENCIA") });

                dt.Rows.Add("G-1221", "1234553", "Recursos Humanos");

                gvDetalle.DataSource = dt;
                gvDetalle.DataBind();

              

            }
            else
            {
                panel.Visible = false;
            }       

        }

        protected void gvEvaluaciones_RowCommand(object sender, GridViewCommandEventArgs e)
        {
        }

        protected void btnAmbiente_Click(object sender, EventArgs e)
        {
            panel.Visible = false;
            panel.Visible = true;
            lblSeccion.Text = "Seccion 1 - Ambiente de Control";
            dtc.Columns.AddRange(new DataColumn[5] { new DataColumn("PUNTOS"), new DataColumn("COMPONENTE"), new DataColumn("MADUREZ"), new DataColumn("CALIFICACION"), new DataColumn("ATENCION") });

            dtc.Rows.Add("1.1", "Compromiso", "Incipiente", 20, "Atención máxima");
            dtc.Rows.Add("1.2", "Ética", "Incipiente", 20, "Atención máxima");
            dtc.Rows.Add("1.3", "Personal", "Incipiente", 20, "Atención máxima");
            dtc.Rows.Add("1.4", "Estructura", "Incipiente", 20, "Atención máxima");

            gvEvaluaciones.DataSource = dtc;
            gvEvaluaciones.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            panel.Visible = false;
            panel.Visible = true;
            lblSeccion.Text = "Seccion 2 - Valoración del Riesgo";
            dtc.Columns.AddRange(new DataColumn[5] { new DataColumn("PUNTOS"), new DataColumn("COMPONENTE"), new DataColumn("MADUREZ"), new DataColumn("CALIFICACION"), new DataColumn("ATENCION") });

            dtc.Rows.Add("2.1", "Marco Orientador", "Incipiente", 20, "Atención máxima");
            dtc.Rows.Add("2.2", "Herramienta para admin. de Información", "Incipiente", 20, "Atención máxima");
            dtc.Rows.Add("2.3", "Funcionamiento SERVI", "Incipiente", 20, "Atención máxima");
            dtc.Rows.Add("2.4", "Documentación y comunicación", "Incipiente", 20, "Atención máxima");

            gvEvaluaciones.DataSource = dtc;
            gvEvaluaciones.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            panel.Visible = false;
            panel.Visible = true;
            lblSeccion.Text = "Seccion 3 - Actividades de Control";
            dtc.Columns.AddRange(new DataColumn[5] { new DataColumn("PUNTOS"), new DataColumn("COMPONENTE"), new DataColumn("MADUREZ"), new DataColumn("CALIFICACION"), new DataColumn("ATENCION") });

            dtc.Rows.Add("3.1", "Características de Actividades de Control", "Incipiente", 20, "Atención máxima");
            dtc.Rows.Add("3.2", "Alcance actividades de Control", "Incipiente", 20, "Atención máxima");
            dtc.Rows.Add("3.3", "Formalidad actividades de Control", "Incipiente", 20, "Atención máxima");
            dtc.Rows.Add("3.4", "Aplicación actividades de Control", "Incipiente", 20, "Atención máxima");

            gvEvaluaciones.DataSource = dtc;
            gvEvaluaciones.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            panel.Visible = false;
            panel.Visible = true;
            lblSeccion.Text = "Seccion 4 - Sistemas de Información";
            dtc.Columns.AddRange(new DataColumn[5] { new DataColumn("PUNTOS"), new DataColumn("COMPONENTE"), new DataColumn("MADUREZ"), new DataColumn("CALIFICACION"), new DataColumn("ATENCION") });

            dtc.Rows.Add("4.1", "Alcance SI", "Incipiente", 20, "Atención máxima");
            dtc.Rows.Add("4.2", "Formalidad de seguimiento SCI", "Incipiente", 20, "Atención máxima");
            dtc.Rows.Add("4.3", "Calidad de Comunicación", "Incipiente", 20, "Atención máxima");
            dtc.Rows.Add("4.4", "Control de SI", "Incipiente", 20, "Atención máxima");

            gvEvaluaciones.DataSource = dtc;
            gvEvaluaciones.DataBind();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            panel.Visible = false;
            panel.Visible = true;
            lblSeccion.Text = "Seccion 5 - Seguimiento del SCI";
            dtc.Columns.AddRange(new DataColumn[5] { new DataColumn("PUNTOS"), new DataColumn("COMPONENTE"), new DataColumn("MADUREZ"), new DataColumn("CALIFICACION"), new DataColumn("ATENCION") });

            dtc.Rows.Add("5.1", "Participantes del SCI", "Incipiente", 20, "Atención máxima");
            dtc.Rows.Add("5.2", "Formalidad del SCI", "Incipiente", 20, "Atención máxima");
            dtc.Rows.Add("5.3", "Alcance del SCI", "Incipiente", 20, "Atención máxima");
            dtc.Rows.Add("5.4", "Contribución del SCI", "Incipiente", 20, "Atención máxima");

            gvEvaluaciones.DataSource = dtc;
            gvEvaluaciones.DataBind();
        }
    }
}