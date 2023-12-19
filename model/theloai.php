<?php

    include_once 'connect.php';

    function show_dstl($sort)
    {
        // Câu lệnh SQL
        $sql = 'SELECT * FROM theloai';
        if($sort > 0) $sql .= ' ORDER by sort desc';
        else $sql .= ' ORDER by id desc';
        // Thực thi
        return query($sql);
    }

    function show_tl($id)
    {
        // Câu lệnh SQL
        $sql = 'SELECT * FROM theloai WHERE id = '.$id;
        // Thực thi
        return queryOne($sql);
    }
    /*
        SELECT tl.*, COUNT(sp.id) as "count"
            FROM theloai tl INNER JOIN theloai_con tlc ON tl.id = tlc.id_parent
                            INNER JOIN sanpham sp on tlc.id = sp.id_catalog
            GROUP by tl.id
        ORDER by sort desc

        output: (example)
            id  name        sort    count
            3   Kinh doanh  9       9
            2   Linh dị     9       12
            4   Ngôn tình   8       13
            13  Kỹ năng     7       2
    */

    function count_tl_con($idcatalog)
    {
        // Câu lệnh SQL
        $sql =
            'SELECT COUNT(tlc.id) as "amount"
                FROM theloai tl INNER JOIN theloai_con tlc ON tl.id = tlc.id_parent
            WHERE tl.id = '.$idcatalog;
        // Thực thi
        return queryOne($sql);
    }

    function count_sp_from_tl($idcatalog)
    {
        // Câu lệnh SQL
        $sql =
            'SELECT COUNT(sp.id) as "amount"
                FROM theloai tl INNER JOIN theloai_con tlc ON tl.id = tlc.id_parent
                                INNER JOIN sanpham sp on tlc.id = sp.id_catalog
            WHERE tl.id = '.$idcatalog;
        // Thực thi
        return queryOne($sql);
    }

    function show_dstl_con($id_parent)
    {
        // Câu lệnh SQL
        $sql = 'SELECT * FROM theloai_con WHERE 1';
        if($id_parent > 0) $sql .= ' AND id_parent = '.$id_parent;
        $sql .= ' ORDER by sort desc';
        // Thực thi
        return query($sql);
    }

    function show_tl_con($id)
    {
        // Câu lệnh SQL
        $sql = 'SELECT * FROM theloai_con WHERE id = '.$id;
        // Thực thi
        return queryOne($sql);
    }

    function count_sp_from_tlc($idcatalog)
    {
        // Câu lệnh SQL
        $sql =
            'SELECT COUNT(sp.id) as "amount"
                FROM theloai_con tlc INNER JOIN sanpham sp ON tlc.id = sp.id_catalog
            WHERE tlc.id = '.$idcatalog;
        // Thực thi
        return queryOne($sql);
    }
    
    /* Admin */

    function them_tl($name, $sort)
    {
        $sql = 'INSERT INTO theloai (name, sort) VALUES ("'.$name.'", "'.$sort.'")';
        // Thực thi
        execute($sql);
    }

    function xoa_tl($id)
    {
        $sql = 'DELETE FROM theloai WHERE id = '.$id;
        // Thực thi
        execute($sql);
    }

    function capnhat_tl($id, $name, $sort)
    {
        $sql = "UPDATE theloai SET name = '$name', sort = '$sort' WHERE id = '$id'";
        // Thực thi
        execute($sql);
    }

    function them_tlc($name, $id_parent, $sort)
    {
        $sql = 'INSERT INTO theloai_con (name, id_parent, sort) VALUES ("'.$name.'", "'.$id_parent.'", "'.$sort.'")';
        // Thực thi
        execute($sql);
    }

    function xoa_tlc($id)
    {
        $sql = 'DELETE FROM theloai_con WHERE id = '.$id;
        // Thực thi
        execute($sql);
    }

    function capnhat_tlc($id, $name, $id_parent, $sort)
    {
        $sql = "UPDATE theloai_con SET name = '$name', id_parent = '$id_parent', sort = '$sort' WHERE id = '$id'";
        // Thực thi
        execute($sql);
    }
?>