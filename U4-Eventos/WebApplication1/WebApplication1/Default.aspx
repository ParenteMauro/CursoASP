<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.paginaGrilla" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
    <style>
        .oculto {
            display: none
        }
    </style>
    <%--Con DataKeyNames="Id" estoy haciendo que tome como referencia de row el id del objeto --%>
    <asp:GridView runat="server" OnSelectedIndexChanged="dgvAutos_SelectedIndexChanged" ID="dgvAutos" DataKeyNames="Id" CssClass="table table-dark" AutoGenerateColumns="false">
        <Columns>
            <%--Ocultarlo con la class .oculto de css--%>
            <%--<asp:BoundField HeaderText="Id" DataField="Id" HeaderStyle-CssClass="oculto" ItemStyle-CssClass="oculto"/>--%>
            <asp:BoundField HeaderText="Modelo" DataField="Modelo" />
            <asp:BoundField HeaderText="Color" DataField="Color" />
            <asp:CheckBoxField HeaderText="Importado" DataField="Importado" />
            <asp:CheckBoxField HeaderText="Usado" DataField="Usado" />
            <asp:BoundField HeaderText="Fecha" DataField="Fecha" />
            <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Acción" />
        </Columns>
    </asp:GridView>

    <a href="AutoForm.aspx">Agregar Auto</a>
</asp:Content>
