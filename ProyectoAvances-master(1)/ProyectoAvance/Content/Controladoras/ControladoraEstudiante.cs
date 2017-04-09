using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoAvance.Content.Controladoras  
{
    public class ControladoraEstudiante
    {
        Content.ControladorasBD.ControladoraBDEstudiante controladoraBD = new  Content.ControladorasBD.ControladoraBDEstudiante();
        internal void agregarEstudiante(Object[] objeto)
        {
            Content.Clases.Estudiante estudiante = new Content.Clases.Estudiante(objeto);
            controladoraBD.agregarEstudiante(estudiante);
        }
        public void modificardatos(Object[] objeto,string carnet)
        {
            Content.Clases.Estudiante estudiante = new Content.Clases.Estudiante(objeto);
            controladoraBD.modificardatos(estudiante,carnet);
        }
        

    }
}