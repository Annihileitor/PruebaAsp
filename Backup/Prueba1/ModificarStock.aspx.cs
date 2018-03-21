using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba1
{
    public partial class ModificarStock : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            Producto pBuscada = Producto.buscarProducto(txtId.Text);
            if (pBuscada != null)
            {
                pBuscada._stock = int.Parse(txtStock.Text);
                lblMensaje.Text = "Stock Modificado";
                txtId.Text = "";
                txtStock.Text = "";
            }
            else
            {
                lblMensaje.Text = "Id no disponible";
            }

        }
    }
}