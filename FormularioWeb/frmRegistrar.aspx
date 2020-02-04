<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmRegistrar.aspx.cs" Inherits="FormularioWeb.frmRegistrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="estilo.css" rel="stylesheet" type="text/css" />
    <title>Formulario</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p>
                Nombre de usuario:<asp:TextBox ID="txtNombreUsuario" runat="server" CssClass="campo"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNombreUsuario" ErrorMessage="Este campo es requerido"></asp:RequiredFieldValidator>
            </p>
            <p>
                Clave:<asp:TextBox ID="txtClave" runat="server" TextMode="Password" CssClass="campo"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtClave" ErrorMessage="Este campo es requerido"></asp:RequiredFieldValidator>
            </p>
            <p>
                Repita la clave:<asp:TextBox ID="txtClave2" runat="server" TextMode="Password" CssClass="campo"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtClave2" ErrorMessage="Este campo es requerido"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtClave2" ErrorMessage="Las claves no son iguales" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            </p>
            <p>
                Correo electrónico:<asp:TextBox ID="txtCorreo" runat="server" TextMode="Email" CssClass="campo"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtCorreo" ErrorMessage="Este campo es requerido"></asp:RequiredFieldValidator>
            </p>
            <p>
                Apellido:<asp:TextBox ID="txtApellido" runat="server" CssClass="campo"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtApellido" ErrorMessage="Este campo es requerido"></asp:RequiredFieldValidator>
            </p>
            <p>
                Nombre:<asp:TextBox ID="txtNombre" runat="server" CssClass="campo"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtNombre" ErrorMessage="Este campo es requerido"></asp:RequiredFieldValidator>
            </p>
            <p>
                País de origen:
                <asp:DropDownList ID="drpPaís" runat="server" CssClass="campo" DataTextField="Length" DataValueField="Length">
                    <asp:ListItem Selected="True">México</asp:ListItem>
                    <asp:ListItem>Argentina</asp:ListItem>
                    <asp:ListItem>España</asp:ListItem>
                    <asp:ListItem>Colombia</asp:ListItem>
                    <asp:ListItem>Perú</asp:ListItem>
                    <asp:ListItem>Chile</asp:ListItem>
                </asp:DropDownList>
            </p>
            <p>
                Provincia:<asp:TextBox ID="txtProvincia" runat="server" CssClass="campo"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtProvincia" ErrorMessage="Este campo es requerido"></asp:RequiredFieldValidator>
            </p>
            <p>
                Código postal:<asp:TextBox ID="txtPostal" runat="server" CssClass="campo"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtPostal" ErrorMessage="Este campo es requerido"></asp:RequiredFieldValidator>
            </p>
            <p>
                Sexo:
            <asp:RadioButtonList id="rblSexos" runat="server">
            <asp:ListItem>Hombre</asp:ListItem>
            <asp:ListItem>Mujer</asp:ListItem>
            </asp:RadioButtonList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Este campo es requerido" ControlToValidate="rblSexos"></asp:RequiredFieldValidator>
            </p>
            <p>
                Fecha de nacimiento (dd/mm/aaaa):<asp:TextBox ID="txtNacimiento" runat="server" TextMode="Date" CssClass="campo"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtNacimiento" ErrorMessage="Este campo es requerido"></asp:RequiredFieldValidator>
            </p>
            <p>
                Comentarios:<asp:TextBox ID="txtComentarios" runat="server" TextMode="MultiLine" CssClass="campo"></asp:TextBox>
            </p>
            <p>
                Acepto los términos y condiciones:<asp:CheckBox ID="chkAcepto" runat="server" Text="Acepto" />
            </p>
            <p>
                <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click" />
            </p>
        </div>
    </form>
</body>
</html>
