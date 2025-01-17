using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
namespace WebApplication1
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["listaDirecciones"] == null)
            {
                direccionNegocio negocio = new direccionNegocio();
                Session["listaDirecciones"] = negocio.listar();
            }

            dgvCalle.DataSource = Session["listaDirecciones"];
            dgvCalle.DataBind();
        }

        protected void dgvCalle_SelectedIndexChanged(object sender, EventArgs e)
        {
            var seleccion = dgvCalle.SelectedIndex;
            GridViewRow filaSeleccionada = dgvCalle.Rows[seleccion];

            string calle = filaSeleccionada.Cells[0].Text;
            int altura = int.Parse(filaSeleccionada.Cells[1].Text);
            
            Response.Redirect("Agregar.aspx?calle=" + calle);
        }
    }
}