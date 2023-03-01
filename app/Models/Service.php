<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    use HasFactory;

    protected $table="services";

    protected $fillable = ['user_id'];

    public function category()
    {
        return $this->belongsTo(ServiceCategory::class,'service_category_id');
    }

    public function services()
    {
        return $this->hasMany(Service::class,'user_id');
    }
    
    public function user()
    {
        return $this->belongsTo(User::class,'user_id');
    }
}
