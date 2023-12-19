<?php
    session_start();
    include 'global.php';
    include 'model/binhluan.php';
    include 'model/taikhoan.php';

    if(isset($_SESSION['s_id']) && $_SESSION['s_id'] > 0)
    {
        if(isset($_SESSION['s_user']) && $_SESSION['s_user'] != '')
            $user = $_SESSION['s_user'];
        else $user = '';
        if(isset($_POST['comment']) && $_POST['comment'])
        {
            $check_null = true;
            if(!empty($_POST['content']))
                $content = $_POST['content'];
            else $check_null = false;
            $id_user = $_SESSION['s_id'];
            $id_product = $_POST['id_product'];
            if($check_null == true)
                them_bl($id_product, $id_user, $content);
            else
                echo
                    '<script>alert("Lỗi: Vui lòng nhập nội dung để bình luận!");</script>';
        }
        if(isset($_GET['idpro']) && $_GET['idpro'] > 0)
        {
            $dsbl = show_bl($_GET['idpro']);
        }
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="view/image/favicon.png" type="image/png">
        <link rel="stylesheet" href="view/css/comment.css">
        <title>Bình luận - Waka</title>
        <script src="view/js/jquery_3.5.1.js"></script>
    </head>
    <body>
        <h3 class="comment_title">Bình luận:</h3>
        <form action="comment.php?idpro=<?= $_GET['idpro']?>" method="post" class="comment_form">
            <div class="user_info">
                <div class="user_avt">
                    <?php
                        // $user_detail = check_user($_SESSION['s_id']);
                        // $avt = $user_imagepath.$user_detail['id'].'/'.$user_detail['avatar'];
                        // // Kiểm tra hình ảnh
                        
                        // $avt = (is_file($avt))
                        //             ? '<img src="'.$avt.'" alt="'.$user_detail['avatar'].'">'
                        //             : '<img src="view/image/default_avt.png" alt="default_avt">';
                        // echo '<img src="'.$avt.'" alt="'.$user_detail['avatar'].'">';
                    ?>
                </div>
                <span class="user_name"><?= $_SESSION['s_name']?></span>
            </div>
            <input type="hidden" name="id_product" value="<?= $_GET['idpro']?>">
            <textarea name="content" id="" placeholder="Viết bình luận..."></textarea>
            <input type="submit" name="comment" value="Gửi bình luận" class="green_button">
        </form>
        <div class="other_comments">
            <?php
                foreach($dsbl as $bl)
                {
                    echo
                        '<div class="person_comment">
                            <div class="user_avt">
                                <!-- <img src="" alt=""> -->
                            </div>
                            <p class="user_info">'.$bl['user_name'].' - <span>'.$bl['date'].'</span></p>
                            <p class="comment_content">'.$bl['content'].'</p>
                        </div>';
                }
            ?>
            
        </div>
    </body>
</html>

<?php
    }
?>