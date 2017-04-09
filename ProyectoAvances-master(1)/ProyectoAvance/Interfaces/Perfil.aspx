<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="ProyectoAvance.Interfaces.Perfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../Content/Estilos.css" rel="stylesheet" />
    <div id="diviniciosesion" class="diviniciosesion" runat="server">
        <table>
            <tr>
                <td>
                    Carnet:
                </td>
                <td>
                    <asp:TextBox ID="txtiniciocarnet" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Password:
                </td>
                <td>
                    <asp:TextBox ID="txtiniciopass" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button ID="btniniciarsesion" runat="server" Text="Entrar" OnClick="btniniciarsesion_Click"/>

    </div>
    <table id="tablecont" class="tablecont" runat="server">
        <tr>
            <td>
                <asp:Button ID="btnabrirdivmodinfo" runat="server" Text="Modificar Informacion" OnClick="btnabrirdivmodinfo_Click"/>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnabrirdivmoddir" runat="server" Text="Modificar Direcciones" OnClick="btnabrirdivmoddir_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnabrirdivmodtel" runat="server" Text="Modificar Telefonos" OnClick="btnabrirdivmodtel_Click"/>
            </td>
        </tr>
    </table>

    <div class="anadir" id="divmodinfo" runat="server">
        <div class="contenido">
            <table id="tableinfo">
                <tr>
                    <td>
                        <label for="txtCedula">Cedula:</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="txtNombre">Nombre:</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="txtApellido1">Primer Apellido:</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtApellido1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label for="txtApellido2">Segundo Apellido:</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtApellido2" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:Button ID="btnmod" runat="server" Text="Modificar" OnClick="btnmod_Click" />
            <asp:Button ID="btncc" runat="server" OnClick="btncc_Click" Text="Cambiar Contraseña" />


        </div>

    </div>
    <div class="anadir" id="divmoddir" runat="server">
        <div class="contenido">
            <asp:GridView ID="gvdir" runat="server"></asp:GridView>
            <asp:Button ID="btnmostrardir" runat="server" Text="Mostrar Direcciones" />
            <asp:Button ID="btnagregardir" runat="server" Text="Agregar Direccion" OnClick="btnagregardir_Click"/>
            <asp:Button ID="btneliminardir" runat="server" Text="Eliminar Direccion" />
        </div>

    </div>
    <div class="anadir" id="divmodtel" runat="server">
        <div class="contenido">
            <asp:GridView ID="gvtel" runat="server"></asp:GridView>
            <asp:Button ID="btnmostrartel" runat="server" Text="Mostrar Telefonos" />
            <asp:Button ID="btnagregartel" runat="server" Text="Agregar Telefono" />
            <asp:Button ID="btneliminartel" runat="server" Text="Eliminar Telefono" />
        </div>
    </div>

    <div id="modalcc" class="modal" runat="server">
        <div class="contenido">
            <table>
                <tr>
                    <td>
                        <label>Contraseña:</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtpass1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label>Repita la contraseña:</label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtpass2" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:Button ID="btncambiar" runat="server" Text="Cambiar Contraseña" OnClick="btncambiar_Click" />
        </div>
    </div>

    <div id="modalcd" class="modal" runat="server">
        <div class="contenido">
            <table>
                <tr>
                    <td>
                        Provincia:
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlprovincia" runat="server"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        Canton:
                    </td>
                    <td>
                        <asp:DropDownList ID="ddlcanton" runat="server"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        Distrito:
                    </td>
                    <td>
                        <asp:DropDownList ID="ddldistrito" runat="server"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        Direccion Exacta:
                    </td>
                    <td>
                        <asp:TextBox ID="txtdirex" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <asp:Button ID="btnagregardir2" runat="server" Text="Agregar" />
            <asp:Button ID="btnregresar" runat="server" Text="Regresar" OnClick="btnregresar_Click"/>
        </div>

    </div>

    <%--<input class="perfilanadir" type="radio" id="añadirdireccion" name="añadir"/>
    <label for="añadirdireccion">Añadir direccion</label>
    <input class="perfilanadir" type="radio" id="añadirtelefono" name="añadir"/>
    <label for="añadirtelefono">Añadir telefono</label>--%>
</asp:Content>
