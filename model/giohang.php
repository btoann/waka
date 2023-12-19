<?php

    include_once 'connect.php';

    function addtocart($user, $name, $email, $tel, $address)
    {
        // Câu lệnh SQL
        $sql = 'INSERT INTO giohang (id_user, name, email, tel, address)
                    VALUES ("'.$user.'", "'.$name.'", "'.$email.'", "'.$tel.'", "'.$address.'")';
        // Thực thi
        execute($sql);
    }

?>