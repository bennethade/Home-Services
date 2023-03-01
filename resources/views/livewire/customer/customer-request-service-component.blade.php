<div>
    <div class="section-title-01 honmob">
        <div class="bg_parallax image_02_parallax"></div>
        <div class="opacy_bg_02">
            <div class="container">
                <h1>Book Now</h1>
                <div class="crumbs">
                    <ul>
                        <li><a href="/">Home</a></li>
                        <li>/</li>
                        <li>Book Me</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="content-central">
        <div class="semiboxshadow text-center">
            <img src="{{ asset('assets/img/img-theme/shp.png') }}" class="img-responsive" alt="">
        </div>
        <div class="content_info">
            <div class="paddings-mini">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <aside>
                                <h4>Admin Details</h4>
                                <address>
                                    <strong>Contact The Admin.</strong><br>
                                    <i class="fa fa-map-marker"></i><strong>Address: </strong>FCT, Abuja, Nigeria<br>
                                    <i class="fa fa-phone"></i><strong>Phone: </strong> +234-803 696 9183
                                </address>
                                <address>
                                    <strong>Workenzo Emails</strong><br>
                                    <i class="fa fa-envelope"></i><strong>Email:</strong><a
                                        href="mailto:contact@sabiworkers.com"> contact@workenzo.com</a><br>
                                    <i class="fa fa-envelope"></i><strong>Email:</strong><a
                                        href="mailto:support@sabiworkers.com"> support@workenzo.com</a>
                                </address>
                            </aside>
                            <hr class="tall">
                        </div>
                        <div class="col-md-8">
                            <h3>Booking Form</h3>
                            <p class="lead">
                            </p>
                            @if (Session::has('message'))
                                <div class="alert alert-success" role="alert">{{ Session::get('message') }}</div>
                            @endif
                            <form id="contactform" class="form-theme" method="post" wire:submit.prevent="sendMessage">
                                <input type="text" class="form-control" name="user_id" wire:model="user_id" placeholder="Please input {{ Auth::user()->id }} here" value="{{ Auth::user()->id }}">
                                @error('user_id')<p class="text-danger">{{ $message }}</p>@enderror

                                <input type="text" placeholder="Name" name="name" id="name" wire:model="name" required="">
                                @error('name')<p class="text-danger">{{ $message }}</p>@enderror

                                <input type="email" placeholder="Email -- Optional" name="email" id="email" wire:model="email" required="">
                                @error('email')<p class="text-danger">{{ $message }}</p>@enderror

                                <input type="text" placeholder="Phone" name="phone" id="phone" wire:model="phone" required="">
                                @error('phone')<p class="text-danger">{{ $message }}</p>@enderror

                                <input type="text" placeholder="Your Full Address" name="address" id="address" wire:model="address" required="">
                                @error('address')<p class="text-danger">{{ $message }}</p>@enderror

                                <div class="form-group">
                                    <select class="form-control" name="service_category_id" id="" wire:model="service_category_id">
                                        <option value="">Select Service Needed</option>
                                        @foreach ($service_categories as $category)
                                            <option value="{{ $category->id }}">{{ $category->name }}</option>
                                        @endforeach
                                    </select>
                                    @error('service_category_id') <p class="text-danger">{{ $message }}</p> @enderror
                                </div>

                                {{-- <div class="form-group">
                                    <label for="slug" class="control-label col-sm-3">Service Category</label>
                                    <div class="col-sm-9">
                                        <select class="form-control" name="service_category_id" id="" wire:model="service_category_id">
                                            <option value="">Select Service Category</option>
                                            @foreach ($service_categories as $category)
                                                <option value="{{ $category->id }}">{{ $category->name }}</option>
                                            @endforeach
                                        </select>
                                        @error('service_category_id') <p class="text-danger">{{ $message }}</p> @enderror
                                    </div>
                                </div> --}}


                                <textarea placeholder="Extra Description" name="extra_description" id="extra_description" wire:model="extra_description" required=""></textarea>
                                @error('extra_description')<p class="text-danger">{{ $message }}</p>@enderror

                                <input type="submit" name="Submit" value="Send Message" class="btn btn-primary">
                            </form>
                            <div id="result"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="section-twitter content_resalt border-top">
            <i class="fa fa-twitter icon-big"></i>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="text-center">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
