<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AltaPokemon.aspx.cs" Inherits="pokedexWeb.AltaPokemon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
    <br />
    <div class="row row-cols-2 row-cols-md-2 g-4 container justify-content-center mx-auto border p-3">
        <div class="col-6 border p-3">
            <label>Id:</label>
            <asp:TextBox runat="server" ID="txtId" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-6 border p-3">
            <label for="disabledSelect" class="form-label">Numero:</label>
            <asp:TextBox runat="server" ID="txtNumero" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-6 border p-3">
            <label for="disabledSelect" class="form-label">Nombre:</label>
            <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-6 border p-3">
            <label for="disabledSelect" class="form-label">Elemento: </label>
            <asp:DropDownList runat="server" ID="dwlTipo" CssClass="form-select"></asp:DropDownList>
        </div>
        <div class="col-6 border p-3">
            <label for="disabledSelect" class="form-label">Debilidad: </label>
            <asp:DropDownList runat="server" ID="dwlDebilidad" CssClass="form-select"></asp:DropDownList>
        </div>

        <div class="col-6 border p-3">
            <label for="disabledSelect" class="form-label">Descripcion:</label>
            <asp:TextBox runat="server" ID="txtDecripcion" CssClass="form-control"></asp:TextBox>
        </div>

        <div class="col-6">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <label for="disabledSelect" class="form-label">UrlImagen:</label>
                <asp:Image ImageUrl="https://www.shutterstock.com/image-vector/default-image-icon-vector-missing-600nw-2079504220.jpg"
                    runat="server" ID="UrlImagen" Width="60%" />
            </asp:UpdatePanel>
        </div>

        <div>
            <asp:Button CssClass="button" Text="Agregar" ID="btnAccion" runat="server" OnClick="btnAccion_Click" />
        </div>
    </div>


</asp:Content>
