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

@endsection
@section('breadcrumb')
Users
@endsection
@section('content-wrapper')
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <div class="card">
        <div class="card-body">
            <div class="row">
                <div class="col-sm-12">
                    <div class="card-body">
                        <div class="dt-responsive">
                            <table class="table table-bordered" id="data-table" style="width: 102%">
                                <thead>
                                    <tr>
                                        <th style="width: 3%"></th>
                                        <th>Email</th>
                                        <th>Password</th>
                                        <th>Role</th>
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
            <!-- /.col -->
        </div>


        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Confirm to delete
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <form action="{{ route('users.destroy', 'id') }}" method="POST">
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

<script type="text/javascript">
    $(document).on('click', '.delete', function () {
        let id = $(this).attr('data-id');
        $('#id').val(id);
    });
</script>

<script type="text/javascript">
     $(document).ready(function () {
        $('#data-table tfoot th').each(function() {
            var title = $('#data-table thead th').eq($(this).index()).text();
            $(this).html('<input type="text" class="form-control" placeholder="Search ' + title + '" />');
        });

        $('tfoot').each(function () {
            $(this).insertAfter($(this).siblings('thead'));
        });

        var table = $('#data-table').DataTable({
            processing: true,
            serverSide: true,
            searching: true,
            "initComplete": function (settings, json) {
                $("#data-table").wrap("<div class='scroll' style='overflow:auto; width:100%;position:relative;padding-left:20px;padding-bottom:20px'></div>");
            },
            ajax: "{{ route('categories.index') }}",
            columns: [{data: 'action', name: 'action', orderable: false, searchable: false},
                {
                    data: 'name',
                    name: 'name'
                },
                {data: 'image', name: 'image', orderable: false, searchable: false},
            ]
        });
        table.columns().eq(0).each(function(colIdx) {
            $('input', table.column(colIdx).footer()).on('keyup change', function() {
                console.log(colIdx + '-' + this.value);
                table
                        .column(colIdx)
                        .search(this.value)
                        .draw();
            });
        });

    });
    </script>
@endsection

@section('fixedButton')
<a class="fixedButtonRefresh" href>
    <button data-toggle="tooltip" data-placement="top" title="" type="button" class="btn btn-icon btn-refresh "
        onclick="window.location.reload();" data-original-title="Refresh">
        <i class="ik ik-refresh-ccw bg-ik"></i>
    </button>
</a>
<a class="fixedButtonAdd" href="{{route('users.create')}}">
    <button data-toggle="tooltip" data-placement="top" title="" href="" class="btn btn-icon btn-add"
        data-original-title="Add">
        <i class="ik ik-plus"></i>
    </button>
</a>
@endsection
