<?php

    include_once 'connect.php';

    function them_bl($id_product, $id_user, $content)
    {
        $sql = "INSERT INTO binhluan (id_product, id_user, content)
                        VALUES ('$id_product', '$id_user', '$content')";
        // Thực thi
        execute($sql);
    }

    function show_bl($id_product)
    {
        // Câu lệnh SQL: Lấy 1 số thông tin hiển thị dssp
        $sql =
            'SELECT bl.*,
                    tk.name as "user_name"
                FROM binhluan bl INNER JOIN taikhoan tk ON bl.id_user = tk.id
            WHERE 1';
        if($id_product > 0) $sql .= ' AND bl.id_product = '.$id_product;
        $sql .= ' order by bl.date desc, id desc';
        // Thực thi
        return query($sql);
    }
?>