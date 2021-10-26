@extends('admin.layouts.app')
@section('title')
Edit Courses
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
Courses
@endsection
@section('subtitleHeader')
Edit Courses
@endsection
@section('breadcrumb')
Courses
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
                <form class="text-left border border-light p-5" action="{{route('courses.update', $data->id)}}" method="POST"
                    enctype="multipart/form-data" style="padding-bottom: 50px;">
                    @csrf
                    @method('PUT')

                    <div class="form-group">
                        <label>Sub Categories ID</label>
                        <div class="input-group">
                            <span class="input-group-prepend">
                                <label class="input-group-text"><i class="ik ik-edit-1"></i></label>
                            </span>
                            <input type="text" class="form-control  " placeholder="Name"
                                id="category_id" name="category_id" value="{{$data->sub_category_id}}" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label>Indonesian</label>
                        <div class="input-group">
                            <span class="input-group-prepend">
                                <label class="input-group-text"><i class="ik ik-edit-1"></i></label>
                            </span>
                            <input type="text" class="form-control  " placeholder="Indonesian"
                                id="indonesia_text" name="indonesia_text" value="{{$data->indonesia_text}}" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label>English</label>
                        <div class="input-group">
                            <span class="input-group-prepend">
                                <label class="input-group-text"><i class="ik ik-edit-1"></i></label>
                            </span>
                            <input type="text" class="form-control  " placeholder="English"
                                id="english_text" name="english_text" value="{{$data->english_text}}" required>
                        </div>
                    </div>

                    <img id="output" src="{{$data->image}}" width="50%"/>

                    <div class="form-group">
                        <label>Image</label>
                        <div class="input-group">
                            <span class="input-group-prepend">
                                <label class="input-group-text"><i class="ik ik-edit-1"></i></label>
                            </span>
                            <input accept="image/*" onchange="loadFile(event)" type="file" class="form-control  " placeholder="Image"
                                id="image" name="image">
                        </div>
                    </div>

                    <div class="footer-buttons">
                        <a class="fixedButtonRefresh" href="{{route('courses.index')}}">
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

<script>
    var loadFile = function(event) {
      var output = document.getElementById('output');
      output.src = URL.createObjectURL(event.target.files[0]);
      output.onload = function() {
        URL.revokeObjectURL(output.src)
      }
    };
</script>
<script>
    var SITEURL = "{{URL('/')}}";
    let validExt = ['jpg', 'png', 'jpeg'];

    function resetForm($form) {
    $form.find('input:file').val('');
    }

    $('input').on('change', function(){
    var extension = this.files[0].type.split('/')[1]
    console.log(this.files[0].type)
        if(validExt.indexOf(extension) == -1){
            alert('Video extensions are allowed is jpg/png/jpeg');
            resetForm($('#fileUploadForm'));
        }
    });
    $(function () {
        $(document).ready(function () {
            $('#fileUploadForm').ajaxForm({
                beforeSend: function () {
                    var percentage = '0';
                },
                uploadProgress: function (event, position, total, percentComplete) {
                    var percentage = percentComplete;
                    $('.progress .progress-bar').css("width", percentage+'%', function() {
                      return $(this).attr("aria-valuenow", percentage) + "%";
                    })
                },
                complete: function (xhr) {
                    console.log('File has uploaded');
                    alert("Upload Success");
                    window.location.href = SITEURL +"/"+"admin/courses";
                }
            });
        });
    });
</script>
@endsection
