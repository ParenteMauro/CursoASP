<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="pokedexWeb.Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" >
        <hr />
        <h1 class="">Crea tu pérfil Entrenador Pokémon</h1>
        <div >
            <label class="form-label"> E-mail: </label>
            <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>
        </div>
        <div>
            <label class="form-label"> Contraseña: </label>
            <asp:TextBox runat="server" ID="txtPass" TextType="Password" CssClass="form-control"></asp:TextBox>
        </div>
        
    <asp:Button CssClass="btn btn-primary mt-3" Text="Registrarse" runat="server" ID="btnRegistrarse" OnClick="btnRegistrarse_Click"/>
    </div>

</asp:Content>


