<%@ Page Title="" Language="C#" MasterPageFile="~/Estructura.Master" AutoEventWireup="true" CodeBehind="BuscarProducto.aspx.cs" Inherits="Prueba1.BuscarProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2>Detalle de producto</h2>
    Id producto :
    <asp:TextBox ID="txtBuscar" runat="server"></asp:TextBox>
&nbsp;<asp:Button ID="btnbuscar" runat="server" Text="Buscar" 
        onclick="btnbuscar_Click" />
    <br />
    <br />
    <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
    <br />
    <br />
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
    </asp:Panel>
    <br />
<br/>


</asp:Content>
