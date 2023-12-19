<div class="box_list_1">

    <p class="box_title">
        <i class='fas fa-book'></i></i>Danh sách sản phẩm
    </p>
    <input type="text" name="search" placeholder="Tìm kiếm..." class="search_input">
    <span class="insert_button green_button" id="insert_button">
        <i class='fas fa-plus'></i>Thêm sản phẩm
    </span>
    
    <!-- Thêm sản phẩm -->
    <div class="noevents_background" id="insert_product">
    </div>

    <!-- Show danh sách sản phẩm -->
    <table>
        <thead>
            <th width="5%">id</th>
            <th width="25%">Tên sản phẩm</th>
            <th width="5%">Hình</th>
            <th width="10%">Tác giả</th>
            <th width="10%">Thể loại</th>
            <th width="15%">Nhà xuất bản</th>
            <th width="10%">Ngày lên kệ</th>
            <th width="10%">Giá</th>
            <th width="5%">Mô tả</th>
            <th width="2.5%">Sửa</th>
            <th width="2.5%">Xoá</th>
        </thead>
        <tbody>
            <?php
                foreach($dssp as $sp)
                {
                    $link_edit = "admin.php?page=product&idedit=".$sp['id'];
                    $image = $books_imagepath.$sp['id_cat_parent'].'/'.$sp['image'];
                    // Kiểm tra hình ảnh
                    if(is_file($image))
                    {
                        $image = '<img src="'.$image.'" alt="'.$image.'">';
                    }
                    else
                    {
                        $image = '<p><p>IMAGE URL</p><p>NOT FOUND!</p></p>';
                    }
                    echo
                        '<tr>
                            <td>'.$sp['id'].'</td>
                            <td>'.$sp['name'].'</td>
                            <td>
                                <span class="center_button">
                                    xem
                                    <div class="preview_image">
                                        '.$image.'
                                    </div>
                                </span>
                            </td>
                            <td>'.$sp['name_author'].'</td>
                            <td>'.$sp['name_cat_parent'].', '.$sp['name_catalog'].'</td>
                            <td>'.$sp['name_publisher'].'</td>
                            <td>'.$sp['date'].'</td>
                            <td>'.$sp['price'].'</td>
                            <td>
                                <span class="center_button">
                                    xem
                                    <div class="preview_content">
                                        <p>'.$sp['description'].'</p>
                                    </div>
                                </span>
                            </td>
                            <td>
                                <a href="#edit-product-'.$sp['id'].'" class="center_button edit_button" data-idpro="'.$sp['id'].'"><i class="far fa-edit"></i></span>
                            </td>
                            <td>
                                <span class="center_button del_button" data-idpro="'.$sp['id'].'" data-namepro="'.$sp['name'].'"><i class="far fa-trash-alt"></i></span>
                            </td>
                        </tr>';
                }
            ?>
        </tbody>
    </table>

    <!-- Xoá sản phẩm -->
    <div class="noevents_background" id="delete_product">
    </div>

    <!-- Chỉnh sửa sản phẩm -->
    <div class="noevents_background" id="edit_product">
    </div>

</div>

<script src="view/admin/js/ajax_product.js" defer></script>