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
            width: 169px;
        }
        .auto-style7 {
            width: 169px;
        }
        .auto-style8 {
            width: 164px;
            height: 49px;
        }
        .auto-style9 {
            width: 169px;
            height: 49px;
        }
        .auto-style10 {
            height: 49px;
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
                    <td class="auto-style5">&nbsp;<asp:Label runat="server" Text="La localidad ingresada ya existe"
                        ID="lblErrorLocalidad" Enabled="False" Visible="False">La localidad ingresada ya existe</asp:Label></td>
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
                    <td class="auto-style8"></td>
                  <td class="auto-style9"><strong>Usuarios<br />
                      </strong></td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style5">Nombre usuario:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="txtUsuario" ErrorMessage="El campo no pueder permanecer en blanco" ValidationGroup="grupo2">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Contraseña:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtContrasenia" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvClave" runat="server" ControlToValidate="txtContrasenia" ErrorMessage="El campo no pueder permanecer en blanco" ValidationGroup="grupo2">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Repetir contraseña:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtReContrasenia" runat="server" ValidationGroup="Grupo3"></asp:TextBox>
                    </td>
                    <td>
                        <asp:CompareValidator ID="cvClave" runat="server" ControlToCompare="txtContrasenia" ControlToValidate="txtReContrasenia" ErrorMessage="Las contraseñas son distintas" ValidationGroup="grupo2">*</asp:CompareValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvReClave" runat="server" ControlToValidate="txtReContrasenia" ErrorMessage="El campo no pueder permanecer en blanco" ValidationGroup="grupo2">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">Correo electrónico:</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtCorreoElectronico" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="revCorreo" runat="server" ControlToValidate="txtCorreoElectronico" ErrorMessage="Debe ser un correo valido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="grupo2">*</asp:RegularExpressionValidator>
                    &nbsp;
                        <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ControlToValidate="txtCorreoElectronico" ErrorMessage="El campo no pueder permanecer en blanco" ValidationGroup="grupo2">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">CP:</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtCp" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        <asp:RegularExpressionValidator ID="revCp" runat="server" ControlToValidate="txtCp" ErrorMessage="Solo se admiten numeros" ValidationExpression="^\d+$" ValidationGroup="grupo2">*</asp:RegularExpressionValidator>
                    &nbsp;<asp:RequiredFieldValidator ID="rfvCP" runat="server" ControlToValidate="txtCp" ErrorMessage="El campo no pueder permanecer en blanco" ValidationGroup="grupo2">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5"><asp:Label ID="txtLocalidades" runat="server" Text="Localidades:"></asp:Label></td>
                    <td class="auto-style7">
                        <asp:DropDownList ID="DropdownListLocalidades" runat="server" Width="115px"></asp:DropDownList>&nbsp;</td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="txtCorreoElectronico" ErrorMessage="El campo no pueder permanecer en blanco" ValidationGroup="grupo2">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Label ID="lblMsjClave" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        <asp:Button ID="btnInicio" runat="server" Text="Ir a inicio.aspx" OnClick="btnInicio_Click" />
                    </td>
                    <td class="auto-style7">&nbsp;<asp:Button ID="btnGuardarUsuario" runat="server" Text="Guardar Usuario" OnClick="btnGuardarUsuario_Click" ValidationGroup="grupo2"></asp:Button></td>
                    <td>&nbsp;
                        <asp:Label ID="lblBienvenido" runat="server" Font-Bold="True"></asp:Label>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">
                        &nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <p>
            </p>
        <asp:ValidationSummary ID="ValidationSummary" runat="server" ValidationGroup="grupo2" />
    </form>
</body>
</html>
