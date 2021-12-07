using Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_AdminWeb.PagesEmpleado
{
    public partial class SubirEvedencia : System.Web.UI.Page
    {
        


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string ID_ENCARGADO = Session["Login"].ToString(); ;
                ConexionDB db = new ConexionDB();
                DataTable dt = new DataTable();
                dt = db.SubirEvidencia7x(ID_ENCARGADO);
                gvTablaevit.DataSource = dt;
                gvTablaevit.DataBind();
            }


        }

        protected void gvTablaevit_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Panel1.Visible = true;
            if (e.CommandName == "btnevidencia")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);


                GridViewRow row = gvTablaevit.Rows[rowIndex];

                
                int ID_EVALUACION_PUNTO;
                int ID_EVALUACION_EVIDENCIA;

                ID_EVALUACION_PUNTO = Int32.Parse((row.FindControl("lblID_E_P") as Label).Text);
                ID_EVALUACION_EVIDENCIA = Int32.Parse((row.FindControl("lblID_E_E") as Label).Text);
                Session["ID_EVALUACION_PUNTO"] = ID_EVALUACION_PUNTO;
                Session["ID_EVALUACION_EVIDENCIA"] = ID_EVALUACION_EVIDENCIA;

            }
        }

        protected void btnsubir_Click(object sender, EventArgs e)
        {
            string DESCRIPCION;
            int ID_EVALUACION_PUNTO = (int)Session["ID_EVALUACION_PUNTO"];
            int ID_EVALUACION_EVIDENCIA = (int)Session["ID_EVALUACION_EVIDENCIA"];

            ConexionDB db = new ConexionDB();
            DESCRIPCION = txtEvidencia3.Text;
            db.SubirxEvidencia7x(DESCRIPCION, ID_EVALUACION_PUNTO, ID_EVALUACION_EVIDENCIA);
            db.ModEstadox7x(ID_EVALUACION_EVIDENCIA);
            Response.Redirect("../PagesEmpleado/SubirEvedencia.aspx", false);

        }
    }
}