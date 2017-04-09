using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoAvance.Content.Clases
{
    public class Usuario
    {
        public string carnet;
        public string password;

        public Usuario(Object[] objeto)
        {
            this.carnet = objeto[0].ToString();
            this.password = objeto[1].ToString();
        }

        public string Carnet
        {
            get {return carnet; }
            set {carnet = value; }
        }
        public string Password
        {
            get {return password; }
            set {password = value; }
        }

            


        
    }
}