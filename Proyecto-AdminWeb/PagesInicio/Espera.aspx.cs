﻿using Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proyecto_AdminWeb.PagesInicio
{
    public partial class Espera : System.Web.UI.Page
    {

        string Login = null;
        int rol;
        int area;
        int departamento;
        ConexionDB db = new ConexionDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Login"] == null || Session["Rol"] == null || Session["Area"] == null || Session["Departamento"] == null)
                {
                    Response.Redirect("../PagesInicio/Home.aspx");
                }
                else
                {
                    Login = Session["Login"].ToString();
                    rol = Int32.Parse(Session["Rol"].ToString());
                    area = Int32.Parse(Session["Area"].ToString());
                    departamento = Int32.Parse(Session["Departamento"].ToString());


                    if (rol == 0 && area == 0 && departamento == 0)
                    {
                        lblUsername2.Text = Login;                  
                    }
                    else
                    {
                        Response.Redirect("../PagesInicio/Home.aspx");
                    }

                    Response.AddHeader("REFRESH", "8;../PagesInicio/Home.aspx");


                }
            }
        }

        protected void btnSalir_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("../PagesInicio/Home.aspx");
        }
    }
}