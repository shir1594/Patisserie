using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Patisserie
{
    public class CarritoCompras
    {
        public List<CantidadProducto> ListaProductos { get; private set; }

        protected CarritoCompras()
        {
            ListaProductos = new List<CantidadProducto>();
        }

        public static CarritoCompras CapturarProducto()
        {
            CarritoCompras _carrito = (CarritoCompras)HttpContext.Current.Session["ASPCarritoCompras"];
            if (_carrito == null)
            {
                HttpContext.Current.Session["ASPCarritoCompras"] = _carrito = new CarritoCompras();
            }
            return _carrito;
        }

        public void Agregar(int pIdProducto)
        {
            CantidadProducto NuevoProducto = new CantidadProducto(pIdProducto);
            if (ListaProductos.Contains(NuevoProducto))
            {
                foreach (CantidadProducto item in ListaProductos)
                {
                    if (item.Equals(NuevoProducto))
                    {
                        item.Cantidad++;
                        return;
                    }
                }
            }
            else
            {
                NuevoProducto.Cantidad = 1;
                ListaProductos.Add(NuevoProducto);
            }
        }
        public void EliminarProductos(int pIdProducto)
        {
            CantidadProducto eliminaritems = new CantidadProducto(pIdProducto);
            ListaProductos.Remove(eliminaritems);
        }
        public void CantidadDeProductos(int pIdProducto, int pCantidad)
        {
            if (pCantidad == 0)
            {
                EliminarProductos(pIdProducto);
                return;
            }
            CantidadProducto updateProductos = new CantidadProducto(pIdProducto);
            foreach (CantidadProducto item in ListaProductos)
            {
                if (item.Equals(updateProductos))
                {
                    item.Cantidad = pCantidad;
                    return;
                }
            }
        }
        public decimal SubTotal()
        {
            decimal subtotal = 0;
            foreach (CantidadProducto item in ListaProductos)
            {
                subtotal += item.Total;
            }
            return subtotal;
        }
    }
}