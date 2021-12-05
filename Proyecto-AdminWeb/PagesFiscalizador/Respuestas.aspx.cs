using Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Proyecto_AdminWeb.PagesFiscalizador
{
    public partial class Respuestas : System.Web.UI.Page
    {
        string Login = null;
        int rol;
        int area;
        static int departamento;
        static int idevaluacion;
        static int componente;
        static int eje;
        int numPreguntas;
        static int nivel;

        ConexionDB db = new ConexionDB();

        Panel[] panels = new Panel[10];
        Label[] ids = null;
        Label[] preguntas = null;
        Label[] evidencias = null;
        Button[] ver = null;
        Label[] estados = null;
        Button[] aprobar = null;
        Button[] rechazar = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                Panel1.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Panel5.Visible = false;
                Panel6.Visible = false;
                Panel7.Visible = false;
                Panel8.Visible = false;
                Panel9.Visible = false;
                Panel10.Visible = false;

                lblVacio.Visible = false;
                             

                Login = Session["Login"].ToString();
                rol = Int32.Parse(Session["Rol"].ToString());
                area = Int32.Parse(Session["Area"].ToString());

                departamento = Int32.Parse(Session["Departamento"].ToString());
                idevaluacion = Int32.Parse( Session["Evaluacion"].ToString());
                componente = Int32.Parse(Session["Componente"].ToString());
                eje = Int32.Parse(Session["Eje"].ToString());

                IDEvaluacion.Text = Session["Evaluacion"].ToString();
                Componente.Text = db.obtenerNombreComponente(componente);
                Eje.Text = db.obtenerNombreEje(eje);
                lblPorcentaje.Text = db.calcularPorcentaje(idevaluacion);
            }
            else
            {
                lblPorcentaje.Text = db.calcularPorcentaje(idevaluacion);
            }
        }

        protected void btnExperto_Click(object sender, EventArgs e)
        {
            nivel = db.obtenerIDNivel("Experto", eje, componente);
            DataTable dt = db.obtenerRespuestas(idevaluacion, componente, eje, departamento, nivel);
            esconderContenido();
            logicaPaneles(dt);
        }

        protected void btnDiestro_Click(object sender, EventArgs e)
        {
            nivel = db.obtenerIDNivel("Diestro", eje, componente);
            DataTable dt = db.obtenerRespuestas(idevaluacion, componente, eje, departamento, nivel);
            esconderContenido();

            logicaPaneles(dt);
        }

        protected void btnCompetente_Click(object sender, EventArgs e)
        {
            nivel = db.obtenerIDNivel("Competente", eje, componente);
            DataTable dt = db.obtenerRespuestas(idevaluacion, componente, eje, departamento, nivel);
            esconderContenido();

            logicaPaneles(dt);
        }

        protected void btnNovato_Click(object sender, EventArgs e)
        {
            nivel = db.obtenerIDNivel("Novato", eje, componente);
            DataTable dt = db.obtenerRespuestas(idevaluacion, componente, eje, departamento, nivel);
            esconderContenido();

            logicaPaneles(dt);

        }

        protected void btnIncipiente_Click(object sender, EventArgs e)
        {
            nivel = db.obtenerIDNivel("Incipiente", eje, componente);
            DataTable dt = db.obtenerRespuestas(idevaluacion, componente, eje, departamento, nivel);
            esconderContenido();

            logicaPaneles(dt);

        }

        private void logicaPaneles(DataTable dt)
        {
            Panel[] panels = { Panel1, Panel2, Panel3, Panel4, Panel5, Panel6, Panel7, Panel8, Panel9, Panel10 };
            Label[] ids = { lblID1, lblID2, lblID3, lblID4, lblID5, lblID6, lblID7, lblID8, lblID9, lblID10 };
            Label[] preguntas = { lblPregunta1, lblPregunta2, lblPregunta3, lblPregunta4, lblPregunta5, lblPregunta6, lblPregunta7, lblPregunta8, lblPregunta9, lblPregunta10 };
            Label[] evidencias = { lblEvidencia1, lblEvidencia2, lblEvidencia3, lblEvidencia4, lblEvidencia5, lblEvidencia6, lblEvidencia7, lblEvidencia8, lblEvidencia9, lblEvidencia10 };
            Button[] ver = { btnVer1, btnVer2, btnVer3, btnVer4, btnVer5, btnVer6, btnVer7, btnVer8, btnVer9, btnVer10 };
            Label[] estados = { lblEstado1, lblEstado2, lblEstado3, lblEstado4, lblEstado5, lblEstado6, lblEstado7, lblEstado8, lblEstado9, lblEstado10 };
            Button[] aprobar = { btnAprobar1, btnAprobar2, btnAprobar3, btnAprobar4, btnAprobar5, btnAprobar6, btnAprobar7, btnAprobar8, btnAprobar9, btnAprobar10 };
            Button[] rechazar = { btnRechazar1, btnRechazar2, btnRechazar3, btnRechazar4, btnRechazar5, btnRechazar6, btnRechazar7, btnRechazar8, btnRechazar9, btnRechazar10 };

            if(dt.Rows.Count > 0)
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    panels[i].Visible = true;

                    ids[i].Visible = true;
                    ids[i].Text = dt.Rows[i][0].ToString();

                    preguntas[i].Visible = true;
                    preguntas[i].Text = dt.Rows[i][1].ToString();

                    evidencias[i].Visible = true;
                    evidencias[i].Text = dt.Rows[i][2].ToString();

                    ver[i].Visible = true;

                    estados[i].Visible = true;
                    if (Int32.Parse(dt.Rows[i][3].ToString()) == 1)
                    {
                        estados[i].Text = "OBLIGATORIO";
                    }
                    else
                    {
                        estados[i].Text = "OPCIONAL";
                    }

                    aprobar[i].Visible = true;
                    rechazar[i].Visible = true;
                }
                lblVacio.Visible = false;
            }
            else
            {
                lblVacio.Visible = true;
            }
        }





        private DataTable llenarPreguntas()
        {
            DataTable dt = new DataTable();

            dt.Columns.AddRange(new DataColumn[4] { new DataColumn("ID"), new DataColumn("PREGUNTA"), new DataColumn("EVIDENCIA"), new DataColumn("ESTADO") });

            dt.Rows.Add("1121", "encia.", "https://cuccr-my.sharepoint.com/:x:/r/", "OBLIGATORIO");
            dt.Rows.Add("1214", "Normativa  dependencia", "=true", "OBLIGATORIO");
            dt.Rows.Add("1254", "Políticas, normas, lineamientos u otros similares de su dependencia.", "https://cuccr-my.sharepoint.com/:x:/r/prue", "OBLIGATORIO");
            dt.Rows.Add("1254", "Ideticas para la toma de decisiones.", "=true", "OPCIONAL");
            dt.Rows.Add("1254", "Aspectos o puntos faltantes en la normativa actual", "https://cuccr-my.sharepoint.com/:x:/r/personal/pablo_rodriguez_guzman_cuc_cr/_layouts/15/Doc.aspx?sourcedoc=%7BCF3CA3FF-19C7-458A-A388-1C546A5E6341%7D&file=Book.xlsx&action=default&mobileredirect=true", "OBLIGATORIO");
            dt.Rows.Add("1254", "Aspectos o puntos faltantes en la normativa actual", "https://cuccr-my.sharepoint.com/:x:/r/personal/pablo_rodriguez_guzman_cuc_cr/_layouts/15/Doc.aspx?sourcedoc=%7BCF3CA3FF-19C7-458A-A388-1C546A5E6341%7D&file=Book.xlsx&action=default&mobileredirect=true", "OBLIGATORIO");
            dt.Rows.Add("1254", "Aspectos o puntos faltantes en la normativa actual", "https://cuccr-my.sharepoint.com/:x:/r/personal/pablo_rodriguez_guzman_cuc_cr/_layouts/15/Doc.aspx?sourcedoc=%7BCF3CA3FF-19C7-458A-A388-1C546A5E6341%7D&file=Book.xlsx&action=default&mobileredirect=true", "OBLIGATORIO");
            dt.Rows.Add("1254", "Aspectos o puntos faltantes en la normativa actual", "https://cuccr-my.sharepoint.com/:x:/r/personal/pablo_rodriguez_guzman_cuc_cr/_layouts/15/Doc.aspx?sourcedoc=%7BCF3CA3FF-19C7-458A-A388-1C546A5E6341%7D&file=Book.xlsx&action=default&mobileredirect=true", "OBLIGATORIO");
            dt.Rows.Add("1254", "Aspectos o puntos faltantes en la normativa actual", "https://cuccr-my.sharepoint.com/:x:/r/personal/pablo_rodriguez_guzman_cuc_cr/_layouts/15/Doc.aspx?sourcedoc=%7BCF3CA3FF-19C7-458A-A388-1C546A5E6341%7D&file=Book.xlsx&action=default&mobileredirect=true", "OBLIGATORIO");
            dt.Rows.Add("1254", "Aspectos o puntos faltantes en la normativa actual", "https://cuccr-my.sharepoint.com/:x:/r/personal/pablo_rodriguez_guzman_cuc_cr/_layouts/15/Doc.aspx?sourcedoc=%7BCF3CA3FF-19C7-458A-A388-1C546A5E6341%7D&file=Book.xlsx&action=default&mobileredirect=true", "OBLIGATORIO");
          
            return dt;

        }

        protected void btnVer1_Click(object sender, EventArgs e)
        {
            Response.Write("<script>");
            Response.Write("window.open('"+lblEvidencia1.Text+ "','_blank')");
            Response.Write("</script>");


            //((HtmlControl)(FindControl("framever1"))).Attributes["src"] = lblEvidencia1.Text;
            //This.framever1.Attributes("src") = "game url";        

        }

        protected void btnRechazar1_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse( lblID1.Text );
            db.modificarRevision(id, 2);

            DataTable dt = db.obtenerRespuestas(idevaluacion, componente, eje, departamento, nivel);
            esconderContenido();

            logicaPaneles(dt);
        }

        protected void btnAprobar1_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(lblID1.Text);
            db.modificarRevision(id, 1);

            DataTable dt = db.obtenerRespuestas(idevaluacion, componente, eje, departamento, nivel);
            esconderContenido();

            logicaPaneles(dt);
        }

        protected void btnVer2_Click(object sender, EventArgs e)
        {
            Response.Write("<script>");
            Response.Write("window.open('" + lblEvidencia2.Text + "','_blank')");
            Response.Write("</script>");
        }

        protected void btnAprobar2_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(lblID2.Text);
            db.modificarRevision(id, 1);

            DataTable dt = db.obtenerRespuestas(idevaluacion, componente, eje, departamento, nivel);
            esconderContenido();

            logicaPaneles(dt);
        }

        protected void btnRechazar2_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(lblID2.Text);
            db.modificarRevision(id, 2);

            DataTable dt = db.obtenerRespuestas(idevaluacion, componente, eje, departamento, nivel);
            esconderContenido();

            logicaPaneles(dt);
        }

        protected void btnVer3_Click(object sender, EventArgs e)
        {
            Response.Write("<script>");
            Response.Write("window.open('" + lblEvidencia3.Text + "','_blank')");
            Response.Write("</script>");
        }

        protected void btnAprobar3_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(lblID3.Text);
            db.modificarRevision(id, 1);

            DataTable dt = db.obtenerRespuestas(idevaluacion, componente, eje, departamento, nivel);
            esconderContenido();

            logicaPaneles(dt);
        }

        protected void btnRechazar3_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(lblID3.Text);
            db.modificarRevision(id, 2);

            DataTable dt = db.obtenerRespuestas(idevaluacion, componente, eje, departamento, nivel);
            esconderContenido();

            logicaPaneles(dt);
        }

        protected void btnVer4_Click(object sender, EventArgs e)
        {
            Response.Write("<script>");
            Response.Write("window.open('" + lblEvidencia4.Text + "','_blank')");
            Response.Write("</script>");
        }

        protected void btnAprobar4_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(lblID4.Text);
            db.modificarRevision(id, 1);

            DataTable dt = db.obtenerRespuestas(idevaluacion, componente, eje, departamento, nivel);
            esconderContenido();

            logicaPaneles(dt);
        }

        protected void btnRechazar4_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(lblID4.Text);
            db.modificarRevision(id, 2);

            DataTable dt = db.obtenerRespuestas(idevaluacion, componente, eje, departamento, nivel);
            esconderContenido();

            logicaPaneles(dt);
        }

        protected void btnVer5_Click(object sender, EventArgs e)
        {
            Response.Write("<script>");
            Response.Write("window.open('" + lblEvidencia5.Text + "','_blank')");
            Response.Write("</script>");
        }

        protected void btnAprobar5_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(lblID5.Text);
            db.modificarRevision(id, 1);

            DataTable dt = db.obtenerRespuestas(idevaluacion, componente, eje, departamento, nivel);
            esconderContenido();

            logicaPaneles(dt);
        }

        protected void btnRechazar5_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(lblID5.Text);
            db.modificarRevision(id, 2);

            DataTable dt = db.obtenerRespuestas(idevaluacion, componente, eje, departamento, nivel);
            esconderContenido();

            logicaPaneles(dt);
        }

        protected void btnVer6_Click(object sender, EventArgs e)
        {

        }

        protected void btnAprobar6_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(lblID6.Text);
            db.modificarRevision(id, 1);

            DataTable dt = db.obtenerRespuestas(idevaluacion, componente, eje, departamento, nivel);
            esconderContenido();

            logicaPaneles(dt);
        }

        protected void btnRechazar6_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(lblID6.Text);
            db.modificarRevision(id, 2);

            DataTable dt = db.obtenerRespuestas(idevaluacion, componente, eje, departamento, nivel);
            esconderContenido();

            logicaPaneles(dt);
        }

        protected void btnVer7_Click(object sender, EventArgs e)
        {

        }

        protected void btnAprobar7_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(lblID7.Text);
            db.modificarRevision(id, 1);

            DataTable dt = db.obtenerRespuestas(idevaluacion, componente, eje, departamento, nivel);
            esconderContenido();

            logicaPaneles(dt);
        }

        protected void btnRechazar7_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(lblID7.Text);
            db.modificarRevision(id, 2);

            DataTable dt = db.obtenerRespuestas(idevaluacion, componente, eje, departamento, nivel);
            esconderContenido();

            logicaPaneles(dt);
        }

        protected void btnVer8_Click(object sender, EventArgs e)
        {

        }

        protected void btnAprobar8_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(lblID1.Text);
            db.modificarRevision(id, 1);

            DataTable dt = db.obtenerRespuestas(idevaluacion, componente, eje, departamento, nivel);
            esconderContenido();

            logicaPaneles(dt);
        }

        protected void btnRechazar8_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(lblID1.Text);
            db.modificarRevision(id, 2);

            DataTable dt = db.obtenerRespuestas(idevaluacion, componente, eje, departamento, nivel);
            esconderContenido();

            logicaPaneles(dt);
        }

        protected void btnVer9_Click(object sender, EventArgs e)
        {

        }

        protected void btnAprobar9_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(lblID1.Text);
            db.modificarRevision(id, 1);

            DataTable dt = db.obtenerRespuestas(idevaluacion, componente, eje, departamento, nivel);
            esconderContenido();

            logicaPaneles(dt);
        }

        protected void btnRechazar9_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(lblID1.Text);
            db.modificarRevision(id, 2);
            btnIncipiente_Click(sender, e);

            DataTable dt = db.obtenerRespuestas(idevaluacion, componente, eje, departamento, nivel);
            esconderContenido();

            logicaPaneles(dt);
        }

        protected void btnVer10_Click(object sender, EventArgs e)
        {

        }

        protected void btnAprobar10_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(lblID1.Text);
            db.modificarRevision(id, 1);

            DataTable dt = db.obtenerRespuestas(idevaluacion, componente, eje, departamento, nivel);
            esconderContenido();

            logicaPaneles(dt);
        }

        protected void btnRechazar10_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(lblID1.Text);
            db.modificarRevision(id, 2);
            btnIncipiente_Click(sender, e);

            DataTable dt = db.obtenerRespuestas(idevaluacion, componente, eje, departamento, nivel);
            esconderContenido();

            logicaPaneles(dt);
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("../PagesFiscalizador/Revisiones.aspx");
        }


        private void esconderContenido()
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Panel5.Visible = false;
            Panel6.Visible = false;
            Panel7.Visible = false;
            Panel8.Visible = false;
            Panel9.Visible = false;
            Panel10.Visible = false;
            lblVacio.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            mp1.Show();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            mp2.Show();
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            mp2.Hide();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            mp1.Hide();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            mp3.Show();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            mp3.Hide();
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            mp1.Show();
        }
    }
}