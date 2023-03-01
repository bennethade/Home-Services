<?php

namespace App\Http\Livewire\Sprovider;

use App\Models\Service;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;
use Livewire\WithPagination;

class SproviderAllServices extends Component
{
    use WithPagination;

    public function deleteService($service_id)
    {
        $service = Service::find($service_id);
        if($service->thumbnail)
        {
            unlink('images/services/thumbnails'.'/'.$service->thumbnail);
        }
        if($service->image)
        {
            unlink('images/services'.'/'.$service->image);
        }

        $service->delete();
        session()->flash('message','Service has been deleted successfully!');
    }

    public function render()
    {
        $services = Service::where('user_id',Auth::user()->id)->paginate(10);
        return view('livewire.sprovider.sprovider-all-services',['services'=>$services])->layout('layouts.base');
    }

}
