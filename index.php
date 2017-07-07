<?php
include 'library.php';
$usrname= '';
if(isset($_SESSION['sessionVar'])) {
 $usrname=$_SESSION['sessionVar'];

}

$sql="SELECT name FROM photoApp_user WHERE username = '$usrname'";
$result=mysqli_query($connection, $sql);

$mainname='';
while($row= mysqli_fetch_array( $result ))
{
    $mainname= $row['name'];
}
if($mainname != ""){
    header("location:home.php");
}
?>
<!DOCTYPE html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Login Form</title>
  <link rel="stylesheet" href="css/style.css">
  <!--[if lt IE 9]><script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script><![endif]-->
</head>
<body id="backgroundTest">
  <table height="40px"></table>
  <section class="container">

    <div class="login">
      <h1>Log in to the network</h1>
      <form method="post" action="checklogin.php">
      <?php echo '<input type="hidden" name="csrf" value="'. $csrf->getToken() .'" />'; ?>
        <p><input type="text" name="myusername" value="" placeholder="Username"></p>
        <p><input type="password" name="mypassword" value="" placeholder="Password"></p>
        <p class="submit"><input type="submit" name="commit" value="Login"></p>
        <input type="hidden" name="redirect" value="home.php">
      </form>
    </div>

    <div class="login-help">
      <span style="font-size: small; ">To Register as a new user <a href="register.php">click here.</a></span>
    </div>
  </section>
</body>
</html>
