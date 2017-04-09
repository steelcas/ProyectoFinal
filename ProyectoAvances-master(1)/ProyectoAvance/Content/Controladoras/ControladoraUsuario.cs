using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ProyectoAvance.Content.Controladoras
{   
    
    public class ControladoraUsuario
    {
        Content.ControladorasBD.ControladoraBDUsuario controladoraBDusuario = new Content.ControladorasBD.ControladoraBDUsuario();
        public Content.Clases.Usuario verificar(Object[] objeto)
        {
            Content.Clases.Usuario usuario = new Content.Clases.Usuario(objeto);
            usuario = new Content.Clases.Usuario(controladoraBDusuario.verificar(usuario));
            return usuario;

        }
        public void cambiarcont(Object[] objeto,string nuevacont)
        {
            Content.Clases.Usuario usuario = new Clases.Usuario(objeto);
            controladoraBDusuario.cambiarcont(usuario,nuevacont);
        }
        public void ingresarUsuario(Object[] objeto)
        {
            Content.Clases.Usuario usuario = new Clases.Usuario(objeto);
            controladoraBDusuario.ingresarUsuario(usuario);
        }
        public string obtenercarnet(Object[] objeto)
        {
            Content.Clases.Estudiante estudiante = new Clases.Estudiante(objeto);
            string user = controladoraBDusuario.obtenerCarnet(estudiante);
            return user;
        }

    }
    
}