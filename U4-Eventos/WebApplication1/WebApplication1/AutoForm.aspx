<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AutoForm.aspx.cs" Inherits="WebApplication1.AutoForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row">
        <div class="col">
            <label>Número</label>
            <asp:TextBox runat="server" Type="Number" ID="nmbID"></asp:TextBox>
        </div>
        <div class="col">
            <label>Modelo:</label>
            <asp:TextBox runat="server" Type="Text" ID="txtModelo"></asp:TextBox>
        </div>
        <div class="col">
            <label>Fecha</label>
            <asp:TextBox runat="server" Type="Date" ID="txtDescripcion"></asp:TextBox>
        </div>
        <div class="col">
            <label>Color:</label>
            <asp:TextBox runat="server" Type="Text" ID="txtColor"></asp:TextBox>
        </div>
        <div class="col">
            <label>Usado:</label>

        </div>
        <a href="Default.aspx">Lista de Autos</a>
    </div>
</asp:Content>
