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
    public partial class VistaDeHistorico : System.Web.UI.Page
    {
        ConexionDB db = new ConexionDB();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            int cedula;
            cedula = int.Parse(txtCedula.Value);
            

               
                DataTable dt = new DataTable();
                dt = db.obtenerTablaControlSeguimiento(cedula);
                gvVistHistorico.DataSource = dt;
                gvVistHistorico.DataBind();
             

        }

        protected void gvVistHistorico_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowIndex = Convert.ToInt32(e.CommandArgument);
            GridViewRow row = gvVistHistorico.Rows[rowIndex];

            if (e.CommandName == "btnRevizado")
            {


                int ID;
                ID = Int32.Parse((row.FindControl("lblID") as Label).Text);
                db.actualizaEstadoControlSeguimiento(ID);
                Response.Redirect("../PagesDirector/VistaDeHistorico.aspx", false);


            }



            if (e.CommandName == "btnevidencia")
            {
                int cedula;
                cedula = int.Parse(txtCedula.Value);
                int ID_EVALUACION_EVIDENCIA;
                ID_EVALUACION_EVIDENCIA = Int32.Parse((row.FindControl("lblID") as Label).Text);

                //string estado;
                //estado = ((row.FindControl("lblESTADO") as Label).Text);

                //if (estado==)
                //{

                //}
                DataTable dt = new DataTable();
                dt = db.obtenerTablaControlSeguimiento2(cedula, ID_EVALUACION_EVIDENCIA);
                string EvidenciaLink = dt.Rows[0][2].ToString();
                Response.Redirect(EvidenciaLink);

            }

        }
    }
}