<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Prospect extends Model
{
    use HasFactory;
  protected $table="prospects";
    protected $fillable = [
        'full_name', 'email', 'first_phone_number', 'second_phone_number', 
      'address','city', 'country', 
    ];
}
