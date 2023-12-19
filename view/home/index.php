<link rel="stylesheet" href="view/css/home.css">
<div class="box_center pd_top_100">
    <section class="row">
        <div class="banner_view">
            <ul class="banners_slide">
                <li><a href=""><img src="view/image/1431_new.jpg" alt=""></a></li>
                <li><a href=""><img src="view/image/1494_new.png" alt=""></a></li>
                <li><a href=""><img src="view/image/988_new.jpg" alt=""></a></li>
                <li><a href=""><img src="view/image/1068_new.jpg" alt=""></a></li>
                <li><a href=""><img src="view/image/1405_new.png" alt=""></a></li>
                <!-- <li><a href=""><img src="" alt=""></a></li>
                <li><a href=""><img src="" alt=""></a></li> -->
            </ul>
            <div class="prev_banner"></div>
            <div class="next_banner"></div>
        </div>
    </section>
    <section class="row mg_top_40">
        <div class="left_col box_shadow_1 catalog_col">
            <div class="lc_header">
                <p>Danh mục</p>
                <span></span>
            </div>
            <ul class="lc_content_1">
            <?php
                foreach($dstl as $tl)
                {
                    $id = $tl['id'];
                    $name = $tl['name'];
                    $count = count_sp_from_tl($id)['amount'];
                    $link = 'index.php?page=product&act=catalog&id='.$id;
                    echo '<li><a href="'.$link.'">'.$name.'<span>'.$count.'</span></a></li>';
                }
            ?>
                <li><a href="#">Tuyển tập chọn lọc<span>#</span></a></li>
                <li><a href="#">Tủ sách liên kết<span>#</span></a></li>
                <li><a href="#">Nhà xuất bản<span>#</span></a></li>
                <li><a href="#">Tác giả<span>#</span></a></li>
                <li><a href="#">Tin tức Waka<span></span></a></li>
            </ul>
        </div>
        <div class="right_area">
            <div class="ra_header">
                <p>Bảng xếp hạng</p>
                <ul>
                    <li class="ra_active"><a href="">Ngày</a></li>
                    <li><a href="">Tuần</a></li>
                    <li><a href="">Tháng</a></li>
                    <li><a href="">Tổng</a></li>
                </ul>
            </div>
            <div class="ra_content_1">
                <div class="ra_c1_section rank_book">
                    <p class="title_section">Sách</p>
                    <div class="scroll_box">
                        <div class="ra_c1_item">
                            <span class="rank_num_item">1</span>
                            <a href="" class="item_img">
                                <img src="view/image/rank_book/gio_am_khong_bang_anh_tham_tinh_tap33.jpg" alt="gio_am_khong_bang_anh_tham_tinh_tap33">
                            </a>
                            <div class="item_info">
                                <a href="" class="item_name">
                                    <p>Gió ấm không bằng anh thâm tình - Tập 33</p>
                                </a>
                                <a href="" class="item_author">
                                    <p>Thanh Thanh Thuỳ Tiếu</p>
                                </a>
                                <div>
                                    <span class="item_view">404</span>
                                    <span class="item_like">61</span>
                                </div>
                            </div>
                        </div>
                        <div class="ra_c1_item">
                            <span class="rank_num_item">2</span>
                            <a href="" class="item_img">
                                <img src="view/image/rank_book/trinh_the_kieu_y_tap16.jpg" alt="trinh_the_kieu_y_tap16">
                            </a>
                            <div class="item_info">
                                <a href="" class="item_name">
                                    <p>Trịnh thế kiều y - Tập 16</p>
                                </a>
                                <a href="" class="item_author">
                                    <p>Phương Phương</p>
                                </a>
                                <div>
                                    <span class="item_view">296</span>
                                    <span class="item_like">14</span>
                                </div>
                            </div>
                        </div>
                        <div class="ra_c1_item">
                            <span class="rank_num_item">3</span>
                            <a href="" class="item_img">
                                <img src="view/image/rank_book/dac_nhan_tam.jpg" alt="dac_nhan_tam">
                            </a>
                            <div class="item_info">
                                <a href="" class="item_name">
                                    <p>Đắc nhân tâm</p>
                                </a>
                                <a href="" class="item_author">
                                    <p>Dale Carnegie</p>
                                </a>
                                <div>
                                    <span class="item_view">213</span>
                                    <span class="item_like">11874</span>
                                </div>
                            </div>
                        </div>
                        <div class="ra_c1_item">
                            <span class="rank_num_item">4</span>
                            <a href="" class="item_img">
                                <img src="view/image/rank_book/yeu_tinh_quan_tap3.jpg" alt="yeu_tinh_quan_tap3">
                            </a>
                            <div class="item_info">
                                <a href="" class="item_name">
                                    <p>Yêu tinh quán - Tập 3</p>
                                </a>
                                <a href="" class="item_author">
                                    <p>Niệm Niệm</p>
                                </a>
                                <div>
                                    <span class="item_view">161</span>
                                    <span class="item_like">3</span>
                                </div>
                            </div>
                        </div>
                        <div class="ra_c1_item">
                            <span class="rank_num_item">5</span>
                            <a href="" class="item_img">
                                <img src="view/image/rank_book/nong_vien_tu_cam_tap39.jpg" alt="nong_vien_tu_cam_tap39">
                            </a>
                            <div class="item_info">
                                <a href="" class="item_name">
                                    <p>Nông viên tự cẩm - Tập 39</p>
                                </a>
                                <a href="" class="item_author">
                                    <p>Quỹ Họa Tình Vũ</p>
                                </a>
                                <div>
                                    <span class="item_view">129</span>
                                    <span class="item_like">27</span>
                                </div>
                            </div>
                        </div>
                        <div class="ra_c1_item">
                            <span class="rank_num_item">6</span>
                            <a href="" class="item_img">
                                <img src="view/image/rank_book/ket_noi_am_duong_tap1.jpg" alt="ket_noi_am_duong_tap1">
                            </a>
                            <div class="item_info">
                                <a href="" class="item_name">
                                    <p>Kết hôn âm dương - Tập 1</p>
                                </a>
                                <a href="" class="item_author">
                                    <p>0 Giờ Sáng</p>
                                </a>
                                <div>
                                    <span class="item_view">98</span>
                                    <span class="item_like">1441</span>
                                </div>
                            </div>
                        </div>
                        <div class="ra_c1_item">
                            <span class="rank_num_item">7</span>
                            <a href="" class="item_img">
                                <img src="view/image/rank_book/cung_chieu_co_vo_quan_nhan_tap51.jpg" alt="cung_chieu_co_vo_quan_nhan_tap51">
                            </a>
                            <div class="item_info">
                                <a href="" class="item_name">
                                    <p>Cưng chiều cô vợ quân nhân - Tập 51</p>
                                </a>
                                <a href="" class="item_author">
                                    <p>Huỳnh Hạ</p>
                                </a>
                                <div>
                                    <span class="item_view">97</span>
                                    <span class="item_like">177</span>
                                </div>
                            </div>
                        </div>
                        <div class="ra_c1_item">
                            <span class="rank_num_item">8</span>
                            <a href="" class="item_img">
                                <img src="view/image/rank_book/chi_yeu_minh_em_tap16.jpg" alt="chi_yeu_minh_em_tap16">
                            </a>
                            <div class="item_info">
                                <a href="" class="item_name">
                                    <p>Chỉ yêu mình em - Tập 16</p>
                                </a>
                                <a href="" class="item_author">
                                    <p>Phù Đồ Yêu</p>
                                </a>
                                <div>
                                    <span class="item_view">94</span>
                                    <span class="item_like">37</span>
                                </div>
                            </div>
                        </div>
                        <div class="ra_c1_item">
                            <span class="rank_num_item">9</span>
                            <a href="" class="item_img">
                                <img src="view/image/rank_book/quy_giau_nguoi_tap10.jpg" alt="quy_giau_nguoi_tap10">
                            </a>
                            <div class="item_info">
                                <a href="" class="item_name">
                                    <p>Quỷ giấu người - Tập 10</p>
                                </a>
                                <a href="" class="item_author">
                                    <p>Truyền Thuyết Một Con Cá</p>
                                </a>
                                <div>
                                    <span class="item_view">94</span>
                                    <span class="item_like">2</span>
                                </div>
                            </div>
                        </div>
                        <div class="ra_c1_item">
                            <span class="rank_num_item">10</span>
                            <a href="" class="item_img">
                                <img src="view/image/rank_book/ban_la_ai_trong_mat_nguoi_khac.jpg" alt="ban_la_ai_trong_mat_nguoi_khac">
                            </a>
                            <div class="item_info">
                                <a href="" class="item_name">
                                    <p>Bạn là ai trong mắt người khác</p>
                                </a>
                                <a href="" class="item_author">
                                    <p>Seth Price, Barry Feldman</p>
                                </a>
                                <div>
                                    <span class="item_view">81</span>
                                    <span class="item_like">596</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="ra_c1_section rank_audio">
                    <p class="title_section">Sách nói</p>
                    <div class="scroll_box">
                        <div class="ra_c1_item">
                            <span class="rank_num_item">1</span>
                            <a href="" class="item_img">
                                <img src="view/image/rank_audio/nghi_giau_lam_giau.jpg" alt="nghi_giau_lam_giau">
                            </a>
                            <div class="item_info">
                                <a href="" class="item_name">
                                    <p>Nghĩ giàu làm giàu</p>
                                </a>
                                <a href="" class="item_author">
                                    <p>Napoleon Hill</p>
                                </a>
                                <div>
                                    <span class="item_listen">194</span>
                                </div>
                            </div>
                        </div>
                        <div class="ra_c1_item">
                            <span class="rank_num_item">2</span>
                            <a href="" class="item_img">
                                <img src="view/image/rank_audio/hat_giong_yeu_doi.jpg" alt="hat_giong_yeu_doi">
                            </a>
                            <div class="item_info">
                                <a href="" class="item_name">
                                    <p>Hạt giống yêu đời</p>
                                </a>
                                <a href="" class="item_author">
                                    <p>Robert Fulghum</p>
                                </a>
                                <div>
                                    <span class="item_listen">55</span>
                                </div>
                            </div>
                        </div>
                        <div class="ra_c1_item">
                            <span class="rank_num_item">3</span>
                            <a href="" class="item_img">
                                <img src="view/image/rank_audio/blog_cho_tam_hon.jpg" alt="blog_cho_tam_hon">
                            </a>
                            <div class="item_info">
                                <a href="" class="item_name">
                                    <p>Blog cho tâm hồn</p>
                                </a>
                                <a href="" class="item_author">
                                    <p>Madisyn Taylor</p>
                                </a>
                                <div>
                                    <span class="item_listen">52</span>
                                </div>
                            </div>
                        </div>
                        <div class="ra_c1_item">
                            <span class="rank_num_item">4</span>
                            <a href="" class="item_img">
                                <img src="view/image/rank_audio/neu_khong_de_duoc_anh_co_bo_em.jpg" alt="neu_khong_de_duoc_anh_co_bo_em">
                            </a>
                            <div class="item_info">
                                <a href="" class="item_name">
                                    <p>Nếu không đẻ được, anh có bỏ em</p>
                                </a>
                                <a href="" class="item_author">
                                    <p>D.R</p>
                                </a>
                                <div>
                                    <span class="item_listen">29</span>
                                </div>
                            </div>
                        </div>
                        <div class="ra_c1_item">
                            <span class="rank_num_item">5</span>
                            <a href="" class="item_img">
                                <img src="view/image/rank_audio/cong_tu_lien_thanh.jpg" alt="cong_tu_lien_thanh">
                            </a>
                            <div class="item_info">
                                <a href="" class="item_name">
                                    <p>Công tử Liên Thành</p>
                                </a>
                                <a href="" class="item_author">
                                    <p>Mãn Tọa Y Quan Thắng Tuyết</p>
                                </a>
                                <div>
                                    <span class="item_listen">26</span>
                                </div>
                            </div>
                        </div>
                        <div class="ra_c1_item">
                            <span class="rank_num_item">6</span>
                            <a href="" class="item_img">
                                <img src="view/image/rank_audio/khong_yeu_thi_bien.jpg" alt="khong_yeu_thi_bien">
                            </a>
                            <div class="item_info">
                                <a href="" class="item_name">
                                    <p>Không yêu thì "biến"</p>
                                </a>
                                <a href="" class="item_author">
                                    <p>Cửu Lộ Phi Hương</p>
                                </a>
                                <div>
                                    <span class="item_listen">26</span>
                                </div>
                            </div>
                        </div>
                        <div class="ra_c1_item">
                            <span class="rank_num_item">7</span>
                            <a href="" class="item_img">
                                <img src="view/image/rank_audio/hector_va_hanh_trinh_thu_vi_di_tim_hanh_phuc.jpg" alt="hector_va_hanh_trinh_thu_vi_di_tim_hanh_phuc">
                            </a>
                            <div class="item_info">
                                <a href="" class="item_name">
                                    <p>Hector và hành trình thú vị đi tìm hạnh phúc</p>
                                </a>
                                <a href="" class="item_author">
                                    <p>François Lelord</p>
                                </a>
                                <div>
                                    <span class="item_listen">24</span>
                                </div>
                            </div>
                        </div>
                        <div class="ra_c1_item">
                            <span class="rank_num_item">8</span>
                            <a href="" class="item_img">
                                <img src="view/image/rank_audio/mo_khau_tu_tap4.jpg" alt="mo_khau_tu_tap4">
                            </a>
                            <div class="item_info">
                                <a href="" class="item_name">
                                    <p>Mộ Khâu Tử - Tập 4</p>
                                </a>
                                <a href="" class="item_author">
                                    <p>Hà Đăng</p>
                                </a>
                                <div>
                                    <span class="item_listen">23</span>
                                </div>
                            </div>
                        </div>
                        <div class="ra_c1_item">
                            <span class="rank_num_item">9</span>
                            <a href="" class="item_img">
                                <img src="view/image/rank_audio/nhung_quyet_dinh_thay_doi_cuoc_song.jpg" alt="nhung_quyet_dinh_thay_doi_cuoc_song">
                            </a>
                            <div class="item_info">
                                <a href="" class="item_name">
                                    <p>Những quyết định thay đổi cuộc sống</p>
                                </a>
                                <a href="" class="item_author">
                                    <p>Spencer Johnson</p>
                                </a>
                                <div>
                                    <span class="item_listen">21</span>
                                </div>
                            </div>
                        </div>
                        <div class="ra_c1_item">
                            <span class="rank_num_item">10</span>
                            <a href="" class="item_img">
                                <img src="view/image/rank_audio/tiem_do_co_a_xa_tap2.jpg" alt="tiem_do_co_a_xa_tap2">
                            </a>
                            <div class="item_info">
                                <a href="" class="item_name">
                                    <p>Tiệm đồ cổ Á Xá (Tập 2)</p>
                                </a>
                                <a href="" class="item_author">
                                    <p>Huyền Sắc</p>
                                </a>
                                <div>
                                    <span class="item_listen">21</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>