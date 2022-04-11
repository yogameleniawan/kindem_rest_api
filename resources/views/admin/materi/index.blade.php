@extends('admin.layouts.app')
@section('title')
Add Categories
@endsection
@section('header')
<style>
    .ik {
        cursor: pointer;
    }

    #trHover:hover {
        background-color: #e6e6e6;
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

    .ik-edit {

        background-color: #28a745;
        color: white;
        padding: 5px;
        font-size: 20px;
        border-radius: 5px;
        margin-right: 5px
    }

    .ik-plus-square {

        background-color: #007bff;
        color: white;
        padding: 5px;
        font-size: 20px;
        border-radius: 5px;
        margin-right: 5px
    }

    .ik-trash-2 {

        background-color: #dc3545;
        color: white;
        padding: 5px;
        font-size: 20px;
        border-radius: 5px;

    }

    .edit-table:hover{
        cursor: pointer;
    }

    .delete:hover{
        cursor: pointer;
    }

</style>
<style>
    .switch {
      position: relative;
      display: inline-block;
      width: 60px;
      height: 34px;
    }

    .switch input {
      opacity: 0;
      width: 0;
      height: 0;
    }

    .slider {
      position: absolute;
      cursor: pointer;
      top: 0;
      left: 0;
      right: 0;
      bottom: 0;
      background-color: #ccc;
      -webkit-transition: .4s;
      transition: .4s;
    }

    .slider:before {
      position: absolute;
      content: "";
      height: 26px;
      width: 26px;
      left: 4px;
      bottom: 4px;
      background-color: white;
      -webkit-transition: .4s;
      transition: .4s;
    }

    input:checked + .slider {
      background-color: #2196F3;
    }

    input:focus + .slider {
      box-shadow: 0 0 1px #2196F3;
    }

    input:checked + .slider:before {
      -webkit-transform: translateX(26px);
      -ms-transform: translateX(26px);
      transform: translateX(26px);
    }

    /* Rounded sliders */
    .slider.round {
      border-radius: 34px;
    }

    .slider.round:before {
      border-radius: 50%;
    }
</style>
@endsection
@section('iconHeader')
<i class="ik ik-menu bg-icon"></i>
@endsection
@section('titleHeader')
Materi
@endsection
@section('subtitleHeader')
Tambah Materi
@endsection
@section('breadcrumb')
Materi
@endsection
@section('content-wrapper')
<!-- Content Wrapper. Contains page content -->
<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="box-body">
                <div class="card-header">
                    <i class="ik ik-plus-square" onclick="addChapterPage()"></i>
                </div>

                <div id="add_chapter">
                    <form class="text-left border border-light p-5" id="form-chapter" enctype="multipart/form-data">

                        <div class="form-group">
                            <label>Nama Chapter</label>
                            <div class="input-group">
                                <span class="input-group-prepend">
                                    <label class="input-group-text"><i class="ik ik-edit-1"></i></label>
                                </span>
                                <input type="text" class="form-control  " placeholder="Name" id="name" name="name" required>
                            </div>
                        </div>

                        <img id="output" width="50%" />

                        <div class="form-group">
                            <label>Gambar Chapter</label>
                            <div class="input-group">
                                <span class="input-group-prepend">
                                    <label class="input-group-text"><i class="ik ik-edit-1"></i></label>
                                </span>
                                <input accept="image/*" onchange="loadFile(event)" type="file" class="form-control  "
                                    placeholder="Image" id="image" name="image">
                            </div>
                        </div>

                        <div class="footer-buttons">

                            <div id="chapter-loader" class="loader d-none"></div>
                            <button id="btn-chapter" type="button" class="btn btn-primary" onclick="addChapter()">
                                Tambah
                            </button>
                        </div>
                    </form>
                </div>

                <div id="edit_chapter" class="d-none">
                    <form class="text-left border border-light p-5" id="form-chapter-edit" enctype="multipart/form-data">
                        <input type="hidden" name="category_id" id="id-edit-chapter">

                        <div class="form-group">
                            <label>Nama Chapter</label>
                            <div class="input-group">
                                <span class="input-group-prepend">
                                    <label class="input-group-text"><i class="ik ik-edit-1"></i></label>
                                </span>
                                <input type="text" class="form-control" placeholder="Name" id="name_chapter_edit" name="name" required>
                            </div>
                        </div>

                        <img id="output_chapter_edit" width="30%" />

                        <div class="form-group">
                            <label>Gambar Chapter</label>
                            <div class="input-group">
                                <span class="input-group-prepend">
                                    <label class="input-group-text"><i class="ik ik-edit-1"></i></label>
                                </span>
                                <input accept="image/*" onchange="loadFileEdit(event)" type="file" class="form-control  "
                                    placeholder="Image" id="image" name="image">
                            </div>
                        </div>

                        <div class="footer-buttons">

                            <div id="chapter-loader-update" class="loader d-none"></div>
                            <button id="btn-chapter-update" type="button" class="btn btn-success" onclick="updateChapter()">
                                Update
                            </button>
                        </div>
                    </form>
                </div>

                <div id="remove_chapter" class="d-none">
                    <form class="text-left border border-light p-5" id="form-chapter" enctype="multipart/form-data">
                        <input type="hidden" id="id_chapter_delete">
                        <div class="form-group">
                            <label>Nama Chapter</label>
                            <div class="input-group">
                                <span class="input-group-prepend">
                                    <label class="input-group-text"><i class="ik ik-edit-1"></i></label>
                                </span>
                                <input type="text" class="form-control" placeholder="Name" id="name_chapter_delete" name="name" required>
                            </div>
                        </div>

                        <div class="footer-buttons">

                            <div id="chapter-loader-delete" class="loader d-none"></div>
                            <button id="btn-chapter-delete" type="button" class="btn btn-danger" onclick="removeChapter()">
                                Hapus
                            </button>
                        </div>
                    </form>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div class="card-body">
                            <div class="dt-responsive">
                                <table class="table table-bordered" id="data-table" style="width: 102%">
                                    <thead>
                                        <tr>
                                            <th style="width: 3%"></th>
                                            <th>Name</th>
                                            <th>Image</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <td style="width: 3%"></td>
                                            <th>Name</th>
                                            <td></td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                        <!-- /.box-body -->
                    </div>
                    <!-- /.box -->
                </div>

            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.box -->
    </div>
    <!-- /.col -->
</div>

<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="card-header">
                <i class="ik ik-plus-square" onclick="addMateriPage()"></i>
            </div>
            <div class="box-body">
                <div id="add_materi">
                <form class="sample-form text-left border border-light p-5" id="form-add-materi" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="">Nama Chapter </label>
                        <select class="form-control select2" id="select_chapter" name="category_id">

                        </select>
                    </div>
                    <div class="form-group">
                        <label>Nama Materi</label>
                        <div class="input-group">
                            <span class="input-group-prepend">
                                <label class="input-group-text"><i class="ik ik-edit-1"></i></label>
                            </span>
                            <input type="text" class="form-control  " placeholder="Nama Materi" id="materi"
                                name="name" required>
                        </div>
                    </div>

                    <div class="footer-buttons">
                        <div id="materi-loader" class="loader d-none"></div>
                        <button id="materi-btn" type="button" class="btn btn-primary" onclick="addMateri()">
                            Tambah
                        </button>
                    </div>

                </form>
                </div>
                <div id="edit_materi" class="d-none">
                    <form class="sample-form text-left border border-light p-5" id="form-materi-edit" enctype="multipart/form-data">
                        <input type="hidden" id="id_materi_edit" name="id_materi_edit">
                        <div class="form-group">
                            <label for="">Nama Chapter </label>
                            <select class="form-control select2" id="select_chapter_edit" name="category_id">

                            </select>
                        </div>
                        <div class="form-group">
                            <label>Nama Materi</label>
                            <div class="input-group">
                                <span class="input-group-prepend">
                                    <label class="input-group-text"><i class="ik ik-edit-1"></i></label>
                                </span>
                                <input type="text" class="form-control  " placeholder="Nama Materi" id="materi_edit"
                                    name="name" required>
                            </div>
                        </div>

                        <div class="footer-buttons">
                            <div id="materi-loader-update" class="loader d-none"></div>
                            <button id="materi-btn-update" type="button" class="btn btn-success" onclick="updateMateri()">
                                Update
                            </button>
                        </div>

                    </form>
                    </div>
                    <div id="remove_materi" class="d-none">
                        <form class="sample-form text-left border border-light p-5" id="form-add-sub" enctype="multipart/form-data">
                            <input type="hidden" id="id_materi" name="id_materi">
                            <div class="form-group">
                                <label>Nama Materi</label>
                                <div class="input-group">
                                    <span class="input-group-prepend">
                                        <label class="input-group-text"><i class="ik ik-edit-1"></i></label>
                                    </span>
                                    <input type="text" class="form-control  " placeholder="Nama Materi" id="name_materi">
                                </div>
                            </div>

                            <div class="footer-buttons">
                                <div id="materi-loader-delete" class="loader d-none"></div>
                                <button id="materi-btn-delete" type="button" class="btn btn-danger" onclick="deleteMateri()">
                                    Hapus
                                </button>
                            </div>

                        </form>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card-body">
                                <div class="dt-responsive">
                                    <table class="table table-bordered" id="data-table-materi" style="width: 102%">
                                        <thead>
                                            <tr>
                                                <th style="width: 3%"></th>
                                                <th>Chapter</th>
                                                <th>Nama</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <td style="width: 3%"></td>
                                                <th>Chapter</th>
                                                <th>Nama</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
                    </div>
            </div>
            <!-- /.box-body -->
        </div>
        <!-- /.box -->
    </div>
    <!-- /.col -->
</div>

<div class="row">
    <div class="col-sm-12">
        <div class="card">
            <div class="card-header">
                <i class="ik ik-plus-square" onclick="addCoursePage()"></i>
            </div>
            <div class="box-body">
                <div id="add_course">
                <form class="sample-form text-left border border-light p-5" id="form-course" enctype="multipart/form-data">
                    <input type="hidden" id="id_course" name="id_course">
                    <div id="materi_select">
                        <div class="form-group">
                            <label for="">Nama Materi </label>
                            <select class="form-control select2" id="select_materi" name="sub_category_id" required>

                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label>Bahasa Indonesia</label>
                        <div class="input-group">
                            <span class="input-group-prepend">
                                <label class="input-group-text"><i class="ik ik-edit-1"></i></label>
                            </span>
                            <input type="text" class="form-control" placeholder="Bahasa Indonesia" id="indonesia_text"
                                name="indonesia_text" required>
                        </div>
                    </div>

                    <div class="form-group">
                        <label>Bahasa Inggris</label>
                        <div class="input-group">
                            <span class="input-group-prepend">
                                <label class="input-group-text"><i class="ik ik-edit-1"></i></label>
                            </span>
                            <input type="text" class="form-control" placeholder="Bahasa Inggris" id="english_text"
                                name="english_text" required>
                        </div>
                    </div>

                    <img id="output_materi" width="30%" />

                        <div id="image_course">
                            <div class="form-group">
                                <label>Gambar Course</label>
                                <div class="input-group">
                                    <span class="input-group-prepend">
                                        <label class="input-group-text"><i class="ik ik-edit-1"></i></label>
                                    </span>
                                    <input accept="image/*" onchange="loadFileMateri(event)" type="file" class="form-control  "
                                        placeholder="Image" id="image" name="image">
                                </div>
                            </div>
                        </div>

                        <img id="output_ujian" width="30%" />

                        <div id="image_course">
                            <div class="form-group">
                                <label>Gambar Ujian</label>
                                <div class="input-group">
                                    <span class="input-group-prepend">
                                        <label class="input-group-text"><i class="ik ik-edit-1"></i></label>
                                    </span>
                                    <input accept="image/*" onchange="loadFileUjian(event)" type="file" class="form-control  "
                                        placeholder="Image" id="image_course" name="image_course">
                                </div>
                            </div>
                        </div>
                    <div id="voice">
                        <div class="form-group">
                            <label for="">Soal Voice Recognition </label> <small>*Apabila tidak aktif maka soal akan menjadi pilihan ganda</small><br>
                            <label class="switch">
                                <input type="checkbox" id="is_voice" name="is_voice" value="true" >
                                <span class="slider round"></span>
                              </label>
                        </div>
                    </div>


                    <div class="footer-buttons">
                        <br>
                        <div id="course-loader" class="loader d-none"></div>
                        <button id="course-btn-add" type="button" class="btn btn-primary" onclick="addCourse()">
                            Tambah
                        </button>
                        <button id="course-btn-edit" type="button" class="btn btn-success d-none" onclick="updateCourse()">
                            Update
                        </button>

                        <button id="course-btn-delete" type="button" class="btn btn-danger d-none" onclick="deleteCourse()">
                            Delete
                        </button>
                    </div>

                </form>
                </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <div class="card-body">
                                <div class="dt-responsive">
                                    <table class="table table-bordered" id="data-table-course" style="width: 102%">
                                        <thead>
                                            <tr>
                                                <th style="width: 3%"></th>
                                                <th>Materi</th>
                                                <th>Bahasa Indonesia</th>
                                                <th>Bahasa Inggris</th>
                                                <th>Gambar Materi</th>
                                                <th>Gambar Ujian</th>
                                            </tr>
                                        </thead>
                                        <tfoot>
                                            <tr>
                                                <td style="width: 3%"></td>
                                                <th>Materi</th>
                                                <th>Bahasa Indonesia</th>
                                                <th>Bahasa Inggris</th>
                                                <th></th>
                                                <th></th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>
                            </div>
                            <!-- /.box-body -->
                        </div>
                        <!-- /.box -->
                    </div>
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

<script>
    $(document).ready(function () {
        fetchChapter()
    });

    function fetchChapter(){
        selectChapterTable()
        selectChapterMateri()
        selectChapterMateriEdit()
        selectMateri()
        selectMateriTable()
    }

</script>

<script>
    successToast = function () {
        'use strict';
        resetToastPosition();
        $.toast({
            heading: 'Chapter Ditambahkan',
            text: 'Data chapter berhasil ditambahkan',
            position: 'bottom-right',
            icon: 'success',
            stack: false,
            loaderBg: '#f96868'
        })
    }
    errorToast = function () {
        'use strict';
        resetToastPosition();
        $.toast({
            heading: 'Error',
            text: 'And these were just the basic demos! Scroll down to check further details on how to customize the output.',
            showHideTransition: 'slide',
            icon: 'error',
            loaderBg: '#f2a654',
            position: 'bottom-right'
        })
    };
    warningToast = function () {
        'use strict';
        resetToastPosition();
        $.toast({
            heading: 'Warning',
            text: 'And these were just the basic demos! Scroll down to check further details on how to customize the output.',
            showHideTransition: 'slide',
            icon: 'warning',
            loaderBg: '#57c7d4',
            position: 'bottom-right'
        })
    };

</script>

<script type="text/javascript">
   $(document).ready(function () {
        initTableChapter()
        initTableMateri()
        initTableCourse()
   });

   var tableChapter = $('#data-table').DataTable({
                    processing: true,
                    serverSide: true,
                    searching: true,
                    "initComplete": function (settings, json) {
                        $("#data-table").wrap("<div class='scroll' style='overflow:auto; width:100%;position:relative;padding-left:20px;padding-bottom:20px'></div>");
                    },
                    ajax: "{{ route('materi.index') }}",
                    columns: [{data: 'action', name: 'action', orderable: false, searchable: false},
                        {
                            data: 'name',
                            name: 'name'
                        },
                        {data: 'image', name: 'image', orderable: false, searchable: false},
                    ]
                });

    var tableMateri = $('#data-table-materi').DataTable({
            processing: true,
            serverSide: true,
            searching: true,
            "initComplete": function (settings, json) {
                $("#data-table-materi").wrap("<div class='scroll' style='overflow:auto; width:100%;position:relative;padding-left:20px;padding-bottom:20px'></div>");
                this.api().columns([1]).every( function () {
                var column = this;
                var select = $('<select class="form-control select2" id="select_chapter_table"><option value="">Cari Chapter</option></select>')
                    .appendTo( $(column.footer()).empty() )
                    .on( 'change', function () {
                        var val = $.fn.dataTable.util.escapeRegex(
                            $(this).val()
                        );

                        column
                            .search( val ? '^'+val+'$' : '', true, false )
                            .draw();
                    } );
            } );
            },
            ajax: "{{ route('sub_categories.index') }}",
            columns: [{data: 'action', name: 'action', orderable: false, searchable: false},
                {
                    data: 'category_name',
                    name: 'categories.name'
                },
                {
                    data: 'name',
                    name: 'name'
                },
            ]
        });

    var tableCourse = $('#data-table-course').DataTable({
            processing: true,
            serverSide: true,
            searching: true,
            "bFilter": true,
            "sDom":"lrtip",
            "initComplete": function (settings, json) {
                $("#data-table-course").wrap("<div class='scroll' style='overflow:auto; width:100%;position:relative;padding-left:20px;padding-bottom:20px'></div>");
                this.api().columns([1]).every( function () {
                var column = this;
                var select = $('<select class="form-control select2" id="select_course_table"><option value="">Cari Materi</option></select>')
                    .appendTo( $(column.footer()).empty() )
                    .on( 'change', function () {
                        var val = $.fn.dataTable.util.escapeRegex(
                            $(this).val()
                        );

                        column
                            .search( val ? '^'+val+'$' : '', true, false )
                            .draw();
                    } );
            } );
            },
            ajax: "{{ route('courses.index') }}",
            columns: [{data: 'action', name: 'action', orderable: false, searchable: false},
                {
                    data: 'name',
                    name: 'sub_categories.name'
                },
                {
                    data: 'indonesia_text',
                    name: 'courses.indonesia_text'
                },
                {
                    data: 'english_text',
                    name: 'courses.english_text '
                },
                {data: 'image', name: 'image', orderable: false, searchable: false},
                {data: 'image_course', name: 'image_course', orderable: false, searchable: false},
            ]
        });

   function initTableChapter(){
                $('#data-table tfoot th').each(function() {
                    var title = $('#data-table thead th').eq($(this).index()).text();
                    $(this).html('<input type="text" class="form-control" placeholder="Search ' + title + '" />');
                });

                $('tfoot').each(function () {
                    $(this).insertAfter($(this).siblings('thead'));
                });

                tableChapter.columns().eq(0).each(function(colIdx) {
                    $('input', tableChapter.column(colIdx).footer()).on('keyup change', function() {
                        console.log(colIdx + '-' + this.value);
                        tableChapter
                                .column(colIdx)
                                .search(this.value)
                                .draw();
                    });
                });
        }

    function initTableMateri()
    {
        $('#data-table-materi tfoot th').each(function() {
            var title = $('#data-table-materi thead th').eq($(this).index()).text();
            $(this).html('<input type="text" class="form-control" placeholder="Search ' + title + '" />');
        });

        $('tfoot').each(function () {
            $(this).insertAfter($(this).siblings('thead'));
        });

        tableMateri.columns().eq(0).each(function(colIdx) {
            $('input', tableMateri.column(colIdx).footer()).on('keyup change', function() {
                console.log(colIdx + '-' + this.value);
                tableMateri
                        .column(colIdx)
                        .search(this.value)
                        .draw();
            });
        });
    }

    function initTableCourse()
    {
        $('#data-table-course tfoot th').each(function() {
            var title = $('#data-table-course thead th').eq($(this).index()).text();
            $(this).html('<input type="text" class="form-control" placeholder="Search ' + title + '" />');
        });

        $('tfoot').each(function () {
            $(this).insertAfter($(this).siblings('thead'));
        });

        tableCourse.columns().eq(0).each(function(colIdx) {
            $('input', tableCourse.column(colIdx).footer()).on('keyup change', function() {
                console.log(colIdx + '-' + this.value);
                tableCourse
                        .column(colIdx)
                        .search(this.value)
                        .draw();
            });
        });
    }
</script>

<script>
    function addCoursePage()
    {
        $('#course-btn-add').removeClass('d-none')
        $('#course-btn-edit').addClass('d-none')
        $('#course-btn-delete').addClass('d-none')

        $('#materi_select').removeClass('d-none')
        $('#voice').removeClass('d-none')
        $('#image_course').removeClass('d-none')

        $('#indonesia_text').val('')
        $('#english_text').val('')
        $('#is_voice').prop('checked',false)
        var output = document.getElementById('output_materi');
        output.src = '';
        var output_ujian = document.getElementById('output_ujian');
        output_ujian.src = '';
        $('#select_materi option[value=""]').attr('selected', 'selected');
    }

    function editCoursePage(id, sub_category_id, indonesia_text, english_text, image,image_course,is_voice)
    {
        $('#course-btn-add').addClass('d-none')
        $('#course-btn-edit').removeClass('d-none')
        $('#course-btn-delete').addClass('d-none')

        $('#materi_select').removeClass('d-none')
        $('#voice').removeClass('d-none')
        $('#image_course').removeClass('d-none')

        $('#id_course').val(id)
        $('#indonesia_text').val(indonesia_text)
        $('#english_text').val(english_text)
        if(is_voice == 1){
            $('#is_voice').prop('checked',true)
        }else{
            $('#is_voice').prop('checked',false)
        }

        var output = document.getElementById('output_materi');
        output.src = image;

        var output_ujian = document.getElementById('output_ujian');
        output_ujian.src = image_course;
        $('#select_materi option[value="'+sub_category_id+'"]').attr('selected', 'selected');
    }

    function deleteCoursePage(id, sub_category_id, indonesia_text, english_text, image,image_course,is_voice)
    {
        $('#course-btn-add').addClass('d-none')
        $('#course-btn-edit').addClass('d-none')
        $('#course-btn-delete').removeClass('d-none')

        $('#id_course').val(id)
        $('#indonesia_text').val(indonesia_text)
        $('#english_text').val(english_text)

        $('#materi_select').addClass('d-none')
        $('#voice').addClass('d-none')
        $('#image_course').addClass('d-none')

        var output = document.getElementById('output_materi');
        output.src = image;
        var output_ujian = document.getElementById('output_ujian');
        output_ujian.src = image;
    }

    function addCourse()
    {
        $('#course-loader').removeClass('d-none')
        $('#course-btn-add').addClass('d-none')
        var data = new FormData($('#form-course')[0]);
        console.log(data)
        $.ajax({
            url: '{{route('courses.store')}}',
            type: "POST",
            dataType: "json",
            cache: false,
            contentType: false,
            processData: false,
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            data: data,
            statusCode: {
                500: function (response) {
                    console.log(response)
                    $.toast({
                        heading: 'Error',
                        text: 'Pastikan data sudah diisi semua dan tidak ada yang kosong',
                        showHideTransition: 'slide',
                        icon: 'error',
                        loaderBg: '#f2a654',
                        position: 'bottom-right'
                    })
                    $('#course-loader').addClass('d-none')
                    $('#course-btn-add').removeClass('d-none')
                },
            },
            success: function (data) {
                $("#form-course")[0].reset()
                $.toast({
                    heading: 'Soal Ditambahkan',
                    text: 'Data soal berhasil ditambahkan',
                    position: 'bottom-right',
                    icon: 'success',
                    stack: false,
                    loaderBg: '#f96868'
                })
                $('#course-loader').addClass('d-none')
                addCoursePage()
                tableCourse.ajax.reload()
            }
        });
    }

    function updateCourse() {
        $('#course-loader').removeClass('d-none')
        $('#course-btn-edit').addClass('d-none')
        var data = new FormData($('#form-course')[0]);
        $.ajax({
            url: '{{route('updateSoal')}}',
            type: "POST",
            dataType: "json",
            cache: false,
            contentType: false,
            processData: false,
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            data: data,
            statusCode: {
                500: function (response) {
                    console.log(response)
                    $.toast({
                        heading: 'Error',
                        text: 'Pastikan data sudah diisi semua dan tidak ada yang kosong',
                        showHideTransition: 'slide',
                        icon: 'error',
                        loaderBg: '#f2a654',
                        position: 'bottom-right'
                    })
                    $('#course-loader').addClass('d-none')
                    $('#course-btn-edit').removeClass('d-none')
                },
            },
            success: function (data) {
                $("#form-course")[0].reset()
                $.toast({
                    heading: 'Soal Diperbarui',
                    text: 'Data soal berhasil diperbarui',
                    position: 'bottom-right',
                    icon: 'success',
                    stack: false,
                    loaderBg: '#f96868'
                })
                $('#course-loader').addClass('d-none')
                addCoursePage()
                tableCourse.ajax.reload();
            }
        });
    }

    function deleteCourse()
    {
        $('#course-loader').removeClass('d-none')
        $('#course-btn-delete').addClass('d-none')
        $.ajax({
            url: '{{route('courses.destroy',"id")}}',
            type: "DELETE",
            dataType: "json",
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            data: {
                'id': $('#id_course').val(),
            },
            statusCode: {
                500: function (response) {
                    console.log(response)
                },
            },
            success: function (data) {
                    $.toast({
                        heading: 'Soal Dihapus',
                        text: 'Data soal berhasil dihapus',
                        position: 'bottom-right',
                        icon: 'success',
                        stack: false,
                        loaderBg: '#f96868'
                    })
                    $('#course-loader').addClass('d-none')
                addCoursePage()
                tableCourse.ajax.reload()
            }
        });
    }

</script>

<script>
    function addMateriPage()
    {
        $('#add_materi').removeClass('d-none')
        $('#edit_materi').addClass('d-none')
        $('#remove_materi').addClass('d-none')
    }

    function editMateriPage(id, id_chapter, name)
    {
        $('#add_materi').addClass('d-none')
        $('#edit_materi').removeClass('d-none')
        $('#remove_materi').addClass('d-none')
        $('#id_materi_edit').val(id)
        $('#materi_edit').val(name)
        $('#select_chapter_edit option[value="'+id_chapter+'"]').attr('selected', 'selected');
    }

    function deleteMateriPage(id, name)
    {
        $('#add_materi').addClass('d-none')
        $('#edit_materi').addClass('d-none')
        $('#remove_materi').removeClass('d-none')

        $('#id_materi').val(id)
        $('#name_materi').val(name)
    }

    function selectChapterTable() {
        $('#select_chapter_table').html('<option disabled selected>Cari Chapter</option>')
        $.ajax({
            url: '{{route('getAllChapter')}}',
            type: "GET",
            dataType: "json",
            statusCode: {
                500: function (response) {
                    console.log(response)
                },
            },
            success: function (data) {
                var html = ''
                data.data.forEach(item => {
                    html = `<option name='category_id' value='${item.name}'>${item.name}</option>`
                    $('#select_chapter_table').append(html)
                });
            }
        });
    }

    function selectChapterMateri() {
        $('#select_chapter').html('<option disabled selected>Pilih Nama Chapter</option>')
        $.ajax({
            url: '{{route('getAllChapter')}}',
            type: "GET",
            dataType: "json",
            statusCode: {
                500: function (response) {
                    console.log(response)
                },
            },
            success: function (data) {
                var html = ''
                data.data.forEach(item => {
                    html = `<option name='category_id' value='${item.id}'>${item.name}</option>`
                    $('#select_chapter').append(html)
                });
            }
        });
    }

    function selectMateri()
    {
        $('#select_materi').html('<option disabled selected>Pilih Nama Materi</option>')
        $.ajax({
            url: '{{route('getAllMateri')}}',
            type: "GET",
            dataType: "json",
            statusCode: {
                500: function (response) {
                    console.log(response)
                },
            },
            success: function (data) {
                var html = ''
                data.data.forEach(item => {
                    html = `<option name='sub_category_id' value='${item.id}'>${item.name}</option>`
                    $('#select_materi').append(html)
                });
            }
        });
    }

    function selectMateriTable()
    {
        $('#select_course_table').html('<option disabled selected>Pilih Nama Materi</option>')
        $.ajax({
            url: '{{route('getAllMateri')}}',
            type: "GET",
            dataType: "json",
            statusCode: {
                500: function (response) {
                    console.log(response)
                },
            },
            success: function (data) {
                var html = ''
                data.data.forEach(item => {
                    html = `<option name='sub_category_id' value='${item.name}'>${item.name}</option>`
                    $('#select_course_table').append(html)
                });
            }
        });
    }

    function selectChapterMateriEdit() {
        $('#select_chapter_edit').html('<option disabled selected>Pilih Nama Chapter</option>')
        $.ajax({
            url: '{{route('getAllChapter')}}',
            type: "GET",
            dataType: "json",
            statusCode: {
                500: function (response) {
                    console.log(response)
                },
            },
            success: function (data) {
                var html = ''
                data.data.forEach(item => {
                    html = `<option name='category_id' value='${item.id}'>${item.name}</option>`
                    $('#select_chapter_edit').append(html)
                });
            }
        });
    }

    function addMateri() {
        $('#materi-loader').removeClass('d-none')
        $('#materi-btn').addClass('d-none')
        var data = new FormData($('#form-add-materi')[0]);
        console.log(data)
        $.ajax({
            url: '{{route('sub_categories.store')}}',
            type: "POST",
            dataType: "json",
            cache: false,
            contentType: false,
            processData: false,
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            data: data,
            statusCode: {
                500: function (response) {
                    console.log(response)
                    $.toast({
                        heading: 'Error',
                        text: 'Pastikan data sudah diisi semua dan tidak ada yang kosong',
                        showHideTransition: 'slide',
                        icon: 'error',
                        loaderBg: '#f2a654',
                        position: 'bottom-right'
                    })
                    $('#materi-loader').addClass('d-none')
                    $('#materi-btn').removeClass('d-none')
                },
            },
            success: function (data) {
                $('#materi-loader').addClass('d-none')
                $('#materi-btn').removeClass('d-none')
                $("#form-add-materi")[0].reset()
                $.toast({
                    heading: 'Materi Ditambahkan',
                    text: 'Data materi berhasil ditambahkan',
                    position: 'bottom-right',
                    icon: 'success',
                    stack: false,
                    loaderBg: '#f96868'
                })
                fetchChapter()
                tableMateri.ajax.reload()
            }
        });
    }

    function updateMateri() {
        $('#materi-loader-update').removeClass('d-none')
        $('#materi-btn-update').addClass('d-none')
        var data = new FormData($('#form-materi-edit')[0]);
        $.ajax({
            url: '{{route('updateMateri')}}',
            type: "POST",
            dataType: "json",
            cache: false,
            contentType: false,
            processData: false,
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            data: data,
            statusCode: {
                500: function (response) {
                    console.log(response)
                },
            },
            success: function (data) {
                $('#materi-loader-update').addClass('d-none')
                $('#materi-btn-update').removeClass('d-none')
                $("#form-materi-edit")[0].reset()
                $.toast({
                    heading: 'Materi Diperbarui',
                    text: 'Data materi berhasil diperbarui',
                    position: 'bottom-right',
                    icon: 'success',
                    stack: false,
                    loaderBg: '#f96868'
                })
                $('#edit_materi').addClass('d-none')
                $('#add_materi').removeClass('d-none')
                tableMateri.ajax.reload();
            }
        });
    }

    function deleteMateri()
    {
        console.log($('#id_materi').val())
        $('#materi-loader-delete').removeClass('d-none')
        $('#materi-btn-delete').addClass('d-none')
        $.ajax({
            url: '{{route('sub_categories.destroy',"id")}}',
            type: "DELETE",
            dataType: "json",
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            data: {
                'id': $('#id_materi').val(),
            },
            statusCode: {
                500: function (response) {
                    console.log(response)
                },
            },
            success: function (data) {
                    $.toast({
                        heading: 'Materi Dihapus',
                        text: 'Data materi berhasil dihapus',
                        position: 'bottom-right',
                        icon: 'success',
                        stack: false,
                        loaderBg: '#f96868'
                    })

                fetchChapter()
                $('#materi-loader-delete').addClass('d-none')
                $('#materi-btn-delete').removeClass('d-none')
                $('#id_materi').val('')
                $('#name_materi').val('')
                $('#remove_materi').addClass('d-none')
                $('#add_materi').removeClass('d-none')
                tableMateri.ajax.reload()
            }
        });
    }
</script>

<script>

    function addChapterPage()
    {
        $('#add_chapter').removeClass('d-none')
        $('#edit_chapter').addClass('d-none')
        $('#remove_chapter').addClass('d-none')
    }

    function editChapterPage(id_chapter)
    {
        $('#add_chapter').addClass('d-none')
        $('#edit_chapter').removeClass('d-none')
        $('#remove_chapter').addClass('d-none')
        getChapterById(id_chapter)
    }

    function deleteChapterPage(id_chapter, name)
    {
        $('#add_chapter').addClass('d-none')
        $('#edit_chapter').addClass('d-none')
        $('#remove_chapter').removeClass('d-none')
        $('#id_chapter_delete').val(id_chapter)
        $('#name_chapter_delete').val(name)
    }

    function addChapter() {
        $('#chapter-loader').removeClass('d-none')
        $('#btn-chapter').addClass('d-none')
        var data = new FormData($('#form-chapter')[0]);
        console.log(data)
        $.ajax({
            url: '{{route('materi.store')}}',
            type: "POST",
            dataType: "json",
            cache: false,
            contentType: false,
            processData: false,
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            data: data,
            statusCode: {
                500: function (response) {
                    console.log(response)
                    $.toast({
                        heading: 'Error',
                        text: 'Pastikan data sudah diisi semua dan tidak ada yang kosong',
                        showHideTransition: 'slide',
                        icon: 'error',
                        loaderBg: '#f2a654',
                        position: 'bottom-right'
                    })
                    $('#chapter-loader').addClass('d-none')
                    $('#btn-chapter').removeClass('d-none')
                },
            },
            success: function (data) {
                $('#chapter-loader').addClass('d-none')
                $('#btn-chapter').removeClass('d-none')
                var output = document.getElementById('output');
                output.src = '';
                $("#form-chapter")[0].reset()
                successToast()
                fetchChapter()
                tableChapter.ajax.reload()
            }
        });
    }

    function updateChapter() {
        $('#chapter-loader-update').removeClass('d-none')
        $('#btn-chapter-update').addClass('d-none')
        var data = new FormData($('#form-chapter-edit')[0]);
        $.ajax({
            url: '{{route('updateCategory')}}',
            type: "POST",
            dataType: "json",
            cache: false,
            contentType: false,
            processData: false,
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            data: data,
            statusCode: {
                500: function (response) {
                    console.log(response)
                },
            },
            success: function (data) {
                $('#chapter-loader-update').addClass('d-none')
                $('#btn-chapter-update').removeClass('d-none')
                var output = document.getElementById('output_chapter_edit');
                output.src = '';
                $("#form-chapter-edit")[0].reset()
                $.toast({
                    heading: 'Chapter Diperbarui',
                    text: 'Data chapter berhasil diperbarui',
                    position: 'bottom-right',
                    icon: 'success',
                    stack: false,
                    loaderBg: '#f96868'
                })
                $('#edit_chapter').addClass('d-none')
                $('#add_chapter').removeClass('d-none')
                fetchChapter()
                tableChapter.ajax.reload();
            }
        });
    }

    function getChapterById(id)
    {
        $.ajax({
            url: '{{route('getCategoryById')}}',
            type: "POST",
            dataType: "json",
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            data: {
                'id': id
            },
            statusCode: {
                500: function (response) {
                    console.log(response)
                },
            },
            success: function (data)  {
                $('#name_chapter_edit').val(data.data.name)
                $('#id-edit-chapter').val(data.data.id)
                var output = document.getElementById('output_chapter_edit');
                output.src = data.data.image;
            }
        });
    }

    function removeChapter()
    {
        $('#chapter-loader-delete').removeClass('d-none')
        $('#btn-chapter-delete').addClass('d-none')
        $.ajax({
            url: '{{route('materi.destroy',"id")}}',
            type: "DELETE",
            dataType: "json",
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            data: {
                'id': $('#id_chapter_delete').val(),
            },
            statusCode: {
                500: function (response) {
                    console.log(response)
                },
            },
            success: function (data) {
                    $.toast({
                        heading: 'Chapter Dihapus',
                        text: 'Data chapter berhasil dihapus',
                        position: 'bottom-right',
                        icon: 'success',
                        stack: false,
                        loaderBg: '#f96868'
                    })

                fetchChapter()
                $('#chapter-loader-delete').addClass('d-none')
                $('#btn-chapter-delete').removeClass('d-none')
                $('#id_chapter_delete').val('')
                $('#name_chapter_delete').val('')
                $('#remove_chapter').addClass('d-none')
                $('#add_chapter').removeClass('d-none')
                tableChapter.ajax.reload()
            }
        });
    }

    function getCategoryById(id)
    {
        $.ajax({
            url: '{{route('getCategoryById')}}',
            type: "POST",
            dataType: "json",
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            data: {
                'id': id,
            },
            statusCode: {
                500: function (response) {
                    console.log(response)
                },
            },
            success: function (data) {

            }
        });
    }

</script>

<script>
    var loadFile = function (event) {
        var output = document.getElementById('output');
        output.src = URL.createObjectURL(event.target.files[0]);
        output.onload = function () {
            URL.revokeObjectURL(output.src)
        }
    };

    var loadFileEdit = function (event) {
        var output = document.getElementById('output_chapter_edit');
        output.src = URL.createObjectURL(event.target.files[0]);
        output.onload = function () {
            URL.revokeObjectURL(output.src)
        }
    };

    var loadFileMateri = function (event) {
        var output = document.getElementById('output_materi');
        output.src = URL.createObjectURL(event.target.files[0]);
        output.onload = function () {
            URL.revokeObjectURL(output.src)
        }
    };

    var loadFileUjian = function (event) {
        var output = document.getElementById('output_ujian');
        output.src = URL.createObjectURL(event.target.files[0]);
        output.onload = function () {
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

    $('input').on('change', function () {
        var extension = this.files[0].type.split('/')[1]
        console.log(this.files[0].type)
        if (validExt.indexOf(extension) == -1) {
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
                    $('.progress .progress-bar').css("width", percentage + '%',
                        function () {
                            return $(this).attr("aria-valuenow", percentage) + "%";
                        });
                },
                complete: function (xhr) {
                    console.log('File has uploaded');
                    var percentage = '0';
                    alert("Upload Success");
                    window.location.href = SITEURL + "/" + "admin/categories";
                }
            });
        });
    });

</script>
@endsection
