<?php
    $warning = false;
?>
<link rel="stylesheet" href="view/css/login.css">
<section class="row">
    <div class="box_center">
        <div class="login_center">
            <div class="login_box box_shadow_1">
                <form action="index.php?page=user&act=login" method="post" class="login_form">
                    <h1 class="header">Đăng nhập</h1>
                    <table>
                        <tr>
                            <th colspan="2" width="100%">
                                <p class="different_join">
                                    Bạn chưa có tài khoản?&ensp;<a href="index.php?page=user&act=signup" class="yellow_content">Đăng ký ngay</a>
                                </p>
                            </th>
                        </tr>
                        <tr>
                            <td colspan="2" class="input_area">
                                <input type="text" name="user" id="user" class="input_field" required placeholder>
                                <span class="input_placeholder">Email/ Số điện thoại</span>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="input_area">
                                <input type="password" name="pass" id="pass" class="input_field" required placeholder>
                                <span class="input_placeholder">Mật khẩu</span>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <a href="#" class="forgot_pass">Quên mật khẩu?</a>
                            </td>
                        </tr>
                        <tr>
                            <th colspan="2">
                                <input width="100%" type="submit" name="login" value="Đăng nhập" class="submit_button green_button">
                            </th>
                        </tr>
                        <tr>
                            <th colspan="2">
                                <p id="warning"></p>
                            </th>
                        </tr>
                    </table>
                </form>

                <script defer>
                    $(document).ready(function(){
                        $('.input_field').each(function(){
                            var ddd = $(this);
                            let input_area = $(this).parent();
                            if($(this).val() != '')
                                input_area.children('.input_placeholder').addClass('input_field_focus');
                            $(this).focus(function(){
                                input_area.children('.input_placeholder').addClass('input_field_focus');
                            });
                            $(this).blur(function(){
                                if($(this).val() != '')
                                    input_area.children('.input_placeholder').addClass('input_field_focus');
                                else
                                    input_area.children('.input_placeholder').removeClass('input_field_focus');
                            });
                        });
                    });
                </script>
            </div>
        </div>
    </div>
</section>