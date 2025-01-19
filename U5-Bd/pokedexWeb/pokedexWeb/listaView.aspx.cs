﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;
using WindowsFormsApp1;
namespace pokedexWeb
{
    public partial class listaView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PokemonNegocio negocio = new PokemonNegocio();
            dgvPokemon.DataSource = negocio.listarConSP();
            dgvPokemon.DataBind();
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
    }
}