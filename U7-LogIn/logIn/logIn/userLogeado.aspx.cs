using dominio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace logIn
{
    public partial class userLogeado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
            {
                Session.Add("error", "debes logearte para ingresar");
                Response.Redirect("Error.aspx", false);
             
             
            }
        }

        protected void btnPaginaAdmin_Click(object sender, EventArgs e)
        {
            Response.Redirect("userAdmin.aspx", false);
        }
    }
}