<?php

namespace App\Http\Livewire\Customer;

use App\Models\RequestService;
use App\Models\ServiceCategory;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class CustomerRequestServiceComponent extends Component
{
    public $user_id;
    public $name;
    public $email;
    public $phone;
    public $address;
    public $service_category_id;
    public $extra_description;


    public function updated($fields)
    {
        $this->validateOnly($fields,[
            'user_id' => 'required',
            'name' => 'required',
            'email' => 'email',
            'phone' => 'required',
            'address' => 'required',
            'service_category_id' => 'required'
        ]);
    }

    public function sendMessage()
    {
        $this->validate([
            'user_id' => 'required',
            'name' => 'required',
            'email' => 'email',
            'phone' => 'required',
            'address' => 'required',
            'service_category_id' => 'required'
        ]);

        $service = new RequestService();
        $service->user_id = Auth::user()->id;
        $service->name = $this->name;
        $service->email = $this->email;
        $service->phone = $this->phone;
        $service->address = $this->address;
        $service->service_category_id = $this->service_category_id;
        $service->extra_description = $this->extra_description;

        $service->save();
        session()->flash('message','Your request has been sent successfully!');
        // redirect()->route('home');
    }


    public function render()
    {
        $service_categories = ServiceCategory::all();
        return view('livewire.customer.customer-request-service-component',['service_categories'=>$service_categories])->layout('layouts.base');
    }
}
