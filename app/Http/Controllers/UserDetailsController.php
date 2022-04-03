<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\UserDetail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;
use Yajra\DataTables\Facades\DataTables;

class UserDetailsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = DB::table('user_details')
                ->join('users', 'users.id', '=', 'user_details.user_id')
                ->select(['user_details.id AS id', 'users.email AS email', 'user_details.name AS name', 'user_details.address AS address', 'user_details.gender AS gender']);
            return DataTables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function ($data) {

                    $btn = '<td class="dropdown"><div class="ik ik-more-vertical dropdown-toggle" data-toggle="dropdown"></div><ul class="dropdown-menu" role="menu"><a class="dropdown-item" href="' . url('/admin/categories/' . $data->id . '/edit') . '"><li> <i class="ik ik-edit" style="color: green;font-size:16px;padding-right:5px"></i><span style="font-size:14px"> Edit</span></li></a><a class="dropdown-item delete" href="#" data-toggle="modal"
                    data-target="#exampleModal" data-id=' . $data->id . '><li><i class="ik ik-trash-2" style="color: red;font-size:16px;padding-right:5px"></i><span style="font-size:14px"> Delete</span></li></a></ul></td>';
                    return $btn;
                })
                ->rawColumns(['action'])
                ->make(true);
        }
        return view('admin.user_details.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $users = User::all();
        return view('admin.user_details.add', compact('users'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $table = new UserDetail();
        $table->id = Str::random(10);
        $table->name = $request->name;
        $table->address = $request->address;
        $table->gender = $request->gender;
        $table->user_id = Auth::user()->id;
        if ($table->save()) {
            return redirect()->route('user_details.index')
                ->with('success', 'User created successfully.');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\UserDetail  $userDetail
     * @return \Illuminate\Http\Response
     */
    public function show(UserDetail $userDetail)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\UserDetail  $userDetail
     * @return \Illuminate\Http\Response
     */
    public function edit(UserDetail $userDetail, $id)
    {
        $data = UserDetail::find($id);
        $users = User::all();
        return view('admin.user_details.edit', compact('data', 'users'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\UserDetail  $userDetail
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $table = UserDetail::find($id);
        $table->name = $request->name;
        $table->address = $request->address;
        $table->gender = $request->gender;
        $table->user_id = Auth::user()->id;
        if ($table->save()) {
            return redirect()->route('user_details.index')
                ->with('success', 'User created successfully.');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\UserDetail  $userDetail
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {
        $table = UserDetail::find($request->id);

        if ($table->delete()) {
            return redirect()->route('user_details.index')
                ->with('success', 'User deleted successfully.');
        }
    }
}
