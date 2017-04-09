using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoAvance.cr.ac.uia.Programacion3.Proyecto.Clases
{
    public class Direccion
    {
        public string provincia;
        public string canton;
        public string distrito;
        public string direx;

        public Direccion(Object[] objeto)
        {
            this.provincia = objeto[0].ToString();
            this.canton = objeto[1].ToString();
            this.distrito = objeto[2].ToString();
            this.direx = objeto[3].ToString();

        }

        public string Provincia
        {
            get { return provincia; }
            set { provincia = value; }
        }

        public string Canton
        {
            get { return canton; }
            set { canton = value; }
        }

        public string Distrito
        {
            get { return distrito; }
            set { distrito = value; }
        }

        public string Direx
        {
            get { return direx; }
            set { direx = value; }
        }



    }
}