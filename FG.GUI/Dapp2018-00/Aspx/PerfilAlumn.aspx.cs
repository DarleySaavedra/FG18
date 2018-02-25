using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Dapp2018_00.Aspx
{
    public partial class PerfilAlumn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)

        {
            string mensaje = Request.QueryString["msg"];
            string[] list1 = mensaje.Split('|');

            foreach (string item in list1)
            {
                nombreu.Text = item + "";


            }
        }
    }
}