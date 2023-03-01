



<div>
    <div class="section-title-01 honmob">
        <div class="bg_parallax image_01_parallax"></div>
        <div class="opacy_bg_02">
            <div class="container">
                <h1>{{ $scategory->name }} Services</h1>
                <div class="crumbs">
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li>/</li>
                        <li>{{ $scategory->name }}</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <section class="content-central">
        <div class="container">
            <div class="row" style="margin-top: -30px;">
                <div class="titles">
                    <h2>{{ $scategory->name }} <span>Service Providers</span></h2>
                    <i class="fa fa-plane"></i>
                    <hr class="tall">
                </div>
            </div>
        </div>
        <div class="content_info" style="margin-top: -70px;">
            <div>
                <div class="container">
                    <div class="portfolioContainer">
                        @if ($scategory->serviceProviders->count() > 0)
                            @foreach ($scategory->serviceProviders as $provider)
                                <div class="col-xs-6 col-sm-4 col-md-3 nature hsgrids"
                                    style="padding-right: 5px;padding-left: 5px;">
                                    {{-- <a class="g-list" href="{{ route('home.service_providers',['category_slug'=>$scategory->slug]) }}"> --}}
                                        <div class="img-hover">
                                            <img src="{{ asset('images/sproviders') }}/{{ $provider->image }}" alt=""{{ $provider->name }} class="img-responsive img-circle" style="width:200px; height:150px;" >
                                        </div>
                                        
                                        <div class="info-gallery">
                                            {{-- <h3>{{ $provider['users']['name'] }}</h3> --}}
                                            <hr class="separator">
                                            <p>{{ $provider->user_id }}</p>
                                            <p>{{ $provider->city }}</p>
                                            <p>{{ $provider->service_locations }}</p>
                                            {{-- <div class="content-btn"><a href="{{ route('home.service_details',['service_slug'=>$service->slug]) }}" class="btn btn-primary">Book Now</a></div> --}}
                                            {{-- <div class="content-btn"><a href="{{ route('home.view_provider',['id'=>$provider->id]) }}" class="btn btn-primary">Book Me</a></div> --}}
                                            <div class="content-btn"><a href="{{ route('customer.request_service',['id'=>$provider->id]) }}" class="btn btn-primary">Book Me</a></div>
                                            {{-- <div class="price"><span>&#35;</span><b>From</b>{{ $service->price }}</div> --}}
                                        </div>
                                    </a>
                                </div>
                            @endforeach
                        @else
                            <div class="col-md-12">
                                <h4 class="text-center text-danger">There are no Providers for this category at the moment.</h4>
                            </div>
                        @endif
                        
                    </div>
                </div>
            </div>
        </div>            
    </section>   
</div>









