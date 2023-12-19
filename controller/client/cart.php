<?php
    ob_start();
    include 'global.php';
    include 'model/theloai.php';
    include 'model/giohang.php';
    include 'model/taikhoan.php';

    if(isset($_GET['act']) && $_GET['act'])
    {
        $act = $_GET['act'];
        switch($act)
        {
            case 'addtocart':
                if(isset($_GET['id']) && $_GET['id'])
                {
                    addtocart($_GET['id']);
                }
                header('location: index.php?page=cart');
            break;

            case 'checkout':
                $fname=$_POST['fullName'];
                $add=$_POST['address'];
                $email=$_POST['email'];
                $phone=$_POST['phone'];
                $ngay=date('Y-m-d H:i:s');//ngay thang nam, gio,.. hien tai
                $madh=addToOrder($fname,$add,$email,$phone,$ngay);
                //luu chi tiet don hang
                addToOrderDetail($madh);
                unset($_SESSION['carts']);
                
                header('location: index.php?page=cart');
              
            break;
    

        }
    }
    else
        include_once 'view/cart/index.php';

    ob_end_flush();
?>