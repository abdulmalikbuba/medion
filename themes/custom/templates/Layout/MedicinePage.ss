 <!-- discount section -->



  <!-- end discount section -->

  <!-- health section -->

  <section class="health_section layout_padding mt-5">
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
      Cosmetics
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
