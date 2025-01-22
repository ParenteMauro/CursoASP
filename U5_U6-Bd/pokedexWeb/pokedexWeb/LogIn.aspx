<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="pokedexWeb.LogIn1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" >
    <hr />
    <h1 class="">Log In</h1>
    <div >
        <label class="form-label"> E-mail: </label>
        <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"></asp:TextBox>
    </div>
    <div>
        <label class="form-label"> Contraseña: </label>
        <asp:TextBox runat="server" ID="txtPass" TextMode="Password" CssClass="form-control" ></asp:TextBox>
    </div>
    <asp:Button runat="server" CssClass="btn btn-primary mt-3" Text="Iniciar Sesión" ID="btnSesion" OnClick="btnSesion_Click"/>
</div>

</asp:Content>
