using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoAvance
{
    public partial class Inscripcion : System.Web.UI.Page
    {
        Content.Controladoras.ControladoraEstudiante controladoraest = new Content.Controladoras.ControladoraEstudiante();
        Content.Controladoras.ControladoraUsuario controladorauser = new Content.Controladoras.ControladoraUsuario();

        public void ingresarDatos()
        {
            controladoraest.agregarEstudiante(crearobjeto());

        }
        public void ingresarContraseña(string user)
        {
            Object[] objeto = new Object[2];
            objeto[0] = user;
            objeto[1] = txtcont2.Value;
            controladorauser.ingresarUsuario(objeto);

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            if (txtcont1.Value==txtcont2.Value)
            {
                ingresarDatos();
                string user = controladorauser.obtenercarnet(crearobjeto());
                ingresarContraseña(user);
            }
            
        }
        public Object[] crearobjeto()
        {
            Object[] objeto = new Object[4];
            objeto[0] = txtNombre.Text;
            objeto[1] = txtCedula.Text;
            objeto[2] = txtApellido1.Text;
            objeto[3] = txtApellido2.Text;
            return objeto;
        }

        
    }
}