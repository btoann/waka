<?php

    include 'global.php';
    include 'model/theloai.php';

    $act = 'index';
    /*  Show dữ liệu Catalogs  */
    $dstl = show_dstl(1);

    if(isset($_GET['act']) && $_GET['act'] == 'home')
        include 'view/home/index.php';
    else
        include 'view/home/index.php';

?>