 <!-- discount section -->
  <div class="layout_padding-top">
    <section class="discount_section ">
      <div class="container-fluid ">
        <div class="row ">
          <div class="col-lg-3 col-md-5 offset-md-2">
            <div class="detail-box">
              <h2>
                You get <br>
                any medicine <br>
                on
                <span>
                  10% discount
                </span>

              </h2>
              <p>
                It is a long established fact that a reader will be distracted by
              </p>
              <div>
                <a href="#">
                  Buy Now
                </a>
              </div>
            </div>
          </div>
          <div class="col-lg-7 col-md-5">
            <div class="img-box">
              <img src="$resourceURL('themes/custom/images/medicines.jpg')" alt="">
            </div>
          </div>
        </div>
      </div>
    </section>

  </div>


  <!-- end discount section -->

  <!-- health section -->

  <section class="health_section layout_padding">
    <div class="health_carousel-container">
      <h2 class="text-uppercase">
        MEDICINE & HEALTH
      </h2>
      <% if Medicines %>
      <div class="carousel-wrap layout_padding2">
        <div class="owl-carousel owl-2">
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
                <div class="star_container">
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star-o" aria-hidden="true"></i>
                </div>
                <div class="text">
                  <h6>
                    $Name
                  </h6>
                  <h6 class="price">
                    <span>
                      $
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
      <% else %>
      <div class="alert alert-primary mt-5" role="alert">
        No medicines are available at the moment!
      </div>
      <% end_if %>
      
    </div>
    <%-- <div class="d-flex justify-content-center">
      <a href="">
        See more
      </a>
    </div> --%>
  </section>

    <section class="health_section layout_padding">
    <div class="health_carousel-container">
      <h2 class="text-uppercase">
        Vitamins & Supplements
      </h2>
      <% if Vitamins %>
      <div class="carousel-wrap layout_padding2">
        <div class="owl-carousel owl-2">
        <% loop Vitamins %>
        <div class="item">
            <div class="box">
              <div class="btn_container">
                <a href="{$TopBaseURL}drugs/vitamins-details/{$ID}">
                  Buy Now
                </a>
              </div>
              <div class="img-box">
                <img src="$Image.URL" alt="">
              </div>
              <div class="detail-box">
                <div class="star_container">
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star" aria-hidden="true"></i>
                  <i class="fa fa-star-o" aria-hidden="true"></i>
                </div>
                <div class="text">
                  <h6>
                    $Name
                  </h6>
                  <h6 class="price">
                    <span>
                      $
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
      <% else %>
      <div class="alert alert-primary mt-5" role="alert">
        No vitamins / supplements are available at the moment!
      </div>
      <% end_if %>
    </div>
    <%-- <div class="d-flex justify-content-center">
      <a href="">
        See more
      </a>
    </div> --%>
  </section>

  <!-- end health section -->
