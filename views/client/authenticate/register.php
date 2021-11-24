<?php

require '../../../data/config.php';


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $error = '';
    $successful_mesg = '';
    $email = $_POST['email'];
    $password = $_POST['password'];
    $birthdate = $_POST['birthdate'];
    $customer_name = $_POST['customer_name'];
    $phone = $_POST['phone'];
    $registered_at = date('Y-m-d');
    if (empty($_POST['email']) || empty($_POST['password']) || empty($_POST['re_password'])) {
        $error = 'Email and password cannot be empty.';
    } else if (preg_match("/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,3})$/", $email) == false) {
        $error = 'Email is not valid.';
    } else if ($_POST['password'] !=  $_POST['re_password']) {
        $error = 'You must type correct re-type password';
    } else {
        $query = "insert into customer(name, email, phone, birthdate, registered_at, password) values (?,?,?,?,?,?)";

        $stmt = mysqli_prepare($mysql_db, $query);

        // bind parameter
        mysqli_stmt_bind_param($stmt, 'ssssss', $customer_name, $email, $phone, $birthdate, $registered_at, $password);
        $password = password_hash($password, PASSWORD_DEFAULT);
        //execute query
        if (mysqli_stmt_execute($stmt) == false) {
            $error = 'You cannot use this email.';
        } else {
            $hash = md5(rand(0, 1000));
            $query = "insert into verification_account(email, hash) values(?,?)";
            $stmt = mysqli_prepare($mysql_db, $query);
            mysqli_stmt_bind_param($stmt, 'ss', $email, $hash);
            mysqli_stmt_execute($stmt);                   
            mysqli_close($mysql_db);
            $successful_mesg = 'Register successfully.';
        }
    }
}
function site_url($url)
{
    return 'http' . ((isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] == 'on') ? 's' : '') . '://' . $_SERVER['HTTP_HOST'] . str_replace('//', '/', dirname($_SERVER['SCRIPT_NAME']) . '/') . $url;
}
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <?php
    include('../include/stylesheet.php'); ?>
    <link rel="stylesheet" href="../../../assets/css/authenticate/register.css">
    <title>Register</title>
</head>

<body>
    <div class="container row">
        <div class="col-10 col-md-6 col-lg-7">
            <div class="logo">
                <h1>Create Account</h1>
            </div>
            <div class="form-login">
                <form action="register.php" method="post">
                    <div class="form-group">
                        <label for="email">Email Address</label>
                        <input id="email" class="form-control" type="text" name="email"
                            value="<?php print !empty($error) ? $_POST['email'] :  '' ?>">
                        <p class="notice-mesg">You'll use your email address to log in.</p>
                    </div>
                    <div class="form-group">
                        <label for="customer_name">Your Name</label>
                        <input id="customer_name" class="form-control" type="text" name="customer_name"
                            value="<?php print !empty($error) ? $_POST['customer_name'] :  '' ?>">
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input id="password" class="form-control" type="password" name="password" value="">
                    </div>
                    <div class="form-group">
                        <label for="re-password">Re-type Password</label>
                        <input id="re-password" class="form-control" type="password" name="re_password" value="">
                    </div>
                    <div class="form-group">
                        <label for="birthdate">Birthdate</label>
                        <input id="birthdate" class="form-control" type="date" name="birthdate"
                            value="<?php print !empty($error) ? $_POST['birthdate'] :  '' ?>">
                    </div>
                    <div class="form-group">
                        <label for="phone">Phone</label>
                        <input id="phone" class="form-control" type="text" name="phone"
                            value="<?php print !empty($error) ? $_POST['phone'] :  '' ?>">
                    </div>
                    <?php
                    if (!empty($error)) {
                        print "<p class='error_msg'>$error</p>";
                    } elseif (!empty($successful_mesg)) {
                        print "<script>
                            alert('$successful_mesg')
                            window.location.href = '../home_page/index.php'
                        </script>";
                    }
                    ?>
                    <hr>
                    <div class="action-btn">
                        <button type="submit" class="btn btn-primary btn-submit btn-block">Submit</button>
                        <a href="../home_page/" class="btn btn-outline-secondary btn-block mr-t">Cancel</a>
                    </div>
                </form>
            </div>
        </div>

    </div>

</body>

</html>