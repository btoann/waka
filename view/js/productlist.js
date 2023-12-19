
$(document).ready(function(){
    $('#catchild_list').children('li').click(function(){
        $('#catchild_list').find('li.pl_active').removeAttr('class');
        $(this).addClass('pl_active');
        var id_catchild = $(this).attr('data-catchild');
        
        if(id_catchild == 0)
        {
            $.ajax({
                url: "view/productlist.php",
                method: "post",
                data: {page : id_catchild, idcatparent : $(this).attr('data-catalog')},
                success: function(data)
                {
                    $('#product_list').html(data);
                }
            });
        }
        if(id_catchild > 0)
        {
            $.ajax({
                url: "view/productlist.php",
                method: "post",
                data: {page : id_catchild},
                success: function(data)
                {
                    $('#product_list').html(data);
                }
            });
        }
    });
});