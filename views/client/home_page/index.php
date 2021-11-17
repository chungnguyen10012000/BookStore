<?php
    session_start();
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home page</title>

    <?php 
    include('../include/stylesheet.php'); ?>

</head>

<body>
    <?php include( "../include/header.php"); ?>
    <?php include( "./header.php"); ?>
    <?php include( '../include/script.php'); ?>
    <?php include( './subscribe.php'); ?>
    <?php include( './new_product.php'); ?>
    <?php include( './best_seller.php'); ?>
    <?php include( "../include/footer.php"); ?>
</body>

</html>