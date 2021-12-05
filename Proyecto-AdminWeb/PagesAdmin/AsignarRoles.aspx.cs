using Data;
using Negocios;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_AdminWeb.PagesAdmin
{
    public partial class AsginarRoles : System.Web.UI.Page
    {
        ConexionDB db = new ConexionDB();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();

                lblPendientes.Text = db.obtenerRevisionesRol();

                dt = db.obtenerSolicitudes();
                
                /*dt.Columns.AddRange(new DataColumn[6] { new DataColumn("CODIGO"), new DataColumn("IDUSUARIO"), new DataColumn("ROL"), new DataColumn("AREA"), new DataColumn("DEPARTAMENTO"), new DataColumn("ESTADO") });

                dt.Rows.Add(11233, "12487", "Director", "Efe", "departamento", "PENDIENTE");
                dt.Rows.Add(29874, "124548", "India", "Efe", "departamento", "PENDIENTE");*/

                gvSolicitudes.DataSource = dt;
                gvSolicitudes.DataBind();
            }
        }

        protected void gvProductos_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void gvSolicitudes_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            EnvioCorreos ev = new EnvioCorreos();

            if (e.CommandName == "btnAceptar")
            {
                
                int rowIndex = Convert.ToInt32(e.CommandArgument);
                
                
                GridViewRow row = gvSolicitudes.Rows[rowIndex];

                
                string codigo = (row.FindControl("lblCodigo") as Label).Text;
                string id = (row.FindControl("lblUsuario") as Label).Text ;
                int rol =  Int32.Parse( (row.FindControl("lblRol") as Label).Text);
                int area;
                int  departamento ;

                switch (rol)
                {
                    case 2:
                        area = Int32.Parse((row.FindControl("lblArea") as Label).Text);
                        if (db.existeDirector(area))
                        {
                            db.cambiarRolDirector(area);
                        }

                        db.asignarRol(id, area, 0, rol);
                        break;
                    case 3:
                        db.cambiarRolFiscalizador();

                        db.asignarRol(id, 0, 0, rol);
                        break;
                    case 4:
                        area = Int32.Parse((row.FindControl("lblArea") as Label).Text);
                        departamento = Int32.Parse((row.FindControl("lblDepartamento") as Label).Text);
                        if (db.existeJefe(area, departamento))
                        {
                            db.cambiarRolJefe(area, departamento);
                        }

                        db.asignarRol(id, area, departamento, rol);
                        break;
                    case 5:
                        area = Int32.Parse((row.FindControl("lblArea") as Label).Text);
                        departamento = Int32.Parse((row.FindControl("lblDepartamento") as Label).Text);
                        db.asignarRol(id, area, departamento, rol);
                        break;
                }

                db.actualizarEstadoSolicitud(Int32.Parse(codigo));

                
                ev.enviarCorreo(db.obtenerCorreoPersona(id), "Se le ha asignado el rol " + db.rolNombre(rol) );

            }
            else if(e.CommandName == "btnRechazar")
            {
                int rowIndex = Convert.ToInt32(e.CommandArgument);


                GridViewRow row = gvSolicitudes.Rows[rowIndex];


                string codigo = (row.FindControl("lblCodigo") as Label).Text;
                string id = (row.FindControl("lblUsuario") as Label).Text;
                int rol = Int32.Parse((row.FindControl("lblRol") as Label).Text);

                db.actualizarEstadoSolicitud(Int32.Parse(codigo));

                ev.enviarCorreo(db.obtenerCorreoPersona(id), "Se le ha denegado su solicitud de rol " + db.rolNombre(rol));

            }

            Response.Redirect("../PagesAdmin/AsignarRoles.aspx", false);
   
        }
    }
}