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
    public partial class DefinirEvaluacion : System.Web.UI.Page
    {
        int componente;
        int eje;
        string evaluacion;
        ConexionDB db = new ConexionDB();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    DropDownList1.DataSource = db.obtenerDescripcionEvaluaciones();
                    DropDownList1.DataTextField = "DESCRIPCION";
                    DropDownList1.DataBind();
                }
                catch
                {

                }
            }
        }

        protected void Evaluacion_Click(object sender, EventArgs e)
        {
            db.registrarEvaluacion(1, TextBox1.Text);

            DropDownList1.DataSource = db.obtenerDescripcionEvaluaciones();
            DropDownList1.DataTextField = "DESCRIPCION";
            DropDownList1.DataBind();

            TextBox1.Text = "";
        }

        protected void Ambientebtn_Click(object sender, EventArgs e)
        {
            pnlRiesgo.Visible = false;
            pnlAmbiente.Visible = true;
            pnlSistemas.Visible = false;
            pnlActividades.Visible = false;
            pnlSeguimiento.Visible = false;

        }

        protected void Riesgos1btn_Click(object sender, EventArgs e)
        {
            pnlRiesgo.Visible = true;
            pnlAmbiente.Visible = false;
            pnlSistemas.Visible = false;
            pnlActividades.Visible = false;
            pnlSeguimiento.Visible = false;

        }

        protected void Actividadesbtn_Click(object sender, EventArgs e)
        {
            pnlRiesgo.Visible = false;
            pnlAmbiente.Visible = false;
            pnlSistemas.Visible = false;
            pnlActividades.Visible = true;
            pnlSeguimiento.Visible = false;
        }

        protected void Sistemasbtn_Click(object sender, EventArgs e)
        {
            pnlRiesgo.Visible = false;
            pnlAmbiente.Visible = false;
            pnlActividades.Visible = false;
            pnlSistemas.Visible = true;
            pnlSeguimiento.Visible = false;
        }

        protected void Seguimientosbtn_Click(object sender, EventArgs e)
        {
            pnlRiesgo.Visible = false;
            pnlAmbiente.Visible = false;
            pnlActividades.Visible = false;
            pnlSistemas.Visible = false;
            pnlSeguimiento.Visible = true;
        }

        protected void Amb1_Click(object sender, EventArgs e)
        {
            evaluacion = DropDownList1.SelectedValue;
            componente = 1;
            eje = 1;

            Response.Redirect("Formulario.aspx?valor1=" + evaluacion + "&valor2=" + componente + "&valor3=" + eje);

        }

        protected void Amb2_Click(object sender, EventArgs e)
        {
            evaluacion = DropDownList1.SelectedValue;
            componente = 1;
            eje = 2;

            Response.Redirect("Formulario.aspx?valor1=" + evaluacion + "&valor2=" + componente + "&valor3=" + eje);
        }

        protected void Amb3_Click(object sender, EventArgs e)
        {
            evaluacion = DropDownList1.SelectedValue;
            componente = 1;
            eje = 3;

            Response.Redirect("Formulario.aspx?valor1=" + evaluacion + "&valor2=" + componente + "&valor3=" + eje);
        }

        protected void Amb4_Click(object sender, EventArgs e)
        {
            evaluacion = DropDownList1.SelectedValue;
            componente = 1;
            eje = 4;

            Response.Redirect("Formulario.aspx?valor1=" + evaluacion + "&valor2=" + componente + "&valor3=" + eje);
        }

        protected void Rie1_Click(object sender, EventArgs e)
        {
            evaluacion = DropDownList1.SelectedValue;
            componente = 2;
            eje = 5;

            Response.Redirect("Formulario.aspx?valor1=" + evaluacion + "&valor2=" + componente + "&valor3=" + eje);
        }

        protected void Rie2_Click(object sender, EventArgs e)
        {
            evaluacion = DropDownList1.SelectedValue;
            componente = 2;
            eje = 6;

            Response.Redirect("Formulario.aspx?valor1=" + evaluacion + "&valor2=" + componente + "&valor3=" + eje);
        }

        protected void Rie3_Click(object sender, EventArgs e)
        {
            evaluacion = DropDownList1.SelectedValue;
            componente = 2;
            eje = 7;

            Response.Redirect("Formulario.aspx?valor1=" + evaluacion + "&valor2=" + componente + "&valor3=" + eje);
        }

        protected void Rie4_Click(object sender, EventArgs e)
        {
            evaluacion = DropDownList1.SelectedValue;
            componente = 2;
            eje = 8;

            Response.Redirect("Formulario.aspx?valor1=" + evaluacion + "&valor2=" + componente + "&valor3=" + eje);
        }

        protected void Act1_Click(object sender, EventArgs e)
        {
            evaluacion = DropDownList1.SelectedValue;
            componente = 3;
            eje = 9;

            Response.Redirect("Formulario.aspx?valor1=" + evaluacion + "&valor2=" + componente + "&valor3=" + eje);
        }

        protected void Act2_Click(object sender, EventArgs e)
        {
            evaluacion = DropDownList1.SelectedValue;
            componente = 3;
            eje = 10;

            Response.Redirect("Formulario.aspx?valor1=" + evaluacion + "&valor2=" + componente + "&valor3=" + eje);
        }

        protected void Act3_Click(object sender, EventArgs e)
        {
            evaluacion = DropDownList1.SelectedValue;
            componente = 3;
            eje = 11;

            Response.Redirect("Formulario.aspx?valor1=" + evaluacion + "&valor2=" + componente + "&valor3=" + eje);
        }

        protected void Act4_Click(object sender, EventArgs e)
        {
            evaluacion = DropDownList1.SelectedValue;
            componente = 3;
            eje = 12;

            Response.Redirect("Formulario.aspx?valor1=" + evaluacion + "&valor2=" + componente + "&valor3=" + eje);
        }

        protected void sis1_Click(object sender, EventArgs e)
        {
            evaluacion = DropDownList1.SelectedValue;
            componente = 4;
            eje = 13;

            Response.Redirect("Formulario.aspx?valor1=" + evaluacion + "&valor2=" + componente + "&valor3=" + eje);
        }

        protected void sis2_Click(object sender, EventArgs e)
        {
            evaluacion = DropDownList1.SelectedValue;
            componente = 4;
            eje = 14;

            Response.Redirect("Formulario.aspx?valor1=" + evaluacion + "&valor2=" + componente + "&valor3=" + eje);
        }

        protected void sis3_Click(object sender, EventArgs e)
        {
            evaluacion = DropDownList1.SelectedValue;
            componente = 4;
            eje = 15;

            Response.Redirect("Formulario.aspx?valor1=" + evaluacion + "&valor2=" + componente + "&valor3=" + eje);
        }

        protected void sis4_Click(object sender, EventArgs e)
        {
            evaluacion = DropDownList1.SelectedValue;
            componente = 4;
            eje = 16;

            Response.Redirect("Formulario.aspx?valor1=" + evaluacion + "&valor2=" + componente + "&valor3=" + eje);
        }

        protected void seg1_Click(object sender, EventArgs e)
        {
            evaluacion = DropDownList1.SelectedValue;
            componente = 5;
            eje = 17;

            Response.Redirect("Formulario.aspx?valor1=" + evaluacion + "&valor2=" + componente + "&valor3=" + eje);
        }

        protected void seg2_Click(object sender, EventArgs e)
        {
            evaluacion = DropDownList1.SelectedValue;
            componente = 5;
            eje = 18;

            Response.Redirect("Formulario.aspx?valor1=" + evaluacion + "&valor2=" + componente + "&valor3=" + eje);
        }

        protected void seg3_Click(object sender, EventArgs e)
        {
            evaluacion = DropDownList1.SelectedValue;
            componente = 5;
            eje = 19;

            Response.Redirect("Formulario.aspx?valor1=" + evaluacion + "&valor2=" + componente + "&valor3=" + eje);
        }

        protected void seg4_Click(object sender, EventArgs e)
        {
            evaluacion = DropDownList1.SelectedValue;
            componente = 5;
            eje = 20;

            Response.Redirect("Formulario.aspx?valor1=" + evaluacion + "&valor2=" + componente + "&valor3=" + eje);
        }
    }
}