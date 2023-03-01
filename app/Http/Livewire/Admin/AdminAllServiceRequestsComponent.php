<?php

namespace App\Http\Livewire\Admin;

use App\Models\RequestService;
use Livewire\Component;
use Livewire\WithPagination;

class AdminAllServiceRequestsComponent extends Component
{
    use WithPagination;
    public function render()
    {
        $requests = RequestService::paginate(10);
        return view('livewire.admin.admin-all-service-requests-component',['requests'=>$requests])->layout('layouts.base');
    }
}
