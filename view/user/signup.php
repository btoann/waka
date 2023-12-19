<?php
    $warning = false;
?>
<link rel="stylesheet" href="view/css/login.css">
<section class="row">
    <div class="box_center">
        <div class="login_center">
            <div class="login_box box_shadow_1">
                <form action="index.php?page=user&act=signup" method="post" class="login_form">
                    <h1 class="header">Đăng ký</h1>
                    <table>
                        <tr>
                            <th colspan="2" width="100%">
                                <p class="different_join">
                                    Bạn đã có tài khoản!&ensp;<a href="index.php?page=user&act=login" class="yellow_content">Đăng nhập ngay</a>
                                </p>
                            </th>
                        </tr>
                        <tr>
                            <td colspan="2" class="input_area">
                                <input type="text" name="name" id="name" class="input_field" value="" required placeholder error="Truờng này alf bắt buộc"> 
                                <span class="input_placeholder">Họ tên</span>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="input_area">
                                <input type="email" name="email" id="email" class="input_field" value="" required placeholder error="Trường này là bắt buộc">
                                <span class="input_placeholder">Email</span>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="input_area">
                                <input type="number" name="tel" id="tel" class="input_field" value="" required pattern="[0-9]*" placeholder error="Trường này là bắt buộc">
                                <span class="input_placeholder">Số điện thoại</span>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="input_area">
                                <input type="password" name="pass" id="pass" class="input_field" value="" required placeholder error="Trường này là bắt buộc">
                                <span class="input_placeholder">Mật khẩu</span>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" class="input_area">
                                <input type="password" name="confirm_pass" id="confirm_pass" class="input_field" required placeholder>
                                <span class="input_placeholder">Xác nhận Mật khẩu</span>
                            </td>
                        </tr>
                        <tr>
                            <th colspan="2">
                                <input width="100%" type="submit" name="signup" id="submit" value="Đăng ký" class="submit_button green_button_disable" disabled>
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

                        $('#pass, #confirm_pass').keyup(function(){
                            if($('#pass').val() == $('#confirm_pass').val())
                            {
                                $('#submit').addClass('green_button');
                                $('#submit').removeClass('green_button_disable');
                                $('#submit').removeAttr('disabled');
                            }
                            else
                            {
                                $('#submit').addClass('green_button_disable');
                                $('#submit').removeClass('green_button');
                                $('#submit').attr('disabled', 'disabled');
                            }
                        });
                    });
                </script>
            </div>
        </div>
    </div>
</section>