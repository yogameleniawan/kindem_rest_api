@extends('admin.layouts.app')
@section('title')
Dashboard
@endsection
@section('header')
<style>
    .ik {
        cursor: pointer;
    }

    #trHover:hover {
        background-color: #e6e6e6;
    }

    .card-rank {
        align-items: center;
        background-color: #f3f3f3;
        border-radius: 10px;
        margin-bottom: 10px;
        bottom: 0px;
        position: relative;
        transition: all 0.1s ease-in-out;
    }

    .card-rank:hover {
        position: relative;
        bottom: 5px;
        border-top-left-radius: 0px;
        border-bottom-right-radius: 0px;
        background-color: #d2d1d1;
        /* color: white; */
    }

    .card-rank-user {
        align-items: center;
        background-color: #f3f3f3;
        border-radius: 10px;
        margin-bottom: 10px;
        bottom: 0px;
        right: 0px;
        position: relative;
        transition: all 0.1s ease-in-out;
    }

    .card-rank-user:hover {
        position: relative;
        bottom: 5px;
        z-index: 1;
        border-top-left-radius: 0px;
        border-bottom-right-radius: 0px;
        background-color: #d2d1d1;
        cursor: pointer;
    }

    .card-rank-user1 {
        align-items: center;
        background-color: #f3f3f3;
        border-radius: 10px;
        margin-bottom: 10px;
        bottom: 0px;
        right: 0px;
        position: relative;
        transition: all 0.1s ease-in-out;
    }

    .card-rank-user1:hover {
        position: relative;
        bottom: 5px;
        z-index: 1;
        border-top-left-radius: 0px;
        border-bottom-right-radius: 0px;
        background-color: #F5A71F;
        color: white;
        cursor: pointer;
    }

    .card-rank-user1:hover .number-rank1{
        background: #ffffff;
        color: black;
        text-align: -webkit-center;
    }

    .card-rank-user2 {
        align-items: center;
        background-color: #f3f3f3;
        border-radius: 10px;
        margin-bottom: 10px;
        bottom: 0px;
        right: 0px;
        position: relative;
        transition: all 0.1s ease-in-out;
    }

    .card-rank-user2:hover {
        position: relative;
        bottom: 5px;
        z-index: 1;
        border-top-left-radius: 0px;
        border-bottom-right-radius: 0px;
        background-color: #0067B6;
        color: white;
        cursor: pointer;
    }

    .card-rank-user2:hover .number-rank2{
        background: #ffffff;
        color: black;
        text-align: -webkit-center;
    }

    .card-rank-user3 {
        align-items: center;
        background-color: #f3f3f3;
        border-radius: 10px;
        margin-bottom: 10px;
        bottom: 0px;
        right: 0px;
        position: relative;
        transition: all 0.1s ease-in-out;
    }

    .card-rank-user3:hover {
        position: relative;
        bottom: 5px;
        z-index: 1;
        border-top-left-radius: 0px;
        border-bottom-right-radius: 0px;
        background-color: #43AB9B;
        color: white;
        cursor: pointer;
    }

    .card-rank-user3:hover .number-rank3{
        background: #ffffff;
        color: black;
        text-align: -webkit-center;
    }

    .number-rank1{
        background-color: #F5A71F;
        border-radius: 5px;
        text-align: -webkit-center;
        margin: -10px;
        padding: 7px;
        color: white
    }

    .number-rank2{
        background-color: #0067B6;
        border-radius: 5px;
        text-align: -webkit-center;
        margin: -10px;
        padding: 7px;
        color: white
    }

    .number-rank3{
        background-color: #43AB9B;
        border-radius: 5px;
        text-align: -webkit-center;
        margin: -10px;
        padding: 7px;
        color: white
    }

    .section {
        max-height: 1226px;
        padding: 1rem;
        overflow-y: auto;
        direction: ltr;
        scrollbar-color: #d4aa70 #e4e4e4;
        scrollbar-width: thin;

        h2 {
            font-size: 1.5rem;
            font-weight: 700;
            margin-bottom: 1rem;
        }

        p+p {
            margin-top: 1rem;
        }
    }

    .section::-webkit-scrollbar {
        width: 10px;
    }

    .section::-webkit-scrollbar-track {
        background-color: #e4e4e4;
        border-radius: 100px;
    }

    .section::-webkit-scrollbar-thumb {
        border-radius: 100px;
        background-image: linear-gradient(180deg, #007bff 0%, #647586 99%);
        box-shadow: inset 2px 2px 5px 0 rgba(#fff, 0.5);
    }

    .section-chapter {
        max-height: 633px;
        padding: 1rem;
        overflow-y: auto;
        direction: ltr;
        scrollbar-color: #d4aa70 #e4e4e4;
        scrollbar-width: thin;

        h2 {
            font-size: 1.5rem;
            font-weight: 700;
            margin-bottom: 1rem;
        }

        p+p {
            margin-top: 1rem;
        }
    }

    .section-chapter::-webkit-scrollbar {
        width: 10px;
    }

    .section-chapter::-webkit-scrollbar-track {
        background-color: #e4e4e4;
        border-radius: 100px;
    }

    .section-chapter::-webkit-scrollbar-thumb {
        border-radius: 100px;
        background-image: linear-gradient(180deg, #f5a720 0%, #647586 99%);
        box-shadow: inset 2px 2px 5px 0 rgba(#fff, 0.5);
    }

    .jq-icon-success {
        background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAADsSURBVEhLY2AYBfQMgf///3P8+/evAIgvA/FsIF+BavYDDWMBGroaSMMBiE8VC7AZDrIFaMFnii3AZTjUgsUUWUDA8OdAH6iQbQEhw4HyGsPEcKBXBIC4ARhex4G4BsjmweU1soIFaGg/WtoFZRIZdEvIMhxkCCjXIVsATV6gFGACs4Rsw0EGgIIH3QJYJgHSARQZDrWAB+jawzgs+Q2UO49D7jnRSRGoEFRILcdmEMWGI0cm0JJ2QpYA1RDvcmzJEWhABhD/pqrL0S0CWuABKgnRki9lLseS7g2AlqwHWQSKH4oKLrILpRGhEQCw2LiRUIa4lwAAAABJRU5ErkJggg==);
        color: #ffffff;
        background-color: #2dce89;
        border-color: #ffffff;
    }

    .jq-icon-warning {
        background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAGYSURBVEhL5ZSvTsNQFMbXZGICMYGYmJhAQIJAICYQPAACiSDB8AiICQQJT4CqQEwgJvYASAQCiZiYmJhAIBATCARJy+9rTsldd8sKu1M0+dLb057v6/lbq/2rK0mS/TRNj9cWNAKPYIJII7gIxCcQ51cvqID+GIEX8ASG4B1bK5gIZFeQfoJdEXOfgX4QAQg7kH2A65yQ87lyxb27sggkAzAuFhbbg1K2kgCkB1bVwyIR9m2L7PRPIhDUIXgGtyKw575yz3lTNs6X4JXnjV+LKM/m3MydnTbtOKIjtz6VhCBq4vSm3ncdrD2lk0VgUXSVKjVDJXJzijW1RQdsU7F77He8u68koNZTz8Oz5yGa6J3H3lZ0xYgXBK2QymlWWA+RWnYhskLBv2vmE+hBMCtbA7KX5drWyRT/2JsqZ2IvfB9Y4bWDNMFbJRFmC9E74SoS0CqulwjkC0+5bpcV1CZ8NMej4pjy0U+doDQsGyo1hzVJttIjhQ7GnBtRFN1UarUlH8F3xict+HY07rEzoUGPlWcjRFRr4/gChZgc3ZL2d8oAAAAASUVORK5CYII=);
        background-color: #fb6340;
        color: #ffffff;
        border-color: #ffffff;
    }

    .loader {
        border: 5px solid #f3f3f3;
        -webkit-animation: spin 1s linear infinite;
        animation: spin 1s linear infinite;
        border-top: 5px solid #007bff;
        border-radius: 50%;
        width: 50px;
        height: 50px;
    }

    @keyframes spin {
        0% {
            transform: rotate(0deg);
        }

        100% {
            transform: rotate(360deg);
        }
    }

    .bg-red {
        background-color: #F5A720 !important;
    }

</style>
@endsection
@section('iconHeader')
<i class="ik ik-bar-chart-2 bg-icon"></i>
@endsection
@section('titleHeader')
Dashboard
@endsection
@section('subtitleHeader')

@endsection
@section('breadcrumb')
Dashboard
@endsection
@section('content-wrapper')
<style>
    .wrapper {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
        grid-gap: 10px;
    }

    .grid {
        background-color: #A9D3CF;
        color: #000;
        border-radius: 3px;
        padding: 20px;
        font-size: 18px;
    }

    .gridmore {
        color: #000;
        opacity: 50%;
        font-size: 11px;
        text-align: right;
    }

</style>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <div class="row">
        <div class="col-xl-3 col-md-6">
            <div class="card prod-p-card card-blue">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col">
                            <h6 class="mb-5 text-white">Total Chapter</h6>
                            <h3 class="mb-0 fw-700 text-white">{{$countChapter}}</h3>
                        </div>
                        <div class="col-auto">
                            <i class="fa fa-th-large text-blue f-18"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6">
            <div class="card prod-p-card card-blue">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col">
                            <h6 class="mb-5 text-white">Total Materi</h6>
                            <h3 class="mb-0 fw-700 text-white">{{$countMateri}}</h3>
                        </div>
                        <div class="col-auto">
                            <i class="fa fa-book-open text-blue f-18"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6">
            <div class="card prod-p-card card-blue">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col">
                            <h6 class="mb-5 text-white">Total Soal</h6>
                            <h3 class="mb-0 fw-700 text-white">{{$countSoal}}</h3>
                        </div>
                        <div class="col-auto">
                            <i class="fa fa-list text-blue f-18"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-md-6">
            <div class="card prod-p-card card-blue">
                <div class="card-body">
                    <div class="row align-items-center">
                        <div class="col">
                            <h6 class="mb-5 text-white">Total Siswa</h6>
                            <h3 class="mb-0 fw-700 text-white">{{$countUser}}</h3>
                        </div>
                        <div class="col-auto">
                            <i class="fa fa-user text-blue f-18"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-xl-8 col-md-8">
            <div class="card new-cust-card">
                <div class="card-header">
                    <h3>Aktivitas Terakhir Siswa</h3>
                </div>
                <div id="user_activity" class="card-block" style="margin-bottom: 20px">
                    <div class="align-middle mb-25">
                        <img src="{{url('assets/admin/img/user.png')}}" alt="user image" class="rounded-circle img-40 align-top mr-15">
                        <div class="d-inline-block">
                            <a href="#!"><h6>-</h6></a>
                            <p class="text-muted mb-0">-</p>
                            {{-- <span class="status active"></span> --}}
                        </div>
                    </div>
                    <div class="align-middle mb-25">
                        <img src="{{url('assets/admin/img/user.png')}}" alt="user image" class="rounded-circle img-40 align-top mr-15">
                        <div class="d-inline-block">
                            <a href="#!"><h6>-</h6></a>
                            <p class="text-muted mb-0">-</p>
                            {{-- <span class="status active"></span> --}}
                        </div>
                    </div>
                    <div class="align-middle mb-25">
                        <img src="{{url('assets/admin/img/user.png')}}" alt="user image" class="rounded-circle img-40 align-top mr-15">
                        <div class="d-inline-block">
                            <a href="#!"><h6>-</h6></a>
                            <p class="text-muted mb-0">-</p>
                            {{-- <span class="status deactive text-mute"><i class="far fa-clock mr-10"></i>30 min ago</span> --}}
                        </div>
                    </div>
                    <div class="align-middle mb-25">
                        <img src="{{url('assets/admin/img/user.png')}}" alt="user image" class="rounded-circle img-40 align-top mr-15">
                        <div class="d-inline-block">
                            <a href="#!"><h6>-</h6></a>
                            <p class="text-muted mb-0">-</p>
                            {{-- <span class="status deactive text-mute"><i class="far fa-clock mr-10"></i>10 min ago</span> --}}
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-4 col-md-4">
            <div class="row">
                <div class="col-xl-12 col-md-12">
                    <div class="card ticket-card">
                        <div class="card-body">
                            <p class="mb-30 bg-green lbl-card"><i class="fas fa-users"></i> Siswa Online</p>
                            <div class="text-center">
                                <h2 id="user_online" class="mb-0 d-inline-block text-green">-</h2>
                                <p class="mb-0 d-inline-block"></p>
                                <p class="mb-0 mt-15">Siswa</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">

                <div class="col-xl-12 col-md-12">
                    <div class="card ticket-card">
                        <div class="card-body">
                            <p class="mb-30 bg-secondary lbl-card"><i class="fas fa-users"></i> Siswa Offline</p>
                            <div class="text-center">
                                <h2 id="user_offline" class="mb-0 d-inline-block text-secondary">-</h2>
                                <p class="mb-0 d-inline-block"></p>
                                <p class="mb-0 mt-15">Siswa</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
    <div class="row">
        <div class="col-xl-4 col-lg-12 col-12">
            <div class="card">
                <div class="card-header pb-0">
                    <h6><b style="background-color: #007bff;color: white;padding: 7px;border-top-left-radius: 10px;">Level
                            Siswa </b></h6>
                </div>
                <div class="card-body">
                    @foreach ($levels as $level)
                    <div class="row card-rank">
                        <div class="col-md-4">
                            <img src="
                            @if ($level->point == 100)
                                {{url('images/1-emperor.png')}}
                            @elseif($level->point == 75)
                                {{url('images/2-king.png')}}
                            @elseif($level->point == 45)
                                {{url('images/3-duke.png')}}
                            @elseif($level->point == 30)
                                {{url('images/4-prince.png')}}
                            @elseif($level->point == 15)
                                {{url('images/5-knight.png')}}
                            @else
                                {{url('images/6-citizen.png')}}
                            @endif
                            " alt="" style="width: 100%">
                        </div>
                        <div class="col-md-5" style="padding-top: 20px;">
                            <div class="row">
                                <div class="col-md-12">
                                    <h5><b>{{$level->name}}</b></h5>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <p>{{$level->point}} Point</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3" style="padding-top: 20px;">
                            <?php
                            $countLevel = DB::table('user_levels')->leftJoin('users','user_levels.user_id','=','users.id')->where('users.role','student')->where('user_levels.level_id', $level->id)->count();
                            ?>
                            <div class="row">
                                <div class="col-md-12">
                                    <h5 style="text-align: -webkit-center;">{{$countLevel}}</h5>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <p style="text-align: -webkit-center;">Siswa</p>
                                </div>
                            </div>

                        </div>
                    </div>
                    @endforeach
                </div>

            </div>
        </div>
        <div class="col-xl-8 col-lg-12 col-12">
            <div class="card">
                <div class="card-header pb-0">
                    <h6><b style="background-color: #f5a720;color: white;padding: 7px;border-top-left-radius: 10px;">Chapter
                            Diselesaikan </b></h6>
                </div>
                <div class="card-body section-chapter">
                    @foreach ($categories as $cat)
                    <div class="row card-rank">
                        <div class="col-md-4">
                            <img src="{{$cat->image}}" alt="" style="width: 100%">
                        </div>
                        <div class="col-md-5" style="padding-top: 20px;">
                            <div class="row">
                                <div class="col-md-12">
                                    <h5><b>{{$cat->name}}</b></h5>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <p>Chapter {{$cat->level}}</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3" style="padding-top: 20px;">
                            <?php
                            $countComplete = DB::table('complete_categories')
                                ->where('category_id', $cat->id)
                                ->where('is_complete', true)
                                ->count();
                            ?>
                            <div class="row">
                                <div class="col-md-12">
                                    <h5 style="text-align: -webkit-center;">{{$countComplete}}</h5>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <p style="text-align: -webkit-center;">Siswa</p>
                                </div>
                            </div>

                        </div>
                    </div>
                    @endforeach

                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-xl-4 col-lg-12 col-12">
            <div class="card">
                <div class="card-header pb-0">
                    <h6><b style="background-color: #007bff;color: white;padding: 7px;border-top-left-radius: 10px;">Top
                            10 Siswa </b></h6>
                </div>
                <div class="card-body section" >
                    @foreach ($topRank as $key => $item)
                        <input type="hidden" id="id" value="{{$item->id}}">
                        <div id="user{{$item->id}}">
                        <div class="row
                        @if ($key + 1 == 1 )
                        {{'card-rank-user1'}}
                        @elseif ($key + 1 == 2)
                        {{'card-rank-user2'}}
                        @elseif ($key + 1 == 3)
                        {{'card-rank-user3'}}
                        @else
                        {{'card-rank-user'}}
                        @endif
                        " onclick="viewStatistic('{{$item->id}}')">
                            <div class="col-md-4" style="margin-left: 10px;">

                                <img src="
                                @if ($item->level == "Emperor") {{url('images/1-emperor.png')}} @elseif($item->level ==
                                "King")
                                {{url('images/2-king.png')}}
                                @elseif($item->level == "Duke")
                                {{url('images/3-duke.png')}}
                                @elseif($item->level == "Prince")
                                {{url('images/4-prince.png')}}
                                @elseif($level->level == "Knight")
                                {{url('images/5-knight.png')}}
                                @else
                                {{url('images/6-citizen.png')}}
                                @endif
                                "
                                alt="" style="width: 70%;
                                position: absolute;
                                right: 26px;
                                top: -10px;">
                                <img style="width: 70%;border-radius: 50px;" src="{{$item->profile_photo_path == null ? url('images/user_icon.png') : url($item->profile_photo_path)}}">
                            </div>
                            <div class="col-md-4" style="padding-top: 20px;">
                                <div class="row">
                                    <div class="col-md-12">
                                        <p><b>{{$item->name}}</b></p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <p>Level {{$item->level}}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3" style="padding-top: 20px;">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h6 class="
                                        @if ($key + 1 == 1 )
                                        {{'number-rank1'}}
                                        @elseif ($key + 1 == 2)
                                        {{'number-rank2'}}
                                        @elseif ($key + 1 == 3)
                                        {{'number-rank3'}}
                                        @else
                                        {{'number-rank'}}
                                        @endif
                                        ">
                                        {{$key + 1 > 3 ? '#' : ''}}{{$key + 1}}
                                        </h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    @endforeach

                </div>
            </div>
        </div>
        <div class="col-xl-8 col-lg-12 col-12">
            <div class="card">
                <div class="card-header pb-0">
                    <h6><b style="background-color: #007bff;color: white;padding: 7px;border-top-left-radius: 10px;">Statistik Top
                            10 Siswa </b></h6>
                </div>
                <div class="card-body section" style="max-height: 1220px;height: 1220px;">
                    <div class="row" id="text-stats" style="margin-left: 3px;">
                        <i class="fa fa-info-circle" aria-hidden="true" style="color: #f5a720;font-size: 20px;margin-right: 10px;"></i>
                        <h6>Pilih salah satu murid di sebelah kiri untuk melihat statistik</h6>
                    </div>
                    <div id="stats-loader" class="row d-none" style="text-align: -webkit-center;margin-top:20px">
                        <div class="col-md-12">
                            <div class="loader"></div>
                        </div>
                    </div>
                    <div class="row d-none" id="user-stats">
                        <div class="col-md-12">
                            <form class="text-left border border-light p-3" style="margin-top:20px">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h4 style="background-color: #007bff;color: white;padding: 10px;border-radius: 15px;">Informasi User</h4>
                                    </div>
                                </div>
                                <div id="user-info" class="col-md-6">
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card sale-card ">
                                            <div class="card-header">
                                                <h3>Level User</h3>
                                            </div>
                                            <div class="card-block text-center">
                                                <div id="percent-level">
                                                    <div class="radial-bar radial-bar-0 radial-bar-lg radial-bar-danger">
                                                        <img src="{{url('assets/admin/img/user.png')}}" alt="User-Image">
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-12">
                                                        <h5>Level : <span id="user_level_name">loading..</span></h5>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-6">
                                                        <div class="s-caption bg-default"></div>
                                                        <div class="s-cont d-inline-block">
                                                            <h5 class="fw-700 mb-0" id="sisa_point"></h5>
                                                            <p class="mb-0">Sisa Point Dibutuhkan</p>
                                                        </div>
                                                    </div>
                                                    <div class="col-6 border-left">
                                                        <div class="s-caption bg-red"></div>
                                                        <div class="s-cont d-inline-block">
                                                            <h5 class="fw-700 mb-0" id="user_point"></h5>
                                                            <p class="mb-0">Jumlah Point Terkumpul </p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-xl-3 col-md-6">
                                        <div class="card ticket-card">
                                            <div class="card-body">
                                                <p class="mb-30 bg-primary lbl-card"><i class="fas fa-folder-open"></i> Chapter Dikerjakan</p>
                                                <div class="text-center">
                                                    <h2 class="mb-0 d-inline-block text-primary" id="chapter_complete"></h2>
                                                    <p class="mb-0 d-inline-block">Chapter</p>
                                                    <p class="mb-0 mt-15"><span id="chapter_incomplete"></span> Chapter tersisa yang belum dikerjakan</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-6">
                                        <div class="card ticket-card">
                                            <div class="card-body">
                                                <p class="mb-30 bg-blue lbl-card"><i class="fas fa-file-archive"></i> Materi Dikerjakan</p>
                                                <div class="text-center">
                                                    <h2 class="mb-0 d-inline-block text-blue" id="materi_complete"></h2>
                                                    <p class="mb-0 d-inline-block">Materi</p>
                                                    <p class="mb-0 mt-15"><span id="materi_incomplete"></span> Materi sisa yang belum dikerjakan</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-6">
                                        <div class="card ticket-card">
                                            <div class="card-body">
                                                <p class="mb-30 bg-green lbl-card"><i class="fa fa-check-square" aria-hidden="true"></i> Jumlah Benar</p>
                                                <div class="text-center">
                                                    <h2 class="mb-0 d-inline-block text-green" id="jumlah_benar"></h2>
                                                    <p class="mb-0 d-inline-block">Benar</p>
                                                    <p class="mb-0 mt-15">Sangat menguasai di Materi <span id="nama_materi_dikuasai"></span></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-md-6">
                                        <div class="card ticket-card">
                                            <div class="card-body">
                                                <p class="mb-30 bg-warning lbl-card"><i class="fa fa-window-close" aria-hidden="true"></i> Jumlah Salah</p>
                                                <div class="text-center">
                                                    <h2 class="mb-0 d-inline-block text-warning" id="jumlah_salah"></h2>
                                                    <p class="mb-0 d-inline-block">Salah </p>
                                                    <p class="mb-0 mt-15">Kurang menguasai di Materi <span id="nama_materi_tidak_dikuasai"></span></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div id="chart-loader" class="row d-none" style="text-align: -webkit-center;margin-top:20px">
                                    <div class="col-md-12">
                                        <div class="loader"></div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <p style="background-color: #007bff;color: white;text-align: center;padding: 7px;">Total Membuka Aplikasi Pada : </p>
                                            </div>
                                            <div class="col-md-6">
                                                <select class="form-control select2" name="" id="date_chart"></select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <p style="background-color: #28a745;color: white;text-align: center;padding: 7px;">Total Mengerjakan Soal Pada : </p>
                                            </div>
                                            <div class="col-md-6">
                                                <select class="form-control select2" name="" id="materi_chart_select"></select>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <div class="row" id="chart-data">
                                    <div class="col-md-12">
                                        <div class="card shadow-sm">
                                            <div class="card-body">
                                                <canvas id="chLine" height="100"></canvas>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-12 col-lg-12 col-12">
            <div class="card">
                <div class="card-header pb-0">
                    <h6><b style="background-color: #007bff;color: white;padding: 7px;border-top-left-radius: 10px;">Statistik Total Siswa Membuka Aplikasi & Total Soal yang Dikerjakan Siswa</b></h6>
                </div>
                <div id="stats-loader-all" class="row" style="text-align: -webkit-center;margin-top:20px">
                    <div class="col-md-12">
                        <div class="loader"></div>
                    </div>
                </div>
                <div class="card-body d-none" id="stats-body-all">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-md-6">
                                    <p style="background-color: #007bff;color: white;text-align: center;padding: 7px;">Total Siswa Membuka Aplikasi Pada : </p>
                                </div>
                                <div class="col-md-6">
                                    <select class="form-control select2" name="" id="date_chart_all"></select>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="row">
                                <div class="col-md-6">
                                    <p style="background-color: #28a745;color: white;text-align: center;padding: 7px;">Total Siswa Mengerjakan Soal Pada : </p>
                                </div>
                                <div class="col-md-6">
                                    <select class="form-control select2" name="" id="materi_chart_select_all"></select>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row" id="chart-data-all">
                        <div class="col-md-12">
                            <div class="card shadow-sm">
                                <div class="card-body">
                                    <canvas id="chLine_all" height="100"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

</div>
<!-- /.content-wrapper -->
@endsection
@section('footer')
<script src="{{ url('assets/admin/dynamictable/dynamitable.jquery.min.js') }}"></script>
<script src="{{ url('assets/admin/dynamictable/dynamitable.jquery.min.js') }}"></script>

<script src="https://cdn.jsdelivr.net/npm/chart.js@3.7.1/dist/chart.min.js"></script>
<script>
$( document ).ready(function() {
    initChartAll()
    initSelectChartAll()
    fetchUserActivity()
    setInterval(fetchUserActivity, 5000);
});

function fetchUserActivity(){
    getOnlineOfflineUser()
    getUserActivity()
}


function getOnlineOfflineUser()
{
    $.ajax({
            async: false,
            url: `{{route("getCardOnlineOfflineUser")}}`,
            type: "GET",
            dataType: "json",
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            statusCode: {
                500: function (response) {
                    console.log(response)
                },
            },
            success: function (data) {
                $('#user_online').html(data.user_online)
                $('#user_offline').html(data.user_offline)
            }
        });
}

function getUserActivity()
{
    $.ajax({
            async: false,
            url: `{{route("getUserActivity")}}`,
            type: "GET",
            dataType: "json",
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            statusCode: {
                500: function (response) {
                    console.log(response)
                },
            },
            success: function (data) {
                // console.log(data)
                let html = ``;
                let index = 0;
                data.data.forEach(item => {
                    let profile_image = ''
                    let status = ''
                    let time = ''
                    let text = ''
                    if(item.profile_photo_path == null){
                        profile_image = `{{url('assets/admin/img/user.png')}}`
                    }else{
                        profile_image = item.profile_photo_path
                    }

                    if(index == 0){
                        if(data.user_1 == 'Online'){
                            status = 'active'
                            text = 'Siswa sedang membuka aplikasi'
                        }else{
                            text = 'Siswa tidak sedang membuka aplikasi'
                            status = 'deactive'
                            time = '<i class="far fa-clock mr-10"></i>' + data.user_1
                        }
                    }else if(index == 1){
                        if(data.user_2 == 'Online'){
                            text = 'Siswa sedang membuka aplikasi'
                            status = 'active'
                        }else{
                            text = 'Siswa tidak sedang membuka aplikasi'
                            status = 'deactive'
                            time = '<i class="far fa-clock mr-10"></i>' + data.user_2
                        }
                    }
                    else if(index == 2){
                        if(data.user_3 == 'Online'){
                            text = 'Siswa sedang membuka aplikasi'
                            status = 'active'
                        }else{
                            text = 'Siswa tidak sedang membuka aplikasi'
                            status = 'deactive'
                            time = '<i class="far fa-clock mr-10"></i>' + data.user_3
                        }
                    }
                    else if(index == 3){
                        if(data.user_4 == 'Online'){
                            text = 'Siswa sedang membuka aplikasi'
                            status = 'active'
                        }else{
                            text = 'Siswa tidak sedang membuka aplikasi'
                            status = 'deactive'
                            time = '<i class="far fa-clock mr-10"></i>' + data.user_4
                        }
                    }

                    html += `<div class="align-middle mb-25">
                        <img src="${profile_image}" alt="user image" class="rounded-circle img-40 align-top mr-15">
                        <div class="d-inline-block">
                            <a><h6>${item.name}</h6></a>
                            <p class="text-muted mb-0">${text}</p>
                            <span class="status ${status}">${time}</span>
                        </div>
                    </div>`
                    index++
                });
                $('#user_activity').html(html)
            }
        });
}


var myChart
var chartAll
$('#date_chart').change(function(){
    myChart.destroy()
    var id = $('#id').val()
    initChart(id)
})

$('#materi_chart_select').change(function(){
    myChart.destroy()
    var id = $('#id').val()
    initChart(id)
})

$('#date_chart_all').change(function(){
    chartAll.destroy()
    initChartAll()
})

$('#materi_chart_select').change(function(){
    chartAll.destroy()
    initChartAll()
})

function initSelectChart(user_id)
{
    $('#id').val(user_id)
    $('#date_chart').html('')
    $.ajax({
            async: false,
            url: `{{url("/chart?user_id=`+user_id+`")}}`,
            type: "GET",
            dataType: "json",
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            beforeSend: function(jqXHR, settings) {
                // console.log(settings.url);
            },
            statusCode: {
                500: function (response) {
                    console.log(response)
                },
            },
            success: function (data) {
                var html = ``
                var materi = ``
                jQuery.each(data.data, function(value) {
                    html += `<option value='${value}'>${value}</option>`
                });
                jQuery.each(data.materi, function(value) {
                    materi += `<option value='${value}'>${value}</option>`
                });

                if(html == ''){
                    $('#date_chart').html('<option selected disabled>Data tidak tersedia</option>')
                }else{
                    $('#date_chart').html(html)
                }

                if(materi == ''){
                    $('#materi_chart_select').html('<option selected disabled>Data tidak tersedia</option>')
                }else{
                    $('#materi_chart_select').html(materi)
                }
            }
        });
}

function initChart(user_id){
    $('#chart-loader').removeClass('d-none')
    $('#date_chart').addClass('d-none')
    $('#chart-data').addClass('d-none')
    var result_item = ""
    var minggu = ''
    var senin = ''
    var selasa = ''
    var rabu = ''
    var kamis = ''
    var jumat = ''
    var sabtu = ''

    var result_item_materi = ""
    var minggu_materi = ''
    var senin_materi = ''
    var selasa_materi = ''
    var rabu_materi = ''
    var kamis_materi = ''
    var jumat_materi = ''
    var sabtu_materi = ''

    $('#id').val(user_id)
    // console.log(id)
    $.ajax({
            async: false,
            url: `{{url("/chart?user_id=`+user_id+`")}}`,
            type: "GET",
            dataType: "json",
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            beforeSend: function(jqXHR, settings) {
                // console.log(settings.url);
            },
            statusCode: {
                500: function (response) {
                    console.log(response)
                },
            },
            success: function (data) {
                console.log(data.data)
                $('#chart-loader').addClass('d-none')
                $('#date_chart').removeClass('d-none')
                $('#chart-data').removeClass('d-none')

                result_item = data.data[$('#date_chart').val()]
                senin = result_item.find(o => o.week_day === 0) == null ? '0' : result_item.find(o => o.week_day === 0).count
                selasa = result_item.find(o => o.week_day === 1) == null ? '0' : result_item.find(o => o.week_day === 1).count
                rabu = result_item.find(o => o.week_day === 2) == null ? '0' : result_item.find(o => o.week_day === 2).count
                kamis = result_item.find(o => o.week_day === 3) == null ? '0' : result_item.find(o => o.week_day === 3).count
                jumat = result_item.find(o => o.week_day === 4) == null ? '0' : result_item.find(o => o.week_day === 4).count
                sabtu = result_item.find(o => o.week_day === 5) == null ? '0' : result_item.find(o => o.week_day === 5).count
                minggu = result_item.find(o => o.week_day === 6) == null ? '0' : result_item.find(o => o.week_day === 6).count

                result_item_materi = data.materi[$('#materi_chart_select').val()]
                senin_materi = result_item_materi.find(o => o.week_day === 0) == null ? '0' : result_item_materi.find(o => o.week_day === 0).count
                selasa_materi = result_item_materi.find(o => o.week_day === 1) == null ? '0' : result_item_materi.find(o => o.week_day === 1).count
                rabu_materi = result_item_materi.find(o => o.week_day === 2) == null ? '0' : result_item_materi.find(o => o.week_day === 2).count
                kamis_materi = result_item_materi.find(o => o.week_day === 3) == null ? '0' : result_item_materi.find(o => o.week_day === 3).count
                jumat_materi = result_item_materi.find(o => o.week_day === 4) == null ? '0' : result_item_materi.find(o => o.week_day === 4).count
                sabtu_materi = result_item_materi.find(o => o.week_day === 5) == null ? '0' : result_item_materi.find(o => o.week_day === 5).count
                minggu_materi = result_item_materi.find(o => o.week_day === 6) == null ? '0' : result_item_materi.find(o => o.week_day === 6).count
            }
        });


    var data_chart = [senin,selasa,rabu,kamis,jumat,sabtu,minggu]
    var data_materi = [senin_materi,selasa_materi,rabu_materi,kamis_materi,jumat_materi,sabtu_materi,minggu_materi]
    var colors = ['#007bff','#28a745','#333333','#c3e6cb','#dc3545','#6c757d'];
    var session = $('#date_chart').val()
    var materi = $('#materi_chart_select').val()
    var chartData = {
    labels: ["Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu", "Minggu"],
    datasets: [{
        label: ["Total Membuka Aplikasi (" + session + ")"],
        data: data_chart,
        backgroundColor:  colors[0],
        borderColor: colors[0],
        borderWidth: 4,
        pointBackgroundColor: colors[0]
    },{
        label: ["Total Mengerjakan Soal (" + materi + ")"],
        data: data_materi,
        backgroundColor: colors[1],
        borderColor: colors[1],
        borderWidth: 4,
        pointBackgroundColor: colors[1]
    }]
    };

    if (chLine) {
    myChart = new Chart(chLine, {
    type: 'line',
    data: chartData,
    options: {
        scales: {
        yAxes: [{
            ticks: {
            beginAtZero: false
            }
        }]
        },
        legend: {
        display: false
        }
    }
    });
    }
}

function initSelectChartAll()
{
    $('#date_chart_all').html('')
    $.ajax({
            async: false,
            url: `{{url("/allChartData")}}`,
            type: "GET",
            dataType: "json",
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            beforeSend: function(jqXHR, settings) {
                // console.log(settings.url);
            },
            statusCode: {
                500: function (response) {
                    console.log(response)
                },
            },
            success: function (data) {
                var html = ``
                var materi = ``
                jQuery.each(data.data, function(value) {
                    html += `<option value='${value}'>${value}</option>`
                });
                jQuery.each(data.materi, function(value) {
                    materi += `<option value='${value}'>${value}</option>`
                });

                if(html == ''){
                    $('#date_chart_all').html('<option selected disabled>Data tidak tersedia</option>')
                }else{
                    $('#date_chart_all').html(html)
                }

                if(materi == ''){
                    $('#materi_chart_select_all').html('<option selected disabled>Data tidak tersedia</option>')
                }else{
                    $('#materi_chart_select_all').html(materi)
                }
            }
        });
}

function initChartAll(){
    var result_item_all = ""
    var minggu_all = ''
    var senin_all = ''
    var selasa_all = ''
    var rabu_all = ''
    var kamis_all = ''
    var jumat_all = ''
    var sabtu_all = ''

    var result_item_materi_all = ""
    var minggu_materi_all = ''
    var senin_materi_all = ''
    var selasa_materi_all = ''
    var rabu_materi_all = ''
    var kamis_materi_all = ''
    var jumat_materi_all = ''
    var sabtu_materi_all = ''

    $.ajax({
            async: false,
            url: `{{url("/allChartData")}}`,
            type: "GET",
            dataType: "json",
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            beforeSend: function(jqXHR, settings) {
                // console.log(settings.url);
            },
            statusCode: {
                500: function (response) {
                    console.log(response)
                },
            },
            success: function (data) {
                console.log(data.data)
                $('#stats-loader-all').addClass('d-none')
                $('#stats-body-all').removeClass('d-none')

                result_item_all = data.data[$('#date_chart_all').val()]
                console.log($('#date_chart_all').val())
                senin_all = result_item_all.find(o => o.week_day === 0) == null ? '0' : result_item_all.find(o => o.week_day === 0).count
                selasa_all = result_item_all.find(o => o.week_day === 1) == null ? '0' : result_item_all.find(o => o.week_day === 1).count
                rabu_all = result_item_all.find(o => o.week_day === 2) == null ? '0' : result_item_all.find(o => o.week_day === 2).count
                kamis_all = result_item_all.find(o => o.week_day === 3) == null ? '0' : result_item_all.find(o => o.week_day === 3).count
                jumat_all = result_item_all.find(o => o.week_day === 4) == null ? '0' : result_item_all.find(o => o.week_day === 4).count
                sabtu_all = result_item_all.find(o => o.week_day === 5) == null ? '0' : result_item_all.find(o => o.week_day === 5).count
                minggu_all = result_item_all.find(o => o.week_day === 6) == null ? '0' : result_item_all.find(o => o.week_day === 6).count

                result_item_materi_all = data.materi[$('#materi_chart_select_all').val()]
                senin_materi_all = result_item_materi_all.find(o => o.week_day === 0) == null ? '0' : result_item_materi_all.find(o => o.week_day === 0).count
                selasa_materi_all = result_item_materi_all.find(o => o.week_day === 1) == null ? '0' : result_item_materi_all.find(o => o.week_day === 1).count
                rabu_materi_all = result_item_materi_all.find(o => o.week_day === 2) == null ? '0' : result_item_materi_all.find(o => o.week_day === 2).count
                kamis_materi_all = result_item_materi_all.find(o => o.week_day === 3) == null ? '0' : result_item_materi_all.find(o => o.week_day === 3).count
                jumat_materi_all = result_item_materi_all.find(o => o.week_day === 4) == null ? '0' : result_item_materi_all.find(o => o.week_day === 4).count
                sabtu_materi_all = result_item_materi_all.find(o => o.week_day === 5) == null ? '0' : result_item_materi_all.find(o => o.week_day === 5).count
                minggu_materi_all = result_item_materi_all.find(o => o.week_day === 6) == null ? '0' : result_item_materi_all.find(o => o.week_day === 6).count
            }
        });


    var data_chart_all = [senin_all,selasa_all,rabu_all,kamis_all,jumat_all,sabtu_all,minggu_all]
    var data_materi_all = [senin_materi_all,selasa_materi_all,rabu_materi_all,kamis_materi_all,jumat_materi_all,sabtu_materi_all,minggu_materi_all]
    var colors = ['#007bff','#28a745','#333333','#c3e6cb','#dc3545','#6c757d'];
    var session_all = $('#date_chart_all').val()
    var materi_all = $('#materi_chart_select_all').val()
    var chartData_all = {
    labels: ["Senin", "Selasa", "Rabu", "Kamis", "Jumat", "Sabtu", "Minggu"],
    datasets: [{
        label: ["Total Siswa Membuka Aplikasi (" + session_all + ")"],
        data: data_chart_all,
        backgroundColor:  colors[0],
        borderColor: colors[0],
        borderWidth: 4,
        pointBackgroundColor: colors[0]
    },{
        label: ["Total Soal yang Dikerjakan Siswa (" + materi_all + ")"],
        data: data_materi_all,
        backgroundColor: colors[1],
        borderColor: colors[1],
        borderWidth: 4,
        pointBackgroundColor: colors[1]
    }]
    };

    if (chLine_all) {
    chartAll = new Chart(chLine_all, {
    type: 'line',
    data: chartData_all,
    options: {
        scales: {
        yAxes: [{
            ticks: {
            beginAtZero: false
            }
        }]
        },
        legend: {
        display: false
        }
    }
    });
    }
}
</script>
<script>

    function viewStatistic(id)
    {
        if(myChart){
            myChart.destroy()
        }else{
            // console.log('kosong')
        }
        $('#id').val(id)
        $('#user-info').html($('#user'+id).html())
        $('#text-stats').addClass('d-none')

        userStatistic(id)
    }


    function userStatistic(user_id)
    {
        $('#user-stats').addClass('d-none')
        $('#stats-loader').removeClass('d-none')
        $.ajax({
            url: `{{url("/userStatistic?user_id=`+user_id+`")}}`,
            type: "GET",
            dataType: "json",
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            beforeSend: function(jqXHR, settings) {
                console.log(settings.url);
            },
            statusCode: {
                500: function (response) {
                    console.log(response)
                },
            },
            success: function (data) {
                $('#user-stats').removeClass('d-none')
                $('#chapter_complete').text(data.data[0].chapter_complete)
                $('#chapter_incomplete').text(data.data[0].chapter_incomplete)
                $('#jumlah_benar').text(data.data[0].jumlah_benar)
                $('#jumlah_salah').text(data.data[0].jumlah_salah)
                $('#materi_complete').text(data.data[0].materi_complete)
                $('#materi_incomplete').text(data.data[0].materi_incomplete)
                $('#nama_materi_dikuasai').text(data.data[0].nama_materi_dikuasai)
                $('#nama_materi_tidak_dikuasai').text(data.data[0].nama_materi_tidak_dikuasai)
                $('#sisa_point').text(data.data[0].sisa_point)
                $('#user_level_name').text(data.data[0].user_level_name)
                $('#user_point').text(data.data[0].user_point)
                $('#percent-level').html('')
                var percent_level = `<div class="radial-bar radial-bar-${data.data[0].percent} radial-bar-lg radial-bar-danger">
                    <img src="{{url('assets/admin/img/user.png')}}" alt="User-Image">
                    </div>`
                $('#percent-level').html(percent_level)
                $('#stats-loader').addClass('d-none')
                initSelectChart(user_id)
                initChart(user_id)
            }
        });
    }
</script>
@endsection
