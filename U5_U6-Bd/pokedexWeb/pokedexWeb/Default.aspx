<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="pokedexWeb.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Caíste al lugar equivocado</h1>
    <div class="container">
        <%--        <div class="row row-cols-1 row-cols-md-3 g-4">

            <%
                foreach(dominio.Pokemon pokemon in ListaPokemon)
                {
            %>


            <div class="col">
                <div class="card">
                    <img src=<%:pokemon.UrlImagen %> class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title"><%: pokemon.Nombre%></h5>
                        <p class="card-text"><%:pokemon.Descripcion%></p>
                        <a href="DetallePokemon.aspx&id=<%:pokemon.Id%>">Ver Detalles</a>

                    </div>
                </div>
            </div>
            <%
                }
            %>

        </div>--%>
        <div class="row row-cols-1 row-cols-md-3 g-4">
        <asp:Repeater ID="repRepetidor" runat="server">
            <ItemTemplate>
                <div class="col">
                    <div class="card">
                        <img src="<%#Eval("UrlImagen") %>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Numero")%></h5>
                            <p class="card-text"><%#Eval("Nombre")%></p>
                            <p class="card-text"><%#Eval("Tipo.Descripcion") %></p>
                            <asp:Button text="Ejemplo" CssClass="bt btn-primary" runat="server" ID="btnEjemplo" CommandArgument='<%#Eval("Id")%>' CommandName="PokemonId" OnClick="btnEjemplo_Click"/>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
        </div>
        
</asp:Content>
