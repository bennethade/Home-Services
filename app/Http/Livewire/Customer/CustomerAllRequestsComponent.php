<?php

namespace App\Http\Livewire\Customer;

use App\Models\RequestService;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;
use Livewire\WithPagination;

class CustomerAllRequestsComponent extends Component
{
    use WithPagination;
    public function render()
    {
        $requests = RequestService::where('user_id',Auth::user()->id)->paginate(10);
        return view('livewire.customer.customer-all-requests-component',['requests'=>$requests])->layout('layouts.base');
    }
}
