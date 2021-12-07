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
    public partial class SubirAvance : System.Web.UI.Page
    {
        ConexionDB db = new ConexionDB();

        static string idmejora;
        static string idevidencia;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt = db.obtenerMejorasEmpleado(Session["Login"].ToString());
                gvTablaevit.DataSource = dt;
                gvTablaevit.DataBind();

                DateTime currentdate = DateTime.Now;

                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    GridViewRow row = gvTablaevit.Rows[i];

                    Label lbl = (row.FindControl("lblFecha") as Label);

                    DateTime date = Convert.ToDateTime(lbl.Text);

                    int res = DateTime.Compare(currentdate, date);
                    lbl.Text = String.Format("{0:MM/dd/yyyy}", date);
                   
                        if (res < 0)
                        {
                            lbl.ForeColor = System.Drawing.ColorTranslator.FromHtml("#2bebc8");
                        }
                        else
                        {
                            lbl.ForeColor = System.Drawing.ColorTranslator.FromHtml("#e10049");
                        }

                }

              
            }
        }

        protected void gvTablaevit_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "btnSubir")
            {

                Panel1.Visible = true;

                int rowIndex = Convert.ToInt32(e.CommandArgument);


                GridViewRow row = gvTablaevit.Rows[rowIndex];

                idmejora = (row.FindControl("lblCodigo") as Label).Text;
                lblID1.Text = idmejora;

                idevidencia = (row.FindControl("lblEvidencia") as Label).Text;


            }
        }

        protected void btnsubir_Click(object sender, EventArgs e)
        {
            db.cambiarEstadoMejora( Int32.Parse( idmejora));
            db.subirAvanceMejora(txtEvidencia.Text , Int32.Parse(idevidencia));
            Panel1.Visible = false;
            txtEvidencia.Text = "";
            Response.Redirect("../PagesEmpleado/SubirAvance.aspx", false);
        }
    }
}