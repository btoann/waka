<?php
    ob_start();
    include 'global.php';
    include 'model/theloai.php';
    include 'model/taikhoan.php';

    /*  Show dữ liệu Catalogs  */
    $dstl = show_dstl(1);

    if(isset($_GET['act']) && $_GET['act'])
    {
        $act = $_GET['act'];
        switch($act)
        {

            case 'login':
                $warning = '';
                if(isset($_POST['login']) && isset($_POST['login']))
                {
                    $user = $_POST['user'];
                    $pass = $_POST['pass'];
                    $this_user = check_user($user);
                    if(is_array($this_user))
                    {
                        if(password_verify($pass, $this_user['pass']))
                        {
                            $_SESSION['s_id'] = $this_user['id'];
                            $_SESSION['s_name'] = $this_user['name'];
                            $_SESSION['s_email'] = $this_user['email'];
                            $_SESSION['s_tel'] = $this_user['tel'];
                            $_SESSION['s_role'] = $this_user['role'];

                            $url = ($this_user['role'] == 1) ? 'admin.php' :
                                    (($this_user['role'] == 0) ? 'index.php?ctrl=user&act=user&id='.$this_user['id'] : 'index.php');
                            header('location: '.$url);
                        }
                        else $warning = '*Mày là ai mà đăng nhập zô đây!?';
                    }
                    echo
                        '<script defer>
                            $(document).ready( () => {
                                $("#warning").html("'.$warning.'");
                            });
                        </script>';
                }
                if(isset($_SESSION['s_id']) && $_SESSION['s_id'] > 0)
                    header('location: index.php?ctrl=user&act=user&id='.$_SESSION['s_id']);
                include 'view/user/'.$act.'.php';
                break;

            case 'signup':
                $warning = '';
                if(isset($_POST['signup']) && isset($_POST['signup']))
                {
                    if(!empty($_POST['name']) && !empty($_POST['email']) && !empty($_POST['tel']) && !empty($_POST['pass']))
                    {
                        $email = $_POST['email'];
                        $tel = $_POST['tel'];
                        // Email's regex
                        $regex = '/^[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$/';
                        if(preg_match($regex, $email))
                        {
                            if(!is_array(check_user($email)) && !is_array(check_user($tel)))
                            {
                                $name = $_POST['name'];
                                $pass = $_POST['pass'];
                                // Mã hoá mật khẩu
                                $hashed_password = password_hash($pass, PASSWORD_DEFAULT);
                                // Mã hoá email theo thời gian
                                $activation = md5($email.time());
                                them_tk($name, $email, $tel, $hashed_password, $activation);

                                $user = check_user($email);
                                $_SESSION['s_id'] = $user['id'];
                                $_SESSION['s_name'] = $user['name'];
                                $_SESSION['s_email'] = $user['email'];
                                $_SESSION['s_tel'] = $user['tel'];
                                $_SESSION['s_role'] = $user['role'];

                                
                                // // sending email
                                // include_once 'mail/sendmail.php';
                                // $to = $email;
                                // $subject = 'Xác thực email tài khoản';
                                // $body = 
                                //         'Xin chào,
                                //             <br/><br/>
                                //         Chúng tôi muốn xác thực bạn là chủ sở hữu email này.
                                //             <br/>
                                //         Hãy chắc chắn rằng bạn nhận được mail của chúng tôi và không chia sẻ nó cho bất cứ ai.
                                //             <br/><br/>
                                //         <a href="index.php?ctrl=user&act=user&verify='.$activation.'"></a>';
                                // // Gửi mail
                                // sendmail($to, $subject, $body);
                                // if(!$mail->Send())
                                // {
                                // echo "Message could not be sent. <p>";
                                // echo "Mailer Error: " . $mail->ErrorInfo;
                                // exit;
                                // }
                                // echo "Message has been sent";


                                $url = ($user['role'] == 1) ? 'admin.php' :
                                        (($user['role'] == 0) ? 'index.php?ctrl=user&act=user&id='.$user['id'] : 'index.php');
                                header('location: index.php?page=user&act=detail&id='.$user['id']);
                            }
                            else $warning = '*Email hoặc số điện thoại đã tồn tại.';
                        }
                        else $warning = '*Email không hợp lệ, vui lòng thử lại!';
                    }
                    else $warning = '*Dữ liệu bạn nhập không đầy đủ, vui lòng thử lại!';
                    echo 
                        '<script defer>
                            $(document).ready( () => {
                                $("#warning").html("'.$warning.'");
                            });
                        </script>';
                }
                include 'view/user/'.$act.'.php';
                break;

            case 'logout':
                unset($_SESSION['s_id']);
                unset($_SESSION['s_name']);
                unset($_SESSION['s_email']);
                unset($_SESSION['s_tel']);
                unset($_SESSION['s_role']);
                header('location: index.php');
                break;
            
            case 'detail':
                $user_detail = 0;
                if(isset($_GET['id']) && $_GET['id'] > 0)
                {
                    if(isset($_SESSION['s_id']) && $_SESSION['s_id'] > 0)
                    {
                        // if(($_SESSION['s_role'] == $_GET['id']) && ($_SESSION['s_role'] == 0))
                        //     header('location: index.php?ctrl=user&act=verify');
                    }
                    $user_detail = show_user($_GET['id']);
                }
                else
                    header('location: index.php');
                include 'view/user/'.$act.'.php';
                break;

            case 'verify':
                $messenge = '';
                if(isset($_GET['code']) && !empty($_GET['code']))
                {
                    $code = $_GET['code'];
                    $user = get_verify($code);
                    if(is_array($user))
                    {
                        if($user['role'] == 0)
                        {
                            verify_userount($code);
                            $messenge = 'Kích hoạt thành công';
                        }
                        else
                            $messenge = 'Tài khoản của bạn đã được kích hoạt';
                    }
                    else
                        header('location: index.php?ctrl=user&act=user');
                    echo 
                        '<script defer>
                            $(document).ready( () => {
                                $("#messenge").html("'.$messenge.'");
                            });
                        </script>';
                }
                else header('location: index.php?ctrl=user&act=login');
                include 'view/user/'.$act.'.php';
                break;

            default:
                if(isset($_SESSION['s_id']))
                    header('location: index.php');
                else
                    header('location: index.php?page=user&act=login');
                break;
        }
    }
    else
        header('location: index.php');
    ob_end_flush();
?>