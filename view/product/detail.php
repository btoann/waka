<?php
    $id_pro = $product_detail['id'];
    $name_pro = $product_detail['name'];
    $id_aut_pro = $product_detail['id_author'];
    $aut_pro = $product_detail['name_author'];
    $id_pro_cat_parent = $product_detail['id_cat_parent'];
    $pro_cat_parent = $product_detail['name_cat_parent'];
    $id_pro_cat = $product_detail['id_catalog'];
    $pro_cat = $product_detail['name_catalog'];
    $id_pub_pro = $product_detail['id_publisher'];
    $pub_pro = $product_detail['name_publisher'];
    $date_pro = $product_detail['date'];
    $votes_pro = $product_detail['votes'];
    $views_pro = $product_detail['views'];
    $description_pro = $product_detail['description'];
    $price_pro = $product_detail['price'];
    $image_pro = $books_imagepath.$id_pro_cat_parent.'/'.$product_detail['image'];
    $link_pro = 'index.php?page=productdetail&id='.$id_pro;
    // Kiểm tra hình ảnh
    if(is_file($image_pro))
    {
        $image_pro = '<img src="'.$image_pro.'" alt="'.$product_detail['image'].'" class="box_shadow_2">';
    }
    else
    {
        $image_pro = '<p><br><br><p>IMAGE URL</p><p>NOT FOUND!</p></p>';
    }
?>

<link rel="stylesheet" href="view/css/product.css">
<link rel="stylesheet" href="view/css/productdetail.css">
<div class="box_center pd_top_100">
    <span class="catalog_col" id="catalog_col">
        <p class="catalog_header">Danh mục<span></span></p>
        <ul class="catalog_content box_shadow_1">
            <!-- Danh sách thể loại -->
            <?php
                foreach($dstl as $tl)
                {
                    $id = $tl['id'];
                    $name = $tl['name'];
                    $count = count_sp_from_tl($id)['amount'];
                    $link = 'index.php?page=product&act=catalog&id='.$id;
                    echo '<li><a href="'.$link.'">'.$name.'<span>'.$count.'</span></a></li>';
                }
            ?>
            <li><a href="#">Tuyển tập chọn lọc<span>#</span></a></li>
            <li><a href="#">Tủ sách liên kết<span>#</span></a></li>
            <li><a href="#">Nhà xuất bản<span>#</span></a></li>
            <li><a href="#">Tác giả<span>#</span></a></li>
            <li><a href="#">Tin tức Waka<span></span></a></li>
        </ul>
    </span>
    <script src="view/js/catalog_list.js" defer></script>

    <section class="row mg_top_20">
        <div class="mainbox">
            <div class="mainbox_header">
                <p>
                    <?php
                        for ($i = 0; $i < count($dstl); $i++)
                        {
                            if($id_pro_cat_parent == $dstl[$i]['id'])
                            {
                                echo $dstl[$i]['name'];
                                break;
                            }
                        }
                    ?>
                </p>
                <ul>
                    <?php
                        $dstl_con = show_dstl_con($id_pro_cat_parent);
                        echo '<li class="pl_active"><a href="#">Tất cả</a></li>';
                        foreach($dstl_con as $tlc)
                        {
                            $idcatchild = $tlc['id'];
                            $name = $tlc['name'];
                            echo '<li><a data-catchild="'.$idcatchild.'" href="#">'.$name.'</a></li>';
                        }
                    ?>
                </ul>
            </div>
            <script src="view/js/productlist.js" defer></script>
            <div class="product_detail">
                <div class="pd_col_left">
                    <div class="product_left_view">
                        <?= $image_pro ?>
                        <div class="vote_product">
                            <a href="#" class="do_rate_icon"></a>
                            <a href="#" class="do_rate_text">Đánh giá sách</a>
                            <p class="product_votes">(<?= $votes_pro ?> votes)</p>
                        </div>
                    </div>
                    <div class="product_right_view">
                        <h1 class="product_name"><?= $name_pro ?></h1>
                        <p class="product_aut">Tác giả: <a href="#"><?= $aut_pro ?></a></p>
                        <p class="product_catalog">
                            Thể loại: 
                            <a href="index.php?page=product&idcatalog=<?= $id_pro_cat_parent ?>"><?= $pro_cat_parent ?></a>, 
                            <a href="#"><?= $pro_cat ?></a>
                        </p>
                        <p class="product_pub">Nhà xuất bản: <a href="#"><?= $pub_pro ?></a></p>
                        <p class="product_type">Định dạng: Epub</p>
                        <p class="product_date">Ngày cập nhật: <?= $date_pro ?></p>
                        <p>Tìm đọc sách giấy</p>
                        <p>Gía niêm yết: </p>
                        <h2><?= $price_pro ?> đ</h2>
                        <div class="read_now">
                            <a href="#" class="green_button">Đọc sách</a>
                            <?php
                                $link_addtocart = '';
                                if(isset($_SESSION['s_id']) && $_SESSION['s_id'] > 0)
                                    $link_addtocart = 'index.php?page=cart&act=addtocart&id='.$id_pro;
                                else
                                    $link_addtocart = 'index.php?page=user';
                            ?>
                            <a href="<?= $link_addtocart ?>" class="add_to_card green_button">Thêm vào giỏ hàng</a>
                        </div>
                        <p class="product_description">
                            <?= $description_pro ?>
                        </p>
                        
                    </div>
                    <div class="comment_view">
                        <?php 
                            if(isset($_SESSION['s_id']) && $_SESSION['s_id'] > 0)
                                echo
                                    '<iframe src="comment.php?idpro='.$_GET['id'].'" frameborder="0">
                                    </iframe>';
                            else
                                echo 
                                    '<h2>Bình luận: </h2>
                                    <a href="index.php?page=user" target="_parent" class="press_to_login">Vui lòng <strong>đăng nhập</strong> để tiếp tục</a>';
                        ?>
                    </div>
                </div>
                <div class="pd_col_right">
                    <h1 class="related_pl_header"><?= $pro_cat ?></h1>
                    <div class="related_pl">
                    <?php
                        $ds_splq = get_rand_splq($id_pro_cat, $id_pro, 4);
                        $show_ds_splq = '';
                        foreach ($ds_splq as $key => $splq)
                        {
                            $id = $splq['id'];
                            $image = $books_imagepath.$id_pro_cat_parent.'/'.$splq['image'];
                            $votes = $splq['votes'];
                            $link = 'index.php?page=product&act=detail&id='.$id;
                            if(is_file($image))
                            {
                                $image = '<img src="'.$image.'" alt="'.$image.'" class="box_shadow_2">';
                            }
                            else
                            {
                                $image = '<p><br><br><p>IMAGE URL</p><p>NOT FOUND!</p></p>';
                            }
                            $show_ds_splq .=
                                '<a class="related_product" href="'.$link.'">
                                    '.$image.'
                                    <p>('.$votes.' votes)</p>
                                </a>';
                        }
                        echo $show_ds_splq;
                    ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>