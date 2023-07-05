<?php

namespace App\Http\Livewire\Admin;

use App\Models\Product;
use Livewire\Component;
use Livewire\WithPagination;

class AdminProductComponent extends Component
{
    use WithPagination;

    public function deleteProduct($id)
    {
        $product = Product::find($id);
        if ($product->image) {
            unlink('assets/images/products'.'/'.$product->image);
        }
        if ($product->images) {
            $images = explode(',', $product->images);
            foreach ($images as $image) {
                if ($image) {
                    unlink('assets/images/products'.'/'.$image);
                }
            }
        }
        $product->delete();
        session()->flash('message', 'Product has been deleted successfully!');
    }

    public function render()
    {
        $products = Product::paginate(10);

        return view('livewire.admin.admin-product-component', ['products' => $products])->layout('layouts.base');
    }
}
