<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="ProyectoAvance.Inscripcion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="marizq">
        <table>
        <tr>
            <td>
                <label>Cedula: </label>
            </td>
            <td>
                <asp:TextBox class=inputtext ID="txtCedula" onclick="" runat="server" placeholder="Ej: 111111111" Width="260"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <label>Nombre: </label>
            </td>
            <td>
                <asp:TextBox class=inputtext ID="txtNombre" onclick="" runat="server" placeholder="Ej: Eduardo" Width="260"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <label>Primer Apellido: </label>
            </td>
            <td>
                <asp:TextBox class=inputtext ID="txtApellido1" onclick="" runat="server" placeholder="Ej: Rodriguez" Width="260"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <label>Segundo Apellido: </label>   
            </td>
            <td>
                <asp:TextBox class=inputtext ID="txtApellido2" onclick="" runat="server" placeholder="Ej: Fallas" Width="260"></asp:TextBox>
            </td>
        </tr>
            <tr>
            <td>
                <label>Password: </label>
            </td>
            <td>
                <input id="txtcont1" class=inputtext type="password" runat="server" Width="260"/>
            </td>
        </tr>
            <tr>
            <td>
                <label>Confirmar: </label>
            </td>
            <td>
                <input id="txtcont2" class=inputtext type="password" runat="server" Width="260"/>
            </td>
        </tr>
    </table>
        <asp:Button ID="btnIngresar" runat="server" OnClick="btnIngresar_Click" Text="Ingresar datos" />
        
    </div>
    
    
</asp:Content>
