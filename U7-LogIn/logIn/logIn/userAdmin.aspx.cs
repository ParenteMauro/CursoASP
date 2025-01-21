using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;

namespace logIn
{
    public partial class userMaster : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ( !(((Usuario)Session["usuario"]).TipoUsuario == UserType.ADMIN))
            {
                Session.Add("Error", "No tienes permisos suficientes");
                Response.Redirect("Error.aspx", false);

            }
        }
    }
}