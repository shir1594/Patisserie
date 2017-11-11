using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Patisserie
{
    public partial class FCarrito : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindData();
        }
        protected void BindData()
        {
            GridViewCarritoCompras.DataSource = CarritoCompras.CapturarProducto().ListaProductos;
            GridViewCarritoCompras.DataBind();
            if (CarritoCompras.CapturarProducto().SubTotal() == 00) ButtonComprar.Visible = false;
            
        }

        protected void GridViewCarritoCompras_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Footer)
            {
                e.Row.Cells[3].Text = "Subtotal: S/." + CarritoCompras.CapturarProducto().SubTotal().ToString();
            }
        }

        protected void GridViewCarritoCompras_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Eliminar")
            {
                int productId = Convert.ToInt32(e.CommandArgument);
                CarritoCompras.CapturarProducto().EliminarProductos(productId);
            }
            BindData();
        }

        protected void ButtonActualizar_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow row in GridViewCarritoCompras.Rows)
            {
                if (row.RowType == DataControlRowType.DataRow)
                {
                    try
                    {
                        int productoId = Convert.ToInt32(GridViewCarritoCompras.DataKeys[row.RowIndex].Value);
                        int cantidad = int.Parse(((TextBox)row.Cells[1].FindControl("TextBoxCantidad")).Text);

                        if (cantidad < 0)
                        {          
                            cantidad = cantidad * (-1);
                            ((TextBox)row.Cells[1].FindControl("TextBoxCantidad")).Text = "$cantidad";
                        }
                        
                        CarritoCompras.CapturarProducto().CantidadDeProductos(productoId, cantidad);
                    }
                    catch (FormatException) { }
                }
            }
            BindData();
        }


        protected void ButtonComprar_Click(object sender, EventArgs e)
        {
            Server.Transfer("FIniciarS.aspx");
            // Server.Transfer("FTransferencia.aspx");
        }
    }
}