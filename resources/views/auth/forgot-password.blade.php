
<x-base-layout>
    <div class="section-title-01 honmob">
        <div class="bg_parallax image_02_parallax"></div>
        <div class="opacy_bg_02">
            <div class="container">
                <h1>Forgot Password</h1>
                <div class="crumbs">
                    <ul>
                        <li><a href="/">Home</a></li>
                        <li>/</li>
                        <li>Forgot Password</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <section class="content-central">
        <div class="semiboxshadow text-center">
        </div>
        <div class="content_info">
            <div class="paddings-mini">
                <div class="container">
                    <div class="col-xs-12 col-sm-6 col-md-6 col-md-offset-3 profile1" style="padding-bottom:40px;">
                        <div class="thinborder-ontop">
                            <h3>Resquest Password Reset</h3>
                            <x-jet-validation-errors class="mb-4" />                               


                                <x-jet-validation-errors class="mb-4" />

                                <form method="POST" action="{{ route('password.email') }}">
                                    @csrf

                                    {{-- <div class="block">
                                        <x-jet-label for="email" value="{{ __('Email') }}" />
                                        <x-jet-input id="email" class="block mt-1 w-full" type="email" name="email" :value="old('email')" required autofocus />
                                    </div> --}}

                                    


                                <div class="form-group row">
                                    <label for="email" class="col-md-4 col-form-label text-md-right" value="{{ __('Email') }}">E-Mail Address</label>
                                    <div class="col-md-6">
                                        <input id="email" type="email" class="form-control" name="email" :value="old('email')">
                                    </div>
                                </div>

                                <div class="form-group row" style="text-align: center;">
                                    <button>
                                        {{ __('Send Me Password Reset Link') }}
                                    </button>
                                </div>


                                <div class="form-group row mb-0">
                                    <div class="col-md-10">
                                        <span style="font-size: 14px;">If you have already registered <a
                                                href="{{ route('login') }}" title="Login">click here</a> to login</span>
                                        {{-- <button type="submit" class="btn btn-primary pull-right">Register</button> --}}
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>  
        <div class="section-twitter">
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
    </section>
</x-base-layout>
