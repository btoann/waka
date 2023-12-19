<?php

    include '../../../model/sanpham.php';

    $output = '';

    if(isset($_POST['id']) && $_POST['id'] > 0)
    {
        $id = $_POST['id']; $name = '';
        if(isset($_POST['name']) && $_POST['name'])
            $name = $_POST['name'];
        $output =
            '<form class="delete_product">
                <p class="form_header">Bạn có chắc chắn muốn xoá sản phẩm<br>"'.$name.'"</p>
                <span class="cancel_button">Không</span>
                <a href="admin.php?page=product&act=del&id='.$id.'" id="agree_to_del" class="green_button">Đồng ý</a>
                <br><br>
                <span>
                    <strong>! <ins>Lưu ý:</ins></strong> Bạn sẽ <strong>không thể xoá</strong> thể loại nếu thể loại đó đang chứa <strong>chi nhánh</strong> hay <strong>sản phẩm</strong>
                </span>
                <script defer>
                    $(document).ready( () => {
                        $("#delete_product").show();
                        $(".cancel_button").click( () => {
                            $("#delete_product").removeAttr("style");
                            $("#delete_product").children().remove();
                        });
                    });
                </script>
            </form>';
    }

    echo $output;

?>