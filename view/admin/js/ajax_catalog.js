
$(document).ready(function(){

    /*  Chỉnh sửa thể loại  */
    $('a.edit_button').click(function(){
        var catval = $(this).attr('data-catval'),
            idcat = $(this).attr('data-idcat');

        switch (catval)
        {
            case 'parent':
                $.ajax({
                    url: "view/admin/catalog/ajax_edit.php",
                    method: "post",
                    data: {id_parent : idcat},
                    dataType: "text",
                    success: function(data)
                    {
                        $('#edit_catalog').html(data);
                    }
                });
                break;

            case 'children':
                $.ajax({
                    url: "view/admin/catalog/ajax_edit.php",
                    method: "post",
                    data: {id_child : idcat},
                    dataType: "text",
                    success: function(data)
                    {
                        $('#edit_catchild').html(data);
                    }
                });
                break;

            default:
                return;
        }
    });

    /*  Xoá thể loại  */
    $('span.del_button').click(function(){
        var catval = $(this).attr('data-catval'),
            idcat = $(this).attr('data-idcat'),
            namecat = $(this).attr('data-namecat');

        switch (catval)
        {
            case 'parent':
                $.ajax({
                    url: "view/admin/catalog/ajax_del.php",
                    method: "post",
                    data: {id_parent : idcat, name : namecat},
                    dataType: "text",
                    success: function(data)
                    {
                        $('#delete_catalog').html(data);
                    }
                });
                break;

            case 'children':
                $.ajax({
                    url: "view/admin/catalog/ajax_del.php",
                    method: "post",
                    data: {id_child : idcat, name : namecat},
                    dataType: "text",
                    success: function(data)
                    {
                        $('#delete_catchild').html(data);
                    }
                });
                break;

            default:
                return;
        }
    });
    
});