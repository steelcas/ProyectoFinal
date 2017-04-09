using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProyectoAvance.Content.ControladorasBD
{
    public class ControladoraBDUsuario
    {
        Content.Adaptador.Adaptador adaptador = new Adaptador.Adaptador();

        public Object[] verificar(Content.Clases.Usuario usuario)
        {
            String consulta = "SELECT [Carnet],[Pass]FROM [dbo].[Perfil] where Carnet = '"+usuario.carnet+"';";
            DataTable dt = adaptador.consultar(consulta);
            Object[] objeto = new Object[2];
            objeto[0] = dt.Rows[0][0].ToString();
            objeto[1] = dt.Rows[0][1].ToString();
            return objeto;
        }
        public void cambiarcont(Clases.Usuario usuario,string nuevacont)
        {
            String consulta = "UPDATE [dbo].[Perfil]SET[Pass] = @nuevacont WHERE Carnet ="+usuario.carnet+";";
            SqlCommand comando = new SqlCommand(consulta);
            SqlParameter nuevacont2 = new SqlParameter("@nuevacont", SqlDbType.VarChar, 20);
            nuevacont2.Value = nuevacont;

            comando.Parameters.Add(nuevacont2);

            adaptador.insertar(comando);
        }
        public void ingresarUsuario(Content.Clases.Usuario usuario)
        {
            String consulta = "INSERT INTO [dbo].[Perfil]([Carnet],[Pass])VALUES(@carnet,@pass)";
            SqlCommand comando = new SqlCommand(consulta);

            SqlParameter carnet = new SqlParameter("@carnet", SqlDbType.VarChar, 20);
            carnet.Value = usuario.carnet;
            SqlParameter pass = new SqlParameter("@pass", SqlDbType.VarChar, 20);
            pass.Value = usuario.password;

            comando.Parameters.Add(carnet);
            comando.Parameters.Add(pass);

            adaptador.insertar(comando);
        }
        public string obtenerCarnet(Content.Clases.Estudiante estudiante)
        {
            String consulta = "SELECT [Carnet]FROM [dbo].[Estudiante] WHERE Cedula = '" + estudiante.cedula + "';";
            DataTable dt = adaptador.consultar(consulta);
            return dt.Rows[0][0].ToString();
        }
    }
}