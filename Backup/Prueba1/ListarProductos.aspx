<%@ Page Title="" Language="C#" MasterPageFile="~/Estructura.Master" AutoEventWireup="true" CodeBehind="ListarProductos.aspx.cs" Inherits="Prueba1.ListarProductos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h2>Listado de productos</h2>
    <asp:ListView ID="ListView1" runat="server" DataSourceID="ObjectDataSource2">
        <AlternatingItemTemplate>
            <tr style="background-color: #FFFFFF;color: #284775;">
                <td>
                    <asp:Label ID="_idLabel" runat="server" Text='<%# Eval("_id") %>' />
                </td>
                <td>
                    <asp:Label ID="_marcaLabel" runat="server" Text='<%# Eval("_marca") %>' />
                </td>
                <td>
                    <asp:Label ID="_tipoLabel" runat="server" Text='<%# Eval("_tipo") %>' />
                </td>
                <td>
                    <asp:Label ID="_stockLabel" runat="server" Text='<%# Eval("_stock") %>' />
                </td>
                <td>
                    <asp:Label ID="_detalleLabel" runat="server" Text='<%# Eval("_detalle") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color: #999999;">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                        Text="Actualizar" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Cancelar" />
                </td>
                <td>
                    <asp:TextBox ID="_idTextBox" runat="server" Text='<%# Bind("_id") %>' />
                </td>
                <td>
                    <asp:TextBox ID="_marcaTextBox" runat="server" Text='<%# Bind("_marca") %>' />
                </td>
                <td>
                    <asp:TextBox ID="_tipoTextBox" runat="server" Text='<%# Bind("_tipo") %>' />
                </td>
                <td>
                    <asp:TextBox ID="_stockTextBox" runat="server" Text='<%# Bind("_stock") %>' />
                </td>
                <td>
                    <asp:TextBox ID="_detalleTextBox" runat="server" 
                        Text='<%# Bind("_detalle") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" 
                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>
                        No se han devuelto datos.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                        Text="Insertar" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                        Text="Borrar" />
                </td>
                <td>
                    <asp:TextBox ID="_idTextBox" runat="server" Text='<%# Bind("_id") %>' />
                </td>
                <td>
                    <asp:TextBox ID="_marcaTextBox" runat="server" Text='<%# Bind("_marca") %>' />
                </td>
                <td>
                    <asp:TextBox ID="_tipoTextBox" runat="server" Text='<%# Bind("_tipo") %>' />
                </td>
                <td>
                    <asp:TextBox ID="_stockTextBox" runat="server" Text='<%# Bind("_stock") %>' />
                </td>
                <td>
                    <asp:TextBox ID="_detalleTextBox" runat="server" 
                        Text='<%# Bind("_detalle") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #E0FFFF;color: #333333;">
                <td>
                    <asp:Label ID="_idLabel" runat="server" Text='<%# Eval("_id") %>' />
                </td>
                <td>
                    <asp:Label ID="_marcaLabel" runat="server" Text='<%# Eval("_marca") %>' />
                </td>
                <td>
                    <asp:Label ID="_tipoLabel" runat="server" Text='<%# Eval("_tipo") %>' />
                </td>
                <td>
                    <asp:Label ID="_stockLabel" runat="server" Text='<%# Eval("_stock") %>' />
                </td>
                <td>
                    <asp:Label ID="_detalleLabel" runat="server" Text='<%# Eval("_detalle") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table ID="itemPlaceholderContainer" runat="server" border="1" 
                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                <th runat="server">
                                    Id</th>
                                <th runat="server">
                                    Marca</th>
                                <th runat="server">
                                    Tipo</th>
                                <th runat="server">
                                    Stock</th>
                                <th runat="server">
                                    Detalle</th>
                            </tr>
                            <tr ID="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" 
                        style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                <td>
                    <asp:Label ID="_idLabel" runat="server" Text='<%# Eval("_id") %>' />
                </td>
                <td>
                    <asp:Label ID="_marcaLabel" runat="server" Text='<%# Eval("_marca") %>' />
                </td>
                <td>
                    <asp:Label ID="_tipoLabel" runat="server" Text='<%# Eval("_tipo") %>' />
                </td>
                <td>
                    <asp:Label ID="_stockLabel" runat="server" Text='<%# Eval("_stock") %>' />
                </td>
                <td>
                    <asp:Label ID="_detalleLabel" runat="server" Text='<%# Eval("_detalle") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
        SelectMethod="listarProductos" TypeName="Prueba1.Producto">
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
        SelectMethod="listarProductos" TypeName="Prueba1.Producto">
    </asp:ObjectDataSource>
<br />

</asp:Content>
