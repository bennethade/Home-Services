<?php

namespace App\Http\Livewire;

use App\Models\Service;
use App\Models\ServiceCategory;
use App\Models\Slider;
use Livewire\Component;

class HomeComponent extends Component
{
    public function render()
    {
        
        $scategories = ServiceCategory::inRandomOrder()->take(18)->get();
        $featuredServices = Service::where('featured',1)->inRandomOrder()->take(12)->get();
        $featuredSCategories = ServiceCategory::where('featured',1)->inRandomOrder()->take(12)->get();
        $serviceCategoryId = ServiceCategory::whereIn('slug',['ac','tv','refrigerator','geyser','water-purifier'])->get()->pluck('id');
        $applianceServices = Service::whereIn('service_category_id',$serviceCategoryId)->inRandomOrder()->take(10)->get();
        $slides = Slider::where('status',1)->get();
        return view('livewire.home-component',['scategories'=>$scategories, 'featuredServices'=>$featuredServices,'featuredSCategories'=>$featuredSCategories, 'applianceServices'=>$applianceServices,'slides'=>$slides])->layout('layouts.base');
    }
}
