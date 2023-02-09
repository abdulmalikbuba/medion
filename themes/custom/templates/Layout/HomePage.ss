<!-- slider section -->
<section class=" slider_section position-relative">
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <%-- <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol> --%>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <div class="container">
          <div class="row">
            <div class="col-md-4">
              <div class="img-box animate__animated animate__bounceInLeft banner-image">
                <img src="$BannerImage.URL" alt="">
              </div>
            </div>
            <div class="col-md-8">
              <div class="detail-box">
                <h1 class="">
                  $BannerTitle
                </h1>
                <p class="animate__animated animate__bounceInDown">
                  $BannerText
                </p>
                <div class="animate__animated animate__bounceInUp ">
                  <a href="{$TopBaseURL}drugs/" class="carousel-bt">
                    Buy Now
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <%-- <div class="carousel-item">
            <div class="container">
              <div class="row">
                <div class="col-md-4">
                  <div class="img-box">
                    <img src="images/medicine.png" alt="">
                  </div>
                </div>
                <div class="col-md-8">
                  <div class="detail-box">
                    <h1>
                      Welcome To Our <br>
                      <span>
                        Online Medicine
                      </span>

                    </h1>
                    <p>
                      There are many variations of passages of Lorem Ipsum available, but the majority have suffered
                      alteration in some form, by injected humour, or randomised words which don't look even slightly
                      believable.
                    </p>
                    <div>
                      <a href="">
                        Buy Now
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="container">
              <div class="row">
                <div class="col-md-4">
                  <div class="img-box">
                    <img src="images/medicine.png" alt="">
                  </div>
                </div>
                <div class="col-md-8">
                  <div class="detail-box">
                    <h1>
                      Welcome To Our <br>
                      <span>
                        Online Medicine
                      </span>

                    </h1>
                    <p>
                      There are many variations of passages of Lorem Ipsum available, but the majority have suffered
                      alteration in some form, by injected humour, or randomised words which don't look even slightly
                      believable.
                    </p>
                    <div>
                      <a href="">
                        Buy Now
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div> --%>
    </div>

    <%-- <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="sr-only">Next</span>
        </a> --%>
  </div>


</section>
<!-- end slider section -->


<section class="feature_section  services_padding" data-aos="fade-down">
  <div class="container">
  <h2 class="text-uppercase text-center">
     Services
    </h2>
    <div class="feature_container">
      <div class="box animate__animated animate__bounceInDown">
        <div class="img-box">
         <i class="fa-solid fa-hospital"></i>
        </div>
        <div class="detail-box">
          <h5>
           $Service1Title
          </h5>
          <p>
           $Service1Text
          </p>
        </div>
      </div>
      <div class="box animate__animated animate__bounceInDown">
        <div class="img-box">
          <i class="fa-solid fa-notes-medical"></i>
        </div>
        <div class="detail-box">
          <h5>
             $Service2Title
          </h5>
          <p>
              $Service2Text
          </p>
        </div>
      </div>
           <div class="box animate__animated animate__bounceInDown">
        <div class="img-box">
          <i class="fa-solid fa-pump-soap"></i>
        </div>
        <div class="detail-box">
          <h5>
            $Service3Title
          </h5>
          <p>
             $Service3Text
          </p>
        </div>
      </div>
      <div class="box animate__animated animate__bounceInDown">
        <div class="img-box">
         <i class="fa-sharp fa-solid fa-mortar-pestle svg"></i>
        </div>
        <div class="detail-box">
          <h5>
           $Service4Title
          </h5>
          <p>
             $Service4Text
          </p>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- end feature section -->

<!-- discount section -->




<!-- end discount section -->

<!-- health section -->
<% if Medicines %>
<section class="health_section services_padding">
  <div class="health_carousel-container">
    <h2 class="text-uppercase text-center mb-5">
      Medicine & Health
    </h2>
    <div class="carousel-wrap ">
      <div class="owl-carousel">
        <% loop Medicines %>

        <div class="item">
          <div class="box">

            <div class="btn_container">
              <a href="{$TopBaseURL}drugs/medicine-details/{$ID}">
                Buy Now
              </a>
            </div>
            <div class="img-box">
              <img src="$Image.URL" alt="">
            </div>
            <div class="detail-box">
              
              <div class="text ">
                <h6>
                  $Name
                </h6>
                <h6 class="price">
                  <span>
                    GHC
                  </span>
                  $Price
                </h6>
              </div>
            </div>
          </div>
        </div>
        <% end_loop %>

      </div>

    </div>
  </div>
  <div class="d-flex justify-content-center mt-5">
    <a href="{$TopBaseURL}drugs/">
      See more
    </a>
  </div>
</section>
<% end_if %>

<% if Vitamins %>
<section class="health_section  services_padding
">
  <div class="health_carousel-container">
     <h2 class="text-uppercase text-center ">
      Cosmetics
    </h2>
    <div class="carousel-wrap layout_padding2">
      <div class="owl-carousel owl-2">
        <% loop Vitamins %>
        <div class="item">
          <div class="box">
            <div class="btn_container ">
              <a href="{$TopBaseURL}drugs/vitamins-details/{$ID}">
                Buy Now
              </a>
            </div>
            <div class="img-box">
              <img src="$Image.URL" alt="">
            </div>
            <div class="detail-box">
              
              <div class="text">
                <h6>
                  $Name
                </h6>
                <h6 class="price">
                  <span>
                    GHC
                  </span>
                  $Price
                </h6>
              </div>
            </div>
          </div>
        </div>
        <% end_loop %>

      </div>
    </div>
  </div>
  <div class="d-flex justify-content-center">
    <a href="{$TopBaseURL}drugs/">
      See more
    </a>
  </div>
</section>
<% end_if %>

<!-- end health section -->
<section class="discount_section services_padding " data-aos="fade-down">
  <div class="container-fluid">
    <div class="row">
      <div class="col-lg-3 col-md-5 offset-md-2">
        <div class="detail-box">
          <h2>
            Visit any of our branches to for your treatment.

          </h2>
          <p>
          Or request a service by contacting us
          </p>
          <div>
            <a href="{$TopBaseURL}contact-us/">
            Contact Us Now
            </a>
          </div>
        </div>
      </div>
      <div class="col-lg-7 col-md-5">
        <div class="img-box">
          <img src="$resourceURL('themes/custom/images/medicines.png')" alt="">
        </div>
      </div>
    </div>
  </div>
</section>

<!-- about section -->
<%-- <section class="about_section layout_padding">
  <div class="container">
    <div class="custom_heading-container ">
      <h2>
        About Us
      </h2>
    </div>

    <div class="img-box">
      <img src="$resourceURL('themes/custom/images/about-medicine.png')" alt="">
    </div>
    <div class="detail-box">
      <p>
        It is a long established fact that a reader will be distracted by the readable content of a page when looking
        at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as
        opposed to using 'Content here, content here', making it
      </p>
      <div class="d-flex justify-content-center">
        <a href="{$TopBaseURL}about-us/">
          Read More
        </a>
      </div>
    </div>
  </div>
</section> --%>


<!-- end about section -->

<!--location section-->
<div class="container pt-5 locations-layout" id="locations ">
    <div class="d-flex flex-column text-center mb-3">
        <!-- <h5 class="text-primary mb-3">Our Services</h5>  -->
        <!-- <h1 class="m-0">Premium Security Services</h1> -->
        <div class="service_detail heading ">
            <h2 class="text-uppercase text-center">
    Locations
    </h2>
          </div>
    </div>
    <div class="row pb-3">
     <div class="gmap_canvas"><iframe width="100%" height="510" id="gmap_canvas" src="https://maps.google.com/maps?q=rag lineker&t=&z=10&ie=UTF8&iwloc=&output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"></iframe><a href="https://2yu.co">2yu</a><br><style>.mapouter{position:relative;text-align:right;height:510px;width:770px;}</style><a href="https://embedgooglemap.2yu.co">html embed google map</a><style>.gmap_canvas {overflow:hidden;background:none!important;height:510px;width:100%;}</style></div>
    </div>
   
</div>


<!-- client section -->
<%-- <section class="client_section layout_padding">
    <div class="container">
      <div class="custom_heading-container ">
        <h2>
          What is says our clients
        </h2>
      </div>
      <div id="carouselExample2Indicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExample2Indicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExample2Indicators" data-slide-to="1"></li>
          <li data-target="#carouselExample2Indicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div class="client_container layout_padding2">
              <div class="client_detail">
                <p>
                  There are many variations of passages of Lorem Ipsum available, but the majority have suffered
                  alteration in
                  some form, by injected humour, or randomised words which don't look even slightly believable.
                </p>
              </div>
              <div class="client_box ">
                <div class="img-box">
                  <img src="$resourceURL('themes/custom/images/client.png') " alt="">
                </div>
                <div class="name">
                  <h5>
                    Randomised
                  </h5>
                  <h6>
                    <span>
                      Client
                    </span>
                    <img src="$resourceURL('themes/custom/images/quote.png')" alt="">
                  </h6>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="client_container layout_padding2">
              <div class="client_detail">
                <p>
                  There are many variations of passages of Lorem Ipsum available, but the majority have suffered
                  alteration in
                  some form, by injected humour, or randomised words which don't look even slightly believable.
                </p>
              </div>
              <div class="client_box ">
                <div class="img-box">
                  <img src="$resourceURL('themes/custom/images/client.png') " alt="">
                </div>
                <div class="name">
                  <h5>
                    Randomised
                  </h5>
                  <h6>
                    <span>
                      Client
                    </span>
                    <img src="$resourceURL('themes/custom/images/quote.png')" alt="">
                  </h6>
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="client_container layout_padding2">
              <div class="client_detail">
                <p>
                  There are many variations of passages of Lorem Ipsum available, but the majority have suffered
                  alteration in
                  some form, by injected humour, or randomised words which don't look even slightly believable.
                </p>
              </div>
              <div class="client_box ">
                <div class="img-box">
                  <img src="$resourceURL('themes/custom/images/client.png') " alt="">
                </div>
                <div class="name">
                  <h5>
                    Randomised
                  </h5>
                  <h6>
                    <span>
                      Client
                    </span>
                    <img src="$resourceURL('themes/custom/images/quote.png')" alt="">
                  </h6>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>


    </div>
  </section> --%>
<!-- end client section -->

