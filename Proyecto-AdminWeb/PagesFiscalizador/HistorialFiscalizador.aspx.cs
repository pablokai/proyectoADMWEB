using Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_AdminWeb.PagesFiscalizador
{
    public partial class HistorialFiscalizador : System.Web.UI.Page
    {

        ConexionDB db = new ConexionDB();
        static int departamento;
        static int evaluacion;
        static string periodo;
        static int idevaluacion;

        string[] niveles = { "Incipiente", "Novato", "Competente", "Diestro", "Experto" };
        string[] atenciones = { "Atención Máxima", "Atención Alta", "Atención Media", "Atención Baja", "Sin Atención" };
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt = db.ObtenerDepartamentos();
                ddlDependecia.DataTextField = "DESCRIPCION";
                ddlDependecia.DataValueField = "DESCRIPCION";
                ddlDependecia.DataSource = dt;
                ddlDependecia.DataBind();
                Panel1.Visible = false;
                Panel2.Visible = false;
                btnBuscar.Visible = false;  
                tablapanel.Visible = false; 
            }
        }

        protected void gvEvaluaciones_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "btnBuscar")
            {


                int rowIndex = Convert.ToInt32(e.CommandArgument);


                GridViewRow row = gvEvaluaciones.Rows[rowIndex];


                Session["Evaluacion"] = (row.FindControl("lblEvaluacion") as Label).Text;

                Session["Departamento"] = db.obtenerDepartamentoID(
                    Int32.Parse(Session["Evaluacion"].ToString()));

            }
        }

        protected void btnAmbiente_Click(object sender, EventArgs e)
        {

            int v1 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, evaluacion, 1, 1));
            int v2 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, evaluacion, 1, 2));
            int v3 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, evaluacion, 1, 3));
            int v4 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, evaluacion, 1, 4));

            llenarTablaEje(v1, v2, v3, v4, "Compromiso", "Ética", "Personal", "Estructura");

            lblSeccion.Text = "Seccion 1 - Ambiente de Control";

        }

        protected void btnRiesgo_Click(object sender, EventArgs e)
        {
            int v1 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, evaluacion, 2, 5));
            int v2 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, evaluacion, 2, 6));
            int v3 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, evaluacion, 2, 7));
            int v4 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, evaluacion, 2, 8));
            lblSeccion.Text = "Seccion 2 - Valoración del Riesgo";
            llenarTablaEje(v1, v2, v3, v4, "Marco orientador", "Herramienta para admin de información", "Funcionamiento del SERVI", "Documentación y comunicación");
        }

        protected void btnActividades_Click(object sender, EventArgs e)
        {
            int v1 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, evaluacion, 3, 9));
            int v2 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, evaluacion, 3, 10));
            int v3 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, evaluacion, 3, 11));
            int v4 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, evaluacion, 3, 12));
            lblSeccion.Text = "Seccion 3 - Actividades de Control";
            llenarTablaEje(v1, v2, v3, v4, "Características de actividades de control", "Alcance de las actividades de control", "Formalidad de las actividades de control", "Aplicación de las actividades de control");
        }

        protected void btnSistemas_Click(object sender, EventArgs e)
        {
            int v1 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, evaluacion, 4, 13));
            int v2 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, evaluacion, 4, 14));
            int v3 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, evaluacion, 4, 15));
            int v4 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, evaluacion, 4, 16));
            lblSeccion.Text = "Seccion 4 - Sistemas de Información";
            llenarTablaEje(v1, v2, v3, v4, "Alcance", "Calidad de la información", "Calidad de la Comunicación", "Control");
        }

        protected void btnSeguimiento_Click(object sender, EventArgs e)
        {
            int v1 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, evaluacion, 5, 17));
            int v2 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, evaluacion, 5, 18));
            int v3 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, evaluacion, 5, 19));
            int v4 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, evaluacion, 5, 20));
            lblSeccion.Text = "Seccion 5 - Seguimiento del SCI";
            llenarTablaEje(v1, v2, v3, v4, "Participantes en el SCI", "Formalidad del SCI", "Alcance del SCI", "Contribución a la mejora del SCI");
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
             Panel2.Visible = true;

             periodo = db.obtenerNombrePeriodo(departamento);
             evaluacion = Int32.Parse ( ddlEvaluacion.SelectedValue.ToString());
            DataTable dto = new DataTable();
            dto.Columns.AddRange(new DataColumn[3] { new DataColumn("PERIODO"), new DataColumn("EVALUACION"), new DataColumn("DEPENDENCIA") });

            dto.Rows.Add(periodo, evaluacion, departamento);
            gvDetalle.DataSource = dto;
            gvDetalle.DataBind();

            idevaluacion = db.obtenerIDEvaluacion(evaluacion);
            string resultadoindice = db.indiceMadurez(departamento, evaluacion, idevaluacion  );

            int ambiente = Int32.Parse( db.puntuacionComponente(departamento, idevaluacion, evaluacion, 1));
            int riesgo = Int32.Parse(db.puntuacionComponente(departamento, idevaluacion, evaluacion, 2));
            int actividades = Int32.Parse(db.puntuacionComponente(departamento, idevaluacion, evaluacion, 3));
            int sistemas = Int32.Parse(db.puntuacionComponente(departamento, idevaluacion, evaluacion, 4));
            int seguimiento = Int32.Parse(db.puntuacionComponente(departamento, idevaluacion, evaluacion, 5));

            if (resultadoindice == "N/A")
            {
                lblResultadoIndice.Text = resultadoindice;
            }
            else
            {
                //INDICE GENERAL
                int num = Int32.Parse ( resultadoindice );

                if (  num >= 0 && num < 40)
                {
                    num = 20;

                }else if(num >= 40 && num < 60)
                {
                    num = 40;
                }
                else if(num >= 60 && num < 80)
                {
                    num = 60;
                }
                else if(num >= 80 && num < 100)
                {
                    num = 80;
                }
                else 
                {
                    num = 100;
                }


                //AMBIENTE
                if (ambiente >= 0 && ambiente < 8)
                {
                    ambiente = 20;

                    lblNivel1.Text = niveles[0];

                }
                else if (ambiente >= 8 && ambiente < 12)
                {
                    
                    ambiente = 40;
                    lblNivel1.Text = niveles[1];

                }
                else if (ambiente >= 12 && ambiente < 16)
                {
                    ambiente = 60;
                    lblNivel1.Text = niveles[2];

                }
                else if (ambiente >= 16 && ambiente < 20)
                {
                    ambiente = 80;

                    lblNivel1.Text = niveles[3];
                }
                else
                {
                    ambiente = 100;
                    lblNivel1.Text = niveles[4];
                }

                //RIESGO
                if (riesgo >= 0 && riesgo < 8)
                {
                    riesgo = 20;
                    lblNivel2.Text = niveles[0];

                }
                else if (riesgo >= 8 && riesgo < 12)
                {                    
                    riesgo = 40;
                   
                    lblNivel2.Text = niveles[1];
                }
                else if (riesgo >= 12 && riesgo < 16)
                {
                    riesgo = 60;
                    lblNivel2.Text = niveles[2];
                }
                else if (riesgo >= 16 && riesgo < 20)
                {
                    riesgo = 80;
                    lblNivel2.Text = niveles[3];
                }
                else
                {
                    riesgo = 100;
                    lblNivel2.Text = niveles[4];
                }

                //ACTIVIDADES

                if (actividades >= 0 && actividades < 8)
                {
                    actividades = 20;

                    lblNivel3.Text = niveles[0];
                }
                else if (actividades >= 8 && actividades < 12)
                {
                    actividades = 40;
                    lblNivel3.Text = niveles[1];
                }
                else if (actividades >= 12 && actividades < 16)
                {;
                    actividades = 60;
                    lblNivel3.Text = niveles[2];
                }
                else if (actividades >= 16 && actividades < 20)
                {
                    actividades = 80;
                    lblNivel3.Text = niveles[3];
                }
                else
                {
                    actividades = 100;
                    lblNivel3.Text = niveles[4];
                }

                //SISTEMAS

                if (sistemas >= 0 && sistemas < 8)
                {
                    sistemas = 20;
                    lblNivel4.Text = niveles[0];
                }
                else if (sistemas >= 8 && sistemas < 12)
                {                  
                    sistemas = 40;
                    lblNivel4.Text = niveles[1];
                }
                else if (sistemas >= 12 && sistemas < 16)
                {
                    sistemas = 60;
                    lblNivel4.Text = niveles[2];
                }
                else if (sistemas >= 16 && sistemas < 20)
                {
                    sistemas = 80;
                    lblNivel4.Text = niveles[3];
                }
                else
                {
                    sistemas = 100;
                    lblNivel4.Text = niveles[4];
                }

                //SEGUIMIENTO


                if (seguimiento >= 0 && seguimiento < 8)
                {
                    seguimiento = 20;
                    lblNivel5.Text = niveles[0];
                }
                else if (seguimiento >= 8 && seguimiento < 12)
                {
                    seguimiento = 40;
                    lblNivel5.Text = niveles[1];

                }
                else if (seguimiento >= 12 && seguimiento < 16)
                {
                    seguimiento = 60;
                    lblNivel5.Text = niveles[2];

                }
                else if (seguimiento >= 16 && seguimiento < 20)
                {

                    seguimiento = 80;
                    lblNivel5.Text = niveles[3];
                }
                else
                {
                    seguimiento = 100;
                    lblNivel5.Text = niveles[4];
                }


                switch (num)
                {
                    case 20:
                        lblNivelIndice.Text = niveles[0];
                        break;
                    case 40:
                        lblNivelIndice.Text = niveles[1];
                        break;
                    case 60:
                        lblNivelIndice.Text = niveles[2];
                        break;
                    case 80:
                        lblNivelIndice.Text = niveles[3];
                        break;
                    case 100:
                        lblNivelIndice.Text = niveles[4];
                        break;
                }


                lblAmbiente.Text = ambiente.ToString();
                lblRiesgos.Text = riesgo.ToString();
                lblActividades.Text = actividades.ToString();
                lblSistemas.Text = sistemas.ToString();
                lblSeguimiento.Text = seguimiento.ToString();
                lblResultadoIndice.Text = num.ToString();
            }

        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            departamento = db.obtenerIDDepartamento( ddlDependecia.SelectedValue.ToString() );
           
            DataTable dt = new DataTable();
            dt = db.obtenerEvaluacionesDepartamento(departamento);

            if(dt.Rows.Count < 1)
            {
                dt.Columns[0].DataType = typeof(string);
                dt.Rows.Add("No tiene evaluaciones");
                ddlEvaluacion.DataTextField = "ID_EVALUACIONES_RESPUESTA";
                ddlEvaluacion.DataValueField = "ID_EVALUACIONES_RESPUESTA";               
            }
            else
            {
                ddlEvaluacion.DataTextField = "ID_EVALUACIONES_RESPUESTA";
                ddlEvaluacion.DataValueField = "ID_EVALUACIONES_RESPUESTA";
            }
            ddlEvaluacion.DataSource = dt;
            ddlEvaluacion.DataBind();
            Panel1.Visible = true;
            btnBuscar.Visible = true;
        }

        private void llenarTablaEje(int val1, int val2, int val3, int val4, string eje1, string eje2, string eje3, string eje4)
        {

            tablapanel.Visible = true;

            DataTable dto = new DataTable();
            dto.Columns.AddRange(new DataColumn[5] { new DataColumn("PUNTOS"), new DataColumn("EJE"), new DataColumn("MADUREZ")
            , new DataColumn("CALIFICACION"), new DataColumn("ATENCION")});

            string nivel1 = null;
            string nivel2 = null;
            string nivel3 = null;
            string nivel4 = null;
            string atencion1 = null;
            string atencion2 = null;
            string atencion3 = null;
            string atencion4 = null;

            //VALOR 1

            if (val1 == 0 || val1 == 1)
            {
                val1 = 20;
                nivel1 = niveles[0];
                atencion1 = atenciones[0];
            }
            else if (val1 == 2)
            {
                val1 = 40;
                nivel1 = niveles[1];
                atencion1 = atenciones[1];

            }
            else if (val1 == 3)
            {
                val1 = 60;
                nivel1 = niveles[2];
                atencion1 = atenciones[2];

            }
            else if (val1 == 4)
            {

                val1 = 80;
                nivel1 = niveles[3];
                atencion1 = atenciones[3];
            }
            else
            {
                val1 = 100;
                nivel1 = niveles[4];
                atencion1 = atenciones[4];
            }

            //VALOR 2

            if (val2 == 0 || val2 == 1)
            {
                val2 = 20;
                nivel2 = niveles[0];
                atencion2 = atenciones[0];
            }
            else if (val2 == 2)
            {
                val2 = 40;
                nivel2 = niveles[1];
                atencion2 = atenciones[1];


            }
            else if (val2 == 3)
            {
                val2 = 60;
                nivel2 = niveles[2];
                atencion2 = atenciones[2];


            }
            else if (val2 == 4)
            {

                val2 = 80;
                nivel2 = niveles[3];
                atencion2 = atenciones[3];

            }
            else
            {
                val2 = 100;
                nivel2 = niveles[4];
                atencion2 = atenciones[4];

            }


            //VALOR 3

            if (val3 == 0 || val3 == 1)
            {
                val3 = 20;
                nivel3 = niveles[0];
                atencion3 = atenciones[0];

            }
            else if (val3 == 2)
            {
                val3 = 40;
                nivel3 = niveles[1];
                atencion3 = atenciones[1];

            }
            else if (val3 == 3)
            {
                val3 = 60;
                nivel3 = niveles[2];
                atencion3 = atenciones[2];

            }
            else if (val3 == 4)
            {

                val3 = 80;
                nivel3 = niveles[3];
                atencion3 = atenciones[3];
            }
            else
            {
                val3 = 100;
                nivel3 = niveles[4];
                atencion3 = atenciones[4];
            }


            //VALOR 4

            if (val4 == 0 || val4 == 1)
            {
                val4 = 20;
                nivel4 = niveles[0];
                atencion4 = atenciones[0];
            }
            else if (val4 == 2)
            {
                val4 = 40;
                nivel4 = niveles[1];
                atencion4 = atenciones[1];

            }
            else if (val4 == 3)
            {
                val4 = 60;
                nivel4 = niveles[2];
                atencion4 = atenciones[2];

            }
            else if (val4 ==4)
            {

                val4 = 80;
                nivel4 = niveles[3];
                atencion4 = atenciones[3];
            }
            else
            {
                val4 = 100;
                nivel4 = niveles[4];
                atencion4 = atenciones[4];
            }




            dto.Rows.Add("A", eje1, nivel1, val1, atencion1);
            dto.Rows.Add("B", eje2, nivel2,val2, atencion2);
            dto.Rows.Add("C", eje3, nivel3,val3, atencion3);
            dto.Rows.Add("D", eje4, nivel4, val4,atencion4);

            gvEvaluaciones.DataSource = dto;
            gvEvaluaciones.DataBind();



            for (int i = 0; i < dto.Rows.Count; i++)
            {
                GridViewRow row = gvEvaluaciones.Rows[i];

                Label lbl = (row.FindControl("lblAtencion") as Label);

                if (lbl.Text == "Sin Atención")
                {
                    lbl.ForeColor = System.Drawing.ColorTranslator.FromHtml("#2bebc8");
                }
                else if (lbl.Text == "Atención Máxima")
                {
                    lbl.ForeColor = System.Drawing.ColorTranslator.FromHtml("#e10049");
                }else if (lbl.Text == "Atención Media")
                {
                    lbl.ForeColor = System.Drawing.ColorTranslator.FromHtml("#FBC80B");
                }
                else if (lbl.Text == "Atención Alta")
                {
                    lbl.ForeColor = System.Drawing.ColorTranslator.FromHtml("#EC3122");
                }
                else
                {
                    lbl.ForeColor = System.Drawing.ColorTranslator.FromHtml("#0E8EE1");
                }
            }
        }
    }
}

/*
 * Atención Máxima - Incipiente
 * Atención Alta - Novato
 * Atención Media - Competente
 * Atención Baja - Diestro
 * Sin Atención - Experto
 * 
 * */