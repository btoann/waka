
$(document).ready(function(){
    $('#search').keyup(function(){ 
        var txt = $(this).val();
        $('#search_result').addClass('search_result_active');
        if(txt != '')
        {
            $.ajax({
                url: "controller/client/search.php",
                method: "post",
                data: {search : txt},
                dataType: "text",
                success: function(data)
                {
                    $('#search_result').html(data);
                }
            });
        }
        else
        {
            $('#search_result').removeClass('search_result_active');
            $('#search_result').html('');
        }
    });

    $(this).click( (e) => {
        var check = false;
        if(e.target.id == 'search')
        {
            if($('#search').val() != '')
                $('#search_result').addClass('search_result_active');
            return;
        }
        if($(e.target).closest('#search_result').length)
            return;
        if(check == false)
            $('#search_result').removeClass('search_result_active');
        return;
    });
});