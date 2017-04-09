using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace ProyectoAvance.Content.ControladorasBD
{
    public class ControladoraBDEstudiante
    {
        Content.Adaptador.Adaptador adaptador = new Content.Adaptador.Adaptador();
        internal void agregarEstudiante(Content.Clases.Estudiante estudiante)
        {
            String consulta = "INSERT INTO [dbo].[Estudiante]([Nombre],[Cedula],[Apellido1],[Apellido2])VALUES(@nombre,@cedula,@apellido1,@apellido2)";
            
            SqlCommand comando = new SqlCommand(consulta);

            SqlParameter nombre = new SqlParameter("@nombre", SqlDbType.VarChar, 15);
            nombre.Value = estudiante.nombre;
            SqlParameter cedula = new SqlParameter("@cedula", SqlDbType.VarChar, 10);
            cedula.Value = estudiante.cedula;
            SqlParameter apellido1 = new SqlParameter("@apellido1", SqlDbType.VarChar, 15);
            apellido1.Value = estudiante.apellido1;
            SqlParameter apellido2 = new SqlParameter("@apellido2", SqlDbType.VarChar, 15);
            apellido2.Value = estudiante.apellido2;

            comando.Parameters.Add(nombre);
            comando.Parameters.Add(cedula);
            comando.Parameters.Add(apellido1);
            comando.Parameters.Add(apellido2);

            adaptador.insertar(comando);

        }
        public void modificardatos(Content.Clases.Estudiante estudiante,string carnet)
        {
            String consulta = "UPDATE [dbo].[Estudiante]SET [Nombre] = @nombre,[Cedula] = @cedula,[Apellido1] = @apellido1,[Apellido2] = @apellido2 WHERE Carnet = " + carnet+";";

            SqlCommand comando = new SqlCommand(consulta);

            SqlParameter nombre = new SqlParameter("@nombre", SqlDbType.VarChar, 15);
            nombre.Value = estudiante.nombre;
            SqlParameter cedula = new SqlParameter("@cedula", SqlDbType.VarChar, 10);
            cedula.Value = estudiante.cedula;
            SqlParameter apellido1 = new SqlParameter("@apellido1", SqlDbType.VarChar, 15);
            apellido1.Value = estudiante.apellido1;
            SqlParameter apellido2 = new SqlParameter("@apellido2", SqlDbType.VarChar, 15);
            apellido2.Value = estudiante.apellido2;

            comando.Parameters.Add(nombre);
            comando.Parameters.Add(cedula);
            comando.Parameters.Add(apellido1);
            comando.Parameters.Add(apellido2);

            adaptador.insertar(comando);
        }

    }
}