<?php
    ob_start();

    include 'global.php';
    include 'model/theloai.php';
    include 'model/sanpham.php';
    include 'model/tacgia.php';
    include 'model/nhaxuatban.php';

    $act = 'index';
    /*  Show dữ liệu Products  */
    $dssp = show_sp(0);
    $dstg = show_dstg();
    $dstl = show_dstl(1);
    $dstlc = show_dstl_con(0);
    $dsnxb = show_dsnxb();

    if(isset($_GET['act']) && $_GET['act'])
    {
        $act = $_GET['act'];
        switch($act)
        {
            case 'insert':
                /*  Insert Product  */
                if(isset($_POST['insert_product']) && $_POST['insert_product'])
                {
                    $check_null = true;
                    if(!empty($_POST['product_name']))
                        $name = $_POST['product_name'];
                    else $check_null = false;
                    $price = $_POST['product_price'];
                    $author = $_POST['product_author'];
                    $cat_parent = $_POST['product_cat_parent'];
                    $catalog = $_POST['product_catalog'];
                    $publisher = $_POST['product_publisher'];
                    
                    $image = $_FILES['product_image']['name'];
                    $target_file = $books_imagepath.$cat_parent.'/'.basename($image);
                    // $filename   = uniqid() . "-" . time(); // 5dab1961e93a7-1571494241
                    // $extension  = pathinfo( $_FILES["file"]["name"], PATHINFO_EXTENSION ); // jpg
                    // $basename   = $filename . "." . $extension; // 5dab1961e93a7_1571494241.jpg
                    if(move_uploaded_file($_FILES["product_image"]["tmp_name"], $target_file))
                    {
                        // Upload thành công
                    }
                    else
                        // Lỗi khi upload
                        $check_null = false;
                    $description = $_POST['product_description'];
                    if($check_null == true)
                        them_sp($name, $price, $author, $catalog, $publisher, $image, $description);
                    else
                        echo
                            '<script>alert("Lỗi: vui lòng kiểm tra lại dữ liệu nhập vào!");</script>';
                }
                header('location: admin.php?page=product');
                break;
            
            case 'edit':
                /*  Edit Catalog  */
                if(isset($_POST['edit_product']) && $_POST['edit_product'])
                {
                    $id = $_POST['edit_pro_id'];
                    $check_null = true;
                    if(!empty($_POST['edit_pro_name']))
                        $name = $_POST['edit_pro_name'];
                    else $check_null = false;
                    $price = $_POST['edit_pro_price'];
                    $author = $_POST['edit_pro_author'];
                    $cat_parent = $_POST['edit_pro_cat_parent'];
                    $catalog = $_POST['edit_pro_catalog'];
                    $publisher = $_POST['edit_pro_publisher'];
                    if($_FILES['edit_pro_image']['name'] != '')
                    {
                        // Kiểm tra hình ảnh: nếu != rỗng -> hình ảnh mới
                        $image = $_FILES['edit_pro_image']['name'];
                        $target_file = $books_imagepath.$cat_parent.'/'.basename($image);
                        if(move_uploaded_file($_FILES["edit_pro_image"]["tmp_name"], $target_file))
                        {
                            // Upload thành công
                        }
                        else
                        {
                            // Lỗi khi upload
                            $check_null = false;
                        }
                    }
                    else
                    {
                        // Giữ nguyên hình ảnh
                        $image = '';
                    }
                    $description = $_POST['edit_pro_description'];
                    if($check_null == true)
                        capnhat_sp($id, $name, $price, $author, $catalog, $publisher, $image, $description);
                    else
                        echo
                            '<script>alert("Lỗi: vui lòng kiểm tra lại dữ liệu nhập vào!");</script>';
                }
                header('location: admin.php?page=product');
                break;

            case 'del':
                /*  Delete Product  */
                if(isset($_GET['id']) && $_GET['id'] > 0)
                {
                    xoa_sp($_GET['id']);
                }
                header('location: admin.php?page=product');
                break;

            default:
                header('location: admin.php?page=product');
                break;
        }
    }
    else
        include_once 'view/admin/product/'.$act.'.php';

    ob_flush();
?>