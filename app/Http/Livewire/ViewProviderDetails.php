<?php

namespace App\Http\Livewire;

use App\Models\ServiceProvider;
use App\Models\User;
use Livewire\Component;

class ViewProviderDetails extends Component
{
    public function getDetails()
    {
        return "Provider Details";
    }
    public function render()
    {
        $provider = ServiceProvider::all();
        return view('livewire.view-provider-details',['provider'=>$provider])->layout('layouts.base');
    }
}
