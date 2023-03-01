<div>

    <div class="section-title-01 honmob">
        <div class="bg_parallax image_02_parallax"></div>
        <div class="opacy_bg_02">
            <div class="container">
                <h1>Provider</h1>
                <div class="crumbs">
                    <ul>
                        <li><a href="/">Home</a></li>
                        <li>/</li>
                        <li>Provider</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <section class="content-central">
        <div class="content_info">
            <div class="paddings-mini">
                <div class="container">
                    <div class="row portfolioContainer">
                        <div class="col-md-8 col-md-offset-2 profile1">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-md-6">
                                            Service Provider Details
                                        </div>
                                        <div class="col-md-6">

                                        </div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-4">
                                            {{-- @if($provider->image)
                                                <img src="{{ asset('images/sproviders') }}/{{ $provider->image }}" alt="" width="100%">
                                            @else
                                                <img src="{{ asset('images/sproviders/default.png') }}" alt="" width="100%">
                                            @endif --}}
                                        </div>
                                        <div class="col-md-8">
                                            <h3>Name:</h3>
                                            {{-- <p>{{ $provider->about }}</p> --}}
                                            <p><b>Email: </b></p>
                                            <p><b>Phone: </b></p>
                                            <p><b>City: </b></p>
                                            <p><b>Service Category: </b>
                                                {{-- @if($provider->service_category_id)
                                                    {{ $provider->category->name }}
                                                @endif --}}
                                            </p>
                                            {{-- <p><b>Service Location: </b>{{ $provider->service_locations }}</p> --}}
                                            <a href="{{ route('home.contact') }}" class="btn btn-info">Book Now!</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
