<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/style.css" media="screen" />
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" media="screen" />
    <script src="https://code.jquery.com/jquery-1.12.4.js" integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU=" crossorigin="anonymous"></script>
    <script src="js/xuly.js"></script>
    <title>PC Comunnity</title>
</head>
<body>
    <div class="wrapper">
      <?php 
            session_start();
            //session_destroy();
            include("admin/config/conn.php");
            include("page/header.php");
            include("page/menu.php"); 
            include("page/main.php");
            include("page/footer.php");
      ?>
    </div>
</body>
</html>