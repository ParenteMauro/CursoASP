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
        public bool ConfirmaEliminacion { get; set; }
        public PokemonNegocio negocio { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
                negocio = new PokemonNegocio();
            if (!IsPostBack)
            {
                ElementoNegocio elementoNegocio = new ElementoNegocio();
                List<Elemento> listaElementos = new List<Elemento>();
                listaElementos = elementoNegocio.listar();
                dwlTipo.DataSource = listaElementos;
                dwlTipo.DataTextField = "Descripcion";
                dwlTipo.DataValueField = "Id";
                dwlTipo.DataBind();
                dwlDebilidad.DataSource = listaElementos;
                dwlDebilidad.DataTextField = "Descripcion";
                dwlDebilidad.DataValueField = "Id";
                ConfirmaEliminacion = false;
                dwlDebilidad.DataBind();
            }

            if (Request.QueryString["id"] != null && !IsPostBack)
            {
               
                Pokemon pokemonModificar = new Pokemon();
                int id = int.Parse(Request.QueryString["id"]);
                pokemonModificar = negocio.traer(id);

                txtNombre.Text = pokemonModificar.Nombre;
                txtDescripcion.Text = pokemonModificar.Descripcion;
                txtNumero.Text = pokemonModificar.Numero.ToString();
                txtImagen.Text = pokemonModificar.UrlImagen;
                cargarImagen(pokemonModificar.UrlImagen);
                dwlTipo.SelectedIndex = pokemonModificar.Tipo.Id - 1;
                dwlDebilidad.SelectedIndex = pokemonModificar.Debilidad.Id - 1;
                btnAccion.Text = "Modifcar";
            }
        }

        protected void btnAccion_Click(object sender, EventArgs e)
        {
            
            if (Request.QueryString["id"] == null) { 
            
            Pokemon agregarPokemon = setearPokemon();
            negocio.agregarSP(agregarPokemon);
                Response.Redirect("Default.aspx", false);
            }
            else
            {
               
                Pokemon modificarPokemon = setearPokemon();

                modificarPokemon.Id = int.Parse(Request.QueryString["id"]);
                negocio.modificarSP(modificarPokemon);
                Response.Redirect("Default.aspx", false);
            }
        }

        protected void txtImagen_TextChanged(object sender, EventArgs e)
        {
            if (txtImagen.Text.Contains("http"))
                cargarImagen(txtImagen.Text);
            else
                cargarImagen("https://www.shutterstock.com/image-vector/default-image-icon-vector-missing-600nw-2079504220.jpg");

        }

        protected void cargarImagen(string url)
        {
            UrlImagen.ImageUrl = url;
        }

        protected Pokemon setearPokemon()
        {
            Pokemon pokemon = new Pokemon();
            pokemon.Numero = int.Parse(txtNumero.Text);
            pokemon.Descripcion = txtDescripcion.Text;
            pokemon.Nombre = txtNombre.Text;
            pokemon.UrlImagen = txtImagen.Text;
            pokemon.Tipo = new Elemento();
            pokemon.Tipo.Id = (int.Parse(dwlTipo.SelectedValue));
            pokemon.Tipo.Descripcion = dwlTipo.SelectedItem.Text;
            pokemon.Debilidad = new Elemento();
            pokemon.Debilidad.Id = (int.Parse(dwlDebilidad.SelectedValue));
            pokemon.Debilidad.Descripcion = dwlDebilidad.SelectedItem.Text;

            return pokemon;
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx", false);
        }

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            ConfirmaEliminacion = true;
            
        }

        protected void btnConfirmEliminacion_Click(object sender, EventArgs e)
        {
            try
            {
                int id = int.Parse(Request.QueryString["id"]);
                if (confirmEliminacion.Checked)
                {
                    negocio.quitarSP(id);
                    Response.Redirect("Default.aspx", false);
                }
            }
            catch (Exception ex)
            {
                Session.Add("error",ex);
            }
        }
    }
}