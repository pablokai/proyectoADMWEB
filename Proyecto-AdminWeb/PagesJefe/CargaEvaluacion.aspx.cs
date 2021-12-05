using Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_AdminWeb.PagesJefe
{
    public partial class CargaEvaluacion : System.Web.UI.Page
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

            if (!IsPostBack)
            {

                Login = Session["Login"].ToString();
                rol = Int32.Parse(Session["Rol"].ToString());
                area = Int32.Parse(Session["Area"].ToString());
                departamento = Int32.Parse(Session["Departamento"].ToString()) ;

                idevaluacion = db.obtenerEvalucionPorDepartamento(departamento).ToString();
                EvaluacionID.Text = idevaluacion;

                Session["Evaluacion"] = idevaluacion;

                lblArea.Text = db.obtenerNombreArea(area);
                lblDepartamento.Text =  db.obtenerNombreDep( departamento );
                lblfechax.Text = db.obtenerFechaPeriodo(departamento);
                lblPeriodox.Text = db.obtenerNombrePeriodo(departamento);


                if (db.verificarEvaluacionPendiente(departamento, Int32.Parse( idevaluacion)) ) 
                {
                    lblTitulox.Text = "Evaluación actual del departamento";
                    panelMain.Visible = true;
                }
                else
                {
                    lblTitulox.Text = "No hay ninguna evaluación pendiente en el periódo actual";
                    panelMain.Visible = false;
                }

                lblCompromisonum.Text = db.restantesPorComponente( Int32.Parse( idevaluacion) , 1);
                lblRiesgonum.Text = db.restantesPorComponente(Int32.Parse(idevaluacion), 2);
                lblActividadesnum.Text = db.restantesPorComponente(Int32.Parse(idevaluacion), 3);
                lblSistemasnum.Text = db.restantesPorComponente(Int32.Parse(idevaluacion), 4);
                lblSeguimientonum.Text = db.restantesPorComponente(Int32.Parse(idevaluacion), 5);

            }
        }

        public void irAEvidencias()
        {

            Response.Redirect("../PagesJefe/Evidencias.aspx", false);
        }

       /* protected void Actividadesbtnx_Click(object sender, EventArgs e)
        {
            
        }

        protected void Riesgos1btnx_Click(object sender, EventArgs e)
        {
            

        }

        protected void Ambientebtnx_Click(object sender, EventArgs e)
        {
           
        }

        protected void Sistemasbtnx_Click(object sender, EventArgs e)
        {
           
        }

        protected void Seguimientosbtnx_Click(object sender, EventArgs e)
        {
           
        }*/

        protected void Ambientebtn_Click(object sender, EventArgs e)
        {
            pnlRiesgo.Visible = false;
            pnlAmbiente.Visible = true;
            pnlSistemas.Visible = false;
            pnlActividades.Visible = false;
            pnlSeguimiento.Visible = false;
            Session["Componente"] = 1;
        }

        protected void Riesgosbtn_Click(object sender, EventArgs e)
        {
            pnlRiesgo.Visible = true;
            pnlAmbiente.Visible = false;
            pnlSistemas.Visible = false;
            pnlActividades.Visible = false;
            pnlSeguimiento.Visible = false;
            Session["Componente"] = 2;
        }

        protected void Actividadesbtn_Click(object sender, EventArgs e)
        {
            pnlRiesgo.Visible = false;
            pnlAmbiente.Visible = false;
            pnlSistemas.Visible = false;
            pnlActividades.Visible = true;
            pnlSeguimiento.Visible = false;
            Session["Componente"] = 3;
        }

        protected void Sistemasbtn_Click(object sender, EventArgs e)
        {
            pnlRiesgo.Visible = false;
            pnlAmbiente.Visible = false;
            pnlActividades.Visible = false;
            pnlSistemas.Visible = true;
            pnlSeguimiento.Visible = false;
            Session["Componente"] = 4;
        }

        protected void Seguimientosbtn_Click(object sender, EventArgs e)
        {
            pnlRiesgo.Visible = false;
            pnlAmbiente.Visible = false;
            pnlActividades.Visible = false;
            pnlSistemas.Visible = false;
            pnlSeguimiento.Visible = true;
            Session["Componente"] = 5;
        }


        protected void btnCompromisox_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 1;
            irAEvidencias();
        }

        protected void btneticax_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 2;
            irAEvidencias();
        }

        protected void btnPersonalx_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 3;
            irAEvidencias();
        }

        protected void btnEstructurax_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 4;
            irAEvidencias();
        }

        protected void Marco_Orientadorx_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 5;
            irAEvidencias();
        }

        protected void Herramienta_infox_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 6;
            irAEvidencias();
        }

        protected void SEVRIx_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 7;
            irAEvidencias();
        }

        protected void Documentacion_comunicacionx_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 8;
            irAEvidencias();
        }

        protected void Caracteristicas_controlx_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 9;
            irAEvidencias();
        }

        protected void Alcance_controlx_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 10;
            irAEvidencias();
        }

        protected void Formalidad_controlx_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 11;
            irAEvidencias();
        }

        protected void Aplicacion_controlx_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 12;
            irAEvidencias();
        }

        protected void AlcanceSIx_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 13;
            irAEvidencias();
        }

        protected void Calidadinfox_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 14;
            irAEvidencias();
        }

        protected void Comunicacionx_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 15;
            irAEvidencias();
        }

        protected void ControlSIx_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 16;
            irAEvidencias();
        }

        protected void seg1x_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 17;
            irAEvidencias();
        }

        protected void seg2x_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 18;
            irAEvidencias();
        }

        protected void seg3x_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 19;
            irAEvidencias();
        }

        protected void seg4x_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 20;
            irAEvidencias();
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            mpenviar.Hide();
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            mpenviar.Show();
        }

        protected void btnEnviarEvaluacion_Click(object sender, EventArgs e)
        {
            db.enviarEvaluacion(Int32.Parse(Session["Evaluacion"].ToString()));
            db.enviarIncompleta(Int32.Parse(Session["Evaluacion"].ToString()));
            Response.Redirect("../PagesJefe/CargaEvaluacion.aspx", false);
        }
    }
}