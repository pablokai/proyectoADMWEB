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
    public partial class ResultadosGraficos : System.Web.UI.Page
    {

        ConexionDB db = new ConexionDB();
        public static int departamento1 = 0;
        public static int departamento2 = 0;
        public static int evaluacion1 = 0;
        public static int evaluacion2 = 0;
        public static int respuesta1 = 0;
        public static int respuesta2 = 0;


        public static string llamadaindice = "";
        public static string llamadaindice2 = "";

        public static int componente1 = 0;
        public static int componente2 = 0;

        string[] niveles = { "Incipiente", "Novato", "Competente", "Diestro", "Experto" };



        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                DataTable dt = new DataTable();
                dt = db.ObtenerDepartamentos();

                ddlDependencia.DataTextField = "DESCRIPCION";
                ddlDependencia.DataValueField = "DESCRIPCION";
                ddlDependencia.DataSource = dt;
                ddlDependencia.DataBind();

                ddlDependencia2.DataTextField = "DESCRIPCION";
                ddlDependencia2.DataValueField = "DESCRIPCION";
                ddlDependencia2.DataSource = dt;
                ddlDependencia2.DataBind();

                /*Panel1.Visible = false;
                Panel2.Visible = false;
                Panel1Componentes.Visible = false;
                Panel2Componentes.Visible = false;
                Panel1Indice.Visible = false;
                Panel2Indice.Visible = false;
                Panel1Ejes.Visible = false;
                Panel2Ejes.Visible = false;
                Panel1Filtro.Visible = false;
                Panel2Filtro.Visible = false;*/
                divIndice1.Visible = false;
                divIndice2.Visible = false;
                divComponente1.Visible = false;
                divComponente2.Visible = false;
                divFiltro1.Visible = false;
                divFiltro2.Visible = false;
                divEje1.Visible = false;
                divEje2.Visible = false;
                title.Visible = false;

                /*string depsession1 = Session["departamento1"].ToString();
                string depsession2 = Session["departamento2"].ToString();
                string evsession1 = Session["evaluacion1"].ToString();
                string evsession2 = Session["evaluacion2"].ToString();
                string compsession1 = Session["componente1"].ToString();
                string compsession2 = Session["componente2"].ToString();*/

                if (Session["departamento1"] == null)
                {
                    Session["departamento1"] = 0;
                }
                if (Session["departamento2"] == null)
                {
                    Session["departamento2"] = 0;
                }
                if (Session["evaluacion1"] == null)
                {
                    Session["evaluacion1"] = 0;
                }
                if (Session["evaluacion2"]== null)
                {
                    Session["evaluacion2"] = 0;
                }
                if (Session["componente1"] == null)
                {
                    Session["componente1"] = 0;
                }
                if (Session["componente2"] == null)
                {
                    Session["componente2"] = 0;
                }

               /*Session["departamento1"] = 0;
                Session["evaluacion1"] = 0;
                Session["departamento2"] = 0;
                Session["evaluacion2"] = 0;
                Session["componente1"] = 0;
                Session["componente2"] = 0;*/


            }

        }
        public string calcComponente(int departamento, int evaluacion)
        {


            if (departamento == 0 || evaluacion == 0 )
            {
                return "";
            }

            int respuesta = db.obtenerIDEvaluacion(evaluacion);
            int num = 20;

            int ambiente = Int32.Parse(db.puntuacionComponente(departamento, evaluacion, respuesta, 1));
            int riesgo = Int32.Parse(db.puntuacionComponente(departamento, evaluacion, respuesta, 2));
            int actividades = Int32.Parse(db.puntuacionComponente(departamento, evaluacion, respuesta, 3));
            int sistemas = Int32.Parse(db.puntuacionComponente(departamento, evaluacion, respuesta, 4));
            int seguimiento = Int32.Parse(db.puntuacionComponente(departamento, evaluacion, respuesta, 5));


            //AMBIENTE
            if (ambiente >= 0 && ambiente < 8)
            {
                ambiente = 20;

            }
            else if (ambiente >= 8 && ambiente < 12)
            {

                ambiente = 40;

            }
            else if (ambiente >= 12 && ambiente < 16)
            {
                ambiente = 60;

            }
            else if (ambiente >= 16 && ambiente < 20)
            {
                ambiente = 80;
            }
            else
            {
                ambiente = 100;
            }

            //RIESGO
            if (riesgo >= 0 && riesgo < 8)
            {
                riesgo = 20;      

            }
            else if (riesgo >= 8 && riesgo < 12)
            {
                riesgo = 40;
            }
            else if (riesgo >= 12 && riesgo < 16)
            {
                riesgo = 60;
            }
            else if (riesgo >= 16 && riesgo < 20)
            {
                riesgo = 80;
            }
            else
            {
                riesgo = 100;
            }

            //ACTIVIDADES

            if (actividades >= 0 && actividades < 8)
            {
                actividades = 20;
            }
            else if (actividades >= 8 && actividades < 12)
            {
                actividades = 40;
            }
            else if (actividades >= 12 && actividades < 16)
            {
                ;
                actividades = 60;
            }
            else if (actividades >= 16 && actividades < 20)
            {
                actividades = 80;
            }
            else
            {
                actividades = 100;
            }

            //SISTEMAS

            if (sistemas >= 0 && sistemas < 8)
            {
                sistemas = 20;
            }
            else if (sistemas >= 8 && sistemas < 12)
            {
                sistemas = 40;
            }
            else if (sistemas >= 12 && sistemas < 16)
            {
                sistemas = 60;
            }
            else if (sistemas >= 16 && sistemas < 20)
            {
                sistemas = 80;
            }
            else
            {
                sistemas = 100;
            }

            //SEGUIMIENTO


            if (seguimiento >= 0 && seguimiento < 8)
            {
                seguimiento = 20;
            }
            else if (seguimiento >= 8 && seguimiento < 12)
            {
                seguimiento = 40;

            }
            else if (seguimiento >= 12 && seguimiento < 16)
            {
                seguimiento = 60;

            }
            else if (seguimiento >= 16 && seguimiento < 20)
            {

                seguimiento = 80;;
            }
            else
            {
                seguimiento = 100;
            }




            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("Componentes", typeof(string)));
            dt.Columns.Add(new DataColumn("Nota", typeof(int)));

            dt.Rows.Add(new Object[] { "Ambiente", ambiente });
            dt.Rows.Add(new Object[] { "Riesgos", riesgo });
            dt.Rows.Add(new Object[] { "Actividades", actividades });
            dt.Rows.Add(new Object[] { "Sistemas", sistemas });
            dt.Rows.Add(new Object[] { "Seguimiento", seguimiento });

            string strDatos;

            strDatos = "[['Componentes', 'Porcentaje', { role: 'style' }],";

            int n = dt.Rows.Count;
            int cont = 0;
            foreach (DataRow dr in dt.Rows)
            {
                strDatos = strDatos + "[";
                strDatos = strDatos + "'" + dr[0] + "'" + "," + dr[1] + ", 'fill-color: #2bebc8'";

                if (n - 1 == cont)
                {
                    strDatos = strDatos + "]";
                }
                else
                {
                    strDatos = strDatos + "],";
                }
                cont++;


            }

            strDatos = strDatos + "]";

            return strDatos;
        }

        public string calcComponente2(int departamento, int evaluacion)
        {


            if (departamento == 0 || evaluacion == 0)
            {
                return "";
            }

            int respuesta = db.obtenerIDEvaluacion(evaluacion);
            int num = 20;

            int ambiente = Int32.Parse(db.puntuacionComponente(departamento, evaluacion, respuesta, 1));
            int riesgo = Int32.Parse(db.puntuacionComponente(departamento, evaluacion, respuesta, 2));
            int actividades = Int32.Parse(db.puntuacionComponente(departamento, evaluacion, respuesta, 3));
            int sistemas = Int32.Parse(db.puntuacionComponente(departamento, evaluacion, respuesta, 4));
            int seguimiento = Int32.Parse(db.puntuacionComponente(departamento, evaluacion, respuesta, 5));


            //AMBIENTE
            if (ambiente >= 0 && ambiente < 8)
            {
                ambiente = 20;

            }
            else if (ambiente >= 8 && ambiente < 12)
            {

                ambiente = 40;

            }
            else if (ambiente >= 12 && ambiente < 16)
            {
                ambiente = 60;

            }
            else if (ambiente >= 16 && ambiente < 20)
            {
                ambiente = 80;
            }
            else
            {
                ambiente = 100;
            }

            //RIESGO
            if (riesgo >= 0 && riesgo < 8)
            {
                riesgo = 20;

            }
            else if (riesgo >= 8 && riesgo < 12)
            {
                riesgo = 40;
            }
            else if (riesgo >= 12 && riesgo < 16)
            {
                riesgo = 60;
            }
            else if (riesgo >= 16 && riesgo < 20)
            {
                riesgo = 80;
            }
            else
            {
                riesgo = 100;
            }

            //ACTIVIDADES

            if (actividades >= 0 && actividades < 8)
            {
                actividades = 20;
            }
            else if (actividades >= 8 && actividades < 12)
            {
                actividades = 40;
            }
            else if (actividades >= 12 && actividades < 16)
            {
                ;
                actividades = 60;
            }
            else if (actividades >= 16 && actividades < 20)
            {
                actividades = 80;
            }
            else
            {
                actividades = 100;
            }

            //SISTEMAS

            if (sistemas >= 0 && sistemas < 8)
            {
                sistemas = 20;
            }
            else if (sistemas >= 8 && sistemas < 12)
            {
                sistemas = 40;
            }
            else if (sistemas >= 12 && sistemas < 16)
            {
                sistemas = 60;
            }
            else if (sistemas >= 16 && sistemas < 20)
            {
                sistemas = 80;
            }
            else
            {
                sistemas = 100;
            }

            //SEGUIMIENTO


            if (seguimiento >= 0 && seguimiento < 8)
            {
                seguimiento = 20;
            }
            else if (seguimiento >= 8 && seguimiento < 12)
            {
                seguimiento = 40;

            }
            else if (seguimiento >= 12 && seguimiento < 16)
            {
                seguimiento = 60;

            }
            else if (seguimiento >= 16 && seguimiento < 20)
            {

                seguimiento = 80; ;
            }
            else
            {
                seguimiento = 100;
            }




            DataTable dt = new DataTable();
            dt.Columns.Add(new DataColumn("Componentes", typeof(string)));
            dt.Columns.Add(new DataColumn("Nota", typeof(int)));

            dt.Rows.Add(new Object[] { "Ambiente", ambiente });
            dt.Rows.Add(new Object[] { "Riesgos", riesgo });
            dt.Rows.Add(new Object[] { "Actividades", actividades });
            dt.Rows.Add(new Object[] { "Sistemas", sistemas });
            dt.Rows.Add(new Object[] { "Seguimiento", seguimiento });

            string strDatos;

            strDatos = "[['Componentes', 'Porcentaje', { role: 'style' }],";

            int n = dt.Rows.Count;
            int cont = 0;
            foreach (DataRow dr in dt.Rows)
            {
                strDatos = strDatos + "[";
                strDatos = strDatos + "'" + dr[0] + "'" + "," + dr[1] + ", 'fill-color: #2bebc8'";

                if (n - 1 == cont)
                {
                    strDatos = strDatos + "]";
                }
                else
                {
                    strDatos = strDatos + "],";
                }
                cont++;


            }

            strDatos = strDatos + "]";

            return strDatos;
        }

        public string calcEje(int departamento, int idevaluacion, int componente)
        {

            if (departamento == 0 || idevaluacion == 0 || componente == 0)
            {
                return "";
            }

            int respuesta = db.obtenerIDEvaluacion(idevaluacion);
            int v1 = 0;
            int v2 = 0;
            int v3 = 0;
            int v4 = 0;
            string eje1 = "";
            string eje2 = "";
            string eje3 = "";
            string eje4 = "";

            switch (componente)
            {
                case 1:
                     v1 = 1;
                     v2 = 2;
                     v3 = 3;
                     v4 = 4;
                    eje1 = "Compromiso";
                    eje2 = "Ética";
                    eje3 = "Personal";
                    eje4 = "Estructura";
                    break;
                case 2:
                    v1 = 5;
                    v2 = 6;
                    v3 = 7;
                    v4 = 8;
                    eje1 = "Marco orientador";
                    eje2 = "Herramienta para Admin de Info";
                    eje3 = "Funcionamiento del SERVI";
                    eje4 = "Documentación y comunicación";
                    break;
                case 3:
                    v1 = 9;
                    v2 = 10;
                    v3 = 11;
                    v4 = 12;
                    eje1 = "Características de AC";
                    eje2 = "Alcance de las AC";
                    eje3 = "Formalidad de las AC";
                    eje4 = "Aplicación de las AC";
                    break;
                case 4:
                    v1 = 13;
                    v2 = 14;
                    v3 = 15;
                    v4 = 16;
                    eje1 = "Alcance";
                    eje2 = "Calidad de Información";
                    eje3 = "Calidad de Comunicación";
                    eje4 = "Control";
                    break;
                case 5:
                    v1 = 17;
                    v2 = 18;
                    v3 = 19;
                    v4 = 20;
                    eje1 = "Participantes en el SCI";
                    eje2 = "Formalidad del SCI";
                    eje3 = "Alcance del SCI";
                    eje4 = "Contribución a la mejora SCI";
                    break;
            }

             int val1 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, respuesta, componente, v1));
             int val2 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, respuesta, componente, v2));
             int val3 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, respuesta, componente, v3));
             int val4 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, respuesta, componente, v4));


            //VALOR 1

            if (val1 == 0 || val1 == 1)
            {
                val1 = 20;
              
            }
            else if (val1 == 2)
            {
                val1 = 40;
             
            }
            else if (val1 == 3)
            {
                val1 = 60;
            }
            else if (val1 == 4)
            {

                val1 = 80;
            }
            else
            {
                val1 = 100;
            }

            //VALOR 2

            if (val2 == 0 || val2 == 1)
            {
                val2 = 20;
            }
            else if (val2 == 2)
            {
                val2 = 40;
            }
            else if (val2 == 3)
            {
                val2 = 60;
            }
            else if (val2 == 4)
            {

                val2 = 80;
            }
            else
            {
                val2 = 100;
            }


            //VALOR 3

            if (val3 == 0 || val3 == 1)
            {
                val3 = 20;

            }
            else if (val3 == 2)
            {
                val3 = 40;

            }
            else if (val3 == 3)
            {
                val3 = 60;

            }
            else if (val3 == 4)
            {
                val3 = 80;
            }
            else
            {
                val3 = 100;
            }


            //VALOR 4

            if (val4 == 0 || val4 == 1)
            {
                val4 = 20;
            }
            else if (val4 == 2)
            {
                val4 = 40;

            }
            else if (val4 == 3)
            {
                val4 = 60;
             
            }
            else if (val4 == 4)
            {
                val4 = 80;
             
            }
            else
            {
                val4 = 100;
            }


            string str = "[['Eje', 'Porcentaje', { role: 'style' }],['" + eje1+"', "+val1+", '#fill-color: #fff'],['"+eje2+"', "+val2+", 'fill-color: #fff'],['"+eje3+"', "+val3+", 'fill-color: #fff'],['"+eje4+"', "+val4+", 'fill-color: #fff']]";

            return str;
        }

        public string calcEje2(int departamento, int idevaluacion, int componente)
        {

            if (departamento == 0 || idevaluacion == 0 || componente == 0)
            {
                return "";
            }

            int respuesta = db.obtenerIDEvaluacion(idevaluacion);
            int v1 = 0;
            int v2 = 0;
            int v3 = 0;
            int v4 = 0;
            string eje1 = "";
            string eje2 = "";
            string eje3 = "";
            string eje4 = "";

            switch (componente)
            {
                case 1:
                    v1 = 1;
                    v2 = 2;
                    v3 = 3;
                    v4 = 4;
                    eje1 = "Compromiso";
                    eje2 = "Ética";
                    eje3 = "Personal";
                    eje4 = "Estructura";
                    break;
                case 2:
                    v1 = 5;
                    v2 = 6;
                    v3 = 7;
                    v4 = 8;
                    eje1 = "Marco orientador";
                    eje2 = "Herramienta para admin de información";
                    eje3 = "Funcionamiento del SERVI";
                    eje4 = "Documentación y comunicación";
                    break;
                case 3:
                    v1 = 9;
                    v2 = 10;
                    v3 = 11;
                    v4 = 12;
                    eje1 = "Características de actividades de control";
                    eje2 = "Alcance de las actividades de control";
                    eje3 = "Formalidad de las actividades de control";
                    eje4 = "Aplicación de las actividades de control";
                    break;
                case 4:
                    v1 = 13;
                    v2 = 14;
                    v3 = 15;
                    v4 = 16;
                    eje1 = "Alcance";
                    eje2 = "Calidad de la información";
                    eje3 = "Calidad de la Comunicación";
                    eje4 = "Control";
                    break;
                case 5:
                    v1 = 17;
                    v2 = 18;
                    v3 = 19;
                    v4 = 20;
                    eje1 = "Participantes en el SCI";
                    eje2 = "Formalidad del SCI";
                    eje3 = "Alcance del SCI";
                    eje4 = "Contribución a la mejora del SCI";
                    break;
            }

            int val1 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, respuesta, componente, v1));
            int val2 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, respuesta, componente, v2));
            int val3 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, respuesta, componente, v3));
            int val4 = Int32.Parse(db.puntuacionEje(departamento, idevaluacion, respuesta, componente, v4));


            //VALOR 1

            if (val1 == 0 || val1 == 1)
            {
                val1 = 20;

            }
            else if (val1 == 2)
            {
                val1 = 40;

            }
            else if (val1 == 3)
            {
                val1 = 60;
            }
            else if (val1 == 4)
            {

                val1 = 80;
            }
            else
            {
                val1 = 100;
            }

            //VALOR 2

            if (val2 == 0 || val2 == 1)
            {
                val2 = 20;
            }
            else if (val2 == 2)
            {
                val2 = 40;
            }
            else if (val2 == 3)
            {
                val2 = 60;
            }
            else if (val2 == 4)
            {

                val2 = 80;
            }
            else
            {
                val2 = 100;
            }


            //VALOR 3

            if (val3 == 0 || val3 == 1)
            {
                val3 = 20;

            }
            else if (val3 == 2)
            {
                val3 = 40;

            }
            else if (val3 == 3)
            {
                val3 = 60;

            }
            else if (val3 == 4)
            {
                val3 = 80;
            }
            else
            {
                val3 = 100;
            }


            //VALOR 4

            if (val4 == 0 || val4 == 1)
            {
                val4 = 20;
            }
            else if (val4 == 2)
            {
                val4 = 40;

            }
            else if (val4 == 3)
            {
                val4 = 60;

            }
            else if (val4 == 4)
            {
                val4 = 80;

            }
            else
            {
                val4 = 100;
            }


            string str = "[['Eje', 'Porcentaje', { role: 'style' }],['" + eje1 + "', " + val1 + ", '#fill-color: #fff'],['" + eje2 + "', " + val2 + ", 'fill-color: #fff'],['" + eje3 + "', " + val3 + ", 'fill-color: #fff'],['" + eje4 + "', " + val4 + ", 'fill-color: #fff']]";

            return str;
        }


        public string indice(int departamento, int idevaluacion)
        {
            if (departamento == 0 || idevaluacion == 0)
            {
                return "";
            }
            DataTable dt = new DataTable();
            int respuesta = db.obtenerIDEvaluacion(idevaluacion);
            int num = 20;

            string resultadoindice = db.indiceMadurez(departamento, idevaluacion, respuesta);

            if (resultadoindice == "N/A")
            {
                lblResultadoIndice.Text = resultadoindice;
            }
            else
            {
                 num = Int32.Parse(resultadoindice);

                if (num >= 0 && num < 40)
                {
                    num = 20;

                }
                else if (num >= 40 && num < 60)
                {
                    num = 40;
                }
                else if (num >= 60 && num < 80)
                {
                    num = 60;
                }
                else if (num >= 80 && num < 100)
                {
                    num = 80;
                }
                else
                {
                    num = 100;
                }

                switch (num)
                {
                    case 20:
                        lblNivelIndice.Text = niveles[0];
                        break;
                    case 40:
                        lblNivelIndice.Text = niveles[1];
                        break;
                    case 60:
                        lblNivelIndice.Text = niveles[2];
                        break;
                    case 80:
                        lblNivelIndice.Text = niveles[3];
                        break;
                    case 100:
                        lblNivelIndice.Text = niveles[4];
                        break;
                }
            }

            lblResultadoIndice.Text = num.ToString();
            int res = 100 - num;

            string str = "[['Completado', 'Sobrante'],['Total', "+num+"],['', "+res+"]]";

            return str;
        }
        public string indice2(int departamento, int idevaluacion)
        {

            if(departamento == 0 || idevaluacion == 0)
            {
                return "";
            }

            DataTable dt = new DataTable();
            int respuesta = db.obtenerIDEvaluacion(idevaluacion);
            int num = 20;

            string resultadoindice = db.indiceMadurez(departamento, idevaluacion, respuesta);

            if (resultadoindice == "N/A")
            {
                lblResultadoIndice2.Text = resultadoindice;
            }
            else
            {
                num = Int32.Parse(resultadoindice);

                if (num >= 0 && num < 40)
                {
                    num = 20;

                }
                else if (num >= 40 && num < 60)
                {
                    num = 40;
                }
                else if (num >= 60 && num < 80)
                {
                    num = 60;
                }
                else if (num >= 80 && num < 100)
                {
                    num = 80;
                }
                else
                {
                    num = 100;
                }

                switch (num)
                {
                    case 20:
                        lblNivelIndice2.Text = niveles[0];
                        break;
                    case 40:
                        lblNivelIndice2.Text = niveles[1];
                        break;
                    case 60:
                        lblNivelIndice2.Text = niveles[2];
                        break;
                    case 80:
                        lblNivelIndice2.Text = niveles[3];
                        break;
                    case 100:
                        lblNivelIndice2.Text = niveles[4];
                        break;
                }
            }

            lblResultadoIndice2.Text = num.ToString();
            int res = 100 - num;

            string str = "[['Completado', 'Sobrante'],['Total', " + num + "],['', " + res + "]]";

            return str;
        }


        protected void btnDepartamento2_Click(object sender, EventArgs e)
        {
            departamento2 = db.obtenerIDDepartamento(ddlDependencia2.SelectedValue.ToString());

            DataTable dt = new DataTable();
            dt = db.obtenerEvaluacionesDepartamento(departamento2);

            if (dt.Rows.Count < 1)
            {
                dt.Columns[0].DataType = typeof(string);
                dt.Rows.Add("No tiene evaluaciones");
                ddlEvaluacion2.DataTextField = "ID_EVALUACIONES_RESPUESTA";
                ddlEvaluacion2.DataValueField = "ID_EVALUACIONES_RESPUESTA";
            }
            else
            {
                ddlEvaluacion2.DataTextField = "ID_EVALUACIONES_RESPUESTA";
                ddlEvaluacion2.DataValueField = "ID_EVALUACIONES_RESPUESTA";
            }
            ddlEvaluacion2.DataSource = dt;
            ddlEvaluacion2.DataBind();

            Panel2.Visible = true;
            divComponente2.Visible = false;
            divIndice2.Visible = false;
            divEje2.Visible = false;
            divFiltro2.Visible = false;

            Session["departamento2"] = departamento2.ToString();
        }

        protected void btnDepartamento_Click(object sender, EventArgs e)
        {
            departamento1 = db.obtenerIDDepartamento(ddlDependencia.SelectedValue.ToString());

            DataTable dt = new DataTable();
            dt = db.obtenerEvaluacionesDepartamento(departamento1);

            if (dt.Rows.Count < 1)
            {
                dt.Columns[0].DataType = typeof(string);
                dt.Rows.Add("No tiene evaluaciones");
                ddlEvaluacion.DataTextField = "ID_EVALUACIONES_RESPUESTA";
                ddlEvaluacion.DataValueField = "ID_EVALUACIONES_RESPUESTA";
            }
            else
            {
                ddlEvaluacion.DataTextField = "ID_EVALUACIONES_RESPUESTA";
                ddlEvaluacion.DataValueField = "ID_EVALUACIONES_RESPUESTA";
            }
            ddlEvaluacion.DataSource = dt;
            ddlEvaluacion.DataBind();

            Panel1.Visible = true;
            divComponente1.Visible = false;
            divIndice1.Visible = false;
            divEje1.Visible = false;
            divFiltro1.Visible = false;

            Session["departamento1"] = departamento1.ToString();
        }


        protected void btnBuscar2_Click(object sender, EventArgs e)
        {
            evaluacion2 = Int32.Parse(ddlEvaluacion2.SelectedValue.ToString());
            //ScriptManager.RegisterStartupScript(this, GetType(), "AnyValue", "drawIndice2();", true);
            //llamadaindice2 = "google.charts.setOnLoadCallback(drawIndice2);";
            divIndice2.Visible = true;
            divComponente2.Visible = true;
            divFiltro2.Visible = true;
            title.Visible = true;

            Session["evaluacion2"] = evaluacion2.ToString();

        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            evaluacion1 = Int32.Parse( ddlEvaluacion.SelectedValue.ToString() );
            //ScriptManager.RegisterStartupScript(this, GetType(), "AnyValue", "drawIndice1();", true);
            //llamadaindice = "google.charts.setOnLoadCallback(drawIndice1);";

            divIndice1.Visible = true;
            divComponente1.Visible = true;
            divFiltro1.Visible = true;
            title.Visible = true;

            Session["evaluacion1"] = evaluacion1.ToString();

        }

        protected void btnFiltrar2_Click(object sender, EventArgs e)
        {
            componente2 = Int32.Parse(ddlNivel2.SelectedValue.ToString());

            divEje2.Visible = true;

            Session["componente2"] = componente2.ToString();

        }

        protected void btnFiltrar_Click(object sender, EventArgs e)
        {
            componente1 = Int32.Parse(ddlNivel.SelectedValue.ToString());
            divEje1.Visible = true;

            Session["componente1"] = componente1.ToString();

        }
    }
}