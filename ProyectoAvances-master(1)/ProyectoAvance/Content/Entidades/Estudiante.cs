using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoAvance.Content.Clases
{
    public class Estudiante
    {
        public string nombre;
        public string cedula;
        public string apellido1;
        public string apellido2;

        public Estudiante(Object[] objeto)
        {
            this.nombre = objeto[0].ToString();
            this.cedula = objeto[1].ToString();
            this.apellido1 = objeto[2].ToString();
            this.apellido2 = objeto[3].ToString();
        }
        public string Nombre
        {
            get {return nombre; }
            set {nombre = value; }
        }
        public string Cedula
        {
            get { return cedula; }
            set { cedula = value; }
        }
        public string Apellido1
        {
            get { return apellido1; }
            set { apellido1 = value; }
        }
        public string Apellido2
        {
            get { return apellido2; }
            set { apellido2 = value; }
        }
    }
}