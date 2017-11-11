using System;

namespace Patisserie
{
	public partial class FProductos : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void ButtonPayQueso_Click(object sender, EventArgs e)
		{
			CarritoCompras carrito = CarritoCompras.CapturarProducto();
			carrito.Agregar(1);
		}

		protected void ButtonCarlota_Click(object sender, EventArgs e)
		{
			CarritoCompras carrito = CarritoCompras.CapturarProducto();
			carrito.Agregar(2);
		}

		protected void ButtonPayFresa_Click(object sender, EventArgs e)
		{
			CarritoCompras carrito = CarritoCompras.CapturarProducto();
			carrito.Agregar(3);
		}

		protected void ButtonStrudel_Click(object sender, EventArgs e)
		{
			CarritoCompras carrito = CarritoCompras.CapturarProducto();
			carrito.Agregar(4);
		}

		protected void ButtonPayPlatano_Click(object sender, EventArgs e)
		{
			CarritoCompras carrito = CarritoCompras.CapturarProducto();
			carrito.Agregar(5);
		}

		protected void ButtonPayOreo_Click(object sender, EventArgs e)
		{
			CarritoCompras carrito = CarritoCompras.CapturarProducto();
			carrito.Agregar(6);
		}

		protected void LinkButtonIniciarS_Click(object sender, EventArgs e)
		{
			Server.Transfer("FIniciarS.aspx");
		}
	}
}