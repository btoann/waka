<?php

    session_start();
    include 'global.php';
    include 'model/theloai.php';
    
    // Load data cho trang chủ
    $dstl = show_dstl(1);

    if(isset($_GET['page']) && $_GET['page'] == 'home')
        include 'view/client/home/index.php';
    else
        include 'view/client/home/index.php';
        
?>