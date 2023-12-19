<?php

    include_once 'connect.php';

    function show_dssp($idcatalog, $idcatchild)
    {
        // Câu lệnh SQL: Lấy 1 số thông tin hiển thị dssp
        $sql =
            'SELECT sp.id as "id",
                    sp.name as "name",
                    sp.image as "image",
                    tg.name as "author",
                    tl.id as "id_cat_parent",
                    sp.votes, sp.views, sp.description
                FROM sanpham sp INNER JOIN tacgia tg ON sp.id_author = tg.id
                                INNER JOIN (theloai_con tlc INNER JOIN theloai tl ON tlc.id_parent = tl.id)
                                            ON sp.id_catalog = tlc.id
                                INNER JOIN nhaxuatban nxb ON sp.id_publisher = nxb.id
            WHERE 1';
        if($idcatalog > 0) $sql .= ' AND tl.id = '.$idcatalog;
        if($idcatchild > 0) $sql .= ' AND tlc.id = '.$idcatchild;
        //if($idcat_child > 0) $sql .= ' AND tlc.id = '.$idcat_child;
        $sql .= ' order by sp.date desc, id desc';
        // Thực thi
        return query($sql);
    }

    function show_sp($id)
    {
        // Câu lệnh SQL: Hiển thị chi tiết sp
        $sql =
            'SELECT sp.*,
                    DATE_FORMAT(date, "%d/%m/%Y") as "date",
                    tg.name as "name_author",
                    tl.id as "id_cat_parent",
                    tl.name as "name_cat_parent",
                    tlc.name as "name_catalog",
                    nxb.name as "name_publisher"
                FROM sanpham sp INNER JOIN tacgia tg ON sp.id_author = tg.id
                                INNER JOIN (theloai_con tlc INNER JOIN theloai tl ON tlc.id_parent = tl.id)
                                            ON sp.id_catalog = tlc.id
                                INNER JOIN nhaxuatban nxb ON sp.id_publisher = nxb.id
            WHERE 1';
        if($id > 0) $sql.= ' AND sp.id = '.$id;
        if($id == 0) $sql.= ' order by sp.id desc';
        // Thực thi
        return ($id == 0) ? query($sql) : queryOne($sql);
    }

    function get_rand_splq($idcatalog, $id_product, $limit)
    {
        // Câu lệnh SQL: Lấy ngẫu nhiên $limit sp liên quan theo tl
        $sql = 'SELECT * FROM sanpham sp WHERE 1';
        if($idcatalog > 0) $sql .= ' AND id_catalog = '.$idcatalog;
        if($id_product > 0) $sql .= ' AND id != '.$id_product;
        $sql .= ' ORDER BY RAND()';
        if($limit > 0) $sql .= ' LIMIT '.$limit;
        // Thực thi
        return query($sql);
    }


    /* Admin */

    function them_sp($name, $price, $author, $catalog, $publisher, $image, $description)
    {
        $sql = 'INSERT INTO sanpham (name, price, id_author, id_catalog, id_publisher, image, description)
                        VALUES ("'.$name.'", "'.$price.'", "'.$author.'", "'.$catalog.'",
                         "'.$publisher.'", "'.$image.'", "'.$description.'")';
        // Thực thi
        execute($sql);
    }

    function xoa_sp($id)
    {
        $sql = 'DELETE FROM sanpham WHERE id = '.$id;
        // Thực thi
        execute($sql);
    }

    function capnhat_sp($id, $name, $price, $id_author, $id_catalog, $id_publisher, $image, $description)
    {
        $sql = "UPDATE sanpham SET name = '$name', price = '$price', id_author = '$id_author',
                                    id_catalog = '$id_catalog', id_publisher = '$id_publisher',
                                    description = '$description'";
        if($image != '') $sql .= ", image = '$image'";
        $sql .= " WHERE id = '$id'";
        // Thực thi
        execute($sql);
    }
?>