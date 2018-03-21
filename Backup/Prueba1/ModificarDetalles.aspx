<%@ Page Title="" Language="C#" MasterPageFile="~/Estructura.Master" AutoEventWireup="true" CodeBehind="ModificarDetalles.aspx.cs" Inherits="Prueba1.ModificarDetalles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2>Modificar Detalles</h2>
    Id Producto
    <asp:TextBox ID="txtBuscar" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnBuscar" runat="server" Text="Buscar" 
        onclick="btnBuscar_Click" />
    <br />
    <br />
<br/>
<asp:Panel ID="Panel1" runat="server" Visible="false">
        Detalles del producto<br />
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
        <asp:Label ID="lblDetalles" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:LinkButton ID="lnkModificar" runat="server" onclick="lnkModificar_Click">Modificar Detalles</asp:LinkButton>
        <br />
    </asp:Panel>
    <br />
    <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
</asp:Content>
