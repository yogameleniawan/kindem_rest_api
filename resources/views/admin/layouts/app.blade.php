<!doctype html>
<html class="no-js bg-black" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Admin Page | @yield('title')
    </title>
    <link rel="icon" href="{{url('images/kindem-logo-single.png')}}">
    <meta name="description" content="">
    <meta name="keywords" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="icon" href="favicon.ico" type="image/x-icon" />

    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:300,400,600,700,800" rel="stylesheet">
    {{-- <link rel="stylesheet" href="{{url('css/app.css')}}"> --}}
    <link rel="stylesheet" href="{{url('assets/admin/plugins/bootstrap/dist/css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{url('assets/admin/plugins/fontawesome-free/css/all.min.css')}}">
    <link rel="stylesheet" href="{{url('assets/admin/plugins/ionicons/dist/css/ionicons.min.css')}}">
    <link rel="stylesheet" href="{{url('assets/admin/plugins/icon-kit/dist/css/iconkit.min.css')}}">
    <link rel="stylesheet" href="{{url('assets/admin/plugins/perfect-scrollbar/css/perfect-scrollbar.css')}}">
    <link rel="stylesheet" href="{{url('assets/admin/plugins/select2/dist/css/select2.min.css')}}">
    <link rel="stylesheet" href="{{url('assets/admin/plugins/summernote/dist/summernote-bs4.css')}}">
    <link rel="stylesheet" href="{{url('assets/admin/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.css')}}">
    <link rel="stylesheet" href="{{url('assets/admin/plugins/mohithg-switchery/dist/switchery.min.css')}}">
    <link rel="stylesheet" href="{{url('assets/admin/dist/css/theme.min.css')}}">
    <link rel="stylesheet" href="{{url('assets/admin/src/js/vendor/modernizr-2.8.3.min.js')}}">
    <link rel="stylesheet" href="{{url('assets/admin/plugins/datatables.net-bs4/css/dataTables.bootstrap4.min.css')}}">
    <link rel="stylesheet"
        href="{{url('assets/admin/plugins/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css')}}">
    <link rel="stylesheet" href="{{url('assets/admin/plugins/jvectormap/jquery-jvectormap.css')}}">
    <link rel="stylesheet"
        href="{{url('assets/admin/plugins/tempusdominus-bootstrap-4/build/css/tempusdominus-bootstrap-4.min.css')}}">
    <link rel="stylesheet" href="{{url('assets/admin/plugins/weather-icons/css/weather-icons.min.css')}}">
    <link rel="stylesheet" href="{{url('assets/admin/plugins/c3/c3.min.css')}}">
    <link rel="stylesheet" href="{{url('assets/admin/plugins/owl.carousel/dist/assets/owl.carousel.min.css')}}">
    <link rel="stylesheet" href="{{url('assets/admin/plugins/owl.carousel/dist/assets/owl.theme.default.min.css')}}">
    <link rel="stylesheet" href="https://cdn.materialdesignicons.com/5.4.55/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/loadingio/transition.css@v2.0.0/dist/transition.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/loadingio/transition.css@v2.0.0/dist/transition.min.css">
    <link rel="stylesheet" href="{{url('assets/admin/plugins/jquery-toast-plugin/dist/jquery.toast.min.css')}}">
    {{-- <link href="https://cdn.datatables.net/1.10.25/css/jquery.dataTables.min.css" rel="stylesheet"> --}}
    <meta name="csrf-token" content="{{ csrf_token() }}" />

    <style>
        ::-webkit-scrollbar {
            width: 8px;
        }

        ::-webkit-scrollbar-track {
            background-color: #0074CD;
        }

        ::-webkit-scrollbar-thumb {
            background-color: #F5A720;
            border-radius: 30px;
        }
    </style>
    @yield('css')
</head>

<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <style>
        .wrapper .header-top[header-theme="light"] {
            background: #007bff;
        }

        .wrapper .page-wrap .app-sidebar.colored .sidebar-header {
            background-color: #007bff;
        }

        .wrapper .page-wrap .app-sidebar.colored .sidebar-content .nav-container .navigation-main .nav-item .submenu-content {
            background-color: #dcdcdc;
        }

    </style>
    <style>
        .bg-ik {
            color: #0e0e0e;
        }

        .bg-icon {
            background-color: #007bff;
        }

        .btn-refresh {
            background-color: #dcdcdc;
            border: 1px solid #dcdcdc;
        }

        .btn-add {
            background-color: #0e0e0e;
            border: 1px solid #0e0e0e;
        }

        .fixedButtonAdd {
            position: fixed;
            bottom: 10px;
            right: 50px;
        }

        .fixedButtonRefresh {
            position: fixed;
            bottom: 10px;
            right: 110px;
        }

        .footer-buttons .btn-icon {
            width: 50px;
            height: 50px;
            color: white;
            line-height: 2.5;
            font-size: 20px;
            border-radius: 100%;
        }

    </style>
    <style>
        tfoot {
            display: table-header-group;
        }

        tbody tr:nth-child(odd) td {
            background-color: #f2f2f2
        }

        tbody tr:nth-child(even) td {
            background-color: #ffffff
        }

        tbody tr:hover td {
            background-color: #ececec;
        }

        .dataTables_filter {
            display: none;
        }

    </style>
    <style>
        .paginate_button.page-item.active .page-link {
            background: #0e0e0e !important;
            color: #FFFFFF !important;
        }

    </style>
    <style>
        .scroll {
            overflow: scroll;
        }

        .scroll::-webkit-scrollbar {
            height: 7px;
            width: 7px;
            border: 1px solid #d5d5d5;
        }

        .scroll::-webkit-scrollbar-track {
            -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
            border-radius: 10px;
        }

        .scroll::-webkit-scrollbar-thumb {
            background: #4a587263;
            border-radius: 5px;
        }

            .tooltip {
              position: relative;
              display: inline-block;
              border-bottom: 1px dotted black;
            }

            .tooltip .tooltiptext {
              visibility: hidden;
              width: 120px;
              background-color: black;
              color: #fff;
              text-align: center;
              border-radius: 6px;
              padding: 5px 0;

              /* Position the tooltip */
              position: absolute;
              z-index: 1;
            }

            .tooltip:hover{
              cursor:not-allowed;
            }

            .tooltip:hover .tooltiptext {
              visibility: visible;
              cursor:not-allowed;
            }

            .wrapper .page-wrap .app-sidebar {
                z-index: 9999;
            }

            .wrapper .header-top {
                z-index: 9999;
            }

            @media (min-width: 576px)
            {
                .modal-dialog {
                max-width: 900px;
                }
            }

            .modal {
                z-index: 9999;
            }

        .jq-toast-wrap {
            z-index: 99999!important;
        }

    </style>
    @yield('header')

    <div class="wrapper">
        <header class="header-top" header-theme="light">
            <div class="container-fluid">
                <div class="d-flex justify-content-between">
                    <div class="top-menu d-flex align-items-center"><button type="button"
                            class="btn-icon mobile-nav-toggle d-lg-none"><span></span></button></div>
                    <div class="top-menu d-flex align-items-center"><button type="button" id="navbar-fullscreen"
                            class="nav-link"><i class="ik ik-maximize"></i></button>
                        <div class="dropdown"><a class="dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img class="avatar"
                                    src="{{url('assets/admin/img/user.png')}}" alt=""></a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
                                <form method="POST" action="{{ route('logout') }}">
                                    @csrf

                                    <a class="dropdown-item" href="{{ route('profile.show') }}">
                                        <i class="ik ik-user dropdown-icon"></i>Account</a>
                                    <button class="dropdown-item" href="#">
                                        <i class="ik ik-power dropdown-icon"></i>Logout</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <div class="page-wrap">
            <div id="btn-sidebar" class="app-sidebar colored">
                <div class="sidebar-header"><a class="header-brand" href="index.html">
                        <div class="logo-img">
                            <img src="{{url('images/kindem-logo.png')}}" alt="" style="width: 500%;">
                        </div><span class="text"></span>
                    </a></div>
                <div class="sidebar-content">
                    <div class="nav-container">
                        <nav id="main-menu-navigation" class="navigation-main">
                            <div class="nav-item {{Route::is('dashboard')  ? 'active' : ''}}"><a
                                    href="{{route('dashboard')}}"><i
                                        class="ik ik-bar-chart-2"></i><span>Dashboard</span></a>
                            </div>
                            <div
                                class="nav-item {{Route::is('materi.index') || Route::is('materi.create') || Route::is('materi.edit') || Route::is('materi.destroy') ? 'active' : ''}}">
                                <a href="{{route('materi.index')}}"><i class="ik ik-menu"></i><span>Materi</span></a>
                            </div>

                            <div
                                class="nav-item {{Route::is('users.index') || Route::is('users.create') || Route::is('users.edit') || Route::is('users.destroy') ? 'active' : ''}}">
                                <a href="{{route('users.index')}}"><i class="ik ik-user"></i><span>Users</span></a>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="main-content">
                <div class="container-fluid">
                    <div class="page-header">
                        <div class="row align-items-end">
                            <div class="col-lg-8">
                                <div class="page-header-title">
                                    @yield('iconHeader')
                                    <div class="d-inline">
                                        <h5>@yield('titleHeader')</h5>
                                        <span>@yield('subtitleHeader')</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4">
                                <nav class="breadcrumb-container" aria-label="breadcrumb">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item">
                                            <i class="ik ik-home"></i><a href="{{route('dashboard')}}"> Home</a>
                                        </li>
                                        <li class="breadcrumb-item active" aria-current="page">@yield('breadcrumb')</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>
                    @yield('content-wrapper')
                </div>
            </div>

            <div class='footer-buttons'>
                @yield('fixedButton')
            </div>

            <footer class="footer">
                <div class="w-100 clearfix"><span class="text-center text-sm-left d-md-inline-block">Copyright ©
                        2021 </span></div>
            </footer>
        </div>
    </div>

    <script>
        $('.mobile-nav-toggle').click(function () {
            $('#btn-sidebar').removeClass('hide-sidebar')
        })

    </script>

    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

    <script>
        window.jQuery || document.write(
            '<script src="{{url("assets/admin/src/js/vendor/jquery-3.3.1.min.js")}}"><\/script>')

    </script>
    <script src="{{url('assets/admin/plugins/popper.js/dist/umd/popper.min.js')}}"></script>
    <script src="{{url('assets/admin/plugins/bootstrap/dist/js/bootstrap.min.js')}}"></script>
    <script src="{{url('assets/admin/plugins/perfect-scrollbar/dist/perfect-scrollbar.min.js')}}"></script>
    <script src="{{url('assets/admin/plugins/select2/dist/js/select2.min.js')}}"></script>
    <script src="{{url('assets/admin/plugins/summernote/dist/summernote-bs4.min.js')}}"></script>
    <script src="{{url('assets/admin/plugins/bootstrap-tagsinput/dist/bootstrap-tagsinput.min.js')}}"></script>
    <script src="{{url('assets/admin/plugins/jquery.repeater/jquery.repeater.min.js')}}"></script>
    <script src="{{url('assets/admin/plugins/mohithg-switchery/dist/switchery.min.js')}}"></script>
    <script src="{{url('assets/admin/dist/js/theme.min.js')}}"></script>
    <script src="{{url('assets/admin/js/form-advanced.js')}}"></script>

    <script src="{{url('assets/admin/plugins/screenfull/dist/screenfull.js')}}"></script>
    <script src="{{url('assets/admin/plugins/datatables.net/js/jquery.dataTables.min.js')}}"></script>
    <script src="{{url('assets/admin/plugins/datatables.net-bs4/js/dataTables.bootstrap4.min.js')}}"></script>
    <script src="{{url('assets/admin/plugins/datatables.net-responsive/js/dataTables.responsive.min.js')}}"></script>
    <script src="{{url('assets/admin/plugins/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js')}}">
    </script>
    <script src="{{url('assets/admin/plugins/jvectormap/jquery-jvectormap.min.js')}}"></script>
    <script src="{{url('assets/admin/plugins/moment/moment.js')}}"></script>
    <script src="{{url('assets/admin/plugins/tempusdominus-bootstrap-4/build/js/tempusdominus-bootstrap-4.min.js')}}">
    </script>
    <script src="{{url('assets/admin/plugins/d3/dist/d3.min.js')}}"></script>
    <script src="{{url('assets/admin/plugins/c3/c3.min.js')}}"></script>

    <script src="{{url('assets/admin/js/widgets.js')}}"></script>
    <script src="{{url('assets/admin/js/charts.js')}}"></script>
    <script src="{{url('assets/admin/js/alerts.js')}}"></script>
    <script src="{{url('assets/admin/plugins/jquery-toast-plugin/dist/jquery.toast.min.js')}}"></script>


    @yield('footer')

</body>

</html>
