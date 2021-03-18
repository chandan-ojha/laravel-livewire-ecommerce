<?php

namespace App\Http\Livewire;

use App\Models\HomeCategory;
use App\Models\Category;
use App\Models\HomeSlider;
use App\Models\Product;
use Livewire\Component;

class HomeComponent extends Component
{
    public function render()
    {
    	$sliders = HomeSlider::where('status',1)->get();
    	$lproducts = Product::orderBy('created_at','DESC')->get()->take(8);
    	$category = HomeCategory::find(1);
        $cats = explode(',', $category->sel_categories);
        $categories = Category::whereIn('id',$cats)->get();
        $no_of_products = $category->no_of_products;
        return view('livewire.home-component',['sliders'=>$sliders,'lproducts'=>$lproducts,
        'categories'=>$categories,'no_of_products' => $no_of_products])->layout('layouts.base');
    }
}
