<?php
namespace App\Http\Livewire\Admin;

use App\Models\Client;
use Carbon\Carbon;
use Livewire\Component;
use Livewire\WithFileUploads;

class EditClientComponent extends Component
{

    use WithFileUploads;

    public $name;
    public $image;
    public $newimage;
    public $client_id;

    public function mount($client_id)
    {
        $client          = Client::find($client_id);
        $this->name      = $client->name;
        $this->image     = $client->image;
        $this->client_id = $client->id;
    }

    public function updated($fields)
    {
        $this->validateOnly($fields, [
            'name'     => 'required',
            'newimage' => 'required',
        ]);
    }

    public function updateClient()
    {
        $this->validate([
            'name' => 'required',
        ]);

        $client       = Client::find($this->client_id);
        $client->name = $this->name;

        if ($this->newimage) {
            $imagename = Carbon::now()->timestamp . '.' . $this->newimage->extension();
            $this->newimage->storeAs('clients', $imagename);
            $client->image = $imagename;
        }
        $client->save();
        session()->flash('message', 'Client has been updated successfully!');
    }

    public function render()
    {
        return view('livewire.admin.edit-client-component')->layout('layouts.base');
    }
}
