<%@ Page Title="" Language="C#" MasterPageFile="~/Estructura.Master" AutoEventWireup="true" CodeBehind="ModificarStock.aspx.cs" Inherits="Prueba1.ModificarStock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2>Modificar Stock</h2>
    Id Producto :
    <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ErrorMessage="Campo requerido" ControlToValidate="txtId"></asp:RequiredFieldValidator>
    <br />
    <br />
    Stock Producto :
    <asp:TextBox ID="txtStock" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
        ErrorMessage="Campo requerido" ControlToValidate="txtStock"></asp:RequiredFieldValidator>
&nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" 
        ErrorMessage="Cantidad fuera de rango" MinimumValue="0" MaximumValue="3000" Display="Dynamic" Type="Integer" ControlToValidate="txtStock"></asp:RangeValidator>
    <br />
    <br />
    <asp:Button ID="btnEditar" runat="server" Text="Ingresar" 
        onclick="btnEditar_Click" />
    <br />
    <br />
    <asp:Label ID="lblMensaje" runat="server" Text=""></asp:Label>
    <br />
<br/>
</asp:Content>
