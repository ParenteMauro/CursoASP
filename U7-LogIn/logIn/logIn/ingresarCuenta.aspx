<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ingresarCuenta.aspx.cs" Inherits="logIn.ingresarCuenta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
    <div class="container">
        <label class="form-label">User</label>
        <asp:TextBox runat="server" ID="txtUser" CssClass="form-control"></asp:TextBox>
    
        <label class="form-label">Password</label>
        <asp:TextBox runat="server" ID="txtPass" CssClass="form-control" TextMode="Password"  ></asp:TextBox>
        
    </div>
    <div class="container"><asp:Button runat="server" ID="btnLogIn" CssClass="btn btn-primary" Text="Log In" OnClick="btnLogIn_Click"/></div>
</asp:Content>
