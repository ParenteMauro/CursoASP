using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebApplication1.Dominio;

namespace WebApplication1
{
    public partial class paginaGrilla : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            AutoNegocio negocio = new AutoNegocio();

            dgvAutos.DataSource = negocio.listar();
            dgvAutos.DataBind();
        }
    }
}