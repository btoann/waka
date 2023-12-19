<?php

    include '../../../global.php';
    include '../../../model/theloai.php';
    include '../../../model/sanpham.php';
    include '../../../model/tacgia.php';
    include '../../../model/nhaxuatban.php';

    $output = '';
    $dstg = show_dstg();
    $dstl = show_dstl(1);
    $dstlc = show_dstl_con(0);
    $dsnxb = show_dsnxb();

    if(isset($_POST['id']) && $_POST['id'] > 0)
    {
        $tt_sp = show_sp($_POST['id']);
        if(is_array($tt_sp))
        {
            $image = $books_imagepath.$tt_sp['id_cat_parent'].'/'.$tt_sp['image'];
            // Kiểm tra hình ảnh
            // if(is_file($image))
            // {
             $image = '<img src="'.$image.'" alt="'.$image.'">';
            // }
            // else
            // {
            //     $image = '<p><br><br><p>IMAGE URL</p><p>NOT FOUND!</p></p>';
            // }

            $output =
                '<form action="admin.php?page=product&act=edit&id='.$tt_sp['id'].'" method="post" enctype="multipart/form-data" class="product_detail">
                    <p class="form_header">
                        <i class="far fa-edit" aria-hidden="true"></i>
                        Chỉnh sửa thông tin sản phẩm
                    </p>
                    <span class="close_form" id="break_form"><i class="fas fa-minus"></i></span>
                    <input type="hidden" name="edit_pro_id" value="'.$tt_sp['id'].'">
                    <br>
                    <label for="edit_pro_name">Tên sản phẩm (*): </label>
                    <input type="text" name="edit_pro_name" id="edit_pro_name" placeholder="Tên sách" value="'.$tt_sp['name'].'" required>
                    <label for="edit_pro_price">Giá (VNĐ): </label>
                    <input type="number" name="edit_pro_price" id="" min="0" value="'.$tt_sp['price'].'">
                    <br>
                    <label for="edit_pro_author">Tác giả:</label>
                    <select name="edit_pro_author">';

            foreach($dstg as $tg)
            {
                $selected = ($tg['id'] == $tt_sp['id_author']) ? 'selected' : '';
                $output .= '<option value="'.$tg['id'].'" '.$selected.'>'.$tg['name'].'</option>';
            }

            $output .=
                '</select>
                <label for="edit_pro_cat_parent">Thể loại (**):</label>
                <select name="edit_pro_cat_parent" id="edit_pro_cat_parent">';

            foreach($dstl as $tl)
            {
                $selected = ($tl['id'] == $tt_sp['id_cat_parent']) ? 'selected' : '';
                $output .= '<option value="'.$tl['id'].'" '.$selected.'>'.$tl['name'].'</option>';
            }
            
            $output .=
                '</select>
                <label for="edit_pro_catalog">- (*) </label>
                <select name="edit_pro_catalog" id="edit_pro_catalog" style="pointer-events: none; opacity: 0.25;">';

            foreach($dstlc as $tlc)
            {
                $hide_option = 'style="display: none"';
                if($tlc['id_parent'] == $tt_sp['id_cat_parent'])
                {
                    $selected = ($tlc['id'] == $tt_sp['id_catalog']) ? 'selected' : '';
                    $output .= '<option value="'.$tlc['id'].'" data-catparent="'.$tlc['id_parent'].'" '.$selected.'>'.$tlc['name'].'</option>';
                }
                else
                    $output .= '<option value="'.$tlc['id'].'" data-catparent="'.$tlc['id_parent'].'" '.$hide_option.'>'.$tlc['name'].'</option>';
            }

            $output .=
                    '<script>
                        $(document).ready( () => {
                            $("#edit_pro_catalog").removeAttr("style");
                            $("#edit_pro_cat_parent").click( () => {
                                var option = $("#edit_pro_catalog").children("option");
                                for(let i = 0; i < option.length; i++)
                                {
                                    var this_option = $("#edit_pro_catalog").children("option:nth-child(" + i + ")");
                                    if(this_option.attr("data-catparent") == $("#edit_pro_cat_parent").val())
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
                <label for="edit_pro_publisher">Nhà xuất bản:</label>
                <select name="edit_pro_publisher">';

            foreach($dsnxb as $nxb)
            {
                $selected = ($nxb['id'] == $tt_sp['id_publisher']) ? 'selected' : '';
                $output .= '<option value="'.$nxb['id'].'" '.$selected.'>'.$nxb['name'].'</option>';
            }
            
            $output .=
                '</select>
                <label for="edit_pro_image">Hình ảnh (*)(**):</label>
                <input type="file" name="edit_pro_image" id="edit_pro_image" value="'.$tt_sp['image'].'">
                <div class="image_box">
                    '.$image.'
                </div>
                <br>
                <label for="edit_pro_description">Mô tả: </label>
                <br>
                <textarea name="edit_pro_description" id="" cols="100" rows="10" placeholder="Không bắt buộc">
                    '.$tt_sp['description'].'
                </textarea>
                <br>
                <span>
                    (*) - <strong>Bắt buộc</strong>
                    <br>
                    (**): Thay đổi <strong>Thể loại</strong> đồng nghĩa với thay đổi đường dẫn hình ảnh hiện tại, <br>
                    &emsp;&emsp; xin hãy cập nhật lại hình ảnh sau khi đã thay đổi <strong>Thể loại</strong></span>
                <input type="submit" name="edit_product" value="Cập nhật" class="green_button">
                <script defer>
                    $(document).ready( () => {
                        $("#edit_product").show();
                        $("#break_form").click( () => {
                            $("#edit_product").removeAttr("style");
                            $("#edit_product").children().remove();
                        });
                    });
                </script>
            </form>';

        }
    }

    echo $output;

?>