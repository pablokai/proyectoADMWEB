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
    public partial class configFisca : System.Web.UI.Page
    {
        string login = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            login = Session["Login"].ToString();
            ConexionDB db = new ConexionDB();
            DataTable dt = db.VerUSRConfig(login);
            if (!IsPostBack)
            {
                txtNombre.Value = dt.Rows[0][0].ToString();
                txt1App.Value = dt.Rows[0][1].ToString();
                txt2App.Value = dt.Rows[0][2].ToString();
                txtcorreo.Value = dt.Rows[0][3].ToString();
                txtcel.Value = dt.Rows[0][4].ToString();
                txtpass.Value = dt.Rows[0][5].ToString();
                txtFechaN.Value = dt.Rows[0][6].ToString();
            }

        }
        protected void xx_Click(object sender, EventArgs e)
        {
            try
            {
                ConexionDB db = new ConexionDB();
                string NOMBRE = txtNombre.Value.ToString();
                string PRIMER_APELLIDO = txt1App.Value.ToString();
                string SEGUNDO_APELLIDO = txt2App.Value.ToString();
                string CORREO = txtcorreo.Value.ToString();
                int TELEFONO = Int32.Parse(txtcel.Value.ToString());
                string CONTRASENA = txtpass.Value.ToString();
                string FECHA_NACIMIENTO = txtFechaN.Value.ToString();

                bool request = db.ModUsr(login, NOMBRE, PRIMER_APELLIDO, SEGUNDO_APELLIDO, CORREO, TELEFONO, CONTRASENA, FECHA_NACIMIENTO);
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}