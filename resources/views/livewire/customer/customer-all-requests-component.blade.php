<div>
    <style>
        nav svg{
            height: 20px;
        }
        nav .hidden{
            display: block !important;
        }
    </style>

    <div class="section-title-01 honmob">
        <div class="bg_parallax image_02_parallax"></div>
        <div class="opacy_bg_02">
            <div class="container">
                <h1>My Requests</h1>
                <div class="crumbs">
                    <ul>
                        <li><a href="/">Home</a></li>
                        <li>/</li>
                        <li>My Requests</li>
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
                        <div class="col-md-12 profile1">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <div class="row">
                                        <div class="col-md-6">
                                            My Service Request List
                                        </div>
                                        <div class="col-md-6">
                                            {{-- <a href="{{ route('sprovider.add_service') }}" class="btn btn-info pull-right">Post New Service</a> --}}
                                        </div>
                                    </div>
                                </div>
                                <div class="panel-body">
                                    
                                    <table class="table table-striped">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                {{-- <th>Image</th> --}}
                                                <th>Name</th>
                                                {{-- <th>Price</th> --}}
                                                <th>Email</th>
                                                <th>Phone</th>
                                                <th>Address</th>
                                                <th>Service Category Id</th>
                                                <th>Requested Provider</th>
                                                <th>Extra Description</th>
                                                <th>Requested Date</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach ($requests as $request)
                                                <tr>
                                                    <td>{{ $request->id }}</td>
                                                    {{-- <td><img src="{{ asset('images/services/thumbnails') }}/{{ $request->thumbnail }}" width="60"></td> --}}
                                                    <td>{{ $request->name }}</td>
                                                    <td>{{ $request->email }}</td>
                                                    <td>{{ $request->phone }}</td>
                                                    <td>{{ $request->address }}</td>
                                                    <td>{{ $request->service_category_id }}</td>
                                                    <td>{{ $request->service_provider_id }}</td>
                                                    <td>{{ $request->extra_description }}</td>
                                                    <td>{{ $request->created_at }}</td>
                                                    <td>
                                                        {{-- <a href="{{ route('sprovider.edit_service',['service_slug'=>$service->slug]) }}"><i class="fa fa-edit fa-2x text-info"></i></a>
                                                        <a href="#" onclick="confirm('Are you sure to delete?') || event.stopImmediatePropagation()" wire:click.prevent="deleteService({{ $service->id }})" style="margin-left: 10px;"><i class="fa fa-times fa-2x text-danger"></i></a> --}}
                                                    </td>
                                                </tr>
                                            @endforeach
                                        </tbody>
                                    </table>
                                    {{ $requests->links() }}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
