<?php

    include '../../../model/theloai.php';

    $output = '';

    if(isset($_POST['id_parent']) && $_POST['id_parent'] > 0)
    {
        $id = $_POST['id_parent']; $name = '';
        if(isset($_POST['name']) && $_POST['name'])
            $name = $_POST['name'];
        $output =
            '<form class="delete_catalog">
                <p class="form_header">Bạn có chắc chắn muốn xoá thể loại<br>"'.$name.'"</p>
                <span class="cancel_button">Không</span>
                <a href="admin?page=catalog&act=del&id='.$id.'" id="agree_to_del" class="green_button">Đồng ý</a>
                <br><br>
                <span>
                    <strong>! <ins>Lưu ý:</ins></strong> Bạn sẽ <strong>không thể xoá</strong> thể loại nếu thể loại đó đang chứa <strong>chi nhánh</strong> hay <strong>sản phẩm</strong>
                </span>
                <script defer>
                    $(document).ready( () => {
                        $("#delete_catalog").show();
                        $(".cancel_button").click( () => {
                            $("#delete_catalog").removeAttr("style");
                            $("#delete_catalog").children().remove();
                        });
                    });
                </script>
            </form>';
    }

    if(isset($_POST['id_child']) && $_POST['id_child'] > 0)
    {
        $id = $_POST['id_child']; $name = '';
        if(isset($_POST['name']) && $_POST['name'])
            $name = $_POST['name'];
        $output =
            '<form class="delete_catalog">
                <p class="form_header">Bạn có chắc chắn muốn xoá chi nhánh<br>"'.$name.'"</p>
                <span class="cancel_button">Không</span>
                <a href="admin?page=catalog&act=del&idchild='.$id.'" id="agree_to_del_2" class="green_button">Đồng ý</a>
                <br><br>
                <span>
                    <strong>! <ins>Lưu ý:</ins></strong> Bạn sẽ <strong>không thể xoá</strong> chi nhánh nếu chi nhánh đó đang chứa <strong>sản phẩm</strong>
                </span>
                <script defer>
                    $(document).ready( () => {
                        $("#delete_catchild").show();
                        $(".cancel_button").click( () => {
                            $("#delete_catchild").removeAttr("style");
                            $("#delete_catchild").children().remove();
                        });
                    });
                </script>
            </form>';
    }

    echo $output;

?>