using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Patisserie
{
    public partial class FTransferencia : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                Data();
        }
        protected void Data()
        {
            decimal subtotal = CarritoCompras.CapturarProducto().SubTotal();
            decimal gastosenvio = 10;
            decimal total = subtotal + gastosenvio;

        LabelSubtotal.Text = "S/. "+subtotal;
            LabelGastosEnvio.Text = "S/. "+gastosenvio;
            LabelTotal.Text = "S/. "+total; 
        }

        protected void ButtonComprar_Click(object sender, EventArgs e)
        {
            decimal subtotal = CarritoCompras.CapturarProducto().SubTotal();
            decimal gastosenvio = 10;
            decimal total = subtotal + gastosenvio;

            if (RadioButtonListPago.SelectedItem.Text == "Con Pago en Efectivo")
            {
                
                TextBoxEfectivo.Visible = true;
                if (TextBoxEfectivo.Text == "" || Convert.ToDecimal(TextBoxEfectivo.Text) < total)
                    TextBoxEfectivo.Text = "";
                else if (Convert.ToDecimal(TextBoxEfectivo.Text) > total) { 

                    //
                    Session.Clear();
                    Server.Transfer("FCarrito.aspx");
                    
                }

            }
            else if (RadioButtonListPago.SelectedItem.Text == "Con Tarjeta Registrada")
            {
                //
                Session.Clear();
                Server.Transfer("FCarrito.aspx");

            }
            

            
        }
    }
}