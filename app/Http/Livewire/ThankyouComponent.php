<?php

namespace App\Http\Livewire;

use Livewire\Component;

class ThankyouComponent extends Component
{
    public function render()
    {
        return view('livewire.thankyou-component')->layout('layouts.base');
    }
}
