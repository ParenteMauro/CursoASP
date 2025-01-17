using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Agregar : System.Web.UI.Page
    {
        private List<Direccion> listaTemporal;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["listaDirecciones"] == null)
            {
                direccionNegocio direccionNegocio = new direccionNegocio();
                Session["listaDirecciones"] = direccionNegocio.listar();
                listaTemporal = (List<Direccion>)Session["listaDirecciones"];
            }
             
            if (Request.QueryString["calle"] != null) 
            {
                listaTemporal = (List<Direccion>)Session["listaDirecciones"];
                h2Titulo.InnerText = "Modificar Calle: ";
                string calle = Request.QueryString["calle"];

                Direccion direccionModificar = listaTemporal.FirstOrDefault(d=>d.Calle == calle);

                txtCalle.Text = direccionModificar.Calle;
                txtAltura.Text = direccionModificar.Altura.ToString();
                btnConfirmar.Text = "Modificar";
            }
            
            
        }

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            Direccion direcAgregar = new Direccion();
            direcAgregar.Calle = txtCalle.Text;
            direcAgregar.Altura = int.Parse(txtAltura.Text);
            
            listaTemporal.Add(direcAgregar);
            Response.Redirect("Default.aspx", false);
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            if (txtCalle.Text != "")
            {
                string calle = txtCalle.Text;
                Direccion direccionEliminar = listaTemporal.FirstOrDefault(d => d.Calle == calle);
                listaTemporal.Remove(direccionEliminar);

            }
        }
    }
}