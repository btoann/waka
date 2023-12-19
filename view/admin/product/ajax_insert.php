<?php

    include '../../../model/theloai.php';
    include '../../../model/sanpham.php';
    include '../../../model/tacgia.php';
    include '../../../model/nhaxuatban.php';

    $output = '';
    $dstg = show_dstg();
    $dstl = show_dstl(1);
    $dstlc = show_dstl_con(0);
    $dsnxb = show_dsnxb();

    $output .=
        '<form action="admin.php?page=product&act=insert" method="post" enctype="multipart/form-data" class="product_detail">
            <p class="form_header">Nhập thông tin sản phẩm</p>
            <span class="close_form" id="close_form"><i class="fas fa-minus"></i></span>
            <br>
            <label for="product_name">Tên sản phẩm (*): </label>
            <input type="text" name="product_name" id="product_name" placeholder="Tên sách" required>
            <label for="product_price">Giá (VNĐ): </label>
            <input type="number" name="product_price" id="" min="0">
            <br>
            <label for="product_author">Tác giả:</label>
            <select name="product_author">';

    foreach($dstg as $tg)
    {
        $output .= '<option value="'.$tg['id'].'">'.$tg['name'].'</option>';
    }

    $output .=
        '</select>
        <label for="product_cat_parent">Thể loại:</label>
        <select name="product_cat_parent" id="product_cat_parent">';

    foreach($dstl as $tl)
    {
        $output .= '<option value="'.$tl['id'].'">'.$tl['name'].'</option>';
    }
                    
    $output .= 
        '</select>
        <label for="product_catalog">- (*) </label>
        <select name="product_catalog" id="product_catalog" style="pointer-events: none; opacity: 0.25;">';

    foreach($dstlc as $tlc)
    {
        $hide_option = 'style="display: none"';
        $output .= '<option value="'.$tlc['id'].'" data-catparent="'.$tlc['id_parent'].'" '.$hide_option.'>'.$tlc['name'].'</option>';
    }
    
    $output .=
            '<script>
                $(document).ready( () => {
                    $("#product_cat_parent").click( () => {
                        $("#product_catalog").removeAttr("style");
                        var option = $("#product_catalog").children("option");
                        for(let i = 0; i < option.length; i++)
                        {
                            var this_option = $("#product_catalog").children("option:nth-child(" + i + ")");
                            if(this_option.attr("data-catparent") == $("#product_cat_parent").val())
                            {
                                this_option.attr("selected", "selected");
                                this_option.removeAttr("style");
                            }
                            else
                            {
                                this_option.hide();
                                this_option.removeAttr("selected");
                            }
                        }
                    });
                });
            </script>
        </select>
        <br>
        <label for="product_publisher">Nhà xuất bản:</label>
        <select name="product_publisher">';

    foreach($dsnxb as $nxb)
    {
        $output .= '<option value="'.$nxb['id'].'">'.$nxb['name'].'</option>';
    }

    $output .=        
            '</select>
            <label for="product_image">Hình ảnh (*):</label>
            <input type="file" name="product_image" id="product_image">
            <br>
            <label for="product_description">Mô tả: </label>
            <br>
            <textarea name="product_description" id="" cols="95" rows="10" placeholder="Không bắt buộc"></textarea>
            <br>
            <span>(*) - Bắt buộc</span>
            <input type="submit" name="insert_product" value="Thêm sản phẩm" class="green_button">
            <script defer>
                $(document).ready( () => {
                    $("#insert_product").show();
                    $("#close_form").click( () => { 
                        $("#insert_product").removeAttr("style");
                        $("#insert_product").children().remove();
                    });
                });
            </script>
        </form>';

    echo $output;

?>