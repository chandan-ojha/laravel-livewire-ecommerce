<div>
    <div class="container" style="padding: 30px 0;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-6">
                                All Clients
                            </div>
                            <div class="col-md-6">
                                <a href="{{ route('admin.addclient') }}" class="btn btn-success pull-right">
                                    Add New Client
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">
                        @if (Session::has('message'))
                            <div class="alert alert-success" role="alert">{{ Session::get('message') }} </div>
                        @endif
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Id</th>
                                    <th>Image</th>
                                    <th>Name</th>
                                    <th>Date</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($clients as $client)
                                    <tr>

                                        <td>{{ $client->id }}</td>
                                        <td><img src="{{ asset('assets/images/clients') }}/{{ $client->image }}"
                                                width="120" />
                                        </td>

                                        <td>{{ $client->name }}</td>
                                        <td>{{ $client->created_at }}</td>
                                        <td>
                                            <a href="{{ route('admin.editclient', ['client_id' => $client->id]) }}"><i
                                                    class="fa fa-edit fa-2x text-info"></i>
                                            </a>

                                            <a href="#"
                                                onclick="confirm('Are you sure,You want to delete this client?') || event.stopImmediatePropagation()"
                                                style="margin-left: 10px;"
                                                wire:click.prevent="deleteClient({{ $client->id }})"><i
                                                    class="fa fa-times fa-2x text-danger"></i></a>
                                        </td>

                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
