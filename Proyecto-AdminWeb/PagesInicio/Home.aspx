<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Proyecto_AdminWeb.PagesInicio.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inicio</title>
    <link rel="stylesheet" href="../Styles/home.css"/>
      <meta name="viewport" content="width=device-width"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1" />
    <script src="https://kit.fontawesome.com/7adeb3fe3b.js" crossorigin="anonymous"></script>
</head>
<body >
    <form id="form1" runat="server">
        
        <div class="showcase">
       <header>
           <input type="checkbox" id="menuToggle">
            <label for="menuToggle">
                <i class="fas fa-bars fa-2x" id="menuham"></i> 
            </label>

            <div id="navbar">
             <img src="../Images/logo.svg" class="logo" />
                <a runat="server" href="#">Inicio</a>
                <a href="#about">Sobre Nosotros</a>
                <a href="#footer">Contacto</a>
                <a runat="server" class="btnInicio" href="Login.aspx">Iniciar sesión</a>
                <a runat="server" class="btnRegistro" href="Registro.aspx">Registrarse</a>
            </div>
        </header>

        <video src="../Images/videocover.mp4" muted loop autoplay></video>
        <div class="overlay"></div>
        <div class="text">
            <h2>Bienvenido al sistema </h2>
            <h3>de </h3>
            <h3 class="control" id="demo"></h3>
            <p>
                Este sistema permite gestionar acciones, actividades, planes, políticas, 
                normas, registros, procedimientos y métodos que desarrollan autoridades y su personal a cargo, 
                con el objetivo de prevenir posibles riesgos que afectan a una entidad.
            </p>
            <a href="#">Ver más</a>
        </div>
        <ul class="social">
            <li><a href="https://www.cuc.ac.cr/app/cms/www/index.php"">
                <img src="../Images/logo_cuc.png"></a></li>
           
        </ul>
        </div>
        <div class="cover" id="about">
          
                <img src="../Images/imginicio.png" />
                <div class="textInfo">
                    <h1>Sobre Nosotros</h1>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
                        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
                        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
                        consequat.
                    </p>

                </div>

        </div>

    <footer id="footer">
   <div class="content">
     <div class="left box">
       <div class="upper">
         <div class="topic"></div>
         <img src="../Images/logo.svg"/>
         <img class="cuc" src="../Images/logo_cuc.png"/>
       </div>
       <div class="lower">
         <div class="topic"></div>
         <div class="phone">
           <a href="#"></a>
         </div>
         <div class="email">
           <a href="#"></a>
         </div>
       </div>
     </div>
     <div class="middle box">
       <div class="topic">Unirse</div>
       <div><a href="Login.aspx">Ingresar</a></div>
       <div><a href="Registro.aspx">Registrarse</a></div>
 
     </div>
     <div class="right box">
       <div class="topic">Contáctenos</div>
       <form action="#">
         <input type="text" placeholder="Ingrese un email">
         <input type="submit" name="" value="Enviar">
         <div class="media-icons">
           <a href="#"><i class="fas fa-envelope"></i></a>
           <a href="https://www.cuc.ac.cr/app/cms/www/index.php"><i class="fas fa-globe"></i></a>
              <a href="https://www.youtube.com/channel/UCcbKGfA6OlUpA1QSu-gLzgA"><i class="fab fa-youtube"></i></a>
         </div>
       </form>
     </div>
   </div>
   <div class="bottom">
     <p>Copyright © 2021 Control Interno</p>
   </div>
 </footer>
    </form>

    <script>
        var i = 0;
        var txt = 'Control Interno';
        var speed = 100;

        window.onload = function typeWriter() {
            if (i < txt.length) {
                document.getElementById("demo").innerHTML += txt.charAt(i);
                i++;
                setTimeout(typeWriter, speed);
            }
          
                   
        }
    </script>
</body>
</html>
