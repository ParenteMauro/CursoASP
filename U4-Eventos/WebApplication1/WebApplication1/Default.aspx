<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.paginaGrilla" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
    <asp:GridView runat="server" ID="dgvAutos" CssClass="table table-dark" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField HeaderText="Modelo" DataField="Modelo"/>
            <asp:BoundField HeaderText="Color" DataField="Color"/>
            <asp:CheckBoxField HeaderText="Importado" DataField="Importado"/>
            <asp:CheckBoxField HeaderText="Usado" DataField="Usado"/>
            <asp:BoundField HeaderText="Fecha" DataField="Fecha"/>
        </Columns>    
    </asp:GridView>
    <a href="AutoForm.aspx">Agregar Auto</a>
</asp:Content>
