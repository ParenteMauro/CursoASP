using dominio;
using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;



namespace pokedexWeb
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Page is LogIn1 || Page is Registro || Page is Default))
            {
                if (!Seguridad.sesionActiva(Session["user"]))
                {
                    Response.Redirect("LogIn.aspx", false);
                }



                if (Seguridad.sesionActiva(Session["user"]))
                    if (((Trainee)Session["user"]).ImagenPerfil != null)
                        logoImagen.ImageUrl = "~/Images/" + ((Trainee)Session["user"]).ImagenPerfil;
                    else
                        logoImagen.ImageUrl = "https://i.pinimg.com/1200x/c2/65/20/c26520f649ac37dbda7d7bd40f3e040e.jpg";


            }


        }

        protected void btnRegistro_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx", false);
        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            Response.Redirect("LogIn.aspx", false);

        }
    }
}