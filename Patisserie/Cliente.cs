using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Patisserie
{
    public class Cliente
    {
        public Cliente(string account, string password)
        {
            Account = account;
            Password = password;
            Exists = false;
        }
        public Cliente(string account, string password, string email)
        {
            Account = account;
            Password = password;
            Email = email;

            // Exists = false;
        }
        public String Email { get; set; }

        public String Account { get; set; }
        public String Password { get; set; }
        public Boolean Exists { get; set; }
    }
}