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
    <div class="card">
        <div class="card-body">
            <div class="row">
                <div class="col-sm-12">
                    <div class="card-body">
                        <div class="dt-responsive">
                            <div class="wrapper">
                                <div class="grid">
                                    Categories
                                    <hr>
                                    <div class="gridmore">
                                        <a href="{{route('materi.index')}}">More ...</a>
                                    </div>
                                </div>
                                <div class="grid">
                                    Sub Categories
                                    <hr>
                                    <div class="gridmore">
                                        <a href="{{route('sub_categories.index')}}">More ...</a>
                                    </div>
                                </div>
                                <div class="grid">
                                    Courses
                                    <hr>
                                    <div class="gridmore">
                                        <a href="{{route('courses.index')}}">More ...</a>
                                    </div>
                                </div>
                                <div class="grid">
                                    User
                                    <hr>
                                    <div class="gridmore">
                                        <a href="{{route('users.index')}}">More ...</a>
                                    </div>
                                </div>
                                <div class="grid">
                                    User Courses
                                    <hr>
                                    <div class="gridmore">
                                        <a href="{{route('user_courses.index')}}">More ...</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col -->
        </div>


        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Confirm to delete
                        </h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="{{ route('sub_categories.destroy', 'id') }}" method="POST">
                        @csrf
                        @method('DELETE')
                        <div class="modal-body">
                            <input id="id" name="id" type="hidden">
                            You want to delete?
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                            <button type="submit" class="btn btn-danger">Yes</button>
                        </div>
                    </form>
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
