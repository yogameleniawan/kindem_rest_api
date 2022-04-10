@extends('admin.layouts.app')
@section('title')
Users
@endsection
@section('header')
<style>
    .ik {
        cursor: pointer;
    }

    #trHover:hover {
        background-color: #e6e6e6;
    }

</style>
@endsection
@section('iconHeader')
<i class="ik ik-menu bg-icon"></i>
@endsection
@section('titleHeader')
Users
@endsection
@section('subtitleHeader')
Add Users
@endsection
@section('breadcrumb')
Users
@endsection
@section('content-wrapper')
@if ($errors->any())
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{ $error }}</li>
            @endforeach
        </ul>
    </div>
@endif
<!-- Content Wrapper. Contains page content -->
<div class="row">
    <div class="col-md-12">
        <form class="text-left border border-light p-3" style="margin-top:20px">
            <div class="row">
                <div class="col-md-12">
                    <h4 style="background-color: #007bff;color: white;padding: 10px;border-radius: 15px;">Informasi User</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="card sale-card ">
                        <div class="card-header">
                            <h3>Level User</h3>
                        </div>
                        <div class="card-block text-center">
                            <div id="percent-level" class="radial-bar radial-bar-{{$percent}} radial-bar-lg radial-bar-danger">
                                <img src="{{url('assets/admin/img/user.png')}}" alt="User-Image">
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <h5>Level : <span id="level">{{$user_level_name}}</span></h5>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-6">
                                    <div class="s-caption bg-default"></div>
                                    <div class="s-cont d-inline-block">
                                        <h5 class="fw-700 mb-0">{{$sisa_point}}</h5>
                                        <p class="mb-0">Sisa Point Dibutuhkan</p>
                                    </div>
                                </div>
                                <div class="col-6 border-left">
                                    <div class="s-caption bg-red"></div>
                                    <div class="s-cont d-inline-block">
                                        <h5 class="fw-700 mb-0">{{$user_point}}</h5>
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
                                <h2 class="mb-0 d-inline-block text-primary">{{$chapter_complete}}</h2>
                                <p class="mb-0 d-inline-block">Chapter</p>
                                <p class="mb-0 mt-15">{{$chapter_incomplete}} Chapter tersisa yang belum dikerjakan</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="card ticket-card">
                        <div class="card-body">
                            <p class="mb-30 bg-blue lbl-card"><i class="fas fa-file-archive"></i> Materi Dikerjakan</p>
                            <div class="text-center">
                                <h2 class="mb-0 d-inline-block text-blue">{{$materi_complete}}</h2>
                                <p class="mb-0 d-inline-block">Materi</p>
                                <p class="mb-0 mt-15">{{$materi_incomplete}} Materi sisa yang belum dikerjakan</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="card ticket-card">
                        <div class="card-body">
                            <p class="mb-30 bg-green lbl-card"><i class="fa fa-check-square" aria-hidden="true"></i> Jumlah Benar</p>
                            <div class="text-center">
                                <h2 class="mb-0 d-inline-block text-green">{{$jumlah_benar}}</h2>
                                <p class="mb-0 d-inline-block">Benar</p>
                                <p class="mb-0 mt-15">Sangat menguasai di Materi {{$nama_materi_dikuasai}}</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-3 col-md-6">
                    <div class="card ticket-card">
                        <div class="card-body">
                            <p class="mb-30 bg-warning lbl-card"><i class="fa fa-window-close" aria-hidden="true"></i> Jumlah Salah</p>
                            <div class="text-center">
                                <h2 class="mb-0 d-inline-block text-warning">{{$jumlah_salah}}</h2>
                                <p class="mb-0 d-inline-block">Salah </p>
                                <p class="mb-0 mt-15">Kurang menguasai di Materi {{$nama_materi_tidak_dikuasai}}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<!-- /.content-wrapper -->
@endsection
@section('footer')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.min.js"></script>
@endsection

