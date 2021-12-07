using Data;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

namespace Proyecto_AdminWeb.PagesAdmin
{
    public partial class VerUsuarios : System.Web.UI.Page
    {

        ConexionDB db = new ConexionDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            SeriesChartType type = SeriesChartType.Bubble;
            //DisplayChart(type);
        }

        private void DisplayChart(SeriesChartType cType)
        {
            DataTable dt = new DataTable();
            //DbOperation db = new DbOperation();
            //dt = db.MarksDetails();
            string[] x = new string[dt.Rows.Count];
            int[] y = new int[dt.Rows.Count];
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                x[i] = dt.Rows[i]["Name"].ToString();
                y[i] = Convert.ToInt32(dt.Rows[i]["Total Marks"]);
            }
            Chart1.Series[0].Points.DataBindXY(x, y);
            Chart1.Series[0].ChartType = cType;
            Chart1.ChartAreas["ChartArea1"].Area3DStyle.Enable3D = true;
            Chart1.Legends[0].Enabled = true;
        }
    }
}