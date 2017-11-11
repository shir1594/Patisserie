using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Patisserie
{
    public class Contacto
    {
        public Contacto(string mensaje, string email)
        {
            Mensaje = mensaje;
            Email = email;

        }
        public Contacto(int id, string mensaje, string email)
        {
            Id = id;
            Mensaje = mensaje;
            Email = email;
        }
        public string Mensaje { get; private set; }
        public string Email { get; private set; }

        public int Id { get; private set; }
    }
}