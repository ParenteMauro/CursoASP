using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrimerosejemplosASP.NET
{
    public partial class Formulario_web12 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogin_OnClick(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;
            string pass = txtPassword.Text;

            Session.Add("user", nombre); 
            Session.Add("pass", pass);
            Response.Redirect("Default.aspx", false);
            
            //Response.Redirect("Default.aspx?nombre=" + nombre + "&pass="+ txtPassword.Text, false);
        }
    }
}