<?php
    ob_start();
    session_start();
    if(isset($_SESSION['s_id']) && $_SESSION['s_id'] > 0 && $_SESSION['s_role'] == 1)
    {
?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
        <script src="view/js/jquery_3.5.1.js"></script>
        <link rel="stylesheet" href="view/admin/css/style.css">
        <link rel="shortcut icon" href="view/image/favicon.png" type="image/png">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <title>Admin - Waka</title>
    </head>

    <body>
        <div class="row all">
            <div class="boxleft">
                <a href="admin.php" class="logo row">
                    <p>Admin</p>
                </a>
                <ul class="row">
                    <li><a href="admin.php?page=catalog"><i class='fas fa-list-ul'></i>Thể loại</a></li>
                    <li><a href="admin.php?page=product"><i class='fas fa-book'></i>Sản phẩm</a></li>
                    <li><a href="#"><i class='fas fa-pen'></i>Tác giả</a></li>
                    <li><a href="#"><i class='fas fa-coins'></i>Doanh thu</a></li>
                    <li><a href="#"><i class='far fa-comment'></i>Tương tác</a></li>
                </ul>
            </div>
            <div class="boxright">
                <div class="admin_header">
                    <?php
                        if(isset($_SESSION['s_id']) && $_SESSION['s_id'] > 0)
                        {
                            $name = $_SESSION['s_name'];
                            $firts_letter = substr($_SESSION['s_name'], 0, 1);
                    ?>
                    <p class="header_content_1">
                        Đây là trang Quản lí - Admin's Waka
                    </p>
                    <p class="header_content_2">
                        Xin chào <?= $name ?>, Chúc bạn một ngày tốt lành!
                    </p>
                    <i class='fas fa-bars'>
                        <ul>
                            <li></li>
                        </ul>
                    </i>
                    <div class="user_icon">
                        <!-- <img src="" alt=""> -->
                        <?= '<span>'.$firts_letter.'</span>' ?>
                        <div class="user_info_box">
                            <div class="user_info">
                                <h3 class="user_info_title">Thông tin Admin:</h3>
                                <table>
                                    <tr>
                                        <td width="30%">Tài khoản:</td>
                                        <td width="70%"><?= $_SESSION['s_email'] ?></td>
                                    </tr>
                                    <tr>
                                        <td>Họ và tên:</td>
                                        <td><?= $_SESSION['s_name'] ?></td>
                                    </tr>
                                    <tr>
                                        <td>Sđt:</td>
                                        <td><?= $_SESSION['s_tel'] ?></td>
                                    </tr>
                                </table>
                                <a href="admin.php?page=user&act=logout" class="logout_button green_button">Đăng xuất</a>
                            </div>
                        </div>
                    </div>
                    <?php } ?>
                </div>


                <?php

                    $index_file = 'controller/admin/home.php';
                    if(isset($_GET['page']) && $_GET['page'])
                    {
                        $filename = 'controller/admin/'.$_GET['page'].'.php';
                        include (file_exists($filename)) ? $filename : $index_file;
                    }
                    else
                        include $index_file;

                ?>

                </div>
        </div>
        <footer>
            <p>@Copyright by toannb - ps12879</p>
        </footer>
    </body>
</html>
<?php
    }
    else
    {
        header('location: index.php');
    }
    ob_end_flush();
?>