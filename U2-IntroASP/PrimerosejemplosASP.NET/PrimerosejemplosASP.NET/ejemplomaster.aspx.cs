using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrimerosejemplosASP.NET
{
    public partial class Formulario_web11 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
                txtNombre.Text = "acá tu nombre";
            
            

        }
     
        protected void txtNombre_TextChanged(object sender, EventArgs e)
        {
            lblSaludo.Text = "El texto a cambiado tío";
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;
            txtModificar.Text = "tu nombre es= " + txtNombre.Text;

            Response.Redirect("Default.aspx?nombre=" + nombre, true);

        }
    }
}