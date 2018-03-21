using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba1
{
    public partial class ModificarDetalles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void lnkModificar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/FormularioEditar.aspx");
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            Producto aBuscada = Producto.buscarProducto(txtBuscar.Text);


            if (aBuscada != null)
            {
                Panel1.Visible = true;
                lblMensaje.Text = "Encontrado.";
                lblMarca.Text = aBuscada._marca;
                lblTipo.Text = aBuscada._tipo;
                lblStock.Text = aBuscada._stock.ToString();
                lblDetalles.Text = aBuscada._detalle;

                Session["Producto"] = aBuscada._id;
            }
            else
            {

                lblMensaje.Text = "No Encontrado.";
                Panel1.Visible = false;
            }
        }
    }
}