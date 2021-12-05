using Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_AdminWeb.PagesDirector
{
    public partial class HistorialEV : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (IsPostBack )
            //{
            //    pnlRiesgox.Visible = false;
            //    pnlAmbientex.Visible = false;
            //    pnlSistemasx.Visible = false;
            //    pnlActividadesx.Visible = false;
            //    pnlSeguimientox.Visible = false;

            //    NIveles.Visible = false;

            //    Tablaevaluaciones.Visible = false;




            //}
        }


        protected void Riesgos1btnx_Click(object sender, EventArgs e)
        {
            pnlRiesgox.Visible = true;
            pnlAmbientex.Visible = false;
            pnlSistemasx.Visible = false;
            pnlActividadesx.Visible = false;
            pnlSeguimientox.Visible = false;
            Session["Componente"] = 2;

        }

        protected void Actividadesbtnx_Click(object sender, EventArgs e)
        {
            pnlRiesgox.Visible = false;
            pnlAmbientex.Visible = false;
            pnlSistemasx.Visible = false;
            pnlActividadesx.Visible = true;
            pnlSeguimientox.Visible = false;
            Session["Componente"] = 3;

        }

        protected void Sistemasbtnx_Click(object sender, EventArgs e)
        {
            pnlRiesgox.Visible = false;
            pnlAmbientex.Visible = false;
            pnlActividadesx.Visible = false;
            pnlSistemasx.Visible = true;
            pnlSeguimientox.Visible = false;
            Session["Componente"] = 4;
        }

        protected void Seguimientosbtnx_Click(object sender, EventArgs e)
        {
            pnlRiesgox.Visible = false;
            pnlAmbientex.Visible = false;
            pnlSistemasx.Visible = false;
            pnlActividadesx.Visible = false;
            pnlSeguimientox.Visible = true;
            Session["Componente"] = 5;
        }

        protected void Ambientebtnx_Click(object sender, EventArgs e)
        {
            pnlRiesgox.Visible = false;
            pnlAmbientex.Visible = true;
            pnlSistemasx.Visible = false;
            pnlActividadesx.Visible = false;
            pnlSeguimientox.Visible = false;
            Session["Componente"] = 1;
        }
        //°1 Eje

        protected void btnCompromiso_Click(object sender, EventArgs e)
        {
            NIveles.Visible = true;
            Session["EJE"] = 1;

        }

        protected void btnetica_Click(object sender, EventArgs e)
        {
            NIveles.Visible = true;
            Session["EJE"] = 2;
        }

        protected void btnPersonal_Click(object sender, EventArgs e)
        {
            NIveles.Visible = true;
            Session["EJE"] = 3;
        }

        protected void btnEstructura_Click(object sender, EventArgs e)
        {
            NIveles.Visible = true;
            Session["EJE"] = 4;
        }

        protected void Marco_Orientador_Click(object sender, EventArgs e)
        {
            NIveles.Visible = true;
            Session["EJE"] = 5;
        }

        protected void Herramienta_info_Click(object sender, EventArgs e)
        {
            NIveles.Visible = true;
            Session["EJE"] = 6;
        }

        protected void SEVRI_Click(object sender, EventArgs e)
        {
            NIveles.Visible = true;
            Session["EJE"] = 7;
        }

        protected void Documentacion_comunicación_Click(object sender, EventArgs e)
        {
            NIveles.Visible = true;
            Session["EJE"] = 8;
        }

        protected void Caracteristicas_control_Click(object sender, EventArgs e)
        {
            NIveles.Visible = true;
            Session["EJE"] = 9;
        }

        protected void Alcance_control_Click(object sender, EventArgs e)
        {
            NIveles.Visible = true;
            Session["EJE"] = 10;
        }

        protected void Formalidad_control_Click(object sender, EventArgs e)
        {
            NIveles.Visible = true;
            Session["EJE"] = 11;
        }

        protected void Aplicacion_control_Click(object sender, EventArgs e)
        {
            NIveles.Visible = true;
            Session["EJE"] = 12;
        }

        protected void AlcanceSI_Click(object sender, EventArgs e)
        {
            NIveles.Visible = true;
            Session["EJE"] = 13;
        }

        protected void Calidadinfo_Click(object sender, EventArgs e)
        {
            NIveles.Visible = true;
            Session["EJE"] = 14;
        }

        protected void Comunicacion_Click(object sender, EventArgs e)
        {
            NIveles.Visible = true;
            Session["EJE"] = 15;
        }

        protected void ControlSI_Click(object sender, EventArgs e)
        {
            NIveles.Visible = true;
            Session["EJE"] = 16;
        }

        protected void seg1_Click(object sender, EventArgs e)
        {
            NIveles.Visible = true;
            Session["EJE"] = 17;
        }

        protected void seg2_Click(object sender, EventArgs e)
        {
            NIveles.Visible = true;
            Session["EJE"] = 18;
        }

        protected void seg3_Click(object sender, EventArgs e)
        {
            NIveles.Visible = true;
            Session["EJE"] = 19;
        }

        protected void seg4_Click(object sender, EventArgs e)
        {
            NIveles.Visible = true;
            Session["EJE"] = 20;
        }

        protected void N_Incipiente_Click(object sender, EventArgs e)
        {
            Session["Nivel"] = "Incipiente";
            Tablaevaluaciones.Visible = true;

        }

        protected void N_Novato_Click(object sender, EventArgs e)
        {
            Session["Nivel"] = "Novato";
            Tablaevaluaciones.Visible = true;


        }

        protected void N_Competente_Click(object sender, EventArgs e)
        {
            Session["Nivel"] = "Competente";
            Tablaevaluaciones.Visible = true;


        }

        protected void N_Diestro_Click(object sender, EventArgs e)
        {
            Session["Nivel"] = "Diestro";
            Tablaevaluaciones.Visible = true;


        }

        protected void Experto_Click(object sender, EventArgs e)
        {
            Session["Nivel"] = "Experto";
            Tablaevaluaciones.Visible = true;


        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            //txtIDEval.Value = Session["IDEVALUACION"].ToString();

            int IDEVALUACION = Int32.Parse(txtIDEval.Value);
            int ComponenteX = (int)Session["Componente"];
            int EJEx = (int)Session["EJE"];
            string Nivelx = Session["Nivel"].ToString();

            ConexionDB db = new ConexionDB();
            DataTable dt = new DataTable();
            dt = db.mostrarpendeientes7x(ComponenteX, EJEx, Nivelx, IDEVALUACION);
            gvPendientes.DataSource = dt;
            gvPendientes.DataBind();
        }
    }
}