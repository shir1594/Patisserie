using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Patisserie
{
    public class Producto
    {

        public int Id { get; set; }
        public decimal Precio { get; set; }
        public string Descripcion { get; set; }

        public Producto(int pId)
        {
            Id = pId;
          
            switch (pId)
            {
                case 1:
                    Descripcion = "Pay de Queso";
                   
                    Precio = Convert.ToDecimal(30.90);
                    break;
                case 2:
                    Descripcion = "Carlota de Frambuesa";
                   
                    Precio = Convert.ToDecimal(45.90);
                    break;
                case 3:
                    Descripcion = "Pay de Fresa";
                    Precio = Convert.ToDecimal(35.00);
                    break;
                case 4:
                    Descripcion = "Strudel de Peras";
                    Precio = Convert.ToDecimal(48.90);
                    break;
                case 5:
                    Descripcion = "Pay de Platano";
                    Precio = Convert.ToDecimal(33.90);
                    break;
                case 6:
                    Descripcion = "Pay de Oreo";
                    Precio = Convert.ToDecimal(40.90);
                    break;
            }
        }
    }
}