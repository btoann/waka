<?php
    ob_start();

    include 'global.php';
    include 'model/theloai.php';

    $act = 'index';
    /*  Show dữ liệu Catalogs  */
    $dstl = show_dstl(0);
    $dstlc = show_dstl_con(0);

    if(isset($_GET['act']) && $_GET['act'])
    {
        $act = $_GET['act'];
        switch($act)
        {
            case 'insert':
                /*  Insert Catalog  */
                if(isset($_POST['insert_catalog']) && $_POST['insert_catalog'])
                {
                    $check_null = true;
                    if(!empty($_POST['catalog_name']))
                        $name = $_POST['catalog_name'];
                    else $check_null = false;
                    $sort = $_POST['catalog_sort'];
                    if($check_null == true)
                        them_tl($name, $sort);
                }
                /*  Insert Catalog_children  */
                if(isset($_POST['insert_catchild']) && $_POST['insert_catchild'])
                {
                    $check_null = true;
                    if(!empty($_POST['catchild_name']) && $_POST['catchild_idparent'] > 0)
                    {
                        $name = $_POST['catchild_name'];
                        $id_parent = $_POST['catchild_idparent'];
                    }
                    else $check_null = false;
                    $sort = $_POST['catchild_sort'];
                    if($check_null == true)
                        them_tlc($name, $id_parent, $sort);
                }
                header('location: admin.php?page=catalog');
                break;
            
            case 'edit':
                /*  Edit Catalog  */
                if(isset($_POST['edit_catalog']) && $_POST['edit_catalog'])
                {
                    $id = $_POST['edit_cat_id'];
                    $check_null = true;
                    if(!empty($_POST['edit_cat_name']))
                        $name = $_POST['edit_cat_name'];
                    else $check_null = false;
                    $sort = $_POST['edit_cat_sort'];
                    if($check_null == true)
                        capnhat_tl($id, $name, $sort);
                    else
                        echo
                            '<script>alert("Lỗi: vui lòng kiểm tra lại dữ liệu nhập vào!");</script>';
                }
                /*  Edit Catalog_children  */
                if(isset($_POST['edit_catchild']) && $_POST['edit_catchild'])
                {
                    $id = $_POST['edit_catchild_id'];
                    $check_null = true;
                    if(!empty($_POST['edit_catchild_name']))
                        $name = $_POST['edit_catchild_name'];
                    else $check_null = false;
                    $id_parent = $_POST['edit_catchild_idparent'];
                    $sort = $_POST['edit_catchild_sort'];
                    if($check_null == true)
                        capnhat_tlc($id, $name, $id_parent, $sort);
                    else
                        echo
                            '<script>alert("Lỗi: vui lòng kiểm tra lại dữ liệu nhập vào!");</script>';
                }
                header('location: admin.php?page=catalog');
                break;

            case 'del':
                /*  Delete Catalog  */
                if(isset($_GET['id']) && $_GET['id'] > 0)
                {
                    if(count_tl_con($_GET['id'])['amount'] == 0 && count_sp_from_tl($_GET['id'])['amount'] == 0)
                        xoa_tl($_GET['id']);
                    else
                        echo
                            '<script>alert("Lỗi: Bạn không thể xoá thể loại này\n\tThể loại hiện đang chứa chi nhánh hoặc sản phẩm!");</script>';
                }
                /*  Delete Catalog_children  */
                if(isset($_GET['idchild']) && $_GET['idchild'] > 0)
                {
                    if(count_sp_from_tlc($_GET['idchild'])['amount'] == 0)
                        xoa_tlc($_GET['idchild']);
                    else
                        echo
                            '<script>alert("Lỗi: Bạn không thể xoá thể loại này\n\tThể loại hiện đang chứa sản phẩm!");</script>';
                }
                header('location: admin.php?page=catalog');
                break;

            default:
                header('location: admin.php?page=catalog');
                break;
        }
    }
    else
        include_once 'view/admin/catalog/'.$act.'.php';

    ob_flush();
?>