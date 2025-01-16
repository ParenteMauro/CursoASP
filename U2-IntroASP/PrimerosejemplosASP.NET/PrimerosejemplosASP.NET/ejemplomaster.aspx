<%@ Page Title="" Language="C#" MasterPageFile="~/probandoMaster.Master" AutoEventWireup="true" CodeBehind="ejemplomaster.aspx.cs" Inherits="PrimerosejemplosASP.NET.Formulario_web11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Ejemplo con master</h1>
    <asp:Label Text="" ID="lblSecundario" runat ="server"/>

    <div>
    <input type="type" id="txtHola" name ="name" value="" />
     </div>
    <div>
        <asp:Label Text="" ID="lblSaludo" runat="server">Poneme tu nombre </asp:Label>
    <asp:TextBox ID="txtNombre" AutoPostBack="false" runat="server" OnTextChanged="txtNombre_TextChanged" ></asp:TextBox>
        </div>
    <asp:Button ID="btnAceptar" runat="server" OnClick="btnAceptar_Click" Text="Button" />
    
    <asp:CheckBox ID="CheckBox1" runat="server" />

    <div>   
        <asp:TextBox ID="txtModificar" runat="server"></asp:TextBox>
        <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
    </div>
    <a href ="About">Descripcion</a>
    <asp:RadioButton ID="RadioButton1" runat="server" />
    <br />
    
    
</asp:Content>
