<?php

namespace App\Http\Livewire\Sprovider;

use Livewire\Component;

class SproviderDashbaordComponent extends Component
{
    public function render()
    {
        return view('livewire.sprovider.sprovider-dashbaord-component')->layout('layouts.base');
    }
}
