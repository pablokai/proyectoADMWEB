using Data;
using Google.Apis.Admin.Directory.directory_v1.Data;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_AdminWeb.PagesInicio
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                lblError.Visible = false;
                lblError.ForeColor = Color.White;

            }
        }

        public void crearSesion(string user,  string redirectionPage, int rol, int area, int departamento)
        {
            HttpCookie cookie = new HttpCookie("Token", user);
            cookie.Expires = DateTime.Now.AddMinutes(25);
            Response.Cookies.Add(cookie);

            Session["Login"] = user;
            Session["Rol"] = rol;

            Session["Area"] = area; 

             Session["Departamento"] = departamento; 


            Response.Redirect(redirectionPage, false);
            Context.ApplicationInstance.CompleteRequest();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

            
            ConexionDB db = new ConexionDB();

            string id = username.Value.ToString();
            string pass = password.Value.ToString();


            bool request = db.loginUsuarios(id, pass);

            int rolUsuario;

            if (request)
            {
                   rolUsuario = db.obtenerRol(id);
                    

                  switch (rolUsuario)
                  {
                    case 0:
                        crearSesion(id, "../PagesInicio/PaginaSinRol.aspx", rolUsuario, 0, 0);
                        break;
                    case 1:
                        crearSesion(id, "../PagesAdmin/index.aspx", rolUsuario, 0 , 0);
                        break;
                    case 2:
                           
                            crearSesion(id, "../PagesDirector/index.aspx", rolUsuario, db.obtenerArea(id), 0 );
                           // crearSesion(id, "../PagesDirector/index.aspx", rolUsuario, area, 0);
                            break;
                    case 3:

                        crearSesion(id, "../PagesFiscalizador/index.aspx", rolUsuario, 0, 0);
                        break;
                    case 4:

                             crearSesion(id, "../PagesJefe/index.aspx", rolUsuario, db.obtenerArea(id), db.obtenerDepartamento(id));
                           // crearSesion(id, "../PagesJefe/index.aspx", rolUsuario, area, departamento);
                            break;
                    case 5:
                            crearSesion(id, "../PagesEmpleado/index.aspx", rolUsuario, db.obtenerArea(id), db.obtenerDepartamento(id));
                            //crearSesion(id, "../PagesEmpleado/index.aspx", rolUsuario, area, departamento);
                            break;  
                }
               
            }
            else
            {
                    
                lblError.Text = "Credenciales incorrectas";
                lblError.Visible = true;
            }

            }
            catch (Exception)
            {

                lblError.Text = "Error, inténtelo de nuevo";
                lblError.Visible = true;
            }

        }
    }
}