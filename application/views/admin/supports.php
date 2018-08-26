<?php init_head(); ?>
<style type="text/css">
    ul.ml-15 {
        margin-left: 15px;
    }
</style>
<div id="wrapper">
    <div class="content">
        <div class="row">
            <div class="col-md-12">
                <div class="panel_s mtop5">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-md-9">
                                <h2>Bất động sản</h2>
                                <h3 id="sanpham">Sản phẩm</h3>
                                <p class="bd-lead">
                                    Hiển thị danh sách các bài viết <strong>sản phẩm</strong><br>
                                    Cho phép lọc, tìm kiếm các bài viết<br>
                                    Cho phép thay đổi số bài viết / 1 trang, xuất ra excel, csv, pdf, in<br>
                                    Cho phép xem, chỉnh sửa, xóa bài viết
                                </p>
                                <h3 id="duan">Dự án</h3>
                                <p class="bd-lead">
                                    Hiển thị danh sách các bài viết <strong>dự án</strong><br>
                                    Cho phép lọc, tìm kiếm các bài viết<br>
                                    Cho phép thay đổi số bài viết / 1 trang, xuất ra excel, csv, pdf, in<br>
                                    Cho phép xem, chỉnh sửa, xóa bài viết
                                </p>
                                <h3 id="bds-new">Bài viết mới</h3>
                                <p class="bd-lead">
                                    - Loại bài viết: lựa chọn bài viết là sản phẩm hay dự án<br>
                                    - Tiêu đề: Tiêu đề bài viết<br>
                                    - Danh mục:  Danh mục bài viết<br>
                                    - Thể loại: Thể loại bài viết<br>
                                    - Đặc điểm: Các đặc diểm của bài viết<br>
                                    - Ghim bài viết: Ghim bài viết hot
                                    - Vô hiệu hóa: Vô hiệu hóa bài viết<br>
                                    - Thông tin tổng quan<br>
                                    - Vị trí (Mã nhúng bản đồ google hoặc văn bản)<br>
                                    - Mặt bằng<br>
                                    - Căn hộ, nền<br>
                                    - Tiện ích<br>
                                    - Khu vực: chọn khu vực<br>
                                    - Xã/thị trấn: chọn xã/thị trấn<br>
                                    - Ảnh đại diện: chọn ảnh đại diện<br>
                                    - Ảnh gallery; chọn các ảnh làm gallery, bấm vào + để thêm, - để xóa bỏ<br>
                                    - Giá<br>
                                    - Diện tích<br>
                                    - Quy hoạch<br>
                                    - Số căn<br>
                                    - Số lô<br>
                                    - Mặt tiền<br>
                                    - Phòng ngủ<br>
                                    - Phòng tắm<br>
                                    - Trạng thái<br>
                                    - Seo title: thẻ &lt;title&gt; của bài viết<br>
                                    - Seo description: thẻ &lt;meta description&gt; của bài viết<br>

                                </p>
                                <h3 id="danhmuc-bds">Danh mục</h3>
                                <p class="bd-lead">
                                    List các danh mục bất động sản, cho phép thêm, sửa xóa danh mục, kích hoạt
                                </p>
                                <h3 id="theloai-bds">Thể loại</h3>
                                <p class="bd-lead">
                                    List các thể loại bất động sản, cho phép thêm, sửa xóa thể loại, kích hoạt
                                </p>

                                <h3 id="khu-bds">Khu vực</h3>
                                <p class="bd-lead">
                                    List các khu vực bất động sản, cho phép thêm, sửa xóa khu vực, kích hoạt
                                </p>

                                <h3 id="xathitran-bds">Xã/thị trấn</h3>
                                <p class="bd-lead">
                                    List các xã/thị trấn bất động sản, cho phép thêm, sửa xóa xã/thị trấn, kích hoạt
                                </p>

                                <h3 id="dacdiem-bds">Đặc điểm</h3>
                                <p class="bd-lead">
                                    List các đặc điểm bất động sản, cho phép thêm, sửa xóa đặc điểm, kích hoạt
                                </p>
                                <h3 id="lienhe-bds">Thông tin liên hệ</h3>

                                <p class="bd-lead">
                                    Chức các thông tin liên hệ mà khách hàng gửi tại trang chi tiết bất động sản.
                                </p>
                            </div>
                            <div class="col-md-3">
                                <h1 class="bd-title">Mục lục</h1>
                                <ul class="section-nav">
                                    <li>
                                        <a href="#bds">Bất động sản</a>
                                        <ul class="ml-15">
                                            <li><a href="#sanpham">Danh sách sản phẩm</a></li>
                                            <li><a href="#duan">Danh sách dự án</a></li>
                                            <li><a href="#bds-new">Thêm mới bất động sản</a></li>
                                            <li><a href="#danhmuc-bds">Danh mục</a></li>
                                            <li><a href="#theloai-bds">Thể loại</a></li>
                                            <li><a href="#khu-bds">Khu vực</a></li>
                                            <li><a href="#xathitran-bds">Xã/thị trấn</a></li>
                                            <li><a href="#dacdiem-bds">Đặc điểm</a></li>
                                            <li><a href="#lienhe-bds">Thông tin liên hệ</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#news">Tin tức</a>
                                        <ul class="ml-15">
                                            <li><a href="#news">Danh sách bài viết</a></li>
                                            <li><a href="#news-new">Thêm mới tin</a></li>
                                            <li><a href="#news-group">Nhóm tin tức</li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#advices">Tin tư vấn</a>
                                        <ul class="ml-15">
                                            <li><a href="#advices">Danh sách bài viết</a></li>
                                            <li><a href="#advices-new">Thêm mới tin</a></li>
                                            <li><a href="#advices-group">Nhóm tin</li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#mreports">Báo cáo thị trường</a>
                                        <ul class="ml-15">
                                            <li><a href="#mreports">Danh sách bài viết</a></li>
                                            <li><a href="#mreports-new">Thêm mới</a></li>
                                            <li><a href="#mreports-group">Nhóm bài viết</li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#pages">Trang</a>
                                    </li>
                                    <li>
                                        <a href="#contacts">Liên hệ</a>
                                        <ul class="ml-15">
                                            <li><a href="#contacts-1">Liên hệ nhận bản tin</a></li>
                                            <li><a href="#contacts-2">Liên hệ nhận tư vấn</a></li>
                                            <li><a href="#contacts-3">Liên hệ nhận tin BĐS</a></li>
                                            <li><a href="#contacts-4">Từ trang liên hệ</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="#customer">Khách hàng</a>
                                    </li>
                                    <li>
                                        <a href="#tickets">Hỗ trợ</a>
                                    </li>
                                    <li>
                                        <a href="#proposals">Doanh số</a>
                                    </li>
                                    <li>
                                        <a href="#expenses">Chi phí</a>
                                    </li>
                                    <li>
                                        <a href="#contracts">Hợp đồng</a>
                                    </li>
                                    <li>
                                        <a href="#projects">Các dự án</a>
                                    </li>
                                    <li>
                                        <a href="#tasks">Các công viêc</a>
                                    </li>
                                    <li>
                                        <a href="#utilities">Tiện ích</a>
                                    </li>
                                    <li>
                                        <a href="#reports">Báo cáo</a>
                                    </li>
                                    <li>
                                        <a href="#settings">Thiết lập</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php init_tail(); ?>
</body>
</html>
