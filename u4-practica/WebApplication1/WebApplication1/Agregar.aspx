<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Agregar.aspx.cs" Inherits="WebApplication1.Agregar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Agregar</title>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 id="h2Titulo" runat="server">Agregar Calle: </h2>
    <div>
        <label>Altura:</label>
        <asp:TextBox runat="server" TextMode="Number" ID="txtAltura" Text="Altura"></asp:TextBox>
    </div>
    <div>
        <label>Calle: </label>
        <asp:TextBox runat="server" ID="txtCalle"></asp:TextBox>
        
    </div>
    <asp:Button runat="server" Text="Agregar" Id="btnConfirmar" OnClick="btnConfirmar_Click" />
    <asp:Button runat="server" Text="Eliminar" ID="btnEliminar" OnClick="btnEliminar_Click" />
</asp:Content>
