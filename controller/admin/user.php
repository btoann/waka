<?php
    ob_start();

    include 'global.php';
    include 'model/taikhoan.php';

    $act = 'index';

    if(isset($_GET['act']) && $_GET['act'])
    {
        $act = $_GET['act'];
        switch($act)
        {
            case 'logout':
                // Đăng xuất
                unset($_SESSION['s_id']);
                unset($_SESSION['s_user']);
                unset($_SESSION['s_name']);
                unset($_SESSION['s_email']);
                header('location: index.php');
                break;

            default:
                header('location: admin.php');
                break;
        }
    }
    else
        include_once 'view/admin/catalog/'.$act.'.php';

    ob_flush();
?>