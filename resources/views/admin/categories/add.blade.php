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
                    <i class="ik ik-edit" onclick="editChapterPage()"></i>
                    <i class="ik ik-trash-2" onclick="deleteChapterPage()"></i>
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
                        <input type="hidden" name="id-edit-chapter" id="id-edit-chapter">
                        <div class="form-group">
                            <label for="">Nama Chapter </label>
                            <select class="form-control select2" id="chapter_edit" name="category_id">

                            </select>
                        </div>

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

                        <div class="form-group">
                            <label for="">Nama Chapter </label>
                            <select class="form-control select2" id="chapter_delete">

                            </select>
                        </div>

                        <img id="output" width="50%" />

                        <div class="footer-buttons">

                            <div id="chapter-loader-delete" class="loader d-none"></div>
                            <button id="btn-chapter-delete" type="button" class="btn btn-danger" onclick="removeChapter()">
                                Hapus
                            </button>
                        </div>
                    </form>
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
            <div class="box-body">
                <form class="sample-form text-left border border-light p-5" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="">Nama Chapter </label>
                        <select class="form-control select2" id="select_chapter">

                        </select>
                    </div>
                    <div class="form-group">
                        <label>Nama Materi</label>
                        <div class="input-group">
                            <span class="input-group-prepend">
                                <label class="input-group-text"><i class="ik ik-edit-1"></i></label>
                            </span>
                            <input type="text" class="form-control  " placeholder="Nama Materi" id="materi"
                                name="materi" required>
                        </div>
                    </div>

                    <div class="footer-buttons">
                        <button type="button" class="btn btn-primary" onclick="selectChapterMateri()">
                            Tambah
                        </button>
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

<script>
    $(document).ready(function () {
        fetchChapter()
    });

    function fetchChapter(){
        selectChapterMateri()
        selectChapterEdit()
        selectChapterDelete()
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

    $('#select_chapter').change(function () {
        console.log($(this).val())
    })



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

</script>

<script>

    function addChapterPage()
    {
        $('#add_chapter').removeClass('d-none')
        $('#edit_chapter').addClass('d-none')
        $('#remove_chapter').addClass('d-none')
    }

    function editChapterPage()
    {
        $('#add_chapter').addClass('d-none')
        $('#edit_chapter').removeClass('d-none')
        $('#remove_chapter').addClass('d-none')
    }

    function deleteChapterPage()
    {
        $('#add_chapter').addClass('d-none')
        $('#edit_chapter').addClass('d-none')
        $('#remove_chapter').removeClass('d-none')
    }

    function addChapter() {
        $('#chapter-loader').removeClass('d-none')
        $('#btn-chapter').addClass('d-none')
        var data = new FormData($('#form-chapter')[0]);
        console.log(data)
        $.ajax({
            url: '{{route('categories.store')}}',
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
                $('#chapter-loader').addClass('d-none')
                $('#btn-chapter').removeClass('d-none')
                var output = document.getElementById('output');
                output.src = '';
                $("#form-chapter")[0].reset()
                successToast()
                fetchChapter()
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
                fetchChapter()
            }
        });
    }

    function selectChapterEdit()
    {
        $('#chapter_edit').html('<option disabled selected>Pilih Nama Chapter</option>')
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
                    $('#chapter_edit').append(html)
                });
            }
        });
    }

    $('#chapter_edit').change(function(){

        $.ajax({
            url: '{{route('getCategoryById')}}',
            type: "POST",
            dataType: "json",
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            data: {
                'id': $('#chapter_edit').val()
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
    })

    function selectChapterDelete()
    {
        $('#chapter_delete').html('<option disabled selected>Pilih Nama Chapter</option>')
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
                    $('#chapter_delete').append(html)
                });
            }
        });
    }

    function removeChapter()
    {
        $('#chapter-loader-delete').removeClass('d-none')
        $('#btn-chapter-delete').addClass('d-none')
        $.ajax({
            url: '{{route('categories.destroy',"id")}}',
            type: "DELETE",
            dataType: "json",
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            data: {
                'id': $('#chapter_delete').val(),
            },
            statusCode: {
                500: function (response) {
                    console.log(response)
                },
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
