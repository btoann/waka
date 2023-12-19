<?php
    $user_avt = $user_imagepath.$user_detail['id'].'/'.$user_detail['avatar'];
    $user_cardimage = $user_imagepath.$user_detail['id'].'/'.$user_detail['cardimage'];
    // Kiểm tra hình ảnh
    $user_avt = (is_file($user_avt))
                ? '<img src="'.$user_avt.'" alt="'.$user_detail['avatar'].'">'
                : '<img src="../view/image/default_avt.png" alt="default_avt">';
    $user_cardimage = (is_file($user_cardimage))
                ? '<img src="'.$user_cardimage.'" alt="'.$user_detail['cardimage'].'">'
                : '<img src="../view/image/personal-page-cover.jpg" alt="default_avt">';
?>

<link rel="stylesheet" href="view/css/product.css">
<link rel="stylesheet" href="view/css/user.css">
<div class="box_center pd_top_100">
    <span class="catalog_col" id="catalog_col">
        <p class="catalog_header">Danh mục<span></span></p>
        <ul class="catalog_content box_shadow_1">
            <?php
                foreach($dstl as $tl)
                {
                    $id = $tl['id'];
                    $name = $tl['name'];
                    $count = count_sp_from_tl($id)['amount'];
                    $link = 'index.php?page=product&act=catalog&id='.$id;
                    echo '<li><a href="'.$link.'">'.$name.'<span>'.$count.'</span></a></li>';
                }
            ?>
            <li><a href="#">Tuyển tập chọn lọc<span>#</span></a></li>
            <li><a href="#">Tủ sách liên kết<span>#</span></a></li>
            <li><a href="#">Nhà xuất bản<span>#</span></a></li>
            <li><a href="#">Tác giả<span>#</span></a></li>
            <li><a href="#">Tin tức Waka<span></span></a></li>
        </ul>
    </span>
    <script src="view/js/catalog_list.js" defer></script>

    <section class="row mg_top_20">
    <div class="mainbox">
        <div class="mainbox_header">
            <p>Trang cá nhân</p>
        </div>
        <div class="mainbox_content">
            <div class="user_image">
                <div class="box_image">
                    <div class="user_cardimage">
                        <?= $user_cardimage ?>
                    </div>
                    <div class="user_avatar box_shadow_1">
                        <?= $user_avt ?>
                    </div>
                    <p class="user_name"><?= $user_detail['name'] ?></p>
                </div>
                <div class="box_savemoney">
                    <div class="savemoney_circle savemoney_circle_1"></div>
                    <div class="savemoney_circle savemoney_circle_2"></div>
                    <div class="savemoney_circle savemoney_circle_3">
                        <p class="savemoney_text">Bạn đã tiết kiệm được</p>
                        <div class="savemoney_pig"></div>
                        <p class="savemoney_value">0 <sup>đ</sup></p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="row mg_top_20">
        <div class="user_info_box">
            <div class="user_info_box_header">
                <p>Thông tin cá nhân</p>
            </div>
            <div class="user_info_content">
                <ul>
                    <li><i class='fas fa-mail-bulk'></i><span>Email: </span><?= $user_detail['email'] ?></li>
                    <li><i class='far fa-user-circle'></i><span>Sđt: </span><?= $user_detail['tel'] ?></li>
                    <li><i class='fas fa-birthday-cake'></i><span>Sinh nhật: </span><?= $user_detail['birth'] ?></li>
                </ul>
            </div>
        </div>
        <div class="user_info_box">
            <div class="user_info_box_header">
                <p>Hồ sơ về bạn</p>
            </div>
            <div class="user_info_content">
                <ul>
                    <li><i class='far fa-calendar'></i><span>Ngày gia nhập: </span><?= $user_detail['date'] ?></li>
                    <li><i class='far fa-eye'></i><span>Số sách đã xem: </span>0</li>
                    <li><i class='fas fa-money-bill-wave-alt'></i><span>Chi phí bỏ ra: </span>0</li>
                </ul>
            </div>
        </div>
    </section>
</div>