using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoAvance.Interfaces
{
    

    public partial class Perfil : System.Web.UI.Page
    {
        Content.Controladoras.ControladoraUsuario controladorauser = new Content.Controladoras.ControladoraUsuario();
        Content.Controladoras.ControladoraEstudiante controladoraest = new Content.Controladoras.ControladoraEstudiante();
        
        static String carnetiniciado;

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                string carnetiniciado = "";
            }
        }
        public void btncc_Click(object sender, EventArgs e)
        {
            modalcc.Style.Add("display","inline-block");
        }
        public void mostrarmodinfo()
        {
            divmoddir.Style.Add("display", "none");
            divmodtel.Style.Add("display", "none");
            divmodinfo.Style.Add("display","inline-block");
        }
        public void mostrarmoddir()
        {
            divmoddir.Style.Add("display", "inline-block");
            divmodtel.Style.Add("display", "none");
            divmodinfo.Style.Add("display", "none");
        }
        public void mostrarmodtel()
        {
            divmoddir.Style.Add("display", "none");
            divmodtel.Style.Add("display", "inline-block");
            divmodinfo.Style.Add("display", "none");
        }

        protected void btnabrirdivmodinfo_Click(object sender, EventArgs e)
        {
            mostrarmodinfo();
        }

        protected void btnabrirdivmoddir_Click(object sender, EventArgs e)
        {
            mostrarmoddir();
        }

        protected void btnabrirdivmodtel_Click(object sender, EventArgs e)
        {
            mostrarmodtel();
        }

        protected void btncambiar_Click(object sender, EventArgs e)
        {
            cambiarcont();
        }
        public void cambiarcont()
        {
            if (txtpass1.Text==txtpass2.Text)
            {
                Object[] objeto = new Object[2];
                objeto[0] = txtiniciocarnet.Text;
                objeto[1] = txtiniciopass.Text;
                controladorauser.cambiarcont(objeto, txtpass2.Text);
                modalcc.Style.Add("display", "none");

            }
            
        }

        public void modificarDatos()
        {
            Object[] objeto = new Object[4];
            objeto[0] = txtNombre.Text;
            objeto[1] = txtCedula.Text;
            objeto[2] = txtApellido1.Text;
            objeto[3] = txtApellido2.Text;
            controladoraest.modificardatos(objeto, carnetiniciado);
        }

        protected void btnmod_Click(object sender, EventArgs e)
        {
            modificarDatos();
        }

        protected void btnagregardir_Click(object sender, EventArgs e)
        {
            modalcd.Style.Add("display", "inline-block");
        }

        protected void btnregresar_Click(object sender, EventArgs e)
        {
            modalcd.Style.Add("display", "none");
        }

        protected void btniniciarsesion_Click(object sender, EventArgs e)
        {
            verificar();
        }
        public void verificar()
        {
            Object[] objeto = new Object[2];
            objeto[0] = txtiniciocarnet.Text;
            objeto[1] = txtiniciopass.Text;
            Content.Clases.Usuario respuesta = controladorauser.verificar(objeto);
            if (txtiniciocarnet.Text==respuesta.carnet && txtiniciopass.Text==respuesta.password)
            {
                carnetiniciado = respuesta.carnet;
                tablecont.Style.Add("display","inline-block");
                diviniciosesion.Style.Add("display","none");

            }
        }
    }
}