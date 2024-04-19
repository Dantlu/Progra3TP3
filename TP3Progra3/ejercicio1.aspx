<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ejercicio1.aspx.cs" Inherits="TP3Progra3.ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 33px;
        }
        .auto-style3 {
            height: 26px;
        }
        .auto-style4 {
            height: 33px;
            width: 164px;
        }
        .auto-style5 {
            width: 164px;
        }
        .auto-style6 {
            height: 33px;
            width: 167px;
        }
        .auto-style7 {
            width: 167px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>Localidades</strong> &nbsp;<br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Nombre de Localidad: </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtNombreLocalidad" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RequiredFieldValidator ID="rfvLocalidades" runat="server" ControlToValidate="txtNombreLocalidad" ErrorMessage="Ingrese localidad" ValidationGroup="grupo1">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Button ID="btnLocalidad" runat="server" Text="Guardar Localidad" OnClick="btnLocalidad_Click" ValidationGroup="grupo1" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3" colspan="3">
                        <asp:ValidationSummary ID="vsMensajesError" runat="server" ValidationGroup="grupo1" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                  <td class="auto-style7"><strong>Usuarios<br />
                      </strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Nombre usuario:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Contraseña:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtContrasenia" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Repetir contraseña:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtReContrasenia" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">Correo electrónico:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtCorreoElectronico" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">CP:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtCp" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"><asp:Label ID="txtLocalidades" runat="server" Text="Localidades:"></asp:Label></td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="DropdownListLocalidades" runat="server" Width="115px"></asp:DropDownList>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="btnInicio" runat="server" Text="Ir a inicio.aspx" OnClick="btnInicio_Click" />
                    </td>
                    <td class="auto-style7">&nbsp;<asp:Button ID="btnGuardarUsuario" runat="server" Text="Guardar Usuario" OnClick="btnGuardarUsuario_Click"></asp:Button></td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
