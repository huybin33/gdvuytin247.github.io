<?php require_once ('ketnoi/head.php'); ?>
<title>Trang Chủ</title>
<?php require_once ('ketnoi/nav.php');
$don = mysqli_fetch_assoc(mysqli_query($ketnoi, "SELECT COUNT(*) FROM `ticket` WHERE `status` = 'scam' ")) ['COUNT(*)'];
?>

<br>
<br>
<div id="main" class="main">
        
    <h1 class="d-none">Mua bán thẻ điện thoại, thẻ game, nạp tiền topup</h1>
    <div class="section-tabs">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <ul class="nav nav-pills" id="pills-tab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link  active " data-bs-toggle="pill"
                                data-bs-target="#scammer-pill" type="button">
                            <i class="fas fa-search"></i>Tra cứu scammer
                        </button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link nav-link_secondary " data-bs-toggle="pill"
                                data-bs-target="#uytin-pill">
                            <i class="fas fa-user-alt"></i>Tra cứu bảo hiểm
                        </button>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="tab-content">
        <div class="tab-pane fade  active show  " id="scammer-pill">
            <div class="section-search">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-10 col-xl-8">
                            <div class="position-relative zi-1">
                                <div class="vstack gap-20px">
                                    <div class="section-heading text-center">
                                        <h2 class="heading-title">
                                            KIỂM TRA SCAMMER
                                        </h2>
                                          <?php
                $don_ktm = mysqli_fetch_assoc(mysqli_query($ketnoi, "SELECT COUNT(*) FROM `ticket` WHERE `status` = 'xuly' ")) ['COUNT(*)'];
$don_ktm2 = mysqli_fetch_assoc(mysqli_query($ketnoi, "SELECT COUNT(*) FROM `ticket` WHERE `tanthanh` IS NOT NULL"))['COUNT(*)'];
                $don_ktm3 = mysqli_fetch_assoc(mysqli_query($ketnoi, "SELECT COUNT(*) FROM `ticket` WHERE `status` = 'scam' ")) ['COUNT(*)'];
                ?>
                                        <div class="heading-description">
                                            Hiện có <?=$don_ktm3;?> stk, sđt , fb lừa đảo, <?=$don_ktm2;?> tán thành, <?=$don_ktm;?> tố
                                            cáo
                                            đang chờ
                                            duyệt.
                                            <br>Sẽ giúp bạn mua bán an toàn hơn khi online !!!
                                        </div>
                                    </div>
                                    <div class="section-form">
                                        <form action="/checkscam" method="GET">
                                            <div class="form-fields hstack">
                                                <input type="text" class="form-control form-fields_input" name="keyword" value="" autofocus
                                                       placeholder="Nhập SĐT, Email hoặc Số tài khoản để kiểm tra...">
                                                <button type="submit"
                                                        class="button-theme button-theme_secondary"
                                                        aria-label="Tra cứu">
                                                    <i class="fal fa-search"></i>
                                                    TRA CỨU
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                                                           <div class="text-center" style="padding: 10px"><a href="/posts/to-cao-scam"><button class="btn btn-danger" style="margin-right: 10px"><i class="fal fa-exclamation-triangle"></i> Gửi tố cáo</button></a><a href="/trusted"><button class="btn btn-success"><i class="fa fa-check-circle"></i> Quỹ bảo hiểm</button></a></div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tab-pane fade " id="uytin-pill">
            <div class="section-search section-search_secondary">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-10 col-xl-8">
                            <div class="position-relative zi-1">
                                <div class="vstack gap-20px">
                                    <div class="section-heading text-center">
                                        <h2 class="heading-title">
                                            KIỂM TRA BẢO HIỂM
                                        </h2>
                                        <div class="heading-description">
                                            Tham gia chương trình bảo hiểm của <?=$site_tenweb;?> để tạo uy tín trên Internet. Hãy kiểm tra thông tin ở đây trước khi tiến hành giao dịch.
                                        </div>
                                    </div>
                                    <div class="section-form">
                                        <form action="/checkbaohiem" method="GET">
                                            <div class="form-fields hstack">
                                                <input type="text" class="form-control form-fields_input" name="keyword" value="" autofocus
                                                       placeholder="Nhập Tên hoặc SDT để kiểm tra...">
                                                <button type="submit"
                                                        class="button-theme button-theme_secondary"
                                                        aria-label="Tra cứu">
                                                    <i class="fal fa-search"></i>
                                                    TRA CỨU
                                                </button>
                                            </div>
                                        </form>
                                    </div>
                                                                           <div class="text-center" style="padding: 10px"><a href="/posts/to-cao-scam"><button class="btn btn-danger" style="margin-right: 10px"><i class="fal fa-exclamation-triangle"></i> Gửi tố cáo</button></a><a href="/trusted"><button class="btn btn-success"><i class="fa fa-check-circle"></i> Quỹ bảo hiểm</button></a></div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

        
    <div class="section-gap section-scam">
        <div class="container">
            <div class="section-heading section-heading_decor text-center">
                <h2 class="heading-title">
                    Tố cáo mới nhất
                </h2>
                <h3 class="heading-description">
                    Danh sách tố cáo lừa đảo mới nhất
                </h3>
            </div>
            <div class="vstack">
                <div class="scam-card scam-header">
                    <div class="scam-title scam-column">
                        Người bị tố cáo
                    </div>
                    <div class="scam-column scam-text">
                        Số tiền
                    </div>
                    <div class="scam-column scam-text">
                        SDT
                    </div>
                    <div class="scam-column scam-text">
                        STK
                    </div>
                    <div class="scam-column scam-text">
                        Ngân hàng
                    </div>
                    <div class="scam-column scam-text">
                        Lượt xem
                    </div>
                    <div class="scam-column scam-status">
                        Ngày
                    </div>
                </div>
                
                
                <?php
$i = 1;
$result = mysqli_query($ketnoi, "SELECT * FROM `ticket` WHERE `status` = 'scam' ORDER BY id desc limit 0, 10");
while ($ndk = mysqli_fetch_assoc($result))
{ ?>


                
                
                
                   <div class="scam-card">
                            <div class="scam-title scam-column">
                                <div class="scam-icon me-2">
                                                                            <i class="fas fa-user-alt"></i>
                                                                    </div>
                                <div class="limit">
                                    <?=$ndk['username']; ?>
                                </div>
                            </div>
                            <div class="scam-column scam-price">
<td class="text-center"><?= number_format($ndk['sotien'], 0, ',', '.') ?> VNĐ</td>
							                            </div>
                            <div class="scam-column scam-text">
                                                                <div class="scam-icon me-2">
                                    <i class="fas fa-phone-alt"></i>
                                </div>
                                 <?=$ndk['sdt']; ?>
                                                                </div>
                            <div class="scam-column scam-text">
                                 <?=$ndk['stk']; ?>
                            </div>
                            <div class="scam-column scam-text">
                                  <?=$ndk['ngan_hang']; ?>
                            </div>
                            <div class="scam-column scam-text">
                                <div class="scam-icon me-2">
                                    <i class="fas fa-eye"></i>
                                </div>
                                 <?=$ndk['view']; ?> lượt xem
                            </div>
                            <div class="scam-column scam-text">
                                <?=$ndk['ngay']; ?>
                            </div>
                            <a href="/scams/<?=$ndk['code']; ?>" class="stretched-link"></a>
                        </div>
                       <?php } ?>
                       
                                                                        </div>
                                                                        <div class="mt-4 text-center">
                <a href="https://<?=$site_tenweb;?>/scams" class="button-theme button-theme_primary">
                    XEM THÊM ĐƠN TỐ CÁO HÔM NAY
                </a>
            </div>
                </div>
               
            </div>
            <div class="section-gap section-topup">
        <div class="container">
            <div class="section-heading text-center">
                <h2 class="heading-title">
                    Các lĩnh vực bảo vệ
                </h2>
            </div>
            <div class="row g-3 row-cols-xl-8 row-cols-lg-6 row-cols-3 row-cols-md-4">
                          <?php
$i = 1;
$result = mysqli_query($ketnoi, "SELECT * FROM `category`");
while ($ndk = mysqli_fetch_assoc($result))
{ ?>

                                <div class="col">
                    <div class="topup-card card">
                        <div class="card-image">
                            <img src="<?=$ndk['image']; ?>" class="img-fluid" alt="Giao dịch trung gian - đổi tiền">
                        </div>
                        <div class="card-title">
                            <?=$ndk['ten']; ?>
                        </div>
                        <a href="/checkdv?cate=<?=$ndk['code'];?>" class="stretched-link"></a>
                    </div>
                </div>
                           <?php } ?>
                            </div>
                            </div>
                            </div>
                            <div class="section-gap pt-0 section-counter">
        <div class="container">
            <div class="row g-lg-4 g-3 row-cols-lg-4  row-cols-2">
                <div class="col">
                    <div class="counter-card hstack justify-content-center gap-15px">
                        <div class="card-number">
                            #1
                        </div>
                        <div class="card-text">
                            Uy tín số 1<br>thị trường
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="counter-card hstack justify-content-center gap-15px">
                        <div class="card-number">
                            500+
                        </div>
                        <div class="card-text">
                            Bảo hiểm<br>giao dịch
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="counter-card hstack justify-content-center gap-15px">
                        <div class="card-number">
                            459K+
                        </div>
                        <div class="card-text">
                            Danh sách<br>scammer
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="counter-card hstack justify-content-center gap-15px">
                        <div class="card-number">
                            24/7
                        </div>
                        <div class="card-text">
                            Real-time<br>Expert Support
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        
    <div class="section-gap section-service">
            <div class="service-bg"></div>
            <div class="container">
                <div class="row align-items-center g-4 justify-content-center">
                    <div class="col-lg-2 col-12">
                        <div class="section-heading mb-lg-0">
                            <h2 class="heading-title">
                                Các gói bảo hiểm
                            </h2>
                            <div class="heading-sub">
                                Bao gồm trong tất cả các gói
                            </div>
                            <div class="heading-list">
                                                                                                            <div class="heading-list_item">
                                            <i class="fas fa-check-circle"></i> Đảm bảo giao dịch trong hạn mức
                                        </div>
                                                                            <div class="heading-list_item">
                                            <i class="fas fa-check-circle"></i> Thêm hạn mức bảo lãnh từ checkscam
                                        </div>
                                                                            <div class="heading-list_item">
                                            <i class="fas fa-check-circle"></i> Dấu tích xác nhận uy tín
                                        </div>
                                                                                                </div>
                        </div>
                    </div>
                    <div class="col-lg-10">
                        <div class="row g-3">
                                                            <div class="col-lg-3 col-sm-6">
                                    <div class="service-card card">
                                        <div class="card-icon">
                                            <img src="https://i.imgur.com/btlRWkj.png" class="img-fluid" alt="Gói Đồng" style="height: 66px">
                                        </div>
                                        <h3 class="card-title">
                                            Gói Đồng
                                        </h3>
                                        <div class="card-text">
                                            Phù hợp bảo hiểm các giao dịch nhỏ
                                        </div>
                                        <div class="text-bold" style="padding-bottom: -10px">Chỉ từ</div>
                                        <div class="card-price">
                                            <span>5,000,000 VND</span>
                                        </div>
                                        <div class="card-button">
                                            <a href="" class="button-theme button-theme_primary">
                                                Xem thêm
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                                            <div class="col-lg-3 col-sm-6">
                                    <div class="service-card card">
                                        <div class="card-icon">
                                            <img src="https://i.imgur.com/kvErnjK.png" class="img-fluid" alt="Gói Bạc" style="height: 66px">
                                        </div>
                                        <h3 class="card-title">
                                            Gói Bạc
                                        </h3>
                                        <div class="card-text">
                                            Phù hợp bảo hiểm các giao dịch vừa
                                        </div>
                                        <div class="text-bold" style="padding-bottom: -10px">Chỉ từ</div>
                                        <div class="card-price">
                                            <span>10,000,000 VND</span>
                                        </div>
                                        <div class="card-button">
                                            <a href="" class="button-theme button-theme_primary">
                                                Xem thêm
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                                            <div class="col-lg-3 col-sm-6">
                                    <div class="service-card card">
                                        <div class="card-icon">
                                            <img src="https://i.imgur.com/IBkyEJB.png" class="img-fluid" alt="Gói Vàng" style="height: 66px">
                                        </div>
                                        <h3 class="card-title">
                                            Gói Vàng
                                        </h3>
                                        <div class="card-text">
                                            Phù hợp bảo hiểm các giao dịch lớn
                                        </div>
                                        <div class="text-bold" style="padding-bottom: -10px">Chỉ từ</div>
                                        <div class="card-price">
                                            <span>20,000,000 VND</span>
                                        </div>
                                        <div class="card-button">
                                            <a href="" class="button-theme button-theme_primary">
                                                Xem thêm
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                                            <div class="col-lg-3 col-sm-6">
                                    <div class="service-card card">
                                        <div class="card-icon">
                                            <img src="https://i.imgur.com/MZxA9O4.png" class="img-fluid" alt="Gói Kim Cương" style="height: 66px">
                                        </div>
                                        <h3 class="card-title">
                                            Gói Kim Cương
                                        </h3>
                                        <div class="card-text">
                                            Phù hợp bảo hiểm các giao dịch VIP
                                        </div>
                                        <div class="text-bold" style="padding-bottom: -10px">Chỉ từ</div>
                                        <div class="card-price">
                                            <span>50,000,000 VND</span>
                                        </div>
                                        <div class="card-button">
                                            <a href="" class="button-theme button-theme_primary">
                                                Xem thêm
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                                    </div>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="section-heading section-heading_decor text-center">
                                    <div class="heading-description">
                                        Khi khách hàng tham gia bảo hiểm theo các gói bên trên, Checkscam sẽ tạm giữ số tiền đó để làm đảm bảo giao dịch trực tuyến. Khi khách hàng muốn dừng bán, Checkscam sẽ hoàn lại 100% số tiền bảo hiểm sau 30 ngày.
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
        <div class="section-gap section-page">
        <div class="container">
            <div class="row g-4">
                <div class="col-lg-12 col-xl-12">
                    <div class="section-heading text-center">
                        <div class="heading-title text-start mb-0">
                            Tin tức
                        </div>
                    </div>
                                            <div class="row g-4">
                                                <?php
$result = mysqli_query($ketnoi, "SELECT * FROM `tintuc` WHERE `status` = 'hoantat' ORDER BY id desc limit 0, 10000");
while ($ndk = mysqli_fetch_assoc($result)) { 
?>
                                                            <div class="col-sm-6 col-xl-3">
                                    <div class="card article-card overflow-hidden bg-white border-0">
                                        <div class="card-header p-3 pb-0 border-0 rounded-0 bg-white">
                                            <div class="card-image ratio ratio-4x3 overflow-hidden rounded-2">
                                                <img src="<?=$ndk['anh'];?>" class="img-fluid transition-default" alt=" <?=$ndk['title'];?>">
                                            </div>
                                        </div>
                                        <div class="card-body">
                                            <h2 class="card-title limit">
                                                <?=$ndk['title'];?>
                                            </h2>
                                            <div class="card-text limit">
                                                
                                            </div>
                                            <div class="card-date">
                                                <i class="far fa-clock"></i>
                                                <?=$ndk['time'];?>
                                            </div>
                                        </div>
                                        <a href="/news/<?=$ndk['data'];?>" class="stretched-link" aria-label="<?=$ndk['title'];?>"></a>
                                    </div>
                                </div>
                                              <?php
} 
?>

         
                                                    </div>
                                    </div>
            </div>
        </div>
    </div>
    
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        </div>
        
    </div>
                        
                        
                        
    <?php require_once ('ketnoi/foot.php'); ?>
