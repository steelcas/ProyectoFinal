<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quienes.aspx.cs" Inherits="ProyectoAvance.Quienes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/Estilos.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Quienes somos</title>
</head>
<body>
    <div>
        <asp:Image ID="Image1" runat="server" src="/Content/Archivos/UA.png" Width="1000" Height="210" />

    </div>
   <div id="barra">
        <ul class="topnav">

            <%--<li class="li"><a href="">Pagina Principal</a></li>--%>
            <li class="left"><a href="Registro.aspx">Registro</a></li>
            <li class="left"><a href="Quienes.aspx">Quienes somos</a></li>
            <li class="left"><a href="Contacto.aspx">Contacto</a></li>
            <li class="right"><a href="Interfaces/Perfil.aspx" runat="server" id="liiniciarsesion">Iniciar sesion</a></li>
        
        </ul>
    </div>
    <div>
        <p id="letraM">
            ¿Quiénes somos?
        </p>
    </div>
    <p id="letraMC" style="color:royalblue">
        Vision:<br />
    </p>

    <p id="letraP" style="color:cornflowerblue">
        Ser la universidad elegida por los estudiantes, por sus carreras acordes
         con las necesidades actuales del entorno. Ser reconocida como la mejor
         universidad en Costa Rica por ser proveedora del mejor talento humano.<br />
        <br />
    </p>
    <p id="letraMC" style="color:royalblue">
        Misión:<br />
    </p>

    <p id="letraP" style="color:cornflowerblue">
        Ser líder en el campo de los estudios superiores, satisfaciendo
         las necesidades de sus estudiantes por encima de sus expectativas,
         brindándoles carreras de calidad y con excelencia en el servicio a la comunidad.<br />
        <br />
    </p>
    <p id="letraMC" style="color:royalblue">
        Valores:<br />
    </p>

    <p id="letraP" style="color:cornflowerblue">
        Disciplina<br />
        Responsabilidad<br />
        Trabajo en equipo<br />
        Calidad<br />
        <br />        
    </p>
    <p id="letraMC" style="color:royalblue">
        Descripción de la Universidad:<br />
    </p>

    <p id="letraP" style="color:cornflowerblue">
        Nuestra  Universidad cuenta con 40 años de excelencia académica,
         fundada por profesionales costarricenses de alta moralidad y deseos
         de proveer estudios superiores a todos los estudiantes que buscan realizar
         grandes ideales en sus futuras profesiones, retribuyéndole a su país todo
         lo que éste le ha brindado: un clima de paz, un lugar donde se puede decidir,
         espacio para realizar sueños y facilitando lo mejor de su talento.<br />
        <br />        
        La idea de crear una universidad donde se estimule el pensamiento,
         se fortalezca el sentimiento de trabajo en equipo y se valore sobre todo,
         la adaptabilidad a las necesidades cambiantes del entorno en materia de profesionales,
         fue el fundamento esencial por el cual hoy, orgullosamente, nos presentamos ante toda
         la comunidad costarricense para ofrecer nuestros planes de estudio.<br /> 
        <br /> 
        Desde el momento del ingreso del estudiante,
         aseguramos un futuro brillante y nos comprometemos a estar unidos con él,
         para ayudar en todo lo posible a que finalice su carrera con éxito.<br /> 
        <br /> 
        Denos su confianza y avancemos unidos hacia el mañana.<br />
        <br />
    </p>
    <footer>Universidad de las Antillas® Direccion  2017</footer>
</body>
</html>
