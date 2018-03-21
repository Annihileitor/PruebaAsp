<%@ Page Title="" Language="C#" MasterPageFile="~/Estructura.Master" AutoEventWireup="true" CodeBehind="FormularioEditar.aspx.cs" Inherits="Prueba1.FormularioEditar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2>Formulario Editar detalles</h2>
    <asp:Panel ID="Panel1" runat="server" >
        Detalles del producto<br />
        <br />
        <asp:Label ID="lblId" runat="server" Text="" Visible="false"></asp:Label>
        <br />
        Marca :
        <asp:Label ID="lblMarca" runat="server" Text=""></asp:Label>
        <br />
        Tipo :
        <asp:Label ID="lblTipo" runat="server" Text=""></asp:Label>
        <br />
        Stock :
        <asp:Label ID="lblStock" runat="server" Text=""></asp:Label>
        <br />
        Detalles :
        <asp:TextBox ID="txtDetalle" runat="server"></asp:TextBox>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
            ErrorMessage="Campo requerido" ControlToValidate="txtDetalle"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />
        <asp:Button ID="btnEditar" runat="server" Text="Modificar" 
            onclick="btnEditar_Click" />
        <br />
        <br />
        <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
    </asp:Panel>
    <br />
<br/>
</asp:Content>
