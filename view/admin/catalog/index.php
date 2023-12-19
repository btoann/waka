
<!-- Box Thể loại cha -->
<div class="box_list_2">

    <p class="box_title">
        <i class='fas fa-list-ul'></i>Danh sách thể loại
    </p>
    <span class="insert_button green_button" id="insert_button">
        <i class='fas fa-plus'></i>Thêm
    </span>

    <!-- Thêm thể loại -->
    <div class="noevents_background" id="insert_catalog">
        <form action="admin.php?page=catalog&act=insert" method="post" class="catalog_detail">
            <p class="form_header">Nhập thông tin thể loại</p>
            <span class="close_form" id="close_form"><i class='fas fa-minus'></i></span>
            <br>
            <label for="catalog_name">Tên thể loại (*): </label>
            <input type="text" name="catalog_name" id="catalog_name" placeholder="Tên thể loại" required>
            <label for="catalog_sort">Sắp xếp [9 -> 1]: </label>
            <input type="number" name="catalog_sort" min="0" max="9" id="edit_cat_sort" value="0">
            <br>
            <input type="submit" name="insert_catalog" value="Thêm" class="green_button">
            <br>
            <span>(*) - Bắt buộc</span>
        </form>
    </div>
    <script defer>
        $(document).ready( () => {
            $('#insert_button').click( () => {
                $('#insert_catalog').show();
            });
            $('#close_form').click( () => {
                $('#insert_catalog').removeAttr('style');
            });
        });
    </script>

    <!-- Show danh sách thể loại -->
    <table>
        <thead>
            <th width="10%">id</th>
            <th width="52.5%">Tên thể loại</th>
            <th width="10%" title="Số lượng thể loại con">Chi nhánh</th>
            <th width="12.5%" title="Số lượng sản phẩm">Sản phẩm</th>
            <th width="5%" title="Chỉ số sắp xếp: 9 -> 0">Sắp xếp</th>
            <th width="5%">Sửa</th>
            <th width="5%">Xoá</th>
        </thead>
        <tbody>
            <?php
                foreach($dstl as $tl)
                {
                    $count_tlc = count_tl_con($tl['id'])['amount'];
                    $count_sp = count_sp_from_tl($tl['id'])['amount'];
                    echo
                        '<tr class="tr_parent_row" data-id="'.$tl['id'].'">
                            <td>'.$tl['id'].'</td>
                            <td>'.$tl['name'].'</td>
                            <td>'.$count_tlc.'</td>
                            <td>'.$count_sp.'</td>
                            <td>'.$tl['sort'].'</td>
                            <td>
                                <a href="#edit-parent-'.$tl['id'].'" class="center_button edit_button" data-catval="parent" data-idcat="'.$tl['id'].'"><i class="far fa-edit"></i></span>
                            </td>
                            <td>
                                <span class="center_button del_button" data-catval="parent" data-idcat="'.$tl['id'].'" data-namecat="'.$tl['name'].'"><i class="far fa-trash-alt"></i></span>
                            </td>
                        </tr>';
                }
            ?>
        </tbody>
    </table>

    <!-- Xoá thể loại -->
    <div class="noevents_background" id="delete_catalog">
    </div>

    <!-- Chỉnh sửa thể loại -->
    <div class="noevents_background" id="edit_catalog">
    </div>

</div>

<!-- Box Thể loại con -->
<div class="box_list_2">

    <p class="box_title">
        <i class='fas fa-minus'></i>Chi nhánh: <strong id="cat_parent_title"></strong>
    </p>
    <span class="insert_button green_button noevents_button" id="insert_button_2">
        <i class='fas fa-plus'></i>Thêm
    </span>
    
    <!-- Thêm chi nhánh - thể loại con -->
    <div class="noevents_background" id="insert_catchild">
        <form action="admin.php?page=catalog" method="post" class="catalog_detail">
            <p class="form_header">Nhập thông tin chi nhánh</p>
            <span class="close_form" id="close_form_2"><i class='fas fa-minus'></i></span>
            <br>
            <input type="hidden" name="catchild_idparent" value="0">
            <label for="catchild_name">Tên chi nhánh (*): </label>
            <input type="text" name="catchild_name" id="catchild_name" placeholder="Tên chi nhánh" required>
            <label for="catchild_idparent">Thể loại: </label>
            <select name="catchild_idparent" id="catchild_idparent" disabled>
                <?php
                    foreach($dstl as $tl)
                    {
                        echo '<option value="'.$tl['id'].'">'.$tl['name'].'</option>';
                    }
                ?>
            </select>
            <br>
            <label for="catchild_sort">Sắp xếp [9 -> 1]: </label>
            <input type="number" name="catchild_sort" min="0" max="9" id="catchild_sort" value="0">
            <br>
            <input type="submit" name="insert_catchild" value="Thêm" class="green_button">
            <br>
            <span>(*) - Bắt buộc</span>
        </form>
    </div>
    <script defer>
        $(document).ready( () => {
            $('#insert_button_2').click( () => { 
                $('#insert_catchild').show();
                var id_parent = $('#insert_catchild').find('input[name = catchild_idparent]').val();
                $('#catchild_idparent').children('[selected = "selected"]').removeAttr('selected');
                $('#catchild_idparent').children('[value = ' + id_parent + ']').attr('selected', 'selected');
            });
            $('#close_form_2').click( () => {
                $('#insert_catchild').removeAttr('style');
            });
        });
    </script>

    <!-- Show danh sách chi nhánh - thể loại con -->
    <table>
        <thead>
            <th width="10%">id</th>
            <th width="62.5%">Tên chi nhánh</th>
            <th width="12.5%" title="Số lượng sản phẩm">Sản phẩm</th>
            <th width="5%" title="Chỉ số sắp xếp: 9 -> 0">Sắp xếp</th>
            <th width="5%">Sửa</th>
            <th width="5%">Xoá</th>
        </thead>
        <tbody>
            <?php
                foreach($dstlc as $tlc)
                {
                    $count_sp = count_sp_from_tlc($tlc['id'])['amount'];
                    $link_edit = "admin.php?page=catalog&idchildedit=".$tlc['id'];
                    echo
                        '<tr class="tr_child_row" data-idparent="'.$tlc['id_parent'].'">
                            <td>'.$tlc['id'].'</td>
                            <td>'.$tlc['name'].'</td>
                            <td>'.$count_sp.'</td>
                            <td>'.$tlc['sort'].'</td>
                            <td>
                                <a href="#edit-children-'.$tlc['id'].'" class="center_button edit_button" data-catval="children" data-idcat="'.$tlc['id'].'"><i class="far fa-edit"></i></span>
                            </td>
                            <td>
                                <span class="center_button del_button" data-catval="children" data-idcat="'.$tlc['id'].'" data-namecat="'.$tlc['name'].'"><i class="far fa-trash-alt"></i></span>
                            </td>
                        </tr>';
                }
            ?>
        </tbody>
    </table>

    <!-- Xoá chi nhánh -->
    <div class="noevents_background" id="delete_catchild">
    </div>

    <!-- Chỉnh sửa chi nhánh -->
    <div class="noevents_background" id="edit_catchild">
    </div>

</div>

<!-- Tương tác giữa Thể loại cha vs Thể loại con -->
<script defer>
    $(document).ready( () => {
        $('.tr_parent_row').click(function(){
            var id = $(this).attr('data-id'),
                name = $(this).children('td:nth-child(2)').html();
            // Đưa id truyền id thể loại vào form thêm chi nhánh
            $('#insert_catchild').find('input[name = catchild_idparent]').val(id);
            // Hiển thị tên thể loại vào bảng chi nhánh
            $('#cat_parent_title').html(name);
            $('#insert_button_2').removeClass('noevents_button');
            $('.tr_parent_row_active').removeClass('tr_parent_row_active');
            $('.tr_child_row_active').removeClass('tr_child_row_active');
            $(this).addClass('tr_parent_row_active');
            $('[data-idparent = ' + id + ']').addClass('tr_child_row_active');
        });
    });
</script>

<script src="view/admin/js/ajax_catalog.js" defer></script>