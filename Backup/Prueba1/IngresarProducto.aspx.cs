using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba1
{
    public partial class IngresarProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            
            Producto valid = Producto.buscarProducto(txtId.Text);
            if (valid != null)
            {
                lblMensaje.Text = "Producto Existente.";
            }
            else
            {
                Producto.ingresarProducto(txtId.Text, txtMarca.Text, txtTipo.Text, txtDetalles.Text);
                lblMensaje.Text = "Producto ingresado";
            }

        }


    }
}