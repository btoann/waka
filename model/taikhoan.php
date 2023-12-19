<?php

    include_once 'connect.php';

    function them_tk($name, $email, $tel, $pass, $activation)
    {
        $sql = "INSERT INTO taikhoan (name, email, tel, pass, activation)
                        VALUES ('$name', '$email', '$tel', '$pass', '$activation')";
        // Thực thi
        execute($sql);
    }

    function check_user($user)
    {
        $sql = 'SELECT * FROM taikhoan WHERE email = "'.$user.'" OR tel = "'.$user.'"';
        return queryOne($sql);
    }

    function show_user($id)
    {
        // Câu lệnh SQL
        $sql = 'SELECT *, DATE_FORMAT(birth, "%d/%m/%Y") as "birth", DATE_FORMAT(date, "%d/%m/%Y") as "date" FROM taikhoan WHERE id = '.$id;
        // Thực thi
        return queryOne($sql);
    }

    // function get_verify($code)
    // {
    //     $sql = 'SELECT id, role FROM user WHERE activation = "'.$code.'"';
    //     return queryOne($sql);
    // }

    // function verify_account($code)
    // {
    //     $sql = "UPDATE user SET role = '1' WHERE activation = '$code'";
    //     execute($sql);
    // }


?>