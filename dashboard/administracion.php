<!DOCTYPE html>
<!-- Designined by CodingLab | www.youtube.com/codinglabyt -->
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title>Aministracion panel </title>
    <link rel="stylesheet" href="style.css">
    <!-- Boxiocns CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <?php 
  $Ip = $_GET["ServerIP"];
  $Server = $_GET["nameServer"];

  if(!isset($Ip) || !isset($Server))
  {
    header("Location: ../index.php");
    done();
  }
  ?>
  <div class="sidebar close">
    <div class="logo-details">

      <i class='bx bxs-server'></i>
      <span class="logo_name"><?php echo $Server;?></span>
    </div>
    <ul class="nav-links">
      <li>
        <a href="../index.php">
          <i class='bx bx-home-alt icon' ></i>
          <span class="link_name">Home</span>
        </a>
        <ul class="sub-menu blank">
          <li><a class="link_name" href="../index.php">Home</a></li>
        </ul>
      </li>
      <li>
        <a href="../ssh/ssh.php" target="frame">
          <i class='bx bx-desktop' ></i>
          <span class="link_name">SSH</span>
        </a>
        <ul class="sub-menu blank">
          <li><a class="link_name" href="../ssh/ssh.php" target="frame">SSH</a></li>
        </ul>
      </li>

      <li>
        <a href="#">
          <i class='bx bx-mail-send' ></i>
          <span class="link_name">SNMP</span>
        </a>
        <ul class="sub-menu blank">
          <li><a class="link_name" href="#">SNMP</a></li>
        </ul>
      </li>
     
      <li>
        <a href="#" target="frame">
          <i class='bx bx-file-find' ></i>
          <span class="link_name">LOGS</span>
        </a>
        <ul class="sub-menu blank">
          <li><a class="link_name" href="#" target="frame">LOGS</a></li>
        </ul>
      </li>
</ul>
  </div>
  <section class="home-section">
    <div class="home-content">
      <i class='bx bx-menu' ></i>
      <span class="text"><?php echo $Ip;?></span>
     
    </div>
    <iframe width="100%" height="100%" style="border: none; margin-top: 5vh;" name="frame">

    </iframe>
  </section>

  <script src="script.js"></script>

</body>
</html>
