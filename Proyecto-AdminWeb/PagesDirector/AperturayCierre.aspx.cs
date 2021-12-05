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
    public partial class AperturayCierre : System.Web.UI.Page
    {
        ConexionDB db = new ConexionDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                /* dt.Columns.AddRange(new DataColumn[5] { new DataColumn("PERIODO"), new DataColumn("DESCRIPCION"), new DataColumn("FECHA_INICIO"), new DataColumn("FECHA_FINAL"), new DataColumn("ESTADO")});

                 dt.Rows.Add(1, "Primer Trimestre 2021", "2021-01-07", "2021-04-07", "Inactivo");
                 dt.Rows.Add(2, "Segundo Trimestre 2021", "2021-04-07", "2021-07-07", "Inactivo");
                 dt.Rows.Add(3, "Primer Bimestre 2022", "2022-01-10", "2022-02-07", "Activo");*/

                dt = db.obtenerPeriodos();
                gvPeriodos.DataSource = dt;
                gvPeriodos.DataBind();


                for(int i = 0; i< dt.Rows.Count; i++)
                {
                    GridViewRow row = gvPeriodos.Rows[i];

                    Label lbl = (row.FindControl("lblEstado") as Label);
                    lblPendientes.Text = db.obtenerDepartamentosActivos().ToString();

                    if (  lbl.Text == "Activo") 
                    {
                        lbl.ForeColor = System.Drawing.ColorTranslator.FromHtml("#2bebc8") ;
                    }
                    else
                    {
                        lbl.ForeColor = System.Drawing.ColorTranslator.FromHtml("#e10049");
                    }
                }            

            }
        }

        protected void gvPeriodos_RowCommand(object sender, GridViewCommandEventArgs e)
        {
        }

        protected void btnAbrir_Click(object sender, EventArgs e)
        {
            string idescripcion = descripcion.Value.ToString();
            string ifechainicio = fechainicio.Value.ToString();
            string ifechafinal = fechafinal.Value.ToString();


            db.abrirPeriodo(idescripcion, ifechainicio, ifechafinal);
            string correo = db.obtenerCorreoDirector(Int32.Parse(Session["Area"].ToString()));

            EnvioCorreos ev = new EnvioCorreos();
            //ev.enviarCorreo(correo, "Se ha abi")

        }
    }
}