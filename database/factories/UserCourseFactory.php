<?php

namespace Database\Factories;

use App\Models\Course;
use App\Models\SubCategory;
use App\Models\User;
use App\Models\UserCourse;
use Illuminate\Database\Eloquent\Factories\Factory;
use Illuminate\Support\Str;

class UserCourseFactory extends Factory
{
    /**
     * The name of the factory's corresponding model.
     *
     * @var string
     */
    protected $model = UserCourse::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'id' => Str::random(10),
            'user_id' => User::all()->random()->id,
            'answer' => $this->faker->text(50),
            'checked' => $this->faker->boolean(),
            'is_true' => $this->faker->boolean(),
            'course_id' => Course::all()->random()->id,
            'sub_category_id' => SubCategory::all()->random()->id,
        ];
    }
}
