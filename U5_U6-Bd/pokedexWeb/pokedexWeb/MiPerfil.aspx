<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MiPerfil.aspx.cs" Inherits="pokedexWeb.MiPerfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <hr />
        <h1>Mi Perfil</h1>
        <div class="row">

            <div class="col-md-4">
                <div class="container">
                    <label>Email</label>
                    <asp:TextBox CssClass="form-control" ID="txtEmail" runat="server"></asp:TextBox>
                    <label>Nombre</label>
                    <asp:TextBox CssClass="form-control" ID="txtNombre" runat="server"></asp:TextBox>
                    <label>Apellido</label>
                    <asp:TextBox CssClass="form-control" ID="txtApellido" runat="server"></asp:TextBox>
                    <label>Fecha de Nacimiento</label>
                    <asp:TextBox CssClass="form-control" ID="txtFecha" runat="server" TextMode="Date"></asp:TextBox>
                </div>
            </div>
            <div class="col-md-4">
                <label>Imagen de Perfil</label>
                <input type="file" id="txtImagen" runat="server" class="form-control" />
                <asp:ScriptManager runat="server"></asp:ScriptManager>
                <asp:UpdatePanel runat="server">
                    <ContentTemplate>
                        <asp:Image ID="pbxImagen" runat="server" CssClass="img-fluid mt-3" />
                    </ContentTemplate>
                </asp:UpdatePanel>
            </div>
            <div class="row">
                <div class="col-md-4 mt-4">
                    <asp:Button Text="Guardar" runat="server" CssClass="btn btn-primary" ID="btnGuardar" OnClick="btnGuardar_Click"/>
                     <a href:"/"> Regresar </a>
                </div>
            </div>
        </div>

    </div>
</asp:Content>
