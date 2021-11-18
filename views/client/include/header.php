<?php
    //session_start();
?>
<link rel="stylesheet" href="../../../assets/css/shared/header.css">

<header class="header">

    <div class="container-fluid">

        <nav class="navbar navbar-expand-md navbar-light">
            <a class="navbar-brand" href="../home_page/index.php"><img src="../../../assets/images/book/main.png"
                    alt="" class="logo"></a>

            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="cart">

                <ul class="header_sidebar_right">
                    <li class="shop_search" style="margin-right: 100px">
                        <div class="form-group has-search">
                            <span class="fa fa-search form-control-feedback"></span>
                            <form action="../product_page/index.php"><input type="text" name="keyword" class="form-control" placeholder="Search"></form>
                        </div>
                    <!-- <a href="#"><i class="fas fa-search"></i></a> -->
                    </li>
                    <!-- <li class="shop_heart">
                        <a href="#"><i class="far fa-heart"></i></a>
                    </li> -->
                    <li class="shop_cart">
                        <a href="../cart/index.php" class="btn btn-danger" style="margin-left: 10px"><i class="fas fa-cart-plus"></i></a>
                    </li>
                    <?php 
                        // print "<script>alert('ac')</script>";
                      
                        if (!empty($_SESSION['email'])) {
                            print "<li class='shop_cart'>
                                        <a href='../account_page/index.php' class=\"btn btn-danger\"><i class='fa fa-user'></i></a>
                                    </li>";
                        }
                        else {
                            print "<li class='shop_cart'>
                                        <a href='../authenticate/login.php' class=\"btn btn-danger\"><i class='fa fa-sign-in'></i></a>
                                    </li>";
                        }
                    ?>
                    
                </ul>
            </div>



            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="../home_page/index.php">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../product_page/index.php">Product</a>
                    </li>           

                    <li class="nav-item">
                        <a class="nav-link" href="../about_page/index.php">About</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href=../contact_page/index.php>Contact</a>
                    </li>

                </ul>
            </div>

        </nav>

    </div>

</header>