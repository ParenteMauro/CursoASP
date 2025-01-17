using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Dominio;

namespace WebApplication1
{
    public partial class AutoForm : System.Web.UI.Page
    {
        Auto autoAgregar = new Auto();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["id"]!= null)
            {
                int id = int.Parse(Request.QueryString["id"].ToString());
                List<Auto> temporal = (List<Auto>)Session["listaAutos"];
                Auto seleccionado = temporal.Find(x => x.Id == id);
                txtColor.Text = seleccionado.Color;
                txtModelo.Text = seleccionado.Modelo;
                
            }
          
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {
            
                autoAgregar.Id = int.Parse(nmbID.Text);
                autoAgregar.Modelo = txtModelo.Text;
                autoAgregar.Descripcion = txtDescripcion.Text;
                autoAgregar.Color = txtColor.Text;
                autoAgregar.Fecha = DateTime.Parse(txtFecha.Text);
                autoAgregar.Usado = rbtnUsado.Checked ? true : false;
                autoAgregar.Importado = rbtnImportado.Checked ? true : false;
                if (Session["listaAutos"] != null) { 
                List<Auto> listaTemporal = (List<Auto>)Session["listaAutos"];
                listaTemporal.Add(autoAgregar);
                }
                else
                {
                    
                }
                Response.Redirect("Default.aspx", false);
            
                
        }
    }
}