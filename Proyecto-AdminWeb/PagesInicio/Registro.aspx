<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Proyecto_AdminWeb.PagesInicio.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registro</title>
	<link rel="stylesheet" href="../Styles/registro.css"/>
</head>
<body>
    <form id="form1" runat="server">
             <div class="login">
				 
		<div class="login-screen">
			<div class="app-title">
				<a href="Home.aspx"  runat="server"><img src="../Images/logo.svg"/></a>
				<h1>REGISTRO</h1>
				<h4>Ingrese sus datos</h4>
			</div>

			<div class="login-form">
				<div class="container-one">
				<div class="control-group">
				<input runat="server" id="identificacion"  type="number" class="login-field" value="" placeholder="Ingrese su identificación" />
				<label class="login-field-icon fui-user" for="login-name"></label>
				</div>

				<div class="control-group">
				<input runat="server" id="name" type="text" class="login-field" value="" placeholder="Ingrese su nombre" />
				<label class="login-field-icon fui-user" for="login-name"></label>
				</div>

				<div class="control-group">
				<input runat="server" id="primerApellido" type="text" class="login-field" value="" placeholder="Ingrese su primer apellido" />
				<label class="login-field-icon fui-user" for="login-name"></label>
				</div>

				<div class="control-group">
				<input runat="server" id="segundoApellido" type="text" class="login-field" value="" placeholder="Ingrese su segundo apellido" />
				<label class="login-field-icon fui-user" for="login-name"></label>
				</div>

				</div>
				<div class="container-two">			

				<div class="control-group">
				<input  runat="server" id="correoelectronico"  type="email" class="login-field" value="" placeholder="Ingrese su correo" />
				<label class="login-field-icon fui-user" for="login-name"></label>
				</div>

				<div class="control-group">
				<input runat="server" id="telefonos"  type="tel" pattern="[0-9]{8}" class="login-field" value="" placeholder="Ingrese su teléfono" />
				<label class="login-field-icon fui-user" for="login-name"></label>
				</div>

				<div class="control-group">
				<input runat="server" id="fechanacimiento" type="date" class="login-field" value="" placeholder="Ingrese su fecha de nacimiento" />
				<label class="login-field-icon fui-user" for="login-name"></label>
				</div>

				<div class="control-group">
				<input runat="server" id="password" type="password" class="login-field" value="" placeholder="Ingrese su contraseña" />
				<label class="login-field-icon fui-lock" for="login-pass"></label>
				</div>
				</div>
				<asp:Button ID="btnRegistrar" runat="server" CssClass="btn" Text="Registrarse" OnClick="btnRegistrar_Click" />
				<asp:Label ID="lblError" runat="server" Text="" Visible="false" ForeColor="White" ></asp:Label>
			</div>
		</div>

		<div class="image">
			<img src="../Images/personal2.svg"/>
		</div>
	</div>

    </form>
</body>
</html>