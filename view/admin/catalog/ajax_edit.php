<?php

    include '../../../model/theloai.php';

    $output = '';

    if(isset($_POST['id_parent']) && $_POST['id_parent'] > 0)
    {
        $tt_tl = show_tl($_POST['id_parent']);
        if(is_array($tt_tl))
            $output =
                '<form action="admin.php?page=catalog&act=edit&id='.$tt_tl['id'].'" method="post" class="catalog_detail">
                    <p class="form_header">Chỉnh sửa thông tin thể loại</p>
                    <span class="close_form" id="break_form"><i class="fas fa-minus"></i></span>
                    <br>
                    <input type="hidden" name="edit_cat_id" value="'.$tt_tl['id'].'">
                    <label for="edit_cat_name">Tên thể loại (*): </label>
                    <input type="text" name="edit_cat_name" id="edit_cat_name" placeholder="Tên thể loại" value="'.$tt_tl['name'].'" required>
                    <label for="edit_cat_sort">Sắp xếp [9 -> 1]: </label>
                    <input type="number" name="edit_cat_sort" min="0" max="9" id="edit_cat_sort" value="'.$tt_tl['sort'].'">
                    <br>
                    <input type="submit" name="edit_catalog" value="Cập nhật" class="green_button">
                    <script defer>
                        $(document).ready( () => {
                            $("#edit_catalog").show();
                            $("#break_form").click( () => {
                                $("#edit_catalog").removeAttr("style");
                                $("#edit_catalog").children().remove();
                            });
                        });
                    </script>
                    <br>
                    <span>(*) - Bắt buộc</span>
                </form>';
    }

    if(isset($_POST['id_child']) && $_POST['id_child'] > 0)
    {
        $tt_tlc = show_tl_con($_POST['id_child']);
        if(is_array($tt_tlc))
        {
            $output =
                '<form action="admin.php?page=catalog&act=edit&idchild='.$tt_tlc['id'].'" method="post" class="catalog_detail">
                    <p class="form_header">Chỉnh sửa thông tin chi nhánh</p>
                    <span class="close_form" id="break_form_2"><i class="fas fa-minus"></i></span>
                    <br>
                    <input type="hidden" name="edit_catchild_id" value="'.$tt_tlc['id'].'">
                    <label for="edit_catchild_name">Tên chi nhánh (*): </label>
                    <input type="text" name="edit_catchild_name" id="edit_cat_name" placeholder="Tên chi nhánh" value="'.$tt_tlc['name'].'" required>
                    <label for="edit_catchild_idparent">Thể loại: </label>
                    <select name="edit_catchild_idparent" id="edit_catchild_idparent">';
            
            $dstl = show_dstl(0);
            foreach($dstl as $tl)
            {
                $selected = ($tl['id'] == $tt_tlc['id_parent']) ? 'selected' : '';
                $output .= '<option value="'.$tl['id'].'" '.$selected.'>'.$tl['name'].'</option>';
            }

            $output .=
                    '</select>
                    <br>
                    <label for="edit_catchild_sort">Sắp xếp [9 -> 1]: </label>
                    <input type="number" name="edit_catchild_sort" min="0" max="9" id="edit_cat_sort" value="'.$tt_tlc['sort'].'">
                    <br>
                    <input type="submit" name="edit_catchild" value="Cập nhật" class="green_button">
                    <script defer>
                        $(document).ready( () => {
                            $("#edit_catchild").show();
                            $("#break_form_2").click( () => {
                                $("#edit_catchild").removeAttr("style");
                                $("#edit_catchild").children().remove();
                            });
                        });
                    </script>
                    <br>
                    <span>(*) - Bắt buộc</span>
                </form>';
        }
    }

    echo $output;

?>