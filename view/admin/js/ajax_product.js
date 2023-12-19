
$(document).ready(function(){

    /*  Thêm mới sản phẩm  */
    $('#insert_button').click(function(){
        $.ajax({
            url: "view/admin/product/ajax_insert.php",
            method: "post",
            data: {},
            dataType: "text",
            success: function(data)
            {
                $('#insert_product').html(data);
            }
        });
    });

    /*  Xoá sản phẩm  */
    $('span.del_button').click(function(){
        var id = $(this).attr('data-idpro'),
            name = $(this).attr('data-namepro');
        $.ajax({
            url: "view/admin/product/ajax_del.php",
            method: "post",
            data: {id : id, name : name},
            dataType: "text",
            success: function(data)
            {
                $('#delete_product').html(data);
            }
        });
    });

    /*  Chỉnh sửa sản phẩm  */
    $('a.edit_button').click(function(){
        var id = $(this).attr('data-idpro');;
        $.ajax({
            url: "view/admin/product/ajax_edit.php",
            method: "post",
            data: {id : id},
            dataType: "text",
            success: function(data)
            {
                $('#edit_product').html(data);
            }
        });
    });
    
});