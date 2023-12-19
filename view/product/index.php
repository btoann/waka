<link rel="stylesheet" href="view/css/product.css">
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
                    <!-- Tên thể loại hiện tại -->
                    <?php
                        for ($i = 0; $i < count($dstl); $i++)
                        {
                            if ($idcatalog == $dstl[$i]['id'])
                            {
                                echo $dstl[$i]['name'];
                                break;
                            }
                        }
                    ?>
                </p>
                <ul id="catchild_list">
                    <!-- Danh sách các thể loại con -->
                    <?php
                        echo '<li data-catalog="'.$idcatalog.'" data-catchild="0" class="pl_active"><a href="#">Tất cả</a></li>';
                        foreach($dstl_con as $tlc)
                        {
                            $idcatchild = $tlc['id'];
                            $name = $tlc['name'];
                            echo '<li data-catchild="'.$idcatchild.'"><a href="#">'.$name.'</a></li>';
                        }
                    ?>
                </ul>
            </div>
            <script src="view/js/productlist.js" defer></script>
            <div class="mainbox_content" id="product_list">
                <!-- Danh sách sản phẩm có trong thể loại - thể loại con -->
                <?php
                    foreach($dssp as $sp)
                    {
                        $id = $sp['id'];
                        $name = $sp['name'];
                        $image = $books_imagepath.$idcatalog.'/'.$sp['image'];
                        $author = $sp['author'];
                        $votes = $sp['votes'];
                        $views = $sp['views'];
                        $description = $sp['description'];
                        $link = 'index.php?page=product&act=detail&id='.$id;
                        // Kiểm tra hình ảnh
                        if(is_file($image))
                        {
                            $image = '<img src="'.$image.'" alt="'.$image.'">';
                        }
                        else
                        {
                            $image = '<p><br><br><p>IMAGE URL</p><p>NOT FOUND!</p></p>';
                        }
                        echo
                            '<div class="product_item">
                                <div class="book_item box_shadow_1">
                                    <a href="'.$link.'" class="item_img">
                                        '.$image.'
                                    </a>
                                    <div class="item_info">
                                        <a href="'.$link.'" class="item_name">
                                            <p>'.$name.'</p>
                                        </a>
                                        <a href="" class="item_author">
                                            <p>'.$author.'</p>
                                        </a>
                                        <div class="item_vote">
                                            <span>
                                                <i class="votes_heart full_heart"></i>
                                                <i class="votes_heart full_heart"></i>
                                                <i class="votes_heart full_heart"></i>
                                                <i class="votes_heart full_heart"></i>
                                                <i class="votes_heart full_heart"></i>
                                            </span>
                                            <p>'.$votes.' votes</p>
                                        </div>
                                        <div class="item_description">
                                            <p>'.$description.'</p>
                                        </div>
                                    </div>
                                    <div class="item_view">
                                        <p>'.$views.' lượt xem</p>
                                    </div>
                                    <a href="index.php?page=productdetail&id='.$id.'" class="item_link">Chi tiết</a>
                                </div>
                            </div>';
                    }
                ?>
            </div>
        </div>
    </section>
</div>