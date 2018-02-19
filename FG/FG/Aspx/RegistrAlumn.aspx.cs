using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CONTENEDOR.Entidades;
using FG.Dominio.Entidades;

namespace FG.Aspx
{
    public partial class RegistrAlumn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            String Mens = string.Empty;
            String nombrecompleto = string.Empty;

            try
            {
                var oBLPersona = new Persona();
                oBLPersona.NombreA1 = tbnombre.Text;
                oBLPersona.ApellidoA1 = tbapellido.Text;
                oBLPersona.EdadA1 = tbedad.Text;
                oBLPersona.Grado = dgrado.Text;
                if (radiom.Checked)
                {
                    oBLPersona.SexoA1 = "Masculino";
                }
                else
                    oBLPersona.SexoA1 = "Femenino";

                oBLPersona.Direccion1 = tbdire.Text;
                oBLPersona.DepartamentoA1 = ddepar.SelectedValue;
                oBLPersona.Telefono1 = tbtel.Text;
                oBLPersona.Colegio1 = tbcol.Text;
              

                var resp = oBLPersona.Registrar();

                if (resp == 1)
                {
                    tbnombre.Text = "";
                    tbapellido.Text = "";
                    tbedad.Text = "";
                    dgrado.SelectedValue= "--Seleccionar--";
                    radiom.Checked = false;
                    radiof.Checked = false;
                    tbdire.Text = "";
                    ddepar.SelectedValue = "--Seleccionar--";
                    tbtel.Text = "";
                    tbcol.Text = "";
                   //Mens= lbregistro.Text = "Alumno registrado.";
                    nombrecompleto = oBLPersona.NombreA1 +" "+oBLPersona.ApellidoA1;
                    Page.Response.Redirect("Registrof.aspx?msg=" +nombrecompleto);
                    //Page.Response.Redirect("PerfilAlumn.aspx?msg=" + nombrecompleto);
                }
                else
                    lbregistro.Text = "No se pudo registrarse.";
            }


            catch(Exception ex)
            {
                lbregistro.Text=ex.Message;
            }
        }
        
    }
}