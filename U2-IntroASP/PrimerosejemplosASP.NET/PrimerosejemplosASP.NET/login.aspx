<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="PrimerosejemplosASP.NET.Formulario_web12" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
        <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Email address</label>
            <asp:TextBox runat="server" type="text" ID="txtNombre" class="form-control" aria-describedby="emailHelp" />
            
         
        </div>
        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Password</label>
            <asp:TextBox type="password" class="form-control" runat="server" ID="txtPassword"/>
        </div>
        <div class="mb-3 form-check">
            <input type="checkbox" class="form-check-input" id="exampleCheck1">
            <label class="form-check-label" for="exampleCheck1">Check me out</label>
        </div>
        <asp:Button runat="server" type="submit" class="btn btn-primary" ID="btnLogin" OnClick="btnLogin_OnClick" Text="Submit"/>
       
</asp:Content>
