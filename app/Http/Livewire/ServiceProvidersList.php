<?php

namespace App\Http\Livewire;

use Livewire\Component;

class ServiceProvidersList extends Component
{
    public function render()
    {
        return view('livewire.service-providers-list')->layout('layout.base');
    }
}
