<?php

namespace App\Http\Livewire;

use App\Models\Service;
use App\Models\ServiceCategory;
use App\Models\ServiceProvider;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use Livewire\Component;

class ServiceProvidersListComponent extends Component
{
    public $category_slug;

    public function mount($category_slug)
    {
        $this->category_slug = $category_slug;
    }

    public function render()
    {
        $scategory = ServiceCategory::where('slug',$this->category_slug)->first();
        $users = User::where('utype','SVP')->get();
        return view('livewire.service-providers-list-component',['scategory'=>$scategory,'users'=>$users])->layout('layouts.base');
    }
}
