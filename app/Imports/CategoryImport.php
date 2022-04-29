<?php

namespace App\Imports;

use App\Models\Category;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Illuminate\Support\Str;

class CategoryImport implements ToModel, WithHeadingRow
{
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function model(array $row)
    {
        $level = Category::max('level');
        $data = new Category([
            'id' => Str::random(10),
            'name' => $row['nama'],
            'image' => $row['url_gambar'],
            'level' => $level + 1
        ]);
        // dd($data);
        return $data;
        // return response()->json([$data, 200]);
    }

    public function headingRow(): int
    {
        return 9;
    }
}
