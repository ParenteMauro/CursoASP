using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;
using dominio;
using WindowsFormsApp1;
namespace pokedexWeb
{
    public partial class listaView : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Seguridad.esAdmin(Session["user"])) {
                Session.Add("error", "No tiene permisos de admin para lista Pokémons");
                Response.Redirect("Error.aspx", false);
            }
            else
            {
                
                PokemonNegocio negocio = new PokemonNegocio();
                Session.Add("listaPokemons", negocio.listarConSP());
                dgvPokemon.DataSource = (List<Pokemon>)Session["listaPokemons"];
                dgvPokemon.DataBind();
            }
        }

        protected void dgvPokemon_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = dgvPokemon.SelectedDataKey.Value.ToString();
            Response.Redirect("AltaPokemon.aspx?id=" + id);
        }

        protected void dgvPokemon_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            
            dgvPokemon.PageIndex= e.NewPageIndex;
            dgvPokemon.DataBind();
        }

        protected void filtro_TextChanged(object sender, EventArgs e)
        {
            List<Pokemon> lista = (List<Pokemon>)Session["listaPokemons"];
            List<Pokemon> listaFiltrada = lista.FindAll(x=>x.Nombre.ToUpper().Contains(filtro.Text.ToUpper()) );
            dgvPokemon.DataSource=listaFiltrada;
            dgvPokemon.DataBind();
        }

        protected void cbxFiltroA_CheckedChanged(object sender, EventArgs e)
        {
            if (cbxFiltroA.Checked == true)
            {
                filtro.Enabled = false;
                divFiltroA.Visible = true;
                cargarDWL(dwlCampo, "Nombre", "Tipo", "Numero");
                cargarDWL(dwlEstado, "Todos", "Activo", "Inactivo");
                btnFiltroA.Visible = true;
                
            }
            else
            {
                filtro.Enabled = true;
                divFiltroA.Visible = false;
                btnFiltroA.Visible = false;

            }
        }

        protected void cargarDWL(DropDownList dwl, string op1,  string op2, string op3)
        {
            dwl.Items.Clear();
            dwl.Items.Add(op1);
            dwl.Items.Add(op2);
            dwl.Items.Add(op3);
        }

        protected void dwlCampo_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (dwlCampo.Text)
            {
                case "Nombre":
                    {
                        dwlCriterio.Items.Clear();
                        cargarDWL(dwlCriterio, "Empieza con", "Termina con", "Contiene");
                        break;
                    }
                case "Numero":
                    {
                        dwlCriterio.Items.Clear();
                        cargarDWL(dwlCriterio, "Mayor a", "Menor a", "Igual a");
                        break;
                    }
                case "Tipo":
                    {
                        dwlCriterio.Items.Clear();
                        cargarDWL(dwlCriterio, "Planta", "Fuego", "Agua");
                        break;
                    }
            }
        }

        protected void btnFiltroA_Click(object sender, EventArgs e)
        {
            PokemonNegocio negocio = new PokemonNegocio();
            if(txtFiltro.Text == null)
            {
                txtFiltro.Text = string.Empty;
            }
            List<Pokemon> listaFiltradaA = negocio.filtrar(dwlCampo.Text, dwlCriterio.Text, txtFiltro.Text, dwlEstado.Text);
            dgvPokemon.DataSource = listaFiltradaA;
            dgvPokemon.DataBind();
        }

        protected void btnRecargar_Click(object sender, EventArgs e)
        {
            
            dgvPokemon.DataSource = (List<Pokemon>)Session["listaPokemons"];
            dgvPokemon.DataBind();

        }
    }
}