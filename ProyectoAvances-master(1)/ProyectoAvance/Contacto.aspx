<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contacto.aspx.cs" Inherits="ProyectoAvance.Contacto" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/Estilos.css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Contacto</title>
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
            Contactenos
        </p>
    </div>
    <div>
        <table>
            <tr>
                <td>
                    <p id="letraMc">
                        <span style="color: black">Telefonos: </span><br />
                        <br />
                        <br />
                    </p>
                </td>
                <td>
                    <p id="letraP" style="color: cornflowerblue">                       
                        Numero de telefono: 2227-6332<br />
                        <br />
                        Numero de Fax: 22944875<br />
                    </p>
                </td>                
            </tr>
            <tr>
                <td>
                    <p id="letraMc">
                        <span style="color: black">Correos Electronicos: </span><br />
                        <br />
                        <br />
                        <br />
                        <br />
                    </p>
                </td>
                <td>
                    <p id="letraP" style="color: cornflowerblue">    
                        <br />
                        <br />                    
                        Coordinador Academico: Ronald Jimenez Fallas ronal.dj@hotmail.com<br />
                        <br />
                        Registro: Yeymi ybcar85@hotmail.com<br />
                        <br />
                        Atencion a estudiantes: Erick Steele Castro erick1796@hotmail.com<br />
                        <br />           
                    </p>
                </td>                    
            </tr>
            <tr>
                <td>
                    <p id="letraMc">
                        <span style="color: black">Ubicacion:</span>
                    </p>
                </td>
                <td>
                    <p id="letraP" style="color: cornflowerblue">
                        100 metros este del Hospital Calderon Guardia            
                    </p>
                </td>
            </tr>
        </table>
    </div>
    <br />
    <br />

    <footer>Universidad de las Antillas® Direccion  2017</footer>
</body>
</html>
