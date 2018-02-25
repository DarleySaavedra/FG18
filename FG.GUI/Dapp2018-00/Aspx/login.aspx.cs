using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dapp2018_00.Aspx
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btingresar1_Click(object sender, EventArgs e)
        {
            try
            {
                Game.Seguridad.DataSet1TableAdapters.TipoUsuariosTableAdapter obj = new Game.Seguridad.DataSet1TableAdapters.TipoUsuariosTableAdapter();
                string TipoUser = obj.login(tbusu.Text, tbpass.Text).ToString().ToUpper();
                string nombrecom = obj.ConsultarNombre(tbusu.Text, tbpass.Text).ToString();



                if (!TipoUser.Equals("ALUMNO"))
                {
                    Session["Usuarios"] = "DOCENTE";
                    Response.Redirect("PerfilDoc.aspx?msg=" + nombrecom);
                    
                    //Cookie
                    //HttpCookie objCookie = new HttpCookie("TimeAcceso");
                    //objCookie.Values.Add("Time", System.DateTime.Now.ToString());
                    //objCookie.Values.Add("ForeColor", "White");

                    //objCookie.Expires = System.DateTime.Now.AddHours(1);
                    //Response.Cookies.Add(objCookie);

                    //////leer valores de la cookie
                    ////HttpCookie objCookie = Response.Cookies["TimeAcceso"];

                }
                else
                {

                    Response.Redirect("PerfilAlumn.aspx?msg=" + nombrecom);
                }
            }
            catch (Exception)
            {
                lrepor.Text = "Usuario no autenticado";
                //lrepor.Text = ("Usuario No Existe");

            }
        }
    }
}