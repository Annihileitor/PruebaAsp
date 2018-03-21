using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba1
{
    public partial class FormularioEditar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblId.Text = Session["Producto"].ToString();
            Producto aBuscada = Producto.buscarProducto(lblId.Text);
            lblMarca.Text = aBuscada._marca;
            lblTipo.Text = aBuscada._tipo;
            lblStock.Text = aBuscada._stock.ToString();
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            Producto aBuscada = Producto.buscarProducto(lblId.Text);
            
            aBuscada._detalle = txtDetalle.Text;

            txtDetalle.Text = "";
            lblMensaje.Text = "Detalles modificados";
        }
    }
}