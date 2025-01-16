<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Formulario_web11" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-2">
        <div class="col">
            <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Email address</label>
                
                <asp:TextBox runat ="server" ID ="txtEmail" CssClass="form-control" type ="email"/>
            </div>
            <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Password</label>
               
                <asp:TextBox runat="server" CssClass="form-control" ID="txtPassword" type="password"></asp:TextBox>
            </div>

            <asp:Button Text="Ingresar" CssClass="btn btn-primary" ID="btnAceptar" runat="server" />
        </div>
            <div class="col-2"></div>
    </div>
</asp:Content>
