<?php

    include_once 'connect.php';
    
    function timkiem($txt)
    {
            /* Tìm kiếm sản phẩm theo tên + tác giả + nxb,
                        tác giả theo tên  */
        $sql = 'SELECT sp.id, sp.name, "sanpham" as source 
                    FROM sanpham sp INNER JOIN nhaxuatban nxb ON sp.id_publisher = nxb.id 
                                    INNER JOIN tacgia tg ON sp.id_author = tg.id 
                WHERE sp.name LIKE "%'.$txt.'%" OR nxb.name LIKE "%'.$txt.'%" OR tg.name LIKE "%'.$txt.'%"';
        $sql .= ' UNION SELECT id, name, "tacgia" as table_name FROM tacgia tg WHERE tg.name LIKE "%'.$txt.'%"';
        $sql .= ' LIMIT 20';
        // Thực thi
        return query($sql);
    }

?>