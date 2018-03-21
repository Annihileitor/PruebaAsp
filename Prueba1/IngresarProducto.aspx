<%@ Page Title="" Language="C#" MasterPageFile="~/Estructura.Master" AutoEventWireup="true" CodeBehind="IngresarProducto.aspx.cs" Inherits="Prueba1.IngresarProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2>Formulario ingresar Producto</h2>
    Id :
    <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="Campo requerido" ControlToValidate="txtId"></asp:RequiredFieldValidator>
    <br />
    Marca :
    <asp:TextBox ID="txtMarca" runat="server"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="Campo requerido" ControlToValidate="txtMarca"></asp:RequiredFieldValidator>
    <br />
    Tipo :
    <asp:TextBox ID="txtTipo" runat="server"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
        ErrorMessage="Campo requerido" ControlToValidate="txtTipo"></asp:RequiredFieldValidator>
    <br />
    Detalles :
    <asp:TextBox ID="txtDetalles" runat="server"></asp:TextBox>
    &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
        ErrorMessage="Campo requerido" ControlToValidate="txtDetalles"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Button ID="btnIngresar" runat="server" Text="Ingresar" 
        onclick="btnIngresar_Click" />
    <br />
    <br />
    <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
    <br />
<br/>

</asp:Content>
