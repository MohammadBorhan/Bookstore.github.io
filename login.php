<html>
<link rel="stylesheet" href="S.css">
<body>
<header>
<blockquote>
    <a href="main.php"><img src="image/bookstorelogo.png"></a>
</blockquote>
</header>
<blockquote>
<div class="container">
<center><h1>Login</h1></center>
<form action="checklogin.php" method="post">
    Username:<br><input type="text" name="username"/>
    <br><br>
    Password:<br><input type="password" name="pwd" />
    <br><br>
    <input class="button" type="submit" value="Login"/>
    <input class="button" type="button" name="cancel" value="Cancel" onClick="window.location='main.php';" />
</form>
<form action="register.php" method="post">
   <p>new here? </p>
    <input class="button" type="submit" value="register"/>
    
</form>
</div>
<blockquote>
<?php
if(isset($_GET['errcode'])){
    if($_GET['errcode']==1){
        echo '<span style="color: red;">Invalid username or password.</span>';
    }elseif($_GET['errcode']==2){
        echo '<span style="color: red;">Please login.</span>';
    }
}

?>
</body>
</html>