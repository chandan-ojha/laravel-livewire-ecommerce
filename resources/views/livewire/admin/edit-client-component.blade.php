<div>
    <div class="container" style="padding: 30px 0;">
        <div class="row">
            <div class="col-md-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col-md-6">
                                Edit Client
                            </div>
                            <div class="col-md-6">
                                <a href="{{ route('admin.clients') }}" class="btn btn-success pull-right">
                                    All Clients
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body">

                        @if (Session::has('message'))
                            <div class="alert alert-success" role="alert">{{ Session::get('message') }}</div>
                        @endif

                        <form class="form-horizontal" wire:submit.prevent="updateClient">
                            <div class="form-group">
                                <label class="col-md-4 control-label">Client Name</label>
                                <div class="col-md-4">
                                    <input type="text" placeholder="Name" class="form-control input-md"
                                        wire:model="name" />
                                    @error('name')
                                        <p class="text-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label">Logo</label>
                                <div class="col-md-4">
                                    <input type="file" class="input-file" wire:model="newimage" />
                                    @if ($newimage)
                                        <img src="{{ $newimage->temporaryUrl() }}" width="120" />
                                    @else
                                        <img src="{{ asset('assets/images/clients') }}/{{ $image }}"
                                            width="120" />
                                    @endif
                                    @error('newimage')
                                        <p class="text-danger">{{ $message }}</p>
                                    @enderror
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label"></label>
                                <div class="col-md-4">
                                    <button type="submit" class="btn btn-primary">
                                        Update
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
