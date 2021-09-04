<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class learner extends Model
{
    use HasFactory;

    protected $table = "learner";
    protected $primaryKey = "id";
    protected $fillable = [
        'identificationnumber',
        'name',
        'lastaname',
        'email',
        'workingday_id',
        'program_id',
        'course_id',
        'instructor_id',
     ];


}
