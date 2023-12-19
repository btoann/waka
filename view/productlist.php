<?php

    include "../global.php";
    include "../model/sanpham.php";


    if(isset($_POST['page']))
    {
        if($_POST['page'] > 0)
            $dssp = show_dssp(0, $_POST['page']);
        if($_POST['page'] == 0)
        {
            if(isset($_POST['idcatparent']) && $_POST['idcatparent'] > 0)
            {
                $dssp = show_dssp($_POST['idcatparent'], 0);
            }
        }
        if(count($dssp) > 0)
        {
            foreach($dssp as $sp)
            {
                $id = $sp['id'];
                $name = $sp['name'];
                $image = $books_imagepath.$sp['id_cat_parent'].'/'.$sp['image'];
                $author = $sp['author'];
                $votes = $sp['votes'];
                $views = $sp['views'];
                $description = $sp['description'];
                $link = 'index.php?page=product&act=detail&id='.$id;
                // Kiểm tra hình ảnh
                /*  if(is_file($image))
                {   */
                    $image = '<img src="'.$image.'" alt="'.$image.'">';
                /*  }
                else
                {
                    $image = '<p><br><br><p>IMAGE URL</p><p>NOT FOUND!</p></p>';
                }   */
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
        }
        else
        {
            echo '<p>Không tìm thấy dữ liệu</p>';
        }
    }
?>