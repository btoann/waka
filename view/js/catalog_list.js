
// Dịch chuyển danh mục và logo trên header khi lăn chuột
$(document).scroll(function(){
    var present_scroll = $(this).scrollTop();   // Vị trí cuộn hiện tại
    if(present_scroll <= 40)
    {
        $('#catalog_col').removeClass('catalog_col_high');
        $('#logo').removeClass('logo_hide');
        $('#logo').css("margin-top", 15 - present_scroll);
        $('#logo').css("margin-bottom", present_scroll);
        $('#catalog_col').css("margin-top", -27.5 - present_scroll);
        if(present_scroll == 0)
        {
            $('#logo').removeAttr('style');
            $('#catalog_col').removeAttr('style');
        }
    }
    else
    {
        $('#logo').removeAttr('style');
        $('#logo').addClass('logo_hide');
        $('#catalog_col').removeAttr('style');
        $('#catalog_col').addClass('catalog_col_high');
    }
});