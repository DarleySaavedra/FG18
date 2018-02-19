using System;
using FG.Aspx;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CONTENEDOR.Entidades;

namespace FG.Aspx
{
    public partial class Registrof : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string mensaje = Request.QueryString["msg"];

            string[] list = mensaje.Split('|');

            foreach (string item in list)
            {
                nombrec.Text = item + "";

            }

        }
    
   
        protected void bingresar_Click(object sender, EventArgs e)
        {
            try
            {
                var oBLAlumno = new Alumno();
                oBLAlumno.Nombrecompleto = nombrec.Text;
                oBLAlumno.Usuario = Usu.Text;
                oBLAlumno.Clave = Cla.Text;
                oBLAlumno.TipoUsu = TipoU.Text;


                var resp = oBLAlumno.Registrar();

                if (resp == 1)
                {
                    Usu.Text = "";
                    Cla.Text = "";
                     //lregistro.Text = "Alumno registrado.";

                    Page.Response.Redirect("PerfilAlumn.aspx");

                }
                else
                    lregistro.Text = "No se pudo registrarse.";

            }
            
        
            catch(Exception ex)
            {
                lregistro.Text=ex.Message;
            }

        }

    }

  
}