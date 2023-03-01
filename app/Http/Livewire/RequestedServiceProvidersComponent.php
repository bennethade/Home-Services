<?php

namespace App\Http\Livewire;

use App\Models\ServiceCategory;
use App\Models\ServiceProvider;
use App\Models\User;
use Livewire\Component;

class RequestedServiceProvidersComponent extends Component
{
    public function render()
    {
        // $serviceProviders['users'] = User::where('utype','SVP')->get();
        // $serviceProviders['category'] = ServiceCategory::where('slug',$this->service->slug)->get();
        // $serviceProviders['providers'] = ServiceProvider::where('user_id',$this->slug)->get();
        return view('livewire.requested-service-providers-component')->layout('layouts.base');
    }
}
