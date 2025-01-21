<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AltaPokemon.aspx.cs" Inherits="pokedexWeb.AltaPokemon" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
    <br />
    <div class="row row-cols-2 row-cols-md-2 g-4 container justify-content-center mx-auto border p-3">

        <div class="col-6 border p-3">
            <label for="disabledSelect" class="form-label">Numero:</label>
            <asp:TextBox runat="server" ID="txtNumero" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-6 border p-3">
            <label for="disabledSelect" class="form-label">Nombre:</label>
            <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="col-6 border p-3">
            <label for="disabledSelect" class="form-label">Elemento: </label>
            <asp:DropDownList runat="server" ID="dwlTipo" CssClass="form-select"></asp:DropDownList>
        </div>
        <div class="col-6 border p-3">
            <label for="disabledSelect" class="form-label">Debilidad: </label>
            <asp:DropDownList runat="server" ID="dwlDebilidad" CssClass="form-select"></asp:DropDownList>
        </div>

        <div class="col-6 border p-3">
            <label for="disabledSelect" class="form-label">Descripcion:</label>
            <asp:TextBox runat="server" ID="txtDescripcion" CssClass="form-control"></asp:TextBox>
        </div>


        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <div class="col-6 border p-3">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <div class="justify-content-center" style="display: grid; justify-items: center;">
                        <asp:Label runat="server" class="form-label" Text="Url de la Imagen"></asp:Label>
                        <asp:TextBox runat="server" ID="txtImagen" CssClass="form-control" OnTextChanged="txtImagen_TextChanged" AutoPostBack="true"></asp:TextBox>
                        <asp:Image ImageUrl="https://www.shutterstock.com/image-vector/default-image-icon-vector-missing-600nw-2079504220.jpg"
                            runat="server" ID="UrlImagen" Width="60%" />
                    </div>
                </ContentTemplate>
            </asp:UpdatePanel>

        </div>

        <div class="mb-3">
            <asp:Button CssClass="btn btn-success" Text="Agregar" ID="btnAccion" runat="server" OnClick="btnAccion_Click" />
            <asp:Button CssClass="btn btn-outline-primary" Text="Cancelar" ID="btnCancelar" runat="server" OnClick="btnCancelar_Click" />
            <%if(Request.QueryString["id"] != null) { %>
             <asp:Button CssClass="btn btn-primary" Text="Inactivar" ID="btnInactivar" runat="server" OnClick="btnInactivar_Click" />
            <%}%>

        </div>
        
        <div >
            <div >
                <asp:Button CssClass="btn btn-danger" Text="Eliminar" ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" />
            </div>
            <%if (ConfirmaEliminacion) { %>
            <div > 
                <asp:CheckBox Text="Confirmar Eliminación" ID="confirmEliminacion" runat="server" />
                <asp:Button CssClass="btn btn-outline-danger" ID="btnConfirmEliminacion" Text="Eliminar" runat="server" OnClick="btnConfirmEliminacion_Click" />
            </div>
            <%} %>
        </div>

    </div>


</asp:Content>
