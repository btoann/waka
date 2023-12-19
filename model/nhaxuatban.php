<?php

    include_once 'connect.php';

    function show_dsnxb()
    {
        // Câu lệnh SQL
        $sql = 'SELECT * FROM nhaxuatban ORDER by name asc';
        // Thực thi
        return query($sql);
    }

?>