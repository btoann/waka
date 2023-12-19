<?php

    include_once 'connect.php';

    function show_dstg()
    {
        // Câu lệnh SQL
        $sql = 'SELECT * FROM tacgia ORDER by name asc';
        // Thực thi
        return query($sql);
    }

?>