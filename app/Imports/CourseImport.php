<?php

namespace App\Imports;

use App\Models\Course;
use Illuminate\Support\Facades\DB;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;
use Illuminate\Support\Str;

class CourseImport implements ToModel, WithHeadingRow
{
    private $errors, $errors2;
    /**
     * @param array $row
     *
     * @return \Illuminate\Database\Eloquent\Model|null
     */
    public function model(array $row)
    {
        $subcategories = DB::table('sub_categories')->where('name', '=', $row['nama_materi'])->select('id')->first();
        if ($subcategories == null) {
            $this->errors = "Materi " .  $row['nama_materi'] .  " tidak ada, pastikan materi tersebut benar.";
        }
        // if ($row['soal_voice_recognition'] != 'YA' && $row['soal_voice_recognition'] != 'TIDAK') {
        //     $this->errors2 = "Mohon isi kolom Soal Voice Recognition hanya dengan 'YA' dan 'TIDAK'";
        // }
        if ($row['soal_voice_recognition'] == 'YA') {
            $vr = true;
        } else if ($row['soal_voice_recognition'] == 'TIDAK') {
            $vr = false;
        }
        // dd($this->errors);
        if (empty($this->errors) && empty($this->errors2)) {
            $data = new Course([
                'id' => Str::random(10),
                'sub_category_id' => @$subcategories->id,
                'indonesia_text' => $row['soal_bahasa_indonesia'],
                'english_text' => $row['soal_bahasa_inggris'],
                'image' => $row['gambar_ujian'],
                'image_course' => $row['gambar_course'],
                'is_voice' => @$vr
            ]);

            return $data;
        }
        // return new Course([
        //     //
        // ]);
    }

    public function headingRow(): int
    {
        return 9;
    }
}
