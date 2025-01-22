using dominio;
using negocio;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace pokedexWeb
{
    public partial class LogIn1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSesion_Click(object sender, EventArgs e)
        {

            try
            {
                Trainee user = new Trainee();
                TraineeNegocio negocio = new TraineeNegocio();
                user.Email = txtEmail.Text;
                user.Pass = txtPass.Text;

                if (negocio.LogIn(user))
                {
                    Session.Add("user", user);
                    Response.Redirect("MiPerfil.aspx",false);
                }





            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}