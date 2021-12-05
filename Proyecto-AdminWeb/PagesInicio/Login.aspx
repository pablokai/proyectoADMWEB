<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Proyecto_AdminWeb.PagesInicio.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
	<link rel="stylesheet" href="../Styles/login.css">
</head>
<body>
    <form id="form1" runat="server">
        <div class="login">
		<div class="login-screen">
			<div class="app-title">
				<a href="Home.aspx"  runat="server"><img src="../Images/logo.svg"/></a>
				<h1>LOGIN</h1>
				<h4>Ingrese sus datos</h4>
			</div>

			<div class="login-form">
				<div class="control-group">
				<input  runat="server" type="text" class="login-field" value="" placeholder="Ingrese la identificación" id="username"/>
				<label class="login-field-icon fui-user" for="login-name"></label>
				</div>

				<div class="control-group">
				<input runat="server" type="password" class="login-field" value="" placeholder="Ingrese la contraseña" id="password"/>
				<label class="login-field-icon fui-lock" for="login-pass"></label>
				</div>

				<asp:Button ID="Button1" runat="server" CssClass="btn" Text="Iniciar sesión" OnClick="Button1_Click" />
				<asp:Label ID="lblError" runat="server" Text="" Visible="false"></asp:Label>
			</div>
		</div>
	</div>
    </form>
</body>
</html>
