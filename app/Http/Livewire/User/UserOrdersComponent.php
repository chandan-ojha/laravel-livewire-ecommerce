<?php

namespace App\Http\Livewire\User;

use App\Models\Order;
use Illuminate\Support\Facades\Auth;
use Livewire\Component;

class UserOrdersComponent extends Component
{
    public function render()
    {
        $orders = Order::where('user_id', Auth::user()->id)->paginate(12);
        return view('livewire.user.user-orders-component', ['orders' => $orders])->layout('layouts.base');
    }
}
