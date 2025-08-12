<?php
namespace App\Http\Livewire\Admin;

use App\Models\Client;
use Carbon\Carbon;
use Livewire\Component;
use Livewire\WithFileUploads;

class AddClientComponent extends Component
{
    use WithFileUploads;

    public $name;
    public $image;

    public function mount()
    {

    }

    public function updated($fields)
    {
        $this->validateOnly($fields, [
            'name'  => 'required',
            'image' => 'required',
        ]);
    }

    public function addClient()
    {
        $this->validate([
            'name'  => 'required',
            'image' => 'required',
        ]);

        $client       = new Client();
        $client->name = $this->name;
        $imagename    = Carbon::now()->timestamp . '.' . $this->image->extension();
        $this->image->storeAs('clients', $imagename);
        $client->image = $imagename;
        $client->save();
        session()->flash('message', 'Client has been created successfully!');
    }

    public function render()
    {
        return view('livewire.admin.add-client-component')->layout('layouts.base');
    }
}
