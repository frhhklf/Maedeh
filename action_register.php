<?php
include ("include/header.php");

$link = mysqli_connect("localhost", "root", "", "sanat");

if (mysqli_connect_errno())
    exit("خطاي با شرح زير رخ داده است :" . mysqli_connect_error());


if (isset($_POST['realname'])  && !empty($_POST['realname']) && 
	isset($_POST['username']) && !empty($_POST['username']) && 
	isset($_POST['password']) && !empty($_POST['password']) &&
    isset($_POST['repassword']) && !empty($_POST['repassword']) &&
	isset($_POST['email']) && !empty($_POST['email'])) {

    $realname = $_POST['realname'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $repassword = $_POST['repassword'];
    $email = $_POST['email'];
} else
    exit("برخی از فیلد ها مقدار دهی نشده است");


if ($password != $repassword)
    exit("كلمه عبور و تكرار آن مشابه نيست");

if (filter_var($email, FILTER_VALIDATE_EMAIL) === false)
    exit("پست اكترونيك وارد شده صحيح نیست");

    $select= "SELECT * FROM register WHERE email='$email'";
    $result = $link->query($select);

    if($result-> num_rows > 0){
        exit ("شما قبلا وارد شدید.");
    }

    $query = "INSERT INTO register (realname,username,password,repassword,email) VALUES ('$realname','$username','$password','$repassword','$email')";

if (mysqli_query($link, $query) === true)

    echo ("<p style='color:green;'><b>" . $realname .
        " گرامي عضويت شما با نام كاربري " . $username .
        " در فروشگاه با موفقيت انجام شد " . "</b></p>");
else
    echo ("<p style='color:red;'><b>عضويت شما در فروشگاه انجام نشد</b></p>");

mysqli_close($link);

include ("include/footer.php");
?>
