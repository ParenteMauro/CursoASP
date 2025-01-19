using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;
using negocio;
using WindowsFormsApp1;
namespace pokedexWeb
{
    public partial class AltaPokemon : System.Web.UI.Page
    {
        public Pokemon pokemon { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAccion_Click(object sender, EventArgs e)
        {
            //PokemonNegocio negocio = new PokemonNegocio();

            //pokemon.Numero = int.Parse(txtNumero.Text);
            //pokemon.Descripcion = txtDecripcion.Text;
            //pokemon.Nombre = txtNombre.Text;
            //pokemon.UrlImagen = UrlImagen.Text;
            //pokemon.Debilidad = dwlDebilidad.SelectedIndex;
            //pokemon.Tipo = dwlDebilidad.SelectedIndex;
            //negocio.agregar(pokemon);

        }
    }
}