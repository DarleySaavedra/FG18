using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CONTENEDOR.Entidades;

namespace FG.Aspx
{
    public partial class RegistrAlumn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try
            {
                var oBLAlumno = new Alumno();
                oBLAlumno.NombreA1 = tbnombre.Text;
                oBLAlumno.ApellidoA1 = tbapellido.Text;
                oBLAlumno.EdadA1 = tbedad.Text;
                if (radiom.Checked)
                {
                    oBLAlumno.SexoA1 = "Masculino";
                }
                else
                    oBLAlumno.SexoA1 = "Femenino";

                oBLAlumno.Direccion1 = tbdire.Text;
                oBLAlumno.DepartamentoA1 = ddepar.SelectedValue;
                oBLAlumno.Telefono1 = tbtel.Text;
                oBLAlumno.Colegio1 = tbcol.Text;

                var resp = oBLAlumno.Registrar();

                if (resp == 1)
                {
                    tbnombre.Text = "";
                    tbapellido.Text = "";
                    tbedad.Text = "";
                    radiom.Checked = false;
                    radiof.Checked = false;
                    tbdire.Text = "";
                    ddepar.Text = "--Seleccionar--";
                    tbtel.Text = "";
                    tbcol.Text = "";
                    lbregistro.Text = "Alumno registrado.";
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