<main id="main" class="main-site left-sidebar">
    <div class="container">
        <div class="wrap-breadcrumb">
            <ul>
                <li class="item-link"><a href="/" class="link">home</a></li>
                <li class="item-link"><span>Wishlist</span></li>
            </ul>
        </div>

        <style>
            .product-wish {
                position: absolute;
                top: 10%;
                left: 0;
                z-index: 99;
                right: 30px;
                text-align: right;
                padding-top: 0;
            }

            .product-wish .fa {
                color: #cbcbcb;
                font-size: 32px;
            }

            .product-wish .fa:hover {
                color: #ff7007;
            }

            .fill-heart {
                color: #ff7007 !important;
            }
        </style>
        <div class="row">
            @if(Cart::instance('wishlist')->content()->count() > 0)
            <ul class="product-list grid-products equal-container">
                @foreach(Cart::instance('wishlist')->content() as $item)
                <li class="col-lg-3 col-md-6 col-sm-6 col-xs-6 ">
                    <div class="product product-style-3 equal-elem ">
                        <div class="product-thumnail">
                            <a href="{{route('product.details',['slug'=>$item->model->slug])}}" title="{{$item->model->name}}">
                                <figure><img src="{{ asset('assets/images/products') }}/{{$item->model->image}}" alt="{{$item->model->name}}"></figure>
                            </a>
                        </div>
                        <div class="product-info">
                            <a href="{{route('product.details',['slug'=>$item->model->slug])}}" class="product-name"><span>{{$item->model->name}}</span></a>
                            <div class="wrap-price"><span class="product-price">{{$item->model->regular_price}}</span></div>
                            <a href="#" class="btn add-to-cart" wire:click.prevent="moveProductFromWishlistToCart('{{$item->rowId}}')">Move To Cart</a>
                            <div class="product-wish">
                                <a href="#" wire:click.prevent="removeFromWishlist({{$item->model->id}})"> <i class="fa fa-heart fill-heart"> </i> </a>
                            </div>
                        </div>
                    </div>
                </li>
                @endforeach
            </ul>
            @else
            <h4>No item in wishlist</h4>
            @endif
        </div>
    </div>
</main>