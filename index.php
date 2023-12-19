<?php
    ob_start();
    session_start();
?>

<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <link rel="shortcut icon" href="view/image/favicon.png" type="image/png">
        <link rel="stylesheet" href="view/css/style.css">
        <title>Waka - Nghe, đọc sách online mọi lúc, mọi nơi, trên mọi thiết bị</title>
        <script src="view/js/jquery_3.5.1.js"></script>
    </head>
    <body>
        <header class="row">
            <div class="box_center">
                <div class="top_menu">
                    <a href="index.php" class="logo" id="logo">
                        <img src="view/image/logo-waka.png" alt="logo-waka">
                    </a>
                    <form action="index.php?page=search">
                        <input type="text" name="search" placeholder="Nhập tên sách, tuyển tập, tác giả,..." id="search">
                        <div class="search_result box_shadow_1" id="search_result">
                        </div>
                        <button type="submit" name="search_submit" class="green_button"><i class='fas fa-search'></i> Tìm kiếm</button>
                    </form>
                    <script src="view/js/search.js" defer></script>
                    <?php
                        if(isset($_SESSION['s_id']) && $_SESSION['s_id'] > 0)
                        {
                            if($_SESSION['s_role'] == 1) 
                                echo
                                    '<a href="index.php?page=user&act=logout" class="login green_button">Đăng xuất</a>
                                    <a href="admin.php" class="login green_button"><i class="far fa-user"></i>&emsp;'.$_SESSION['s_name'].'</a>';
                            else
                                echo
                                    '<a href="index.php?page=user&act=logout" class="login green_button">Đăng xuất</a>
                                    <a href="index.php?page=user&act=detail&id='.$_SESSION['s_id'].'" class="login green_button">'.$_SESSION['s_name'].'</a>';
                        }
                        else
                        {
                            echo
                                '<a href="index.php?page=user&act=login" class="login green_button">Đăng nhập</a>
                                <a href="#" class="waka_vip"></a>';
                        }
                    ?>
                </div>
                <div class="top_menu_select" id="top_menu_select">
                    <ul>
                        <li>
                            <a href="" class="green_letter">Tại sao chọn Waka</a>
                            <ul>
                                <li><a href="index.php?page=introduce">Giới thiệu</a></li>
                                <li><a href="index.php?page=interest">Quyền lợi chung</a></li>
                            </ul>
                        </li>
                        <li><a href="index.php?page=readerssharing">Chia sẻ độc giả</a></li>
                        <li><a href="index.php?page=thepress">Báo chí nói về Waka</a></li>
                        <li>
                            <a href="index.php?page=aboutus">Toàn cảnh Waka</a>
                            <ul>
                                <li><a href="">Báo cáo thị trường sách điện tử</a></li>
                                <li><a href="">Chương trình thử thách đọc sách</a></li>
                                <li><a href="">Công bố bản quyền</a></li>
                            </ul>
                        </li>
                        <li><a href="index.php?page=recruitment">Tuyển dụng</a></li>
                        <li class="new_select"><a href="index.php?page=fanpage">Diễn đàn</a></li>
                    </ul>
                </div>
            </div>
        </header>
        <script defer>
            $(document).scroll(function(){
                var present_scroll = $(this).scrollTop();   // Vị trí cuộn hiện tại
                if(present_scroll <= 40)
                {
                    $('header').removeClass('menu_hide');
                    $('header').height(100 - present_scroll);
                    $('#top_menu_select').css("margin-top", -present_scroll);
                    if(present_scroll == 0)
                    {
                        $('header').removeAttr('style');
                        $('#top_menu_select').removeAttr('style');
                    }
                }
                else
                {
                    $('header').removeAttr('style');
                    $('#top_menu_select').removeAttr('style');
                    $('header').addClass('menu_hide');
                }
            });
        </script>

        <?php

            $index_file = 'controller/client/home.php';
            if(isset($_GET['page']) && $_GET['page'])
            {
                $filename = 'controller/client/'.$_GET['page'].'.php';
                include (file_exists($filename)) ? $filename : $index_file;
            }
            else
                include $index_file;

        ?>

        
        <section class="row mg_top_40">
            <div class="slogan_row">
                <div class="box_center">
                    <ul class="slogan_list">
                        <li>
                            <p class="slogan_author">
                                __ Barack Obama __
                            </p>
                            <p class="slogan_content">
                                Việc đọc rất quan trọng. Nếu bạn biết cách đọc, cả thế giới sẽ mở ra cho bạn.
                            </p>
                        </li>
                    </ul>
                    <div class="prev_slogan disable_slogan_btn"></div>
                    <div class="next_slogan"></div>
                </div>
            </div>
        </section>
        <footer class="row">
            <div class="box_center">
                <div class="footer_left_col">
                    <p class="footer_col_header">Thông tin hữu ích</p>
                    <ul>
                        <li><a href="#">Review Truyện - Cafe Sách</a></li>
                        <li><a href="#">Tin Waka</a></li>
                        <li><a href="#">Giới thiệu chung</a></li>
                        <li><a href="#">Thoả thuận sử dụng dịch vụ</a></li>
                        <li><a href="#">Lendbox.vn</a></li>
                    </ul>
                    <a href="index.php"><img src="view/image/logo-waka.png" alt="logo-waka"></a>
                    <p>© Waka Corporation</p>
                </div>
                <div class="footer_center_col">
                    <p class="footer_col_header">Thông tin liên hệ</p>
                    <ul>
                        <li>
                            Công ty Cổ Phần Waka (Waka Corporation) - Tầng 3, tháp văn phòng quốc tế Hòa Bình, số 106, 
                            đường Hoàng Quốc Việt, phường Nghĩa Đô, quận Cầu Giấy, thành phố Hà Nội
                        </li>
                        <li>
                            ĐKKD số 0108796796 do SKHĐT TP Hà Nội cấp ngày 24/06/2019 | Chịu trách nhiệm nội dung: Ông Đinh Quang Hoàng
                        </li>
                        <li>
                            Email: support@waka.vn | Tel: 024.37918440
                        </li>
                        <li>
                            Giấy xác nhận Đăng ký hoạt động phát hành xuất bản phẩm điện tử số 8132/XN-CXBIPH do Cục Xuất bản,
                             In và Phát hành cấp ngày 31/12/2019
                        </li>
                    </ul>
                </div>
                <div class="footer_right_col">
                    <p class="footer_col_header">Ứng dụng di động</p>
                    <div class="qr_box">
                        <div class="qr_img box_shadow_1">
                            <img src="view/image/android-qr.png" alt="android-qr.png">
                        </div>
                        <div class="qr_content">
                            <p>Hệ điều hành Android</p>
                            <p>Phiên bản ứng dụng: 7.4</p>
                            <p>Ngày đăng: 06/12/2019</p>
                        </div>
                    </div>
                    <div class="qr_box">
                        <div class="qr_img box_shadow_1">
                            <img src="view/image/ios-qr.png" alt="ios-qr.png">
                        </div>
                        <div class="qr_content">
                            <p>Hệ điều hành IOS</p>
                            <p>Phiên bản ứng dụng: 7.4</p>
                            <p>Ngày đăng: 04/12/2019</p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>

<?php
    ob_end_flush();
?>