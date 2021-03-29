<!doctype html>
<?php
session_start();
?>
<html>
    <head>
        <title>Vente de cheveux 100% naturels</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" rel="stylesheet" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="admin/lib/css/custom.css"/>
        <link rel="stylesheet" type="text/css" href="admin/lib/css/style.css"/>
    </head>
    <body>
    <header>
        <div class="container">

            <?php
            if (file_exists('admin/lib/php/header.php')) {
                include ('admin/lib/php/header.php');
            }
            ?>
        </div>
        <div class="container">
            <?php
            if (file_exists('./lib/php/public_menu.php')) {
                include ('./lib/php/public_menu.php');
            }
            ?>
        </div>

    </header>
    <section>

        <div class="container" id="main">
            <?php
            if (!isset($_SESSION['page'])) {
                $_SESSION['page'] = "accueil.php";
            }
            if (isset($_GET['page'])) {
                $_SESSION['page'] = $_GET['page'];
            }
            $path = "./pages/" . $_SESSION['page'];
            if (file_exists($path)) {
                include ($path);
            } else {
                include ('./admin/pages/page404.php');
            }
            ?>
        </div>

    </section>
    <footer>
        <div class="container text-center" id="footer">
            <?php
            if (file_exists('./lib/php/public_footer.php')) {
                include ('./lib/php/public_footer.php');
            } else {
                print "<br>Cheveux 100% naturels";
            }
            ?>
        </div>
    </footer>

    </body>
</html>

    </head>
</html>
