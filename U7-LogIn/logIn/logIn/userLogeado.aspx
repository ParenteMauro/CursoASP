<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userLogeado.aspx.cs" Inherits="logIn.userLogeado" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>Estás Logeado</h1>
    </div>
    <%if (Session["usuario"] !=null && (((dominio.Usuario)Session["usuario"]).TipoUsuario == dominio.UserType.ADMIN))
        { %>
   
    <asp:Button runat="server" ID="btnPaginaAdmin" Text="Pagina Admin" CssClass="btn btn-primary" OnClick="btnPaginaAdmin_Click"  />
    <% }%>
</asp:Content>
