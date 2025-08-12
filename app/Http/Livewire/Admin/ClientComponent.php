<?php
namespace App\Http\Livewire\Admin;

use App\Models\Client;
use Livewire\Component;

class ClientComponent extends Component
{
    public function deleteClient($client_id)
    {
        $client = Client::find($client_id);
        $client->delete();
        session()->flash('message', 'Client has been deleted successfully!');
    }

    public function render()
    {
        $clients = Client::all();

        return view('livewire.admin.client-component', [
            'clients' => $clients,
        ])->layout('layouts.base');
    }

}
