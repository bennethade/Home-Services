<div>
    <div class="section-title-01 honmob">
        <div class="bg_parallax image_02_parallax"></div>
        <div class="opacy_bg_02">
            <div class="container">
                <h1>Contact Us</h1>
                <div class="crumbs">
                    <ul>
                        <li><a href="/">Home</a></li>
                        <li>/</li>
                        <li>Contact Us</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="content-central">
        <div class="semiboxshadow text-center">
            <img src="{{ asset('assets/img/img-theme/shp.png') }}" class="img-responsive" alt="">
        </div>
        <div id="map" class="honmob"> <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d16317.891625809492!2d7.459629509091945!3d9.079651522888332!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x104e0a5637e8c4e5%3A0x99ee4ca23378005!2sWuse%202%2C%20Abuja%2C%20Federal%20Capital%20Territory!5e0!3m2!1sen!2sng!4v1675157890671!5m2!1sen!2sng" width="1200" height="400" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe></div>
        <div class="content_info">
            <div class="paddings-mini">
                <div class="container">
                    <div class="row">
                        <div class="col-md-4">
                            <aside>
                                <h4>The Office</h4>
                                <address>
                                    <strong>SabiWorkers Home Services.</strong><br>
                                    <i class="fa fa-map-marker"></i><strong>Address: </strong>FCT, Abuja, Nigeria<br>
                                    <i class="fa fa-phone"></i><strong>Phone: </strong> +234-803 696 9183
                                </address>
                                <address>
                                    <strong>SabiWorkers Emails</strong><br>
                                    <i class="fa fa-envelope"></i><strong>Email:</strong><a
                                        href="mailto:contact@sabiworkers.com"> contact@sabiworkers.com</a><br>
                                    <i class="fa fa-envelope"></i><strong>Email:</strong><a
                                        href="mailto:support@sabiworkers.com"> support@sabiworkers.com</a>
                                </address>
                            </aside>
                            <hr class="tall">
                        </div>
                        <div class="col-md-8">
                            <h3>Contact Form</h3>
                            <p class="lead">
                            </p>
                            @if (Session::has('message'))
                                <div class="alert alert-success" role="alert">{{ Session::get('message') }}</div>
                            @endif
                            <form id="contactform" class="form-theme" method="post" wire:submit.prevent="sendMessage">
                                <input type="text" placeholder="Name" name="name" id="name" wire:model="name" required="">
                                @error('name')<p class="text-danger">{{ $message }}</p>@enderror
                                <input type="email" placeholder="Email" name="email" id="email" wire:model="email" required="">
                                @error('email')<p class="text-danger">{{ $message }}</p>@enderror
                                <input type="text" placeholder="Phone" name="phone" id="phone" wire:model="phone" required="">
                                @error('phone')<p class="text-danger">{{ $message }}</p>@enderror
                                <textarea placeholder="Your Message" name="message" id="message" wire:model="message" required=""></textarea>
                                @error('message')<p class="text-danger">{{ $message }}</p>@enderror
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
