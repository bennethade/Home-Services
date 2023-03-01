<?php

use App\Http\Controllers\SearchController;
use App\Http\Livewire\AboutUsComponent;
use App\Http\Livewire\Admin\AdminAddServiceCategoryComponent;
use App\Http\Livewire\Admin\AdminAddServiceComponent;
use App\Http\Livewire\Admin\AdminAddSlideComponent;
use App\Http\Livewire\Admin\AdminAllServiceRequestsComponent;
use App\Http\Livewire\Admin\AdminContactComponent;
use App\Http\Livewire\Admin\AdminDashboardComponent;
use App\Http\Livewire\Admin\AdminEditServiceCategoryComponent;
use App\Http\Livewire\Admin\AdminEditServiceComponent;
use App\Http\Livewire\Admin\AdminEditSlideComponent;
use App\Http\Livewire\Admin\AdminServiceCategoryComponent;
use App\Http\Livewire\Admin\AdminServiceProvidersComponent;
use App\Http\Livewire\Admin\AdminServiceProvidersListComponent;
use App\Http\Livewire\Admin\AdminServicesByCategoryComponent;
use App\Http\Livewire\Admin\AdminServicesComponent;
use App\Http\Livewire\Admin\AdminSliderComponent;
use App\Http\Livewire\Admin\AdminSProviders;
use App\Http\Livewire\ChangeLocationComponent;
use App\Http\Livewire\ContactComponent;
use App\Http\Livewire\Customer\CustomerAllRequestsComponent;
use App\Http\Livewire\Customer\CustomerDashboardComponent;
use App\Http\Livewire\Customer\CustomerRequestServiceComponent;
use App\Http\Livewire\FaqComponent;
use App\Http\Livewire\HomeComponent;
use App\Http\Livewire\PrivacyPolicyComponent;
use App\Http\Livewire\ServiceProvidersListComponent;
use App\Http\Livewire\ServiceCategoriesComponent;
use App\Http\Livewire\ServiceDetailsComponent;
use App\Http\Livewire\ServiceProvidersList;
use App\Http\Livewire\ServicesByCategoryComponent;
use App\Http\Livewire\Sprovider\EditSproviderProfileComponenet;
use App\Http\Livewire\Sprovider\SproviderAddServiceComponent;
use App\Http\Livewire\Sprovider\SproviderAllServices;
use App\Http\Livewire\Sprovider\SproviderDashbaordComponent;
use App\Http\Livewire\Sprovider\SproviderEditServiceComponent;
use App\Http\Livewire\Sprovider\SproviderProfileComponent;
use App\Http\Livewire\TermsOfUseComponent;
use App\Http\Livewire\ViewProviderDetails;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });




Route::get('/',HomeComponent::class)->name('home');
Route::get('/service-categories', ServiceCategoriesComponent::class)->name('home.service_categories');
Route::get('{category_slug}/services',ServicesByCategoryComponent::class)->name('home.services_by_category');
Route::get('/service/{service_slug}',ServiceDetailsComponent::class)->name('home.service_details');


//For Search
Route::get('autoComplete',[SearchController::class,'autoComplete'])->name('autoComplete');
Route::post('/search',[SearchController::class,'searchService'])->name('searchService');

Route::get('/change-location',ChangeLocationComponent::class)->name('home.change_location');


//FOR CONTACT US
Route::get('/contact-us',ContactComponent::class)->name('home.contact');

//FOR About us
Route::get('/about-us',AboutUsComponent::class)->name('home.about');

//FOR Privacy Policy
Route::get('privacy-policy',PrivacyPolicyComponent::class)->name('home.privacy_policy');

//FOR Terms of Use
Route::get('/terms-of-use',TermsOfUseComponent::class)->name('home.terms_of_use');

//FOR FAQ
Route::get('/faq',FaqComponent::class)->name('home.faq');

//FOR SERVICE PROVIDERS LIST --- TO LIST THE SPROVIDERS FOR A CHOSEN SERVICE
Route::get('/{category_slug}/service-providers',ServiceProvidersListComponent::class)->name('home.service_providers');


//FOR VIEW SERVICE PROVIDER DETAILS
Route::get('/view-provider',ViewProviderDetails::class)->name('home.view_provider');









//FOR CUSTOMER
Route::middleware(['auth:sanctum', config('jetstream.auth_session'), 'verified','authcustomer'])->group(function () {
    Route::get('/customer/dashboard', CustomerDashboardComponent::class)->name('customer.dashboard');
    Route::get('/customer/request-service', CustomerRequestServiceComponent::class)->name('customer.request_service');
    Route::get('/customer/all-requests',CustomerAllRequestsComponent::class)->name('customer.all_requests');
    
});


//FOR SERVICE PROVIDER
Route::middleware(['auth:sanctum', config('jetstream.auth_session'), 'verified','authsprovider'])->group(function () {
    Route::get('/sprovider/dashboard', SproviderDashbaordComponent::class)->name('sprovider.dashboard');
    Route::get('/sprovider/profile',SproviderProfileComponent::class)->name('sprovider.profile');
    Route::get('/sprovider/profile/edit',EditSproviderProfileComponenet::class)->name('sprovider.edit_profile');
    Route::get('/sprovider/all-services',SproviderAllServices::class)->name('sprovider.all_services');
    Route::get('/sprovider/service/add',SproviderAddServiceComponent::class)->name('sprovider.add_service');
    Route::get('/sprovider/service/edit/{service_slug}',SproviderEditServiceComponent::class)->name('sprovider.edit_service');
});


//FOR ADMIN
Route::middleware(['auth:sanctum', config('jetstream.auth_session'), 'verified','authadmin'])->group(function () {
    Route::get('/admin/dashboard', AdminDashboardComponent::class)->name('admin.dashboard');
    Route::get('/admin/service-categories', AdminServiceCategoryComponent::class)->name('admin.service_categories');
    Route::get('/admin/service-categeory/add', AdminAddServiceCategoryComponent::class)->name('admin.add_service_category');
    Route::get('/admin/service-categeory/edit/{category_id}', AdminEditServiceCategoryComponent::class)->name('admin.edit_service_category');
    Route::get('/admin/all-services',AdminServicesComponent::class)->name('admin.all_services');
    Route::get('/admin/{category_slug}/services',AdminServicesByCategoryComponent::class)->name('admin.services_by_category');
    Route::get('/admin/service/add',AdminAddServiceComponent::class)->name('admin.add_service');
    Route::get('/admin/service/edit/{service_slug}',AdminEditServiceComponent::class)->name('admin.edit_service');
    Route::get('/admin/slider',AdminSliderComponent::class)->name('admin.slider');
    Route::get('/admin/slide/add',AdminAddSlideComponent::class)->name('admin.add_slide');
    Route::get('/admin/slide/edit{slide_id}',AdminEditSlideComponent::class)->name('admin.edit_slide');
    // Route::get('/admin/service-providers',AdminServiceProvidersComponent::class)->name('admin.service_providers');
    Route::get('/admin/contacts',AdminContactComponent::class)->name('admin.contacts');
    Route::get('/admin/all-service-requests',AdminAllServiceRequestsComponent::class)->name('admin.all_service_requests');
    // Route::get('/admin/service-providers-list',AdminServiceProvidersListComponent::class)->name('admin.service_providers_list');


        
});




// MISCELLANEOUS ROUTES

Route::get('/service-providers-list',ServiceProvidersList::class)->name('home.service_providers_list');















// Clear application cache:
Route::get('/clear-cache', function() {
    Artisan::call('cache:clear');
    return 'Application cache has been cleared';
});

//Clear route cache:
Route::get('/route-cache', function() {
	Artisan::call('route:cache');
    return 'Routes cache has been cleared';
});

//Clear config cache:
Route::get('/config-cache', function() {
 	Artisan::call('config:cache');
 	return 'Config cache has been cleared';
}); 

// Clear view cache:
Route::get('/view-clear', function() {
    Artisan::call('view:clear');
    return 'View cache has been cleared';
});
