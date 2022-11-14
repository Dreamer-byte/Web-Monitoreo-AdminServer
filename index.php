<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Herramienta de monitorizacion</title>
  <link rel="stylesheet" href="./styles/card.css">
  

</head>

<body>
  <?php
  include("./modelos/Servidor.php");
  $dns = new Servidor("SERVER DNS","192.168.100.3");
  $dns->Comprobarconexion();
  $dns->state = "ON";
  
  ?>

  <header>
    <section class="wrapper algo">
      <nav class="nav">
        <h1>
          <!-- Caston propiedades -->
          <span
            style="--content: 'Herramienta.'; --start-color: #007CF0;--end-color:#00DFD8;--delay:0s">Herramienta.</span>
          <span style="--content: 'de.'; --start-color: #7928CA;--end-color:#FF0080;--delay:3s">de.</span>
          <span
            style="--content: 'Monitorización.'; --start-color: #FF4D4D;--end-color:#F9CB28; --delay:6s">Monitorización.</span>
        </h1>

      </nav>
    </section>
  </header>

  <section class="wrapper contenido">
    <div class="contenedor">
      <a  <?php 
      // echo 'href= "./views/dashboard.php?serverIp='.$dns->Ip.'&nameServer='.$dns->NameServer.'"';
      if($dns->state == "ON")
      {
        echo 'href= "./dashboard/administracion.php?ServerIP='.$dns->Ip.'&nameServer='.$dns->NameServer.'"';
      }
      else
      {
        echo 'href="#"';
      }
      
      ?>>
        <div class="tarjeta rgb" data-tilt data-tilt-scale="1.1">
          <div class="card-image" style="background-image: url(./imagenes/dns.png);"></div>
          <div class="card-text">
            <span class="date" <?php  echo 'style="color:'.$dns->color.'"';?> >
              <?php
              echo $dns->state;
              ?>
              
            </span>
            
            <div id="container-circle">
              
              <div class="circle" <?php  echo 'style="animation-delay: 0s;background-color:'.$dns->color.'"';?>></div>
              <div class="circle" <?php  echo 'style="animation-delay: 1s;background-color:'.$dns->color.'"';?>></div>
              <div class="circle" <?php  echo 'style="animation-delay: 2s;background-color:'.$dns->color.'"';?>></div>
              <div class="circle" <?php  echo 'style="animation-delay: 3s;background-color:'.$dns->color.'"';?>></div>
            </div>
            <h2>
              <?php echo $dns->NameServer; ?>
            </h2>
            <p>
              
            </p>
          </div>

          <div class="card-stats">
            <div class="stat">
              <div class="value"><?php echo $dns->Ip;?></div>
              <div class="type">Direccion IPv4</div>
            </div>
          </div>

        </div>
      </a>


      <a href="#">
        <div class="tarjeta rgb" data-tilt data-tilt-scale="1.1">
          <div class="card-image" style="background-image: url(./imagenes/web.png);"></div>
          <div class="card-text">
            
            
           

            <span class="date">Activo</span>
            <div id="container-circle">
              
              <div class="circle" style="animation-delay: 0s;background-color: green;"></div>
              <div class="circle" style="animation-delay: 0.5s;background-color: green;"></div>
              <div class="circle" style="animation-delay: 1s;background-color: green;"></div>
              <div class="circle" style="animation-delay: 1.5s;background-color: green;"></div>
            </div>

            <h2>Servidor WEB</h2>
            <p>
              Servidor Apache2. <br> Cliente SSH.
            </p>          
            <!-- <ol>
              <li>Apache</li>
              <li>MYSQL</li>
              <li>SSH</li>
            </ol> -->
            
          </div>

          <div class="card-stats">
            <div class="stat">
              <div class="type">Direccion IPv4</div>
              <div class="value">192.168.100.4</div>
            </div>
          </div>

        </div>
      </a>

      <a href="#">
        <!-- data-tilt data-tilt-glare data-tilt-max-glare="0.5" -->

        <div class="tarjeta">
          <div class="card-image" style="background-image: url(./imagenes/navegador.png);"></div>
          <div class="card-text">
            <span class="date">OFF</span>
            <div id="container-circle" >
              
              <div class="circle" style="animation-delay: 0s;background-color: red;"></div>
              <div class="circle" style="animation-delay: 1s;background-color: red;"></div>
              <div class="circle" style="animation-delay: 2s;background-color: red;"></div>
              <div class="circle" style="animation-delay: 3s;background-color: red;"></div>
            </div>
            <h2>Servidor DNS</h2>
            <!-- <p>
              <ol>
                <li>Apache</li>
                <li>MYSQL</li>
                <li>SSH</li>
              </ol>
            </p>  -->

              
          </div>
          <div class="card-stats">

            <div class="stat">
              <div class="value">192.168.100.3</div>
              <div class="type">Direccion IPv4</div>
            </div>
          </div>
        </div>
      </a>

      <!--Otra mas si quieres la quitas-->
      <a href="#">
        <div class="tarjeta rgb" data-tilt data-tilt-scale="1.1">
          <div class="card-image" style="background-image: url(./imagenes/dhcp.png);"></div>
          <div class="card-text">
            <span class="date">Activo</span>
            <h2>Servidor DHCP</h2>
            <p>Lorem ipsum dolor sit amet consectetur, Ducimus, repudiandae temporibus omnis illum maxime quod deserunt
              eligendi dolor</p>
          </div>
          <div class="card-stats">

            <div class="stat">
              <div class="value">192.168.100.4</div>
              <div class="type">Direccion IPv4</div>
            </div>
          </div>
        </div>
      </a>

      <a href="#">
        <div class="tarjeta rgb" data-tilt data-tilt-scale="1.1">
          <div class="card-image" style="background-image: url(./imagenes/dns.png);"></div>
          <div class="card-text">
            <span class="date">Activo</span>
            <h2>Servidor WEB</h2>
            <p>Lorem ipsum dolor sit amet consectetur, Ducimus, repudiandae temporibus omnis illum maxime quod deserunt
              eligendi dolor</p>
          </div>
          <div class="card-stats">

            <div class="stat">
              <div class="value">192.168.100.4</div>
              <div class="type">Direccion IPv4</div>
            </div>
          </div>
        </div>
      </a>


      <a href="#">
        <div class="tarjeta rgb" data-tilt data-tilt-scale="1.1">
          <div class="card-image" style="background-image: url(./imagenes/dns.png);"></div>
          <div class="card-text">
            <span class="date">Activo</span>
            <h2>Servidor WEB</h2>
            <p>Lorem ipsum dolor sit amet consectetur, Ducimus, repudiandae temporibus omnis illum maxime quod deserunt
              eligendi dolor</p>
          </div>
          <div class="card-stats">

            <div class="stat">
              <div class="value">192.168.100.4</div>
              <div class="type">Direccion IPv4</div>
            </div>
          </div>
        </div>
      </a>
    </div>
  </section>










  <div id="progressBar"></div>;
  <div id="progressBarContainer"></div>

  <script src="./vanilla-tilt.min.js"></script>
  </script>

  <script>
    const progressBar = document.querySelector("#progressBar");
    let totalPageHeight = document.body.scrollHeight - window.innerHeight;
    window.onscroll = () => {
      let newProgressHeight = (window.pageYOffset / totalPageHeight) * 100;
      progressBar.style.height = `${newProgressHeight}%`;
      progressBar.style.opacity = `${newProgressHeight}%`;
    };
  </script>

</body>

</html>