<?php

    include 'global.php';
    include 'model/theloai.php';
    include 'model/sanpham.php';

    // Load data cho trang chủ
    $dstl = show_dstl(1);

    if(isset($_GET['act']) && $_GET['act'])
    {
        $act = $_GET['act'];
        switch($act)
        {
            case 'catalog':
                // Lấy dữ liệu
                $idcatalog = 0;
                if(isset($_GET['id']) && $_GET['id'] > 0)
                {
                    $idcatalog = $_GET['id'];
                }
                $dstl_con = show_dstl_con($idcatalog);
                $dssp = show_dssp($idcatalog, 0);

                // Kiểm tra dữ liệu có hoặc không
                $tl = show_tl($idcatalog);
                if(!is_array($tl))
                    include 'view/notfound.html';
                else
                    include 'view/product/index.php';
                break;

            case 'detail':
                $product_detail = 0;
                if(isset($_GET['id']) && $_GET['id'] > 0)
                {
                    $product_detail = show_sp($_GET['id']);
                }
                // Kiểm tra dữ liệu có hoặc không
                if(!is_array($product_detail))
                    include 'view/notfound.html';
                else
                    include 'view/product/detail.php';
                break;
                break;

            default:
                break;
        }
    }

?>