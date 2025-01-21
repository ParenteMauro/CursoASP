<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="listaView.aspx.cs" Inherits="pokedexWeb.listaView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Lista Pokemon: </h1>
        <label>Buscar</label>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:TextBox runat="server" CssClass="form-control" ID="filtro" AutoPostBack="true" OnTextChanged="filtro_TextChanged"></asp:TextBox>
                <label>Filtro Avanzado</label>
                <asp:CheckBox ID="cbxFiltroA" runat="server" AutoPostBack="true" OnCheckedChanged="cbxFiltroA_CheckedChanged" />
                <div class="row" id="divFiltroA" runat="server" visible="false">
                    <div class="col-3">
                        <label>Campo:</label>
                        <asp:DropDownList ID="dwlCampo" runat="server" OnSelectedIndexChanged="dwlCampo_SelectedIndexChanged" AutoPostBack="true" CssClass="form-select bg-white" Style="width: auto;"></asp:DropDownList>
                    </div>
                    <div class="col-3">
                        <label>Criterio:</label>
                        <asp:DropDownList ID="dwlCriterio" runat="server" CssClass="form-select bg-white" Style="width: auto;"></asp:DropDownList>
                    </div>
                    <div class="col-3">
                        <label>Filtro:</label>
                        <asp:TextBox ID="txtFiltro" runat="server" CssClass="form-control" Style="width: auto;"></asp:TextBox>
                    </div>
                    <div class="col-3">
                        <label>Estado:</label>
                        <asp:DropDownList ID="dwlEstado" runat="server" CssClass="form-select bg-white" Style="width: auto;"></asp:DropDownList>

                    </div>
                </div>
                <br />
                <asp:Button Text="🔍" runat="server" CssClass="btn btn-info" Visible="false" ID="btnFiltroA" OnClick="btnFiltroA_Click"/>
                <asp:Button Text="↻" runat="server" CssClass="btn btn-info" Visible="true" ID="btnRecargar" OnClick="btnRecargar_Click"/>
                
                <hr />
                <asp:GridView ID="dgvPokemon" runat="server" CssClass="table"
                    AutoGenerateColumns="false" OnSelectedIndexChanged="dgvPokemon_SelectedIndexChanged"
                    DataKeyNames="Id" AllowPaging="true" PageSize="5" OnPageIndexChanging="dgvPokemon_PageIndexChanging" >
                    <Columns>
                        <asp:BoundField HeaderText="Numero" DataField="Numero" />
                        <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                        <asp:BoundField HeaderText="Tipo" DataField="Tipo.Descripcion" />
                        <asp:BoundField HeaderText="Debilidad" DataField="Debilidad.Descripcion" />
                        <asp:BoundField HeaderText="Imagen" DataField="UrlImagen" />
                        <asp:CheckBoxField HeaderText="Activo" DataField="Activo" />
                        <asp:CommandField HeaderText="Acción" ShowSelectButton="true" SelectText="🢀" />
                    </Columns>
                </asp:GridView>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>
