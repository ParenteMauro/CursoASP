<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView runat="server" CssClass="table table-dark" ID="dgvCalle" DataKeyNames="Altura"  OnSelectedIndexChanged="dgvCalle_SelectedIndexChanged"  AutoGenerateColumns="false">
        <Columns>
        
            <asp:BoundField DataField="Calle" HeaderText="Calle" />
            <asp:BoundField DataField="Altura" HeaderText="Altura" />
            <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Acción"/>
       

        </Columns>

    </asp:GridView>
    
</asp:Content>
