<div>
    <footer id="footer">
        <div class="wrap-footer-content footer-style-1">

            <div class="wrap-function-info">
                <div class="container">
                    <ul>
                        <li class="fc-info-item">
                            <i class="fa fa-truck" aria-hidden="true"></i>
                            <div class="wrap-left-info">
                                <h4 class="fc-name">Free Shipping</h4>
                                <p class="fc-desc">Free On Oder Over $99</p>
                            </div>

                        </li>
                        <li class="fc-info-item">
                            <i class="fa fa-recycle" aria-hidden="true"></i>
                            <div class="wrap-left-info">
                                <h4 class="fc-name">Guarantee</h4>
                                <p class="fc-desc">30 Days Money Back</p>
                            </div>

                        </li>
                        <li class="fc-info-item">
                            <i class="fa fa-credit-card-alt" aria-hidden="true"></i>
                            <div class="wrap-left-info">
                                <h4 class="fc-name">Safe Payment</h4>
                                <p class="fc-desc">Safe your online payment</p>
                            </div>

                        </li>
                        <li class="fc-info-item">
                            <i class="fa fa-life-ring" aria-hidden="true"></i>
                            <div class="wrap-left-info">
                                <h4 class="fc-name">Online Suport</h4>
                                <p class="fc-desc">We Have Support 24/7</p>
                            </div>

                        </li>
                    </ul>
                </div>
            </div>
            <!--End function info-->

            <div class="main-footer-content">

                <div class="container">

                    <div class="row">

                        <div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
                            <div class="wrap-footer-item">
                                <h3 class="item-header">Contact Details</h3>
                                <div class="item-content">
                                    <div class="wrap-contact-detail">
                                        <ul>
                                            <li>
                                                <i class="fa fa-map-marker" aria-hidden="true"></i>
                                                <p class="contact-txt">{{$setting->address}}</p>
                                            </li>
                                            <li>
                                                <i class="fa fa-phone" aria-hidden="true"></i>
                                                <p class="contact-txt">{{$setting->phone}}</p>
                                            </li>
                                            <li>
                                                <i class="fa fa-envelope" aria-hidden="true"></i>
                                                <p class="contact-txt">{{$setting->email}}</p>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">

                            <div class="wrap-footer-item">
                                <h3 class="item-header">Hot Line</h3>
                                <div class="item-content">
                                    <div class="wrap-hotline-footer">
                                        <span class="desc">Call Us toll Free</span>
                                        <b class="phone-number">{{$setting->phone2}}</b>
                                    </div>
                                </div>
                            </div>

                            <div class="wrap-footer-item footer-item-second">
                                <h3 class="item-header">Sign up for newsletter</h3>
                                <div class="item-content">
                                    <div class="wrap-newletter-footer">
                                        <form action="#" class="frm-newletter" id="frm-newletter">
                                            <input type="email" class="input-email" name="email" value="" placeholder="Enter your email address">
                                            <button class="btn-submit">Subscribe</button>
                                        </form>
                                    </div>
                                </div>
                            </div>

                        </div>

                        <div class="col-lg-4 col-sm-4 col-md-4 col-xs-12 box-twin-content ">
                            <div class="row">
                                <div class="wrap-footer-item twin-item">
                                    <h3 class="item-header">My Account</h3>
                                    <div class="item-content">
                                        <div class="wrap-vertical-nav">
                                            <ul>
                                                <li class="menu-item"><a href="#" class="link-term">My Account</a></li>
                                                <li class="menu-item"><a href="#" class="link-term">Brands</a></li>
                                                <li class="menu-item"><a href="#" class="link-term">Gift Certificates</a></li>
                                                <li class="menu-item"><a href="#" class="link-term">Affiliates</a></li>
                                                <li class="menu-item"><a href="#" class="link-term">Wish list</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="wrap-footer-item twin-item">
                                    <h3 class="item-header">Infomation</h3>
                                    <div class="item-content">
                                        <div class="wrap-vertical-nav">
                                            <ul>
                                                <li class="menu-item"><a href="#" class="link-term">Contact Us</a></li>
                                                <li class="menu-item"><a href="#" class="link-term">Returns</a></li>
                                                <li class="menu-item"><a href="#" class="link-term">Site Map</a></li>
                                                <li class="menu-item"><a href="#" class="link-term">Specials</a></li>
                                                <li class="menu-item"><a href="#" class="link-term">Order History</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="row">

                        <div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
                            <div class="wrap-footer-item">
                                <h3 class="item-header">We Using Safe Payments:</h3>
                                <div class="item-content">
                                    <div class="wrap-list-item wrap-gallery">
                                        <img src="{{ asset('assets/images/payment.png') }}" style="max-width: 260px;">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
                            <div class="wrap-footer-item">
                                <h3 class="item-header">Social network</h3>
                                <div class="item-content">
                                    <div class="wrap-list-item social-network">
                                        <ul>
                                            <li><a href="{{$setting->twiter}}" class="link-to-item" title="twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                            <li><a href="{{$setting->facebook}}" class="link-to-item" title="facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                            <li><a href="{{$setting->pinterest}}" class="link-to-item" title="pinterest"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                                            <li><a href="{{$setting->instagram}}" class="link-to-item" title="instagram"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                                            <li><a href="{{$setting->youtube}}" class="link-to-item" title="youtube"><i class="fa fa-youtube" aria-hidden="true"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
                            <div class="wrap-footer-item">
                                <h3 class="item-header">Dowload App</h3>
                                <div class="item-content">
                                    <div class="wrap-list-item apps-list">
                                        <ul>
                                            <li><a href="#" class="link-to-item" title="our application on apple store">
                                                    <figure><img src="{{ asset('assets/images/brands/apple-store.png') }}" alt="apple store" width="128" height="36"></figure>
                                                </a></li>
                                            <li><a href="#" class="link-to-item" title="our application on google play store">
                                                    <figure><img src="{{ asset('assets/images/brands/google-play-store.png') }}" alt="google play store" width="128" height="36"></figure>
                                                </a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <div class="wrap-back-link">
                    <div class="container">
                        <div class="back-link-box">
                            <h3 class="backlink-title">Quick Links</h3>
                            <div class="back-link-row">
                                <ul class="list-back-link">
                                    <li><span class="row-title">Mobiles:</span></li>
                                    <li><a href="#" class="redirect-back-link" title="mobile">Mobiles</a></li>
                                    <li><a href="#" class="redirect-back-link" title="yphones">YPhones</a></li>
                                    <li><a href="#" class="redirect-back-link" title="Gianee Mobiles GL">Gianee Mobiles GL</a></li>
                                    <li><a href="#" class="redirect-back-link" title="Mobiles Karbonn">Mobiles Karbonn</a></li>
                                    <li><a href="#" class="redirect-back-link" title="Mobiles Viva">Mobiles Viva</a></li>
                                    <li><a href="#" class="redirect-back-link" title="Mobiles Intex">Mobiles Intex</a></li>
                                    <li><a href="#" class="redirect-back-link" title="Mobiles Micrumex">Mobiles Micrumex</a></li>
                                    <li><a href="#" class="redirect-back-link" title="Mobiles Bsus">Mobiles Bsus</a></li>
                                    <li><a href="#" class="redirect-back-link" title="Mobiles Samsyng">Mobiles Samsyng</a></li>
                                    <li><a href="#" class="redirect-back-link" title="Mobiles Lenova">Mobiles Lenova</a></li>
                                </ul>

                                <ul class="list-back-link">
                                    <li><span class="row-title">Tablets:</span></li>
                                    <li><a href="#" class="redirect-back-link" title="Plesc YPads">Plesc YPads</a></li>
                                    <li><a href="#" class="redirect-back-link" title="Samsyng Tablets">Samsyng Tablets</a></li>
                                    <li><a href="#" class="redirect-back-link" title="Qindows Tablets">Qindows Tablets</a></li>
                                    <li><a href="#" class="redirect-back-link" title="Calling Tablets">Calling Tablets</a></li>
                                    <li><a href="#" class="redirect-back-link" title="Micrumex Tablets">Micrumex Tablets</a></li>
                                    <li><a href="#" class="redirect-back-link" title="Lenova Tablets Bsus">Lenova Tablets Bsus</a></li>
                                    <li><a href="#" class="redirect-back-link" title="Tablets iBall">Tablets iBall</a></li>
                                    <li><a href="#" class="redirect-back-link" title="Tablets Swipe">Tablets Swipe</a></li>
                                    <li><a href="#" class="redirect-back-link" title="Tablets TVs, Audio">Tablets TVs, Audio</a></li>
                                </ul>

                                <ul class="list-back-link">
                                    <li><span class="row-title">Fashion:</span></li>
                                    <li><a href="#" class="redirect-back-link" title="Sarees Silk">Sarees Silk</a></li>
                                    <li><a href="#" class="redirect-back-link" title="sarees Salwar">sarees Salwar</a></li>
                                    <li><a href="#" class="redirect-back-link" title="Suits Lehengas">Suits Lehengas</a></li>
                                    <li><a href="#" class="redirect-back-link" title="Biba Jewellery">Biba Jewellery</a></li>
                                    <li><a href="#" class="redirect-back-link" title="Rings Earrings">Rings Earrings</a></li>
                                    <li><a href="#" class="redirect-back-link" title="Diamond Rings">Diamond Rings</a></li>
                                    <li><a href="#" class="redirect-back-link" title="Loose Diamond Shoes">Loose Diamond Shoes</a></li>
                                    <li><a href="#" class="redirect-back-link" title="BootsMen Watches">BootsMen Watches</a></li>
                                    <li><a href="#" class="redirect-back-link" title="Women Watches">Women Watches</a></li>
                                </ul>

                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <div class="coppy-right-box">
                <div class="container">
                    <div class="coppy-right-item item-left">
                        <p class="coppy-right-text">Copyright © 2021 Chandan. All rights reserved</p>
                    </div>
                    <div class="coppy-right-item item-right">
                        <div class="wrap-nav horizontal-nav">
                            <ul>
                                <li class="menu-item"><a href="about-us.html" class="link-term">About us</a></li>
                                <li class="menu-item"><a href="privacy-policy.html" class="link-term">Privacy Policy</a></li>
                                <li class="menu-item"><a href="terms-conditions.html" class="link-term">Terms & Conditions</a></li>
                                <li class="menu-item"><a href="return-policy.html" class="link-term">Return Policy</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
    </footer>
</div>