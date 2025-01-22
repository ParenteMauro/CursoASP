using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using dominio;
using negocio;
using System.Web.UI.WebControls;

namespace pokedexWeb
{
    public partial class MiPerfil : System.Web.UI.Page
    {
     
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Seguridad.sesionActiva(Session["user"]) && !IsPostBack)
            {
                
                txtEmail.Text = ((Trainee)Session["user"]).Email;
                txtEmail.Enabled = false;
                txtApellido.Text = ((Trainee)Session["user"]).Apellido;
                txtNombre.Text = ((Trainee)Session["user"]).Nombre;
                txtFecha.Text = (((Trainee)Session["user"]).FechaNacimiento).ToString("yyyy-MM-dd");
                if (((Trainee)Session["user"]).ImagenPerfil != null)
                    pbxImagen.ImageUrl = "~/Images/" + ((Trainee)Session["user"]).ImagenPerfil;
                else
                    pbxImagen.ImageUrl = "https://i.pinimg.com/1200x/c2/65/20/c26520f649ac37dbda7d7bd40f3e040e.jpg";
                
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                Trainee user = (Trainee)Session["user"];
                TraineeNegocio negocio = new TraineeNegocio();
                if(txtImagen.PostedFile.FileName != "") 
                { 
                string ruta = Server.MapPath("./Images/");
                txtImagen.PostedFile.SaveAs(ruta + "perfil-" + user.Id +".jpg");
                user.ImagenPerfil = "perfil-" + user.Id + ".jpg";
                }
                user.Nombre = txtNombre.Text;
                user.Apellido = txtApellido.Text;
                user.FechaNacimiento = DateTime.Parse(txtFecha.Text);
               
                negocio.actualizar(user);

               
            }
            catch (Exception ex)
            {
                Session.Add("error", ex.ToString());

            }

        }
    }
}