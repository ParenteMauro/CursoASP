<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AutoForm.aspx.cs" Inherits="WebApplication1.AutoForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
    <div class="row">
        <div class="col-3">
            <label>Número</label>
            <asp:TextBox runat="server" Type="Number" ID="nmbID"></asp:TextBox>
        </div>
        <div class="col-3">
            <label>Modelo:</label>
            <asp:TextBox runat="server" Type="Text" ID="txtModelo"></asp:TextBox>
        </div>  
        <div class="col-3">
            <label>Descripcion:</label>
            <asp:TextBox runat="server" Type="Text" ID="txtDescripcion"></asp:TextBox>
        </div>
        <div class="col-3">
            <label>Fecha</label>
            <asp:TextBox runat="server" Type="Date" ID="txtFecha"></asp:TextBox>
        </div>
        <div class="col-3">
            <label>Color:</label>
            <asp:TextBox runat="server" Type="Text" ID="txtColor"></asp:TextBox>
        </div>
        <div class="col-4">
            <asp:RadioButton ID="rbtnUsado" Text="Usado" runat = "server" /> 
            <asp:RadioButton ID="rbtnImportado" Text="Importado" runat = "server" /> 
        </div>
       
            <asp:Button Text="Agregar" ID="btnAgregar" runat="server" OnClick="btnAgregar_Click" />
        <a href="Default.aspx">Lista de Autos</a>
    </div>
</asp:Content>
