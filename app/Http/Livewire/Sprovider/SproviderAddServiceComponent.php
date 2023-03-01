<?php

namespace App\Http\Livewire\Sprovider;

use App\Models\Service;
use App\Models\ServiceCategory;
use App\Models\User;
use Carbon\Carbon;
use Livewire\Component;
use Illuminate\Support\Str;
use Livewire\WithFileUploads;

class SproviderAddServiceComponent extends Component
{

    use WithFileUploads;

    public $name;
    public $slug;
    public $tagline;
    public $user_id;
    public $service_category_id;
    public $price;
    public $discount;
    public $discount_type;
    public $image;
    public $thumbnail;
    public $description;
    public $inclusion;
    public $exclusion;

    public function generateSlug()
    {
        $this->slug = Str::slug($this->name,'-');
    }

    public function updated($fields)
    {
        $this->validateOnly($fields,[
            'name' => 'required',
            'slug' => 'required',
            'tagline' => 'required',
            // 'user_id' => 'required',
            'service_category_id' => 'required',
            'price' => 'required',
            'image' => 'required|mimes:jpeg,png,jpg',
            'thumbnail' => 'required|mimes:jpeg,png,jpg',
            'description' => 'required',
            // 'inclusion' => 'required',
            // 'exclusion' => 'required'
        ]);

    }

    public function createService()
    {
        $this->validate([
            'name' => 'required',
            'slug' => 'required',
            'tagline' => 'required',
            // 'user_id' => 'required',
            'service_category_id' => 'required',
            'price' => 'required',
            'image' => 'required|mimes:jpeg,png,jpg',
            'thumbnail' => 'required|mimes:jpeg,png,jpg',
            'description' => 'required',
            // 'inclusion' => 'required',
            // 'exclusion' => 'required'
        ]);

        $service = new Service();
        $service->name = $this->name;
        $service->slug = $this->slug;
        $service->tagline = $this->tagline;
        $service->service_category_id = $this->service_category_id;
        $service->user_id = $this->user_id;
        $service->price = $this->price;
        $service->discount = $this->discount;
        $service->discount_type = $this->discount_type;
        $service->description = $this->description;
        $service->inclusion = str_replace("\n",'|',trim($this->inclusion));
        $service->exclusion = str_replace("\n",'|',trim($this->exclusion));

        $imageName = Carbon::now()->timestamp. '.' . $this->thumbnail->extension();
        $this->thumbnail->storeAs('services/thumbnails',$imageName);

        // $imageName = Carbon::now()->timestamp . '.' . $this->thumbnail->extension();
        // $this->thumbnail->storeAs('services/thumbnails',$imageName);
        $service->thumbnail = $imageName;

        $imageName2 = Carbon::now()->timestamp . '.' . $this->image->extension();
        $this->image->storeAs('services',$imageName2);
        $service->image = $imageName2;

        $service->save();
        session()->flash('message','Your Service has been created successfully!');
    }



    public function render()
    {
        $users = User::all();
        $categories = ServiceCategory::all();
        return view('livewire.sprovider.sprovider-add-service-component',['categories'=>$categories,'users'=>$users])->layout('layouts.base');
    }
}
