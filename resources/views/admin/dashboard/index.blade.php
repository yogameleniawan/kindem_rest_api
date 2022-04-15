@extends('admin.layouts.app')
@section('title')
Dashboard
@endsection
@section('header')
<style>
    .ik {
        cursor: pointer;
    }

    .fa {
        background-color: #007bff;
        color: white;
        padding: 15px;
        font-size: 55px;
        border-radius: 15px;
        margin-right: 5px
    }

    #trHover:hover {
        background-color: #e6e6e6;
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
        <div class="col-xl-3 col-lg-6 col-6">
            <div class="card">
                <div class="p-3">
                    <div class="row d-flex justify-content-between align-items-center">
                        <div class="col-auto">
                            <h5 class="mb-0">Chapter</h5>
                            <h2 class="mb-0 mt-0" style="font-size: 50px;"> <b> {{$countChapter}} </b></h2>
                        </div>
                        <div class="col-auto">
                            <h1><i class="fa fa-th-large"></i></h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-lg-6 col-6">
            <div class="card">
                <div class="p-3">
                    <div class="row d-flex justify-content-between align-items-center">
                        <div class="col-auto">
                            <h5 class="mb-0">Materi</h5>
                            <h2 class="mb-0 mt-0" style="font-size: 50px;"> <b> {{$countMateri}} </b></h2>
                        </div>
                        <div class="col-auto">
                            <h1><i class="fa fa-book-open"></i></h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-lg-6 col-6">
            <div class="card">
                <div class="p-3">
                    <div class="row d-flex justify-content-between align-items-center">
                        <div class="col-auto">
                            <h5 class="mb-0">Soal</h5>
                            <h2 class="mb-0 mt-0" style="font-size: 50px;"> <b> {{$countSoal}} </b></h2>
                        </div>
                        <div class="col-auto">
                            <h1><i class="fa fa-list"></i></h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-lg-6 col-6">
            <div class="card">
                <div class="p-3">
                    <div class="row d-flex justify-content-between align-items-center">
                        <div class="col-auto">
                            <h5 class="mb-0">User (Siswa)</h5>
                            <h2 class="mb-0 mt-0" style="font-size: 50px;"> <b> {{$countUser}}</b></h2>
                        </div>
                        <div class="col-auto">
                            <h1><i class="fa fa-user"></i></h1>
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
                    <h4> <b>Jumlah Rank User </b></h4>
                </div>
                <div class="card-body">
                    @foreach ($levels as $level)
                    <div class="row d-flex justify-content-between align-items-center ">
                        <div class="col">
                            <h5 class="mb-3"> {{$level->name}}</h5>
                        </div>
                        <div class="col">
                            <?php
                            $countLevel = DB::table('user_levels')->where('level_id', $level->id)->count();
                            ?>
                            <p class="mb-3"><b>{{$countLevel}}</b></p>
                        </div>
                    </div>
                    @endforeach
                </div>

            </div>
        </div>
        <div class="col-xl-4 col-lg-12 col-12">
            <div class="card">
                <div class="card-header pb-0">
                    <h5><b>Chapter Yang Telah Diselesaikan</b></h5>
                </div>
                <div class="card-body">
                    @foreach ($categories as $cat)
                    <div class="row d-flex justify-content-between align-items-center ">
                        <div class="col-8">
                            <p class="mb-2"> {{$cat->name}}</p>
                        </div>
                        <div class="col-4">
                            <?php
                            $countComplete = DB::table('complete_categories')
                                ->where('category_id', $cat->id)
                                ->where('is_complete', true)
                                ->count();
                            ?>
                            <p class="mb-2"><b>{{$countComplete}}</b></p>
                        </div>
                    </div>
                    @endforeach

                </div>
            </div>
        </div>
        <div class="col-xl-4 col-lg-12 col-12">
            <div class="card" style="min-height: 42vh;">
                <div class="card-header pb-0">
                    <h4> <b>Top 5 User</b></h4>
                </div>
                <div class="card-body">
                    @foreach ($levels as $level)
                    <div class="row d-flex justify-content-between align-items-center mb-3">
                        <div class="col-6">
                            <p class="mb-0">Murid Kesayangannn</p>
                        </div>
                        <div class="col-3">
                            <p class="mb-0"> {{$level->name}}</p>
                        </div>
                        <div class="col-3">
                            <?php
                            $countLevel = DB::table('user_levels')->where('level_id', $level->id)->count();
                            ?>
                            <p class="mb-0">111{{$countLevel}}</p>
                        </div>
                    </div>
                    @endforeach
                </div>

            </div>
        </div>
    </div>

</div>
<!-- /.content-wrapper -->
@endsection
@section('footer')
<script src="{{ url('assets/admin/dynamictable/dynamitable.jquery.min.js') }}"></script>
@endsection