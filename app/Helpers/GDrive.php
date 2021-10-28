<?php

namespace App\Helpers;

use Dotenv\Util\Regex;
use Illuminate\Support\Str;

class GDrive
{
    public function getDrivePath($array, $key, $value)
    {
        foreach ($array as $subarray) {
            if (isset($subarray[$key]) && $subarray[$key] == $value)
                return $subarray;
        }
    }

    public function getIdFile($url)
    {
        $data = explode('/', Str::after(
            Str::after($url, 'https://docs.google.com/'),
            'https://drive.google.com/uc?id='
        ));
        $id_url = Str::before($data['0'], '&export=media');
        return $id_url;
    }
}
