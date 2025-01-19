<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="listaView.aspx.cs" Inherits="pokedexWeb.listaView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <h1>Lista Pokemon: </h1>
    <asp:GridView ID="dgvPokemon" runat="server" CssClass ="table" 
        AutoGenerateColumns ="false" OnSelectedIndexChanged ="dgvPokemon_SelectedIndexChanged"
        DataKeyNames="Id" AllowPaging="true" PageSize="5" OnPageIndexChanging="dgvPokemon_PageIndexChanging"
        >
        <Columns>
            <asp:BoundField HeaderText ="Numero" DataField ="Numero" />
            <asp:BoundField HeaderText ="Nombre" DataField ="Nombre" />
            <asp:BoundField HeaderText ="Tipo" DataField ="Tipo.Descripcion" />
            <asp:BoundField HeaderText ="Debilidad" DataField ="Debilidad.Descripcion" />
            <asp:BoundField HeaderText ="Imagen" DataField ="UrlImagen" />
            <asp:CommandField HeaderText="Acción" ShowSelectButton="true" SelectText="🢀" />
        </Columns>

    </asp:GridView>
        </div>
</asp:Content>
