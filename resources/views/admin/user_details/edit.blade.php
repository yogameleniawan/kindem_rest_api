@extends('admin.layouts.app')
@section('title')
Edit User Detail
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
User Detail
@endsection
@section('subtitleHeader')
Edit User Detail
@endsection
@section('breadcrumb')
User Detail
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
    <div class="col-sm-12" style="margin-bottom:20%">
        <div class="card">
            <div class="box-body" style="padding-bottom:50px">
                <form class="text-left border border-light p-5" action="{{route('user_details.update', $data->id)}}" method="POST"
                    enctype="multipart/form-data" style="padding-bottom: 50px;">
                    @csrf
                    @method('PUT')
                    <div class="form-group">
                        <label>Email</label>
                        <div class="input-group">
                            <span class="input-group-prepend">
                                <label class="input-group-text"><i class="ik ik-edit-1"></i></label>
                            </span>
                            <select name="user_id" class="select2 form-control" id="default-select">
                                @foreach ($users as $user)
                                <option value="{{$user->id}}"
                                    @if ($user->id == $data->user_id)
                                        {{'selected'}}
                                    @endif
                                    >{{$user->email}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label>Name</label>
                        <div class="input-group">
                            <span class="input-group-prepend">
                                <label class="input-group-text"><i class="ik ik-edit-1"></i></label>
                            </span>
                            <input type="text" class="form-control  " placeholder="Name"
                                id="name" name="name" value="{{$data->name}}">
                        </div>
                    </div>

                    <div class="form-group">
                        <label>Address</label>
                        <div class="input-group">
                            <span class="input-group-prepend">
                                <label class="input-group-text"><i class="ik ik-edit-1"></i></label>
                            </span>
                            <input type="text" class="form-control  " placeholder="Address"
                                id="address" name="address" value="{{$data->address}}">
                        </div>
                    </div>

                    <div class="form-group">
                        <label>Gender</label>
                        <div class="input-group">
                            <span class="input-group-prepend">
                                <label class="input-group-text"><i class="ik ik-edit-1"></i></label>
                            </span>
                            <select name="gender" class="select2 form-control" id="default-select">
                                <option value="laki"
                                @if ($data->gender == "laki")
                                    {{'selected'}}
                                @endif
                                >Laki-Laki</option>
                                <option value="perempuan"
                                @if ($data->gender == "perempuan")
                                    {{'selected'}}
                                @endif>Perempuan</option>
                            </select>
                        </div>
                    </div>

                    <div class="footer-buttons">
                        <a class="fixedButtonRefresh" href="{{route('user_details.index')}}">
                            <button data-toggle="tooltip" data-placement="top" title="" type="button"
                                class="btn btn-icon btn-refresh " data-original-title="Back">
                                <i class="ik ik-arrow-left bg-ik"></i>
                            </button>
                        </a>
                        <a class="fixedButtonAdd">
                            <button data-toggle="tooltip" type="submit" data-placement="top" title="" href=""
                                class="btn btn-icon btn-add" data-original-title="Save">
                                <i class="ik ik-save"></i>
                            </button>
                        </a>
                    </div>
                </form>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.box -->
    </div>
    <!-- /.col -->
</div>
<!-- /.content-wrapper -->
@endsection
@section('footer')
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.form/4.3.0/jquery.form.min.js"></script>

@endsection

