<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class ServiceCategory extends Model
{
    use HasFactory;

    protected $table = "service_categories";

    public function services()
    {
        return $this->hasMany(Service::class);
    }

    public function serviceProviders()
    {
        return $this->hasMany(ServiceProvider::class);
    }

    public function users()
    {
        return $this->hasMany(User::class,'user_id','id');
    }
}
