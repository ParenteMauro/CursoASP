<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PrimerosejemplosASP.NET._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

        <%if(user != "") {  %>
        <h2>Ingresaste!</h2>
        <asp:Label Text="text" ID="lblUser" runat="server"></asp:Label>
        <asp:Label Text="text" ID="lblPass" runat="server"></asp:Label>
        <% } else
            {%>
        <h2>Debes Loguearte</h2>
        <a href="login.aspx">Log in</a>
         <% } %>

</asp:Content>
