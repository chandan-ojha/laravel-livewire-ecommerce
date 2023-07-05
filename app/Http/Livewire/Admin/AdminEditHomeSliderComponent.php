<?php

namespace App\Http\Livewire\Admin;

use App\Models\HomeSlider;
use Carbon\Carbon;
use Livewire\Component;
use Livewire\WithFileUploads;

class AdminEditHomeSliderComponent extends Component
{
    use WithFileUploads;

    public $title;

    public $subtitle;

    public $price;

    public $link;

    public $image;

    public $status;

    public $newimage;

    public $slider_id;

    public function mount($slide_id)
    {
        $slider = HomeSlider::find($slide_id);
        $this->title = $slider->title;
        $this->subtitle = $slider->subtitle;
        $this->price = $slider->price;
        $this->link = $slider->link;
        $this->image = $slider->image;
        $this->status = $slider->status;
        $this->slider_id = $slider->id;
    }

    public function updated($fields)
    {
        $this->validateOnly($fields, [
            'title' => 'required',
            'subtitle' => 'required',
            'price' => 'required|numeric',
            'link' => 'required|url',
            'newimage' => 'required',
            'status' => 'required',
        ]);
    }

    public function updateSlide()
    {
        $this->validate([
            'title' => 'required',
            'subtitle' => 'required',
            'price' => 'required|numeric',
            'link' => 'required|url',
            'newimage' => 'required',
            'status' => 'required',
        ]);

        $slider = HomeSlider::find($this->slider_id);
        $slider->title = $this->title;
        $slider->subtitle = $this->subtitle;
        $slider->price = $this->price;
        $slider->link = $this->link;
        if ($this->newimage) {
            $imagename = Carbon::now()->timestamp.'.'.$this->newimage->extension();
            $this->newimage->storeAs('sliders', $imagename);
            $slider->image = $imagename;
        }
        $slider->status = $this->status;
        $slider->save();
        session()->flash('message', 'Slide has been updated successfully!');
    }

    public function render()
    {
        return view('livewire.admin.admin-edit-home-slider-component')->layout('layouts.base');
    }
}
