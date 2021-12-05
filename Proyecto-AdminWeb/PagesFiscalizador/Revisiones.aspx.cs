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
    public partial class Revisiones : System.Web.UI.Page
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
                DataTable dt = new DataTable();


                dt = db.obtenerEvaluaciones();
                lblPendientes.Text = db.contarRevisadas();

                gvPendientes.DataSource = dt;
                gvPendientes.DataBind();

                Login = Session["Login"].ToString();
                rol = Int32.Parse(Session["Rol"].ToString());
                area = Int32.Parse(Session["Area"].ToString());



            }
        }

        protected void gvPendientes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "BTNver")
            {

                pnlPrincipal.Visible = true;

                int rowIndex = Convert.ToInt32(e.CommandArgument);


                GridViewRow row = gvPendientes.Rows[rowIndex];


                Session["Evaluacion"] = (row.FindControl("lblEvaluacion") as Label).Text;

                Session["Departamento"]  = db.obtenerDepartamentoID( 
                    Int32.Parse(Session["Evaluacion"].ToString()) );


                lblCompromisonum.Text = db.restantesPorComponenteRevisar(Int32.Parse(Session["Evaluacion"].ToString()), 1);
                lblRiesgonum.Text = db.restantesPorComponenteRevisar(Int32.Parse(Session["Evaluacion"].ToString()), 2);
                lblActividadesnum.Text = db.restantesPorComponenteRevisar(Int32.Parse(Session["Evaluacion"].ToString()), 3);
                lblSistemasnum.Text = db.restantesPorComponenteRevisar(Int32.Parse(Session["Evaluacion"].ToString()), 4);
                lblSeguimientonum.Text = db.restantesPorComponenteRevisar(Int32.Parse(Session["Evaluacion"].ToString()), 5);



            }
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
            Session["Eje"] = 1;
            irARespuestas();
           
        }

        protected void btnetica_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 2;
            irARespuestas();
        }

        protected void btnPersonal_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 3;
            irARespuestas();
        }

        protected void btnEstructura_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 4;
            irARespuestas();
        }

        protected void Marco_Orientador_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 5;
            irARespuestas();
        }

        protected void Herramienta_info_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 6;
            irARespuestas();
        }

        protected void SEVRI_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 7;
            irARespuestas();
        }

        protected void Documentacion_comunicación_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 8;
            irARespuestas();
        }

        protected void Caracteristicas_control_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 9;
            irARespuestas();

        }

        protected void Alcance_control_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 10;
            irARespuestas();
        }

        protected void Formalidad_control_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 11;
            irARespuestas();
        }

        protected void Aplicacion_control_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 12;
            irARespuestas();
        }

        protected void AlcanceSI_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 13;
            irARespuestas();
        }

        protected void Calidadinfo_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 14;
            irARespuestas();
        }

        protected void Comunicacion_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 15;
            irARespuestas();
        }

        protected void ControlSI_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 16;
            irARespuestas();
        }


        protected void seg1_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 17;
            irARespuestas();
        }

        protected void seg2_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 18;
            irARespuestas();
        }

        protected void seg3_Click(object sender, EventArgs e)
        {
            Session["Eje"] =  19;
            irARespuestas();
        }

        protected void seg4_Click(object sender, EventArgs e)
        {
            Session["Eje"] = 20;
            irARespuestas();
        }


        public void irARespuestas()
        {
            
            Response.Redirect("../PagesFiscalizador/Respuestas.aspx", false);
        }

        protected void btnTerminar_Click(object sender, EventArgs e)
        {

            db.revisarIncompleta(Int32.Parse(Session["Evaluacion"].ToString()));
            db.enviarRevision(Int32.Parse(Session["Evaluacion"].ToString()));
            Response.Redirect("../PagesFiscalizador/Revisiones.aspx", false);
        }

        protected void btnEnviar_Click1(object sender, EventArgs e)
        {
            mpenviar.Show();
        }

        protected void btnCancelar_Click1(object sender, EventArgs e)
        {
            mpenviar.Hide();
        }
    }
}