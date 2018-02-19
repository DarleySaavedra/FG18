using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FG.Aspx
{
    public partial class logo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btingresar_Click(object sender, EventArgs e)
        {
            
            
            //Para ejecutar el sql source
            DataView dvSql = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            int numero;
            numero = 0;
            if (dvSql.Count > 0)
            {
                numero = 1;
            }
            if (numero == 1)
            {
                //Session["usuario"] = dvSql[0].DataView[0];
                Session["usuario"] = dvSql[0].Row[0];
                Response.Redirect("PerfilAlumn.aspx");
            }

            tbusu.Text = "";
            tbpass.Text = "";

    
        }
    }
}