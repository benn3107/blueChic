<link rel="stylesheet" href="../view/css/index.css">
<div class="banner">
    <img src="../view/images/3007_32197_Laptop-HP-Envy-13-ah0026TU-4.jpg" alt="">
</div>
<div class="product">
    <div class="balo">
        <div class="tille">
            <h3>BALO</h3>
        </div>
        <div class="sanpham responsive">

            <?php

            $dssanpham = sanpham_showId_1();

            foreach ($dssanpham as $row) {
                echo '
                        <div class="sanpham1">
                            <form method = "POST" action = "../controller/index.php?act=cart">
                                <img src="../view/images/' . $row['hinh'] . '" alt="">
                                <h3>' . substr($row['tensp'], 0, 45)  . '</h3>
                                <p>' . $row['gia'] . ' VNĐ</p>
                                <input type="hidden" name="hinh" value="' . $row['hinh'] . '"/>
                                <input type="hidden" name="tensp" value="' . $row['tensp'] . '"/>
                                <input type="hidden" name="gia" value="' . $row['gia'] . '"/>
                                <input type="hidden" name="soluong" value="1">
                                <div class="buy">
                                <button><a href="../controller/index.php?act=chitiet&idsp=' . $row['id'] . '">Xem chi tiết</a></button>
                                    <input type="submit" value="Cho vào giỏ" name="addcart">
                                </div>
                            </form>
                        </div>
                                 ';
            }

            ?>

        </div>
    </div>
    <div class="vali">
        <div class="tille">
            <h3>VALI KÉO</h3>
        </div>
        <div class="sanpham responsive">
            <?php
            $dssanpham = sanpham_showId_2();
            foreach ($dssanpham as $row) {
                echo '
                        <div class="sanpham1">
                            <form method = "POST" action = "../controller/index.php?act=cart">
                                <img src="../view/images/' . $row['hinh'] . '" alt="">
                                <h3>' . substr($row['tensp'], 0, 45)  . '</h3>
                                <p>' . $row['gia'] . ' VNĐ</p>
                                <input type="hidden" name="hinh" value="' . $row['hinh'] . '"/>
                                <input type="hidden" name="tensp" value="' . $row['tensp'] . '"/>
                                <input type="hidden" name="gia" value="' . $row['gia'] . '"/>
                                <input type="hidden" name="soluong" value="1">
                                <div class="buy">
                                <button><a href="../controller/index.php?act=chitiet&idsp=' . $row['id'] . '">Xem chi tiết</a></button>
                                    <input type="submit" value="Cho vào giỏ" name="addcart">
                                </div>
                            </form>
                        </div>
                                 ';
            }
            ?>
        </div>
    </div>
    <div class="cap">
        <div class="tille">
            <h3>Acer</h3>
        </div>
        <div class="sanpham responsive">
            <?php
            $dssanpham = sanpham_showId_3();
            foreach ($dssanpham as $row) {
                echo '
                           <div class="sanpham1">
                               <form method = "POST" action = "../controller/index.php?act=cart">
                                   <img src="../view/images/' . $row['hinh'] . '" alt="">
                                   <h3>' . substr($row['tensp'], 0, 45)  . '</h3>
                                   <p>' . $row['gia'] . ' VNĐ</p>
                                   <input type="hidden" name="hinh" value="' . $row['hinh'] . '"/>
                                   <input type="hidden" name="tensp" value="' . $row['tensp'] . '"/>
                                   <input type="hidden" name="gia" value="' . $row['gia'] . '"/>
                                   <input type="hidden" name="soluong" value="1">
                                   <div class="buy">
                                   <button><a href="../controller/index.php?act=chitiet&idsp=' . $row['id'] . '">Xem chi tiết</a></button>
                                       <input type="submit" value="Cho vào giỏ" name="addcart">
                                   </div>
                               </form>
                           </div>
                                    ';
            }
            ?>
        </div>
    </div>
    <div class="bane">
        <img src="../view/images/Banner/banner1.jpg" alt="">
        <img src="../view/images/Banner/banner2.jpg" alt="">
    </div>
    <!-- <div class="tintuc">
        <div class="tille">
            <h3>TIN TỨC - SỰ KIỆN</h3>
        </div>
        <div class="new responsive">

            <a href="../controller/index.php?act=baiviet">
                <div class="tintuc1">
                    <img src="../view/anh/Acer/Laptop Acer Aspire 3 A315-56-37DV NX.HS5SV.png" alt="">
                    <H4></H4>
                    <h4>LAPTOP ACER ASPIRE 3 BỀN ĐẸP MUA Ở ĐÂU?</h4>
                    <p class="dang">Đăng bởi: admin</p>
                    <hr>
                    <p>
                        Hiện nay, tiêu chí lựa chọn mua Laptop không chỉ đơn thuần về kiểu dáng, chất lượng, giá
                        thành...
                        mà rất nhiều khách hàng còn yêu cầu về cấu hình
                    </p>
                    <div class="thongso">
                        <p><i class="fa-solid fa-eye"></i> 185 Lượt xem</p>
                        <p style="text-align: right;"><i class="fa-solid fa-calendar-days"></i> 01-05-2022</p>
                    </div>
                </div>
            </a>

            <a href="../controller/index.php?act=baiviet">
                <div class="tintuc1">
                    <img src="../view/anh/Acer/Laptop Acer Aspire 5 A515-55-35SE.png" alt="">
                    <H4></H4>
                    <h4>kHUYẾN MÃI CỰC SỐC NHỮNG MẪU LAPTOP ACER </h4>
                    <p class="dang">Đăng bởi: admin</p>
                    <hr>
                    <p>
                        Bạn là học sinh sinh viên đang muốn tìm cho mình một chiếc Laptop đi học, 
                        đi làm vừa học vừa tiện dụng mà giá cả hợp lý thì đừng bỏ lỡ chương trình sale cực sốc
                    </p>
                    <div class="thongso">
                        <p><i class="fa-solid fa-eye"></i> 571 Lượt xem</p>
                        <p><i class="fa-solid fa-calendar-days"></i> 24-04-2022</p>
                    </div>
                </div>
            </a>

            <a href="../controller/index.php?act=baiviet">
                <div class="tintuc1">
                    <img src="../view/anh/Acer/Laptop Acer Aspire 5 A515-56-36UT.png" alt="">
                    <H4></H4>
                    <h4>kHUYẾN MÃI THÁNG 12 LAPTOP ACER ASPIRE 5 </h4>
                    <p class="dang">Đăng bởi: admin</p>
                    <hr>
                    <p>
                    Laptop Acer Aspire 5 hẳn là thương hiệu không còn quá xa lạ với những ai đam mê 
                    Laptop mà đặc biệt là giới trẻ hiện nay .
                    </p>
                    <div class="thongso">
                        <p><i class="fa-solid fa-eye"></i> 242 Lượt xem</p>
                        <p><i class="fa-solid fa-calendar-days"></i> 07-05-2022</p>
                    </div>
                </div>
            </a>

            <a href="../controller/index.php?act=baiviet">
                <div class="tintuc1">
                    <img src="../view/anh/Acer/Laptop Acer Gaming Nitro 5 Eagle AN515-57-71VV NH.QENSV.005.jpg" alt="">
                    <h4></h4>
                    <h4>BỘ SƯU TẬP BALO LAPTOP ĐẸP MÙA HÈ 2021</h4>
                    <p class="dang">Đăng bởi: admin</p>
                    <hr>
                    <p>
                        Chúng ta đang bước vào những ngày tháng đầu tiên của mùa hè năm 2021, cái nắng chói
                        chang và oi ả của mùa hạ đầu mùa chắc hẳn khiến không ít
                    </p>
                    <div class="thongso">
                        <p><i class="fa-solid fa-eye"></i> 351 Lượt xem</p>
                        <p><i class="fa-solid fa-calendar-days"></i> 10-05-2022</p>
                    </div>
                </div>
            </a>

            <a href="../controller/index.php?act=baiviet">
                <div class="tintuc1">
                    <img src="../view/anh/Acer/Laptop Gaming Acer Nitro 5 AN515 45 R6EV.png" alt="">
                    <h4>MUA LAPTOP ĐẸP TẠI THÀNH PHỐ HỒ CHÍ MINH </h4>
                    <p class="dang">Đăng bởi: admin</p>
                    <hr>
                    <p>
                        Kinh tế nhiều thành phần trên địa bàn quận phát triển nhanh.Công tác y tế, dân số, kế
                        hoạch hóa gia đình; công tác giáo dục đào tạo; công tác thông tin tuyên truyền và tổ
                        chức các hoạt động văn hóa nghệ thuật,
                    </p>
                    <div class="thongso">
                        <p><i class="fa-solid fa-eye"></i> 112 Lượt xem</p>
                        <p><i class="fa-solid fa-calendar-days"></i> 14-05-2022</p>
                    </div>
                </div>
            </a>

        </div>
    </div> -->

    <div class="thuonghieu ">
        <div class="tille">
            <h3>THƯƠNG HIỆU</h3>
        </div>
        <div class="logothuonghieu responsive">
            <img src="../view/images/thuonghieu/acer.jpg" alt="">
            <img src="../view/images/thuonghieu/asus.jpg" alt="">
            <img src="../view/images/thuonghieu/msi.jpg" alt="">
            <img src="../view/images/thuonghieu/HP.jpg" alt="">
            <img src="../view/images/thuonghieu/mac.jpg" alt="">
            <img src="../view/images/thuonghieu/dell.jpg" alt="">

        </div>
    </div>
</div>