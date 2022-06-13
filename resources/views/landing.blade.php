<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Kindem - Landing Page</title>
    <link rel="icon" href="{{url('images/kindem-logo-single.png')}}">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="favicon.ico" type="image/x-icon" />
    
    <meta name="description" content="Kindem adalah Aplikasi belajar bahasa inggris menggunakan fitur voice recognition dan text to speech sehingga memudahkan kamu untuk mempelajari speaking dan pronunciation dalam Bahasa Inggris."/>
    <meta property="og:image" content="{{url('images/kindem-blue.jpg')}}"/>
    <meta property="og:image:type" content="image/jpg"/>
    <meta property="og:image:width" content="300"/>
    <meta property="og:image:height" content="300"/>
    
    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500&family=Jost:wght@500;600;700&display=swap" rel="stylesheet">

    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="{{url('landing/lib/animate/animate.min.css')}}" rel="stylesheet">
    <link href="{{url('landing/lib/owlcarousel/assets/owl.carousel.min.css')}}" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="{{url('landing/css/bootstrap.min.css')}}" rel="stylesheet">
    <!-- CSS only -->

    <!-- Template Stylesheet -->
    <link href="{{url('landing/css/style.css')}}" rel="stylesheet">

    <link rel="stylesheet" href="{{url('assets/admin/plugins/jquery-toast-plugin/dist/jquery.toast.min.css')}}">
    <style>
        html,body{
            overflow-x: hidden;
        }

        .loader {
        border: 4px solid #f3f3f3; /* Light grey */
        border-top: 4px solid #f5a720; /* Blue */
        border-radius: 50%;
        width: 20px;
        height: 20px;
        animation: spin 2s linear infinite;
        }

        @keyframes spin {
        0% { transform: rotate(0deg); }
        100% { transform: rotate(360deg); }
        }
        
        ::-webkit-scrollbar {
            width: 6px;
        }
        
        ::-webkit-scrollbar-track {
            background-color: #0074CD;
        }
        
        ::-webkit-scrollbar-thumb {
            background-color: #F5A720;
            border-radius: 30px;
        }
    </style>
</head>

<body data-bs-spy="scroll" data-bs-target=".navbar" data-bs-offset="51">
    <div class="container-xxl bg-white p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-grow text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Navbar & Hero Start -->
        <div class="container-xxl position-relative p-0" id="home">
            <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
                <a href="" class="navbar-brand p-0">
                    {{-- <h1 class="m-0">KINDEM</h1> --}}
                    <img src="{{url('landing/img/kindem-logo.png')}}"  alt="Logo">
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                    <span class="fa fa-bars"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <div class="navbar-nav mx-auto py-0">
                        <a href="#home" class="nav-item nav-link active">Beranda</a>
                        <a href="#about" class="nav-item nav-link">Tentang</a>
                        <a href="#feature" class="nav-item nav-link">Fitur</a>
                        {{-- <a href="#pricing" class="nav-item nav-link">Pricing</a>
                        <a href="#review" class="nav-item nav-link">Review</a> --}}
                        <a href="#contact" class="nav-item nav-link">Kontak</a>
                    </div>
                    <a href="#btn-download" class="btn btn-primary-gradient rounded-pill py-2 px-4 ms-3 d-none d-lg-block">Coba Aplikasi</a>
                </div>
            </nav>

            <div class="container-xxl bg-primary hero-header">
                <div class="container px-lg-5">
                    <div class="row g-5">
                        <div class="col-lg-8 text-center text-lg-start">
                            <h1 class="text-white mb-4 animated slideInDown">KINDEM: Kids Need Delightful English Mentor</h1>
                            <p class="text-white pb-3 animated slideInDown">Aplikasi belajar bahasa inggris menggunakan fitur voice recognition dan text to speech sehingga memudahkan kamu untuk mempelajari speaking dan pronunciation dalam Bahasa Inggris.</p>
                            <a id="btn-download" href="{{url('download/kindem-app.apk')}}" class="btn btn-primary-gradient py-sm-3 px-4 px-sm-5 rounded me-3 animated slideInLeft"><i class="fa fa-download" aria-hidden="true" style="padding-right: 10px"></i> Unduh Aplikasi Kindem</a>
                            {{-- <a href="" class="btn btn-secondary-gradient py-sm-3 px-4 px-sm-5 rounded-pill animated slideInRight">Contact Us</a> --}}
                            {{-- <a href="javascript:void(0)" class="btn btn-primary-gradient py-sm-3 px-4 px-sm-5 rounded me-3 animated slideInLeft">
                                <i class="fab fa-apple fa-3x text-white flex-shrink-0"></i>
                                <div class="ms-3">
                                    <p class="text-white mb-0">Unduh Aplikasi</p>
                                    <h5 class="text-white mb-0">KINDEM</h5>
                                </div>
                            </a> --}}
                        </div>
                        <div class="col-lg-4 d-flex justify-content-center justify-content-lg-end wow fadeInUp" data-wow-delay="0.3s">
                            <div class="owl-carousel screenshot-carousel">
                            <img class="img-fluid" src="{{url('landing/img/screenshots/ss_1.jpg')}}" alt="">
                            <img class="img-fluid" src="{{url('landing/img/screenshots/ss_2.jpg')}}" alt="">
                            <img class="img-fluid" src="{{url('landing/img/screenshots/ss_3.jpg')}}" alt="">
                            <img class="img-fluid" src="{{url('landing/img/screenshots/ss_4.jpg')}}" alt="">
                            <img class="img-fluid" src="{{url('landing/img/screenshots/ss_5.jpg')}}" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Navbar & Hero End -->


        <!-- About Start -->
        <div class="container-xxl py-5" id="about">
            <div class="container py-5 px-lg-5">
                <div class="row g-5 align-items-center">
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.1s">
                        <h5 class="text-primary-gradient fw-medium">Tentang Aplikasi</h5>
                        <h1 class="mb-4">#1 Aplikasi untuk belajar Bahasa Inggris</h1>
                        <p class="mb-4">Aplikasi pembelajaran bahasa inggris yang interaktif dan portable sehingga memungkinkan
                            kegiatan belajar mengajar antara guru dan siswa menjadi lebih efektif dan maksimal serta
                            siswa dapat belajar bahasa inggris dimanapun dan kapanpun.</p>
                        <div class="row g-4 mb-4">
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.5s">
                                <div class="d-flex">
                                    <i class="fa fa-cogs fa-2x text-primary-gradient flex-shrink-0 mt-1"></i>
                                    <div class="ms-3">
                                        <h2 class="mb-0" data-toggle="counter-up">68</h2>
                                        <p class="text-primary-gradient mb-0">Aktif Install</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.7s">
                                <div class="d-flex">
                                    <i class="fa fa-comments fa-2x  text-pengguna flex-shrink-0 mt-1"></i>
                                    <div class="ms-3">
                                        <h2 class="mb-0" data-toggle="counter-up">68</h2>
                                        <p class=" text-pengguna mb-0">Pengguna</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        {{-- <a href="" class="btn btn-primary-gradient py-sm-3 px-4 px-sm-5 rounded-pill mt-3">Read More</a> --}}
                    </div>
                    <div class="col-lg-6">
                        <img class="img-fluid wow fadeInUp" data-wow-delay="0.5s" src="{{url('landing/img/mobile.png')}}" style="max-width: 150%">
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->


        <!-- Features Start -->
        <div class="container-xxl py-5" id="feature">
            <div class="container py-5 px-lg-5">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h5 class="text-primary-gradient fw-medium">Fitur Aplikasi</h5>
                    <h1 class="mb-5">Fitur Menarik</h1>
                </div>
                <div class="row g-4">
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="feature-item bg-light rounded p-4">
                            <div class="d-inline-flex align-items-center justify-content-center bg-primary-gradient rounded-circle mb-4" style="width: 60px; height: 60px;">
                                <i class="fa fa-volume-up text-white fs-4"></i>
                            </div>
                            <h5 class="mb-3">Text to Voice</h5>
                            <p class="m-0">Mengubah bentuk teks menjadi suara sehingga dapat digunakan untuk melatih listening Bahasa Inggris.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="feature-item bg-light rounded p-4">
                            <div class="d-inline-flex align-items-center justify-content-center bg-secondary-gradient rounded-circle mb-4" style="width: 60px; height: 60px;">
                                <i class="fa fa-microphone text-white fs-4"></i>
                            </div>
                            <h5 class="mb-3">Voice Recognition</h5>
                            <p class="m-0">Mengubah bentuk suara menjadi teks sehingga dapat digunakan untuk melatih pronunciation Bahasa Inggris.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="feature-item bg-light rounded p-4">
                            <div class="d-inline-flex align-items-center justify-content-center bg-primary-gradient rounded-circle mb-4" style="width: 60px; height: 60px;">
                                <i class="fa fa-database text-white fs-4"></i>
                            </div>
                            <h5 class="mb-3">Didukung Banyak Data</h5>
                            <p class="m-0">Terdapat lebih dari 300 kosa kata sehingga membantu untuk mengenal kosa kata baru.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="feature-item bg-light rounded p-4">
                            <div class="d-inline-flex align-items-center justify-content-center bg-secondary-gradient rounded-circle mb-4" style="width: 60px; height: 60px;">
                                <i class="fa fa-shield-alt text-white fs-4"></i>
                            </div>
                            <h5 class="mb-3">Keamanan Pengguna</h5>
                            <p class="m-0">Keamanan data pengguna dapat terjamin dengan sistem autentikasi dari setiap user.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="feature-item bg-light rounded p-4">
                            <div class="d-inline-flex align-items-center justify-content-center bg-primary-gradient rounded-circle mb-4" style="width: 60px; height: 60px;">
                                <i class="fa fa-cloud text-white fs-4"></i>
                            </div>
                            <h5 class="mb-3">Penyimpanan Data</h5>
                            <p class="m-0">Data pengguna dan materi akan disimpan pada sebuah web server storage.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="feature-item bg-light rounded p-4">
                            <div class="d-inline-flex align-items-center justify-content-center bg-secondary-gradient rounded-circle mb-4" style="width: 60px; height: 60px;">
                                <i class="fa fa-mobile-alt text-white fs-4"></i>
                            </div>
                            <h5 class="mb-3">Tampilan Responsif</h5>
                            <p class="m-0">Aplikasi Kindem dapat berjalan pada semua device smartphone dengan ukuran layar yang berbeda.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Features End -->


        <!-- Screenshot Start -->
        <div class="container-xxl py-5">
            <div class="container py-5 px-lg-5">
                <div class="row g-5 align-items-center">
                    <div class="col-lg-8 wow fadeInUp" data-wow-delay="0.1s">
                        <h5 class="text-primary-gradient fw-medium">Screenshot</h5>
                        <h1 class="mb-4">Kindem Memiliki Antarmuka yang Ramah Pengguna dan Sangat Mudah Digunakan</h1>
                        <p class="mb-4">Antarmuka yang ramah untuk pengguna dengan tujuan mempermudah penggunaan aplikasi sehingga selain penggunaan yang mudah proses pembelajaran Bahasa Inggris akan mudah dan menyenangkan.</p>
                        <p><i class="fa fa-check text-primary-gradient me-3"></i>Belajar Bahasa Inggris Kapan Saja dan Dimana Saja</p>
                        <p><i class="fa fa-check text-primary-gradient me-3"></i>Fitur Voice Recognition untuk Membantu Belajar Pronunciation</p>
                        <p class="mb-4"><i class="fa fa-check text-primary-gradient me-3"></i>Fitur Text to Voice untuk Membantu Belajar Listening</p>
                        {{-- <a href="" class="btn btn-primary-gradient py-sm-3 px-4 px-sm-5 rounded-pill mt-3">Read More</a> --}}
                    </div>
                    <div class="col-lg-4 d-flex justify-content-center justify-content-lg-end wow fadeInUp" data-wow-delay="0.3s">
                        <div class="owl-carousel screenshot-carousel">
                            <img class="img-fluid" src="{{url('landing/img/screenshots/ss_1.jpg')}}" alt="">
                            <img class="img-fluid" src="{{url('landing/img/screenshots/ss_2.jpg')}}" alt="">
                            <img class="img-fluid" src="{{url('landing/img/screenshots/ss_3.jpg')}}" alt="">
                            <img class="img-fluid" src="{{url('landing/img/screenshots/ss_4.jpg')}}" alt="">
                            <img class="img-fluid" src="{{url('landing/img/screenshots/ss_5.jpg')}}" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Screenshot End -->


        <!-- Process Start -->
        <div class="container-xxl py-5">
            <div class="container py-5 px-lg-5">
                <div class="text-center pb-4 wow fadeInUp" data-wow-delay="0.1s">
                    <h5 class="text-primary-gradient fw-medium">Bagaimana Aplikasi Berjalan</h5>
                    <h1 class="mb-5">3 Langkah Mudah</h1>
                </div>
                <div class="row gy-5 gx-4 justify-content-center">
                    <div class="col-lg-4 col-sm-6 text-center pt-4 wow fadeInUp" data-wow-delay="0.1s">
                        <div class="position-relative bg-light rounded pt-5 pb-4 px-4">
                            <div class="d-inline-flex align-items-center justify-content-center bg-primary-gradient rounded-circle position-absolute top-0 start-50 translate-middle shadow" style="width: 100px; height: 100px;">
                                <i class="fa fa-cog fa-3x text-white"></i>
                            </div>
                            <h5 class="mt-4 mb-3">Install Aplikasi</h5>
                            <p class="mb-0">Unduh dan Install Aplikasi Kindem pada Smartphone melalui App Store maupun Play Store.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 text-center pt-4 wow fadeInUp" data-wow-delay="0.3s">
                        <div class="position-relative bg-light rounded pt-5 pb-4 px-4">
                            <div class="d-inline-flex align-items-center justify-content-center bg-secondary-gradient rounded-circle position-absolute top-0 start-50 translate-middle shadow" style="width: 100px; height: 100px;">
                                <i class="fa fa-address-card fa-3x text-white"></i>
                            </div>
                            <h5 class="mt-4 mb-3">Login pada Aplikasi</h5>
                            <p class="mb-0">Login menggunakan email dan password untuk masuk ke dalam aplikasi Kindem.</p>
                        </div>
                    </div>
                    <div class="col-lg-4 col-sm-6 text-center pt-4 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="position-relative bg-light rounded pt-5 pb-4 px-4">
                            <div class="d-inline-flex align-items-center justify-content-center bg-primary-gradient rounded-circle position-absolute top-0 start-50 translate-middle shadow" style="width: 100px; height: 100px;">
                                <i class="fa fa-check fa-3x text-white"></i>
                            </div>
                            <h5 class="mt-4 mb-3">Nikmati Fiturnya</h5>
                            <p class="mb-0">Belajar bahasa inggris menggunakan fitur voice recognition dan text to voice sehingga lebih interaktif dan menarik.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Process Start -->


        <!-- Download Start -->
        <div class="container-xxl py-5">
            <div class="container py-5 px-lg-5">
                <div class="row g-5 align-items-center">
                    <div class="col-lg-6">
                        <img class="img-fluid wow fadeInUp" data-wow-delay="0.1s" src="{{url('landing/img/mobile.png')}}">
                    </div>
                    <div class="col-lg-6 wow fadeInUp" data-wow-delay="0.3s">
                        <h5 class="text-primary-gradient fw-medium">Download</h5>
                        <h1 class="mb-4">Unduh Aplikasi Kindem dengan Versi Terbaru</h1>
                        <p class="mb-4">Dapatkan aplikasi Kinden dengan mengunduh pada App Store atau Play Store dan belajar bahasa inggris menggunakan media yang interaktif dan seru.</p>
                        <div class="row g-4">
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.5s">
                                <a href="javascript:void(0)" class="d-flex bg-primary-gradient rounded py-3 px-4">
                                    <i class="fab fa-apple fa-3x text-white flex-shrink-0"></i>
                                    <div class="ms-3">
                                        <p class="text-white mb-0">Segera Rilis di </p>
                                        <h5 class="text-white mb-0">App Store</h5>
                                    </div>
                                </a>
                            </div>
                            <div class="col-sm-6 wow fadeIn" data-wow-delay="0.7s">
                                <a href="javascript:void(0)" class="d-flex bg-secondary-gradient rounded py-3 px-4">
                                    <i class="fab fa-android fa-3x text-white flex-shrink-0"></i>
                                    <div class="ms-3">
                                        <p class="text-white mb-0">Segera Rilis di </p>
                                        <h5 class="text-white mb-0">Play Store</h5>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Download End -->


        <!-- Pricing Start -->
        {{-- <div class="container-xxl py-5" id="pricing">
            <div class="container py-5 px-lg-5">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h5 class="text-primary-gradient fw-medium">Pricing Plan</h5>
                    <h1 class="mb-5">Choose Your Plan</h1>
                </div>
                <div class="tab-class text-center pricing wow fadeInUp" data-wow-delay="0.1s">
                    <ul class="nav nav-pills d-inline-flex justify-content-center bg-primary-gradient rounded-pill mb-5">
                        <li class="nav-item">
                            <button class="nav-link active" data-bs-toggle="pill" href="#tab-1">Monthly</button>
                        </li>
                        <li class="nav-item">
                            <button class="nav-link" data-bs-toggle="pill" href="#tab-2">Yearly</button>
                        </li>
                    </ul>
                    <div class="tab-content text-start">
                        <div id="tab-1" class="tab-pane fade show p-0 active">
                            <div class="row g-4">
                                <div class="col-lg-4">
                                    <div class="bg-light rounded">
                                        <div class="border-bottom p-4 mb-4">
                                            <h4 class="text-primary-gradient mb-1">Starter Plan</h4>
                                            <span>Powerful & Awesome Features</span>
                                        </div>
                                        <div class="p-4 pt-0">
                                            <h1 class="mb-3">
                                                <small class="align-top" style="font-size: 22px; line-height: 45px;">$</small>14.99<small
                                                    class="align-bottom" style="font-size: 16px; line-height: 40px;">/ Month</small>
                                            </h1>
                                            <div class="d-flex justify-content-between mb-3"><span>HTML5 & CSS3</span><i class="fa fa-check text-primary-gradient pt-1"></i></div>
                                            <div class="d-flex justify-content-between mb-3"><span>Bootstrap v5</span><i class="fa fa-check text-primary-gradient pt-1"></i></div>
                                            <div class="d-flex justify-content-between mb-3"><span>Responsive Layout</span><i class="fa fa-check text-primary-gradient pt-1"></i></div>
                                            <div class="d-flex justify-content-between mb-2"><span>Cross-browser Support</span><i class="fa fa-check text-primary-gradient pt-1"></i></div>
                                            <a href="" class="btn btn-primary-gradient rounded-pill py-2 px-4 mt-4">Get Started</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="bg-light rounded border">
                                        <div class="border-bottom p-4 mb-4">
                                            <h4 class="text-primary-gradient mb-1">Advance Plan</h4>
                                            <span>Powerful & Awesome Features</span>
                                        </div>
                                        <div class="p-4 pt-0">
                                            <h1 class="mb-3">
                                                <small class="align-top" style="font-size: 22px; line-height: 45px;">$</small>24.99<small
                                                    class="align-bottom" style="font-size: 16px; line-height: 40px;">/ Month</small>
                                            </h1>
                                            <div class="d-flex justify-content-between mb-3"><span>HTML5 & CSS3</span><i class="fa fa-check text-primary-gradient pt-1"></i></div>
                                            <div class="d-flex justify-content-between mb-3"><span>Bootstrap v5</span><i class="fa fa-check text-primary-gradient pt-1"></i></div>
                                            <div class="d-flex justify-content-between mb-3"><span>Responsive Layout</span><i class="fa fa-check text-primary-gradient pt-1"></i></div>
                                            <div class="d-flex justify-content-between mb-2"><span>Cross-browser Support</span><i class="fa fa-check text-primary-gradient pt-1"></i></div>
                                            <a href="" class="btn btn-secondary-gradient rounded-pill py-2 px-4 mt-4">Get Started</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="bg-light rounded">
                                        <div class="border-bottom p-4 mb-4">
                                            <h4 class="text-primary-gradient mb-1">Premium Plan</h4>
                                            <span>Powerful & Awesome Features</span>
                                        </div>
                                        <div class="p-4 pt-0">
                                            <h1 class="mb-3">
                                                <small class="align-top" style="font-size: 22px; line-height: 45px;">$</small>34.99<small
                                                    class="align-bottom" style="font-size: 16px; line-height: 40px;">/ Month</small>
                                            </h1>
                                            <div class="d-flex justify-content-between mb-3"><span>HTML5 & CSS3</span><i class="fa fa-check text-primary-gradient pt-1"></i></div>
                                            <div class="d-flex justify-content-between mb-3"><span>Bootstrap v5</span><i class="fa fa-check text-primary-gradient pt-1"></i></div>
                                            <div class="d-flex justify-content-between mb-3"><span>Responsive Layout</span><i class="fa fa-check text-primary-gradient pt-1"></i></div>
                                            <div class="d-flex justify-content-between mb-2"><span>Cross-browser Support</span><i class="fa fa-check text-primary-gradient pt-1"></i></div>
                                            <a href="" class="btn btn-primary-gradient rounded-pill py-2 px-4 mt-4">Get Started</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="tab-2" class="tab-pane fade p-0">
                            <div class="row g-4">
                                <div class="col-lg-4">
                                    <div class="bg-light rounded">
                                        <div class="border-bottom p-4 mb-4">
                                            <h4 class="text-primary-gradient mb-1">Starter Plan</h4>
                                            <span>Powerful & Awesome Features</span>
                                        </div>
                                        <div class="p-4 pt-0">
                                            <h1 class="mb-3">
                                                <small class="align-top" style="font-size: 22px; line-height: 45px;">$</small>114.99<small
                                                    class="align-bottom" style="font-size: 16px; line-height: 40px;">/ Yearly</small>
                                            </h1>
                                            <div class="d-flex justify-content-between mb-3"><span>HTML5 & CSS3</span><i class="fa fa-check text-primary-gradient pt-1"></i></div>
                                            <div class="d-flex justify-content-between mb-3"><span>Bootstrap v5</span><i class="fa fa-check text-primary-gradient pt-1"></i></div>
                                            <div class="d-flex justify-content-between mb-3"><span>Responsive Layout</span><i class="fa fa-check text-primary-gradient pt-1"></i></div>
                                            <div class="d-flex justify-content-between mb-2"><span>Cross-browser Support</span><i class="fa fa-check text-primary-gradient pt-1"></i></div>
                                            <a href="" class="btn btn-primary-gradient rounded-pill py-2 px-4 mt-4">Get Started</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="bg-light rounded border">
                                        <div class="border-bottom p-4 mb-4">
                                            <h4 class="text-primary-gradient mb-1">Advance Plan</h4>
                                            <span>Powerful & Awesome Features</span>
                                        </div>
                                        <div class="p-4 pt-0">
                                            <h1 class="mb-3">
                                                <small class="align-top" style="font-size: 22px; line-height: 45px;">$</small>124.99<small
                                                    class="align-bottom" style="font-size: 16px; line-height: 40px;">/ Yearly</small>
                                            </h1>
                                            <div class="d-flex justify-content-between mb-3"><span>HTML5 & CSS3</span><i class="fa fa-check text-primary-gradient pt-1"></i></div>
                                            <div class="d-flex justify-content-between mb-3"><span>Bootstrap v5</span><i class="fa fa-check text-primary-gradient pt-1"></i></div>
                                            <div class="d-flex justify-content-between mb-3"><span>Responsive Layout</span><i class="fa fa-check text-primary-gradient pt-1"></i></div>
                                            <div class="d-flex justify-content-between mb-2"><span>Cross-browser Support</span><i class="fa fa-check text-primary-gradient pt-1"></i></div>
                                            <a href="" class="btn btn-primary-gradient rounded-pill py-2 px-4 mt-4">Get Started</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4">
                                    <div class="bg-light rounded">
                                        <div class="border-bottom p-4 mb-4">
                                            <h4 class="text-primary-gradient mb-1">Premium Plan</h4>
                                            <span>Powerful & Awesome Features</span>
                                        </div>
                                        <div class="p-4 pt-0">
                                            <h1 class="mb-3">
                                                <small class="align-top" style="font-size: 22px; line-height: 45px;">$</small>134.99<small
                                                    class="align-bottom" style="font-size: 16px; line-height: 40px;">/ Yearly</small>
                                            </h1>
                                            <div class="d-flex justify-content-between mb-3"><span>HTML5 & CSS3</span><i class="fa fa-check text-primary-gradient pt-1"></i></div>
                                            <div class="d-flex justify-content-between mb-3"><span>Bootstrap v5</span><i class="fa fa-check text-primary-gradient pt-1"></i></div>
                                            <div class="d-flex justify-content-between mb-3"><span>Responsive Layout</span><i class="fa fa-check text-primary-gradient pt-1"></i></div>
                                            <div class="d-flex justify-content-between mb-2"><span>Cross-browser Support</span><i class="fa fa-check text-primary-gradient pt-1"></i></div>
                                            <a href="" class="btn btn-primary-gradient rounded-pill py-2 px-4 mt-4">Get Started</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> --}}
        <!-- Pricing End -->


        <!-- Testimonial Start -->
        {{-- <div class="container-xxl py-5" id="review">
            <div class="container py-5 px-lg-5">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h5 class="text-primary-gradient fw-medium">Testimonial</h5>
                    <h1 class="mb-5">What Say Our Clients!</h1>
                </div>
                <div class="owl-carousel testimonial-carousel wow fadeInUp" data-wow-delay="0.1s">
                    <div class="testimonial-item rounded p-4">
                        <div class="d-flex align-items-center mb-4">
                            <img class="img-fluid bg-white rounded flex-shrink-0 p-1" src="img/testimonial-1.jpg" style="width: 85px; height: 85px;">
                            <div class="ms-4">
                                <h5 class="mb-1">Client Name</h5>
                                <p class="mb-1">Profession</p>
                                <div>
                                    <small class="fa fa-star text-warning"></small>
                                    <small class="fa fa-star text-warning"></small>
                                    <small class="fa fa-star text-warning"></small>
                                    <small class="fa fa-star text-warning"></small>
                                    <small class="fa fa-star text-warning"></small>
                                </div>
                            </div>
                        </div>
                        <p class="mb-0">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>
                    </div>
                    <div class="testimonial-item rounded p-4">
                        <div class="d-flex align-items-center mb-4">
                            <img class="img-fluid bg-white rounded flex-shrink-0 p-1" src="img/testimonial-2.jpg" style="width: 85px; height: 85px;">
                            <div class="ms-4">
                                <h5 class="mb-1">Client Name</h5>
                                <p class="mb-1">Profession</p>
                                <div>
                                    <small class="fa fa-star text-warning"></small>
                                    <small class="fa fa-star text-warning"></small>
                                    <small class="fa fa-star text-warning"></small>
                                    <small class="fa fa-star text-warning"></small>
                                    <small class="fa fa-star text-warning"></small>
                                </div>
                            </div>
                        </div>
                        <p class="mb-0">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>
                    </div>
                    <div class="testimonial-item rounded p-4">
                        <div class="d-flex align-items-center mb-4">
                            <img class="img-fluid bg-white rounded flex-shrink-0 p-1" src="img/testimonial-3.jpg" style="width: 85px; height: 85px;">
                            <div class="ms-4">
                                <h5 class="mb-1">Client Name</h5>
                                <p class="mb-1">Profession</p>
                                <div>
                                    <small class="fa fa-star text-warning"></small>
                                    <small class="fa fa-star text-warning"></small>
                                    <small class="fa fa-star text-warning"></small>
                                    <small class="fa fa-star text-warning"></small>
                                    <small class="fa fa-star text-warning"></small>
                                </div>
                            </div>
                        </div>
                        <p class="mb-0">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>
                    </div>
                    <div class="testimonial-item rounded p-4">
                        <div class="d-flex align-items-center mb-4">
                            <img class="img-fluid bg-white rounded flex-shrink-0 p-1" src="img/testimonial-4.jpg" style="width: 85px; height: 85px;">
                            <div class="ms-4">
                                <h5 class="mb-1">Client Name</h5>
                                <p class="mb-1">Profession</p>
                                <div>
                                    <small class="fa fa-star text-warning"></small>
                                    <small class="fa fa-star text-warning"></small>
                                    <small class="fa fa-star text-warning"></small>
                                    <small class="fa fa-star text-warning"></small>
                                    <small class="fa fa-star text-warning"></small>
                                </div>
                            </div>
                        </div>
                        <p class="mb-0">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>
                    </div>
                </div>
            </div>
        </div> --}}
        <!-- Testimonial End -->


        <!-- Contact Start -->
        <div class="container-xxl py-5" id="contact">
            <div class="container py-5 px-lg-5">
                <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                    <h5 class="text-primary-gradient fw-medium">Kontak Kami</h5>
                    <h1 class="mb-5">Subscribe!</h1>
                </div>
                <div class="row justify-content-center">
                    <div class="col-lg-9">
                        <div class="wow fadeInUp" data-wow-delay="0.3s">
                            <p class="text-center mb-4">Subscribe untuk mendapatkan informasi lebih lanjut mengenai aplikasi Kindem kepada email yang diisi pada formulir di bawah ini.</p>
                            <form>
                                <div class="row g-3">
                                    {{-- <div class="col-md-6">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="name" placeholder="Nama">
                                            <label for="name">Nama</label>
                                        </div>
                                    </div> --}}
                                    <div class="col-md-12">
                                        <div class="form-floating">
                                            <input type="email" class="form-control" id="email" placeholder="Email">
                                            <label for="email">Email</label>
                                        </div>
                                    </div>
                                    {{-- <div class="col-12">
                                        <div class="form-floating">
                                            <input type="text" class="form-control" id="subject" placeholder="Subjek">
                                            <label for="subject">Subjek</label>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="form-floating">
                                            <textarea class="form-control" placeholder="Leave a message here" id="message" style="height: 150px"></textarea>
                                            <label for="message">Pesan</label>
                                        </div>
                                    </div> --}}
                                    <div id="btn_subscribe" class="col-12 text-center">
                                        <div id="subscribe_text" class="btn btn-primary-gradient rounded-pill py-3 px-5" style="text-align: -webkit-center;">Subscribe</div>
                                        <div id="subscribe_loader" class="btn btn-primary-gradient rounded-pill py-3 px-5 d-none" style="text-align: -webkit-center;"><div class="loader"></div></div>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact End -->


        <!-- Footer Start -->
        <div class="container-fluid bg-primary text-light footer wow fadeIn" data-wow-delay="0.1s">
            <div class="container py-5 px-lg-5">
                <div class="row g-5">
                    <div class="col-md-6 col-lg-3">
                        <h4 class="text-white mb-4">Kontak</h4>
                        {{-- <p><i class="fa fa-map-marker-alt me-3"></i>Malang</p>
                        <p><i class="fa fa-phone-alt me-3"></i>+012 345 67890</p> --}}
                        <p><i class="fa fa-envelope me-3"></i>mail@kindem.my.id</p>
                        <div class="d-flex pt-2">
                            <a class="btn btn-outline-light btn-social" href="javascript:void(0)"><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-outline-light btn-social" href="javascript:void(0)"><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-outline-light btn-social" href="javascript:void(0)"><i class="fab fa-instagram"></i></a>
                            <a class="btn btn-outline-light btn-social" href="javascript:void(0)"><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <h4 class="text-white mb-4">Akses Cepat</h4>
                        <a class="btn btn-link" href="#home">Beranda</a>
                        <a class="btn btn-link" href="#feature">Fitur</a>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <h4 class="text-white mb-4">Link Populer</h4>
                        <a class="btn btn-link" href="#about">Tentang</a>
                        <a class="btn btn-link" href="#contact">Kontak</a>
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <h4 class="text-white mb-4">Berita</h4>
                        <p>Aplikasi ini masih dalam tahap uji coba sehingga membutuhkan waktu untuk merilis secara resmi pada App Store atau Play Store</p>
                        {{-- <div class="position-relative w-100 mt-3">
                            <input class="form-control border-0 rounded-pill w-100 ps-4 pe-5" type="text" placeholder="Your Email" style="height: 48px;">
                            <button type="button" class="btn shadow-none position-absolute top-0 end-0 mt-1 me-2"><i class="fa fa-paper-plane text-primary-gradient fs-4"></i></button>
                        </div> --}}
                    </div>
                </div>
            </div>
            <div class="container px-lg-5">
                <div class="copyright">
                    <div class="row">
                        <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                            &copy; <a class="border-bottom" href="#">Kindem</a>, All Right Reserved.

							<!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
							Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a>
                            </br>
                            Developed By <a class="border-bottom" href="https://www.linkedin.com/in/abdul-rahman-saleh-714120217/" target="_blank">Abdul Rahman Saleh</a> & <a class="border-bottom" href="https://www.linkedin.com/in/yogameleniawan/" target="_blank">Yoga Meleniawan Pamungkas</a>
                        </div>
                        <div class="col-md-6 text-center text-md-end">
                            <div class="footer-menu">
                                {{-- <a href="">Home</a>
                                <a href="">Cookies</a>
                                <a href="">Help</a>
                                <a href="">FQAs</a> --}}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-lg-square back-to-top pt-2"><i class="bi bi-arrow-up text-white"></i></a>
    </div>

    <script>
        var subs = document.getElementById('subscribe_text');

        subs.addEventListener('click', function() {
            doSubscribe()
        }, false);

        function IsEmail(email) {
            var regex = /^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
            if(!regex.test(email)) {
                return false;
            }else{
                return true;
            }
        }

        function doSubscribe(){

            $('#subscribe_loader').removeClass('d-none')
            $('#subscribe_text').addClass('d-none')
            let email = $('#email').val()
            console.log(IsEmail(email))
            if(IsEmail(email) == false){
                $('#subscribe_loader').addClass('d-none')
                            $('#subscribe_text').removeClass('d-none')
                            $.toast({
                                heading: 'Error',
                                text: 'Pastikan mengisi Email dengan benar.',
                                showHideTransition: 'slide',
                                icon: 'error',
                                loaderBg: '#000000',
                                position: 'bottom-right'
                            })
            }else{
                $.ajax({
                    url: `{{url("/sendEmail?email=`+email+`")}}`,
                    type: "GET",
                    dataType: "json",
                    statusCode: {
                        500: function (response) {
                            $('#subscribe_loader').addClass('d-none')
                            $('#subscribe_text').removeClass('d-none')
                            $.toast({
                                heading: 'Error',
                                text: 'Pastikan data sudah diisi semua dan tidak ada yang kosong',
                                showHideTransition: 'slide',
                                icon: 'error',
                                loaderBg: '#000000',
                                position: 'bottom-right'
                            })
                        },
                    },
                    success: function (data) {
                        $('#subscribe_loader').addClass('d-none')
                        $('#subscribe_text').addClass('d-none')
                        $('#btn_subscribe').html('')
                        $.toast({
                            heading: 'Subscribe Berhasil',
                            text: 'Silahkan cek email untuk melihat informasi.',
                            position: 'bottom-right',
                            icon: 'success',
                            stack: false,
                            loaderBg: '#f5a720'
                        })
                    }
                });
            }

        }
    </script>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="{{url('landing/lib/wow/wow.min.js')}}"></script>
    <script src="{{url('landing/lib/easing/easing.min.js')}}"></script>
    <script src="{{url('landing/lib/waypoints/waypoints.min.js')}}"></script>
    <script src="{{url('landing/lib/counterup/counterup.min.js')}}"></script>
    <script src="{{url('landing/lib/owlcarousel/owl.carousel.min.js')}}"></script>
    <script src="{{url('landing/js/main.js')}}"></script>
    <script src="{{url('assets/admin/js/alerts.js')}}"></script>
    <script src="{{url('assets/admin/plugins/jquery-toast-plugin/dist/jquery.toast.min.js')}}"></script>

</body>

</html>
