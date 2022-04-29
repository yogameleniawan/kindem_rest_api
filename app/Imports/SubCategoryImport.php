<?php

namespace App\Imports;

use App\Models\SubCategory;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Illuminate\Support\Str;

class SubCategoryImport implements ToModel, WithHeadingRow
{
    private $errors;
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model(array $row)
    {
        
        $categories = DB::table('categories')->where('name', '=', $row['nama_chapter'])->select('id')->first();
        if ($categories == null) {
            $this->errors = "Chapter " .  $row['nama_chapter'] .  " tidak ada, pastikan chapter tersebut benar.";
        }
        if (empty($this->errors)) {
            $data = new SubCategory([
                'id' => Str::random(10),
                'category_id' => @$categories->id,
                'name' => $row['nama_materi'],      
            ]);
            return $data;
        }
        // dd($row['nama_materi']);
        
    }

    public function headingRow(): int
    {
        return 9;
    }
}
