<?php

    include "../../model/timkiem.php";

    if(isset($_POST['search']))
        $dskq = timkiem($_POST['search']);
    if(count($dskq) > 0)
    {
        $output = '';
        foreach ($dskq as $kq)
        {
            $source = '';
            $link = '';
            switch ($kq['source'])
            {
                case 'sanpham':
                    $source = 'sản phẩm';
                    $link = 'index.php?page=product&act=detail&id='.$kq['id'];
                    break;
                case 'tacgia':
                    $source = 'tác giả';
                    $link = 'index.php?page=author&id='.$kq['id'];
                    break;
                default:
                    break;
            }
            $output .= '<p><a href='.$link.'>'.$kq['name'].'<span class="source_result">('.$source.')</span></a></p>';
        }
        echo $output;
    }
    else
    {
        echo '<p class="search_notfound">Không tìm thấy từ khoá</p>';
    }
?>